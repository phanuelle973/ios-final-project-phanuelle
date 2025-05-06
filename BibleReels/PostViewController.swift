//
//  PostViewViewController.swift
//  BibleReels
//
//  Created by Phanuelle Manuel on 4/26/25.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "New Post"

        let postButton = UIButton(type: .system)
        postButton.setTitle("Post Bible Reel", for: .normal)
        postButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        postButton.addTarget(self, action: #selector(postTapped), for: .touchUpInside)
        
        postButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(postButton)
        
        NSLayoutConstraint.activate([
            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func postTapped() {
        let alert = UIAlertController(title: "✅ Bible Reel Posted", message: "Keep up the consistency!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
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
