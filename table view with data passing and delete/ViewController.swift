//
//  ViewController.swift
//  table view with data passing and delete
//
//  Created by Niraj on 24/08/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tlbView: UITableView!
    
    var array1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH","IIII"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh","iiii"]
    
    var arrImg = [UIImage(named: "1.jpeg"),
                  UIImage(named: "2.jpeg"),
                  UIImage(named: "3.jpeg"),
                  UIImage(named: "4.jpeg"),
                  UIImage(named: "5.jpeg"),
                  UIImage(named: "6.jpeg"),
                  UIImage(named: "7.jpeg"),
                  UIImage(named: "8.jpeg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.lbl1.text = array1[indexPath.row]
        cell.lbl2.text = array2[indexPath.row]
        cell.img.image = arrImg[indexPath.row]
//        cell.img.image = UIImage(named: "1")
        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = array1[indexPath.row]
//        cell?.detailTextLabel?.text = array2[indexPath.row]
//        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.view.backgroundColor = UIColor.green
        let detailVC: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.strlbl1 = array1[indexPath.row]
        detailVC.strlbl2 = array2[indexPath.row]
        detailVC.strimg = arrImg[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrImg.remove(at: indexPath.row)
            tlbView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

