//
//  MainViewController.swift
//  CenaNavidad
//
//  Created by IGNACIO GALAN DE PINA on 9/1/19.
//  Copyright © 2019 IGNACIO GALAN DE PINA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    internal var dinnners:[Dinner] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pagina Principal"
        registerCells()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func registerCells(){
        let nib = UINib(nibName: "DinnerTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DinnerTableViewCell")
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

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DinnerTableViewCell = tableView.dequeueReusableCell(withIdentifier: "DinnerTableViewCell", for: indexPath) as! DinnerTableViewCell
        cell.lblName.text = "hola"
        return cell
    }
    
    
}
