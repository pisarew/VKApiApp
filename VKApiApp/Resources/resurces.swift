//
//  resurces.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//

let token = "KEY"
let URL = "https://api.vk.com/method/wall.get"
let version = 5.131

struct Post{
    let text: String
    
    init (text: String){
        self.text = text
    }
}
