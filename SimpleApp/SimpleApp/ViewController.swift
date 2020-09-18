//
//  ViewController.swift
//  SimpleApp
//
//  Created by Eleanor Peng on 2020/9/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBAction func changeFact(_ sender: Any) {
        funFactLabel.text = giveRandomText()
        self.view.backgroundColor = UIColor(hexString: giveRandomColor())
    }
    
    func giveRandomText() -> String {
        let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simple random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obsecure Latin words, consectetur",
        "from a Lorem Ipsum message, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "the first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
        ]
        
        let randomNum = Int.random(in: 0..<text.count)
        return text[randomNum]
    }
    func giveRandomColor() -> String {
        let hexColors = ["#36453B", "#F7C548", "#FF6663", "#A3C3D9", "#FF8600", "#8FB8ED", "#9DC5BB"]
        let randomNum = Int.random(in: 0..<hexColors.count)
        
        return hexColors[randomNum]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    


}

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}
