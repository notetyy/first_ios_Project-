//
//  FeedViewController.swift
//  MyFirstProjec
//
//  Created by std114 on 5/29/17.
//  Copyright © 2017 std114. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var news: News(title:"ios" ,discription : "Error ",iconImage: #imageLiteral(resourceName: "cheese_flat"),author : "หยุด"-,createData: "28/06/60"  )
    var news: News = News(title: "Andriod", discription: "5555", iconImage: "<#T##UIImage#>, author: <#T##String#>, creatData: <#T##String#>)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        cell.IconimgView.image = self.news.iconImage
        cell.titalLable.text = self.news.title
        call.descripttionLable.text = self.news.discription
        cell.accessoryLabel.text = "\(self.news.auther)"
        return cell
        
    
    
    
    
    }
}
