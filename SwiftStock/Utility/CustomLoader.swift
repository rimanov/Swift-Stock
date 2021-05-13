//
//  CustomerLoader.swift
//  CustomLoader
//
//

import Foundation
import UIKit

public class Indicator {

    public static let sharedInstance = Indicator()
    var blurImg = UIImageView()
    var indicator = UIActivityIndicatorView()
    private var vc = UIView()

    private init()
    {
        blurImg.frame = UIScreen.main.bounds
        
        vc.layer.cornerRadius = 8
        blurImg.backgroundColor = UIColor.black
        blurImg.isUserInteractionEnabled = true
        blurImg.alpha = 0.4
        indicator.style = .large//.whiteLarge
        indicator.startAnimating()
        indicator.color = .gray
        vc.backgroundColor = UIColor.white
        vc.frame = CGRect(x: 0, y: 0, width: 100, height: 90)
        vc.center = blurImg.center
        indicator.center = vc.center
        
    }

    func showIndicator(){
        DispatchQueue.main.async( execute: {

            if let keyWindow = UIWindow.key {
                keyWindow.addSubview(self.blurImg)
                keyWindow.addSubview(self.vc)
                keyWindow.addSubview(self.indicator)
            }
        })
    }
    
    func hideIndicator(){

        DispatchQueue.main.async( execute:{
                self.blurImg.removeFromSuperview()
                self.vc.removeFromSuperview()
                self.indicator.removeFromSuperview()
        })
    }
}

extension UIWindow {
    static var key: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
