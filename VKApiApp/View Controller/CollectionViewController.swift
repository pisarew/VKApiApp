//
//  CollectionViewController.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {
    
    var jsonData: Welcome? = nil
    private var selectText = ""
    
    convenience init (data: Welcome?){
        self.init()
        jsonData = data
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: Collection View
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.jsonData?.response.items.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PostsCollectionViewCell
        cell.textLabel.text = self.jsonData?.response.items[indexPath.row].text
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let postVC = segue.destination as? PostViewController
        guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
        postVC?.unixDate = self.jsonData?.response.items[indexPath[0].row].date ?? 0
        postVC?.text = self.jsonData?.response.items[indexPath[0].row].text ?? ""
    }
    
   
    
    // MARK: Privare
    
    private func errorAllert(){
        let alert = UIAlertController(title: "Ошибка!",
                                      message: "Запрос по адресу не выполнен",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
    
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 20, height: 150)
    }
    
}

extension CollectionViewController{
    // MARK: Networking
    
    func getData(domain: String, count: String) {
        
        guard let url = URL(string: "\(urlAdress)?access_token=\(token)&v=5.131&domain=\(domain)&count=\(count)") else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, responce, error) in
            if let responce = responce{
                print(responce)
            }
            guard let data = data else { return }
            print(data)
            
            do{
                let decoder = JSONDecoder()
                self.jsonData = try decoder.decode(Welcome.self, from: data)
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
            }
            catch let error{
                self.errorAllert()
                print(error)
                
            }
            
        }.resume()
    }
}

