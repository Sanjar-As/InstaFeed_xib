//
//  HomeViewController.swift
//  InstaSign
//
//  Created by Sanjar Aslonov on 14/02/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    // MARK: - Methods
    
    func initViews() {
        tableView.delegate = self
        tableView.dataSource = self
        
        setNavigationBar()
        
        items.append(Post(fullname: "kamoloff", user_img: "im_person1", user_post1: "im_post2", user_post2: "im_post4", likes: "1,2K", desc: "Was a great jump. Glad you sealed it to the camera..."))
        items.append(Post(fullname: "Sarah >_.", user_img: "im_person2", user_post1: "im_post1", user_post2: "im_post3", likes: "23,4K", desc: "It should be delicious, right? 😅🤗"))
    }
    
    func setNavigationBar() {
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "Instagram"
    }
    
    
    // MARK: - Actions
    
    @objc func leftTapped() {}
    
    @objc func rightTapped() {}
    
    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.fullnameLabel.text = item.fullname
        cell.profileImageView.image = UIImage(named: item.user_img!)
        cell.postImageView1.image = UIImage(named: item.user_post1!)
        cell.postImageView2.image = UIImage(named: item.user_post2!)
        cell.pressedLike.text = item.likes
        cell.briefDescription.text = item.desc
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 800
    }
}
