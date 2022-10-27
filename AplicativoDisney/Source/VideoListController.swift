//
//  VideoList.swift
//  AplicativoDisney
//
//  Created by Lunes on 20/10/22.
//

import UIKit

class VideoListController: UIViewController {
    
    var tableView = UITableView()
    var videos: [Video] = []
    var princessData: Princess? {
        didSet {
            tableView.reloadData()
        }
    }
    struct Cells {
        static let videoCell = "VideoCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Princesas Disney  👑"
        configureTableView()
    
        API.getPrincess() { (princess) in
            self.princessData = princess
        }
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: Cells.videoCell)
        
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension VideoListController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return princessData?.data.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell) as! VideoCell
        cell.set(princessData: princessData?.data[indexPath.row] ?? Dataum(name: "", imageURL: ""))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let princess = princessData?.data[indexPath.row] else {
            return
        }
        let princessVC = PricessDetailControllerViewController()
        princessVC.princess = princessData?.data[indexPath.row]
        
        self.navigationController?.pushViewController(princessVC, animated: true)
    }
}


