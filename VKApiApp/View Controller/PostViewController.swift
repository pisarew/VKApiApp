//
//  PostViewController.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 28.02.2022.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    var text = "ХУИ"
    var unixDate = 1645971205
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = text
        let date = Date(timeIntervalSince1970: TimeInterval(unixDate))
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm" //Specify your format that you want
        let strDate = dateFormatter.string(from: date)
        dateLabel.text = strDate
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
