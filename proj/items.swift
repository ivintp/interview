//
//  items.swift
//  proj
//
//  Created by iroid on 11/12/23.
//  Copyright © 2023 iroid. All rights reserved.
//

import UIKit

class items: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var additem: UIButton!
    var data = ["Iphone 14 pro max","Samsung S23 Ultra","Xiaomi Redmi Note 13","One Plus 12 pro"]
    var pic = ["iphone-14-Pro-Max","S23-Ultra","xiaomi redmi note 13","OnePlus-12"]
    var money = ["₹129900","₹145000","₹38000","₹65000"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = tableView.dequeueReusableCell(withIdentifier: "value")as! TableViewCellitems
        
        tcell.img.layer.cornerRadius = 10
        tcell.price.text = money[indexPath.row]
            tcell.name.text = data[indexPath.row]
        tcell.img.image = UIImage(named: pic[indexPath.row])
         return tcell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
        
    }
    @IBAction func adddata(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let view = storyboard.instantiateViewController(identifier: "itemname")as! additems
        self.navigationController?.pushViewController(view, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        additem.layer.cornerRadius = 10
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
