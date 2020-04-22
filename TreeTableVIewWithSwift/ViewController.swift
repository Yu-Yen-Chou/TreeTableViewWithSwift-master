//
//  ViewController.swift
//  TreeTableVIewWithSwift
//
//  Created by Robert Zhang on 15/10/24.
//  Copyright © 2015年 robertzhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取资源
//        let plistpath = Bundle.main.path(forResource: "DataInof", ofType: "plist")!
//        let data = NSMutableArray(contentsOfFile: plistpath)
        
        var data = [TreeNode]()
        // let beiJing = YSTreeTableViewNode(nodeID: 1, nodeName: "北京", leftImageName: "", rightImageName: "", isExpand: true)!
        let beiJing = TreeNode(desc: "test", id: "1", pId: "0", name: "level1")
        data.append(beiJing)
        
        let beiJing3 = TreeNode(desc: "test", id: "2", pId: "1", name: "level1_1")
       data.append(beiJing3)
//
        let beiJing4 = TreeNode(desc: "test", id: "3", pId: "2", name: "level1_1_1")
            data.append(beiJing4)
        let beiJing44 = TreeNode(desc: "test", id: "6", pId: "2", name: "level1_1_1")
        data.append(beiJing44)
        
        
        let beiJing2 = TreeNode(desc: "test", id: "4", pId: "0", name: "level2")
        data.append(beiJing2)
        
        let beiJing22 = TreeNode(desc: "test", id: "5", pId: "4", name: "level2_2")
              data.append(beiJing22)
        
        
        
        
        // 初始化TreeNode数组
        let nodes = TreeNodeHelper.sharedInstance.getSortedNodes(data, defaultExpandLevel: 2)//0 第一層 1 第一層 2第二層
        
        // 初始化自定义的tableView
        let tableview: TreeTableView = TreeTableView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height-20), withData: nodes)
       
        self.view.addSubview(tableview)
        
        let delayTime = DispatchTime.now() + 3.0
              print("one")
              DispatchQueue.main.asyncAfter(deadline: delayTime, execute: {
                 hello()
              })
              
              func hello() {
                 print("text")

                
     //更新資料
//                 let test = data[0]
//                 test.name = "level1_333"
//
//                 let test2 = data[2]
//                 test2.name = "level1GGG"
//
                
//   //增加節點
//
//                 let beiJing0 = TreeNode(desc: "test", id: "6", pId: "2", name: "level244")
//                 data.append(beiJing0)
//                 let beiJing01 = TreeNode(desc: "test", id: "7", pId: "6", name: "le")
//                 data.append(beiJing01)
                
             //   data.removeAll()
                // data.remove(at: 2)
                
//                 data.remove(at: 2)
//
//                 let nodes = TreeNodeHelper.sharedInstance.getSortedNodes(data, defaultExpandLevel: 1)
//
//                tableview.update_node(data:nodes)
//                tableview.reloadData()
                
                
              }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

