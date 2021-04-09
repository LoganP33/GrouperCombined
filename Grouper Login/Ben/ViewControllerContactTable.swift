//
//  ViewControllerTable.swift
//  Grouper_Group_create
//
//  Created by Ben  on 3/7/21.
//

import UIKit

class ViewControllerContactTable: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var table: UITableView!
    let myarray = ["Chris", "Ben", "Evan", "Billy", "Sarah", "Baily"]
    var selectedArr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.table.dataSource = self
        self.table.delegate = self
        self.table.isEditing = true
        self.table.allowsMultipleSelectionDuringEditing = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            self.table.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel!.text = self.myarray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(table: tableView, indexPath: indexPath)
        print("select")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(table: tableView, indexPath: indexPath)
        print("deselect")
    }
 
   

}

extension ViewControllerContactTable{
    
    //select and deselect table cell
    
    func selectDeselectCell(table: UITableView, indexPath: IndexPath){
        self.selectedArr.removeAll()
        if let arr = table.indexPathsForSelectedRows{
            for index in arr{
                selectedArr.append(myarray[index.row])
            }
        }
        print(selectedArr)
    }
}
