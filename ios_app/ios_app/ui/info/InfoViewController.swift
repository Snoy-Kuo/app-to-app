//
//  InfoViewController.swift
//  ios_app
//
//  Created by Snoy Kuo on 2021/5/24.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var lbCenter: UILabel?
    private var subIndex:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setText()
    }
    
    private func setText(){
        var subIndexText:String
        switch (subIndex) {
        case 0:
            subIndexText = "All News"
            break
        case 1:
            subIndexText = "Good News"
            break
        case 2:
            subIndexText = "Bad News"
            break
        case 3:
            subIndexText = "Flash News"
            break
        case 4:
            subIndexText = "Calendar News"
            break
        default:
            subIndexText = "What News"
            break
        }
        lbCenter?.text = "This is info VC,\nType=\(subIndexText)"
    }
    
    func setSubIndex(value:Int){
        subIndex = value
        setText()
    }
}

