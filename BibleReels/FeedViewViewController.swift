//
//  FeedViewViewController.swift
//  BibleReels
//
//  Created by Phanuelle Manuel on 4/26/25.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Feed"
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PostCell.self, forCellReuseIdentifier: "PostCell")
        view.addSubview(tableView)
        tableView.frame = view.bounds
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // Placeholder
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        cell.configure()
        return cell
    }
}
