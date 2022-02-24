//
//  resurces.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//

let token = "a6d0701fa6d0701fa6d0701fe0a6aa21cfaa6d0a6d0701fc77957373e0265f6e83e255d"
let URL = "https://api.vk.com/method/wall.get"
let version = 5.131

struct Post{
    let text: String
    
    init (text: String){
        self.text = text
    }
}
