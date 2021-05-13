//  DetailVC.swift
//  SwiftStock
//
//  Created by Rasul on 05/12/21.

import UIKit
import SwiftChart


class DetailVC: UIViewController, ChartDelegate {
    
    @IBOutlet weak var lblStockName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblVolume: UILabel!
    @IBOutlet weak var lblMarketCap: UILabel!
    
    
    var parm = ""
    var chartModel : ChartResponse!
    var stockValues = Array<Dictionary<String, Any>>()
    var selectedChart = 0
    
    @IBOutlet weak var labelLeadingMarginConstraint: NSLayoutConstraint!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var closelabel: UILabel!

    @IBOutlet weak var chart: Chart!
    
    fileprivate var labelLeadingMarginInitialConstant: CGFloat!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        labelLeadingMarginInitialConstant = labelLeadingMarginConstraint.constant
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            if self?.parm != "" {
                self?.getApi(self!.parm)
            }
        }
    }
    
    func initializeChart(model : ChartResponse) {
        
        chart.delegate = self

        // Initialize data series and labels

        stockValues = getStockValues(model: model)

        var serieData: [Double] = []
        var labels: [Double] = []
        var labelsAsString: Array<String> = []

        // Date formatter to retrieve the month names
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateFormat = "MM"
        dateFormatter1.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter1.timeZone = TimeZone(abbreviation: "UTC")

        for (i, value) in stockValues.enumerated() {
            serieData.append(value["close"] as! Double)

            // Use only one label for each month
            let month = Int(dateFormatter1.string(from: value["date"] as! Date))
            let monthAsString:String = dateFormatter1.monthSymbols[month! - 1]
            if (labels.count == 0 || labelsAsString.last != monthAsString) {
                labels.append(Double(i))
                labelsAsString.append(monthAsString)
            }
        }

        let series = ChartSeries(serieData)
        series.area = true

        // Configure chart layout

        chart.lineWidth = 0.5
        chart.labelFont = UIFont.systemFont(ofSize: 12)
        
        chart.showXLabelsAndGrid = false

//        chart.xLabels = [10,2]
//        chart.xLabelsFormatter = { String(Int(round($1))) + "h" }


//        chart.xLabels = labels
//        chart.xLabelsFormatter = { (labelIndex: Int, labelValue: Double) -> String in
//            return labelsAsString[labelIndex]
//        }
        chart.xLabelsTextAlignment = .center
        chart.yLabelsOnRightSide = true
        // Add some padding above the x-axis
        
        
        print(serieData.min()!)
        print(serieData.max()!)
        
        
        chart.minY = serieData.min()!
        chart.maxY = serieData.max()!

        chart.add(series)
        
    }
    
    
    func getStockValues(model : ChartResponse) -> Array<Dictionary<String, Any>> {
        
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm a"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

        let closeValues = model.chart!.result![0].indicators!.quote![0].close!
        let timestampValues = model.chart!.result![0].timestamp!

        var dicArray = Array<Dictionary<String, Any>>()
        for (index, timeStamp) in timestampValues.enumerated() {
            let date = NSDate(timeIntervalSince1970: TimeInterval(timeStamp))
            let close = closeValues[index]
            let dic = ["close" : close, "date": date as Date] as NSDictionary
            dicArray.append(dic as! [String : Any])
        }
        
        return dicArray
        
    }
    
    
    // Chart delegate
    func didTouchChart(_ chart: Chart, indexes: Array<Int?>, x: Double, left: CGFloat) {
        // Do something on touch
        
        if let value = chart.valueForSeries(0, atIndex: indexes[0]) {
            
            let numberFormatter = NumberFormatter()
            numberFormatter.minimumFractionDigits = 2
            numberFormatter.maximumFractionDigits = 2
            
            print(value)
            dateFormatter.dateFormat = "hh:mm a"
            
            let index = indexes[0]
            let dic = stockValues[index!]
            let date = dic["date"] as! Date
            let dateStr = dateFormatter.string(from: date)
            
            print(dic)
            
            label.text = dateStr
        
            
            closelabel.text = numberFormatter.string(from: NSNumber(value: value))
            
            // Align the label to the touch left position, centered
            var constant = labelLeadingMarginInitialConstant + left - (label.frame.width / 2)
            
            // Avoid placing the label on the left of the chart
            if constant < labelLeadingMarginInitialConstant {
                constant = labelLeadingMarginInitialConstant
            }
            
            // Avoid placing the label on the right of the chart
            let rightMargin = chart.frame.width - label.frame.width
            if constant > rightMargin {
                constant = rightMargin
            }
            
            labelLeadingMarginConstraint.constant = constant
            
        }
      }

    func didFinishTouchingChart(_ chart: Chart) {
        // Do something when finished
        label.text = ""
        labelLeadingMarginConstraint.constant = labelLeadingMarginInitialConstant
      }

    func didEndTouchingChart(_ chart: Chart) {
        // Do something when ending touching chart
      }
    

   
    @IBAction func btnBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func getApi(_ parm: String) {
        Indicator.sharedInstance.showIndicator()
        
        let headers = [
            "x-rapidapi-key": "65fef0ace7mshe7b6b68be91780ep18ef84jsn3c668716874f", // Default key
            //"x-rapidapi-key": "6a50ca3ac9msh3b9cb9ff4e9636ep19b556jsn489d4269e818", // Login auth key
            "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com"
        ]
        
        let pram1 = parm.trimmingCharacters(in: .whitespacesAndNewlines)
        let normalUrl =  String(format: "\("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-summary?symbol=%@&region=US")", "\(pram1)")
        let request = NSMutableURLRequest(url: NSURL(string: normalUrl)! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 30.0)
        
        request.httpMethod = "GET"
        
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            DispatchQueue.main.async {
                Indicator.sharedInstance.hideIndicator()
                
            }
            if (error != nil) {
                print(error as Any)
            } else {
                //let httpResponse = response as? HTTPURLResponse
                //                print(httpResponse as Any)
                //                print(data as Any)
                
                let responseprint = String(data: data!, encoding: .utf8)
                print(responseprint as Any)
                
                do {
                    //here dataResponse received from a network request
                    let decoder = JSONDecoder()
                    let model = try decoder.decode(StockResponse.self, from: data!) //Decode JSON
                    print(model)
                    let volume = model.price?.regularMarketVolume?.fmt
                    let price = model.price?.regularMarketOpen?.fmt
                    let stockName = model.price?.shortName
                    let marketCap = model.price?.marketCap?.fmt
                    
                    
                    if price != nil {
                        if volume != nil && !volume!.isEmpty  {
                            DispatchQueue.main.async { [weak self] in
                                self?.lblStockName.text = (String(describing: (stockName)!))
                                self?.lblPrice.text = price
                                self?.lblVolume.text = volume
                                self?.lblMarketCap.text = marketCap
                            }
                            self.showOneDayChart(parm)
                        }else {
                            //show Alert
                            DispatchQueue.main.async {
                                self.showAlert()
                            }
                        }
                    }else {
                        //show Alert
                        DispatchQueue.main.async {
                            self.showAlert()
                        }
                    }
                } catch let parsingError {
                    print("Error", parsingError)
                }
            }
        })
        
        dataTask.resume()
    }
    
    func showOneDayChart(_ parm:String){
        
        Indicator.sharedInstance.showIndicator()
        let headers = [
            "x-rapidapi-key": "65fef0ace7mshe7b6b68be91780ep18ef84jsn3c668716874f",
            "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com"
        ]
        
        let pram1 = parm.trimmingCharacters(in: .whitespacesAndNewlines)
        let normalUrl =  String(format: "\("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-chart?interval=5m&symbol=%@&range=1d&region=US")", "\(pram1)")
        
        let request = NSMutableURLRequest(url: NSURL(string:normalUrl)! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { [weak self] (data, response, error) -> Void in
            
            DispatchQueue.main.async {
                Indicator.sharedInstance.hideIndicator()
                
            }
            if (error != nil) {
                print(error!)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse!)
                print(data!)
                do {
                    let decoder = JSONDecoder()
                    let model = try decoder.decode(ChartResponse.self, from:
                                                    data!) //Decode JSON Response Data

                    self!.chartModel = model
                    
                    DispatchQueue.main.async {
                        self?.initializeChart(model: model)
                    }
                }catch let parsingError {
                    print("Error", parsingError)
                }
            }
        })
        
        dataTask.resume()
    }

    func showAlert() {
        let alert = UIAlertController(title: "Warning!", message: "Incorrect Stock Ticker", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}


