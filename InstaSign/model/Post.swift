//
//  Post.swift
//  InstaSign
//
//  Created by Sanjar Aslonov on 15/02/22.
//

import Foundation

class Post {
    var fullname: String?
    var user_img: String?
    var user_post1: String?
    var user_post2: String?
    var likes: String?
    var desc: String?
    
    init(fullname: String, user_img: String, user_post1: String, user_post2: String, likes: String, desc: String) {
        self.fullname = fullname
        self.user_img = user_img
        self.user_post1 = user_post1
        self.user_post2 = user_post2
        self.likes = likes
        self.desc = desc
    }
}

