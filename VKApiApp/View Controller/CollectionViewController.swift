//
//  CollectionViewController.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {
    
    //private var posts: [Post] = []
    
    var domain = "svoidmitrov"
    //private var jsonData: Welcome

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func loadView() {
        super.loadView()
        getData()
    }


    // MARK: Collection View
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PostsCollectionViewCell
    
        cell.textLabel.text = domain 
    
        return cell
    }
    
    // MARK: Privare
    
    private func errorAllert(){
        let alert = UIAlertController(title: "Ошибка!",
                                      message: "Запрос по адресу \(domain) не выполнен",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    // MARK: Networking
    
    private func getData(){
        guard let url = URL(string: "\(urlAdress)?access_token=\(token)&v=5.131&domain=\(domain)&count=1") else {
            errorAllert()
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, responce, error) in
//            if let responce = responce{
//                print(responce)
//            }
            guard let data = data else { return }
            //print(data)
            
            do{
                let decoder = JSONDecoder()
                let jsonPosts = try decoder.decode(Welcome.self, from: data)
                print(jsonPosts)
            }
            catch let error{
                print(error)
            }
            
        }.resume()
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 48, height: 100)
    }
    
}
