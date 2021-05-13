//  HomeVC.swift
//  SwiftStock

//  Created by Ruja on 05/12/21.

import UIKit



class HomeVC: UIViewController {
    @IBOutlet weak var txtF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtF.delegate = self
    }


    @IBAction func btnSubmit(_ sender: UIButton) {
        
       // showAlert()
        
        if txtF.text == ""  {
            return
        }
        
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyB.instantiateViewController(identifier: "DetailVC") as! DetailVC
        vc.modalPresentationStyle = .fullScreen
        vc.parm = self.txtF.text!
        
        present(vc, animated: true, completion: nil)
        
        
    }
    
    //Function
    func showAlert() {
        let alert = UIAlertController(title: "Warning!", message: "Incorrect Stock Ticker", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}

extension HomeVC: UITextFieldDelegate
{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                do {
                    let regex = try NSRegularExpression(pattern: ".*[^A-Za-z].*", options: [])
                    if regex.firstMatch(in: string, options: [], range: NSMakeRange(0, string.count)) != nil {
                        return false
                    }
                }
                catch {
                    print("ERROR")
                }
            return true
    }
}
