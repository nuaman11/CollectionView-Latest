  //
//  ViewController.swift
//  CollectionView
//
//  Created by TRAINING on 30/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var array = ["appStore","amazon","instagram","signal","whatsapp","youtube","appStore","amazon","instagram","signal","whatsapp","youtube","appStore","amazon","instagram","signal","whatsapp","youtube","appStore","amazon","instagram","signal","whatsapp","youtube","appStore","amazon","instagram","signal","whatsapp","youtube","appStore","amazon","instagram","signal","whatsapp","youtube"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        
        cell.imgLogo.image = UIImage(named: array[indexPath.row])
        cell.lblName.text = array[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

