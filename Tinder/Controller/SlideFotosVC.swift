//
//  SlideFotosVC.swift
//  Tinder
//
//  Created by Carlos Eduardo Ocampos Vuotto Amorim on 07/07/23.
//

import UIKit

class SlideFotosVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    let fotos: [String] = [
    "pessoa-1",
    "pessoa-2",
    "pessoa-3",
    "pessoa-4",
    "pessoa-5",
    "pessoa-6",
    "pessoa-7",
    "pessoa-8",
    "pessoa-9",
    "pessoa-10",
    "pessoa-11",
    "pessoa-12",
    "pessoa-13",
    "pessoa-14",
    "pessoa-15",
    "pessoa-16",
    "pessoa-17",
    "pessoa-18",
    "pessoa-19",
    "pessoa-20",
    ]
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(SlideFotoCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.fotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SlideFotoCell

        cell.fotoImageView.image = UIImage(named: self.fotos[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.bounds.height / 2 - 10
        return .init(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 20, bottom: 0, right: 20)
    }
}
