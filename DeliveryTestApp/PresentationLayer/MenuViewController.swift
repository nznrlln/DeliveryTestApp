//
//  MenuViewController.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit

class MenuViewController: UIViewController {

    private lazy var collectionLayout: UICollectionViewLayout = {
        UICollectionViewCompositionalLayout { (section, environmet) -> NSCollectionLayoutSection? in

//            // количество элементов в строке/группе
//            // размер контента = "пространство коллекции", обращаемся к контейнеру коллекции и берем значение его размера
//            let numberOfItemsInRow: CGFloat = 1
//            let contentSize = environmet.container.contentSize
//
//            let itemSize = NSCollectionLayoutSize(
//                widthDimension: .fractionalWidth(),
//                heightDimension: .fractionalHeight()
//            )
//            // за конкретное вычисление ширины каждого обьекта - отвечает группа
//            // высота элемента = высоте группы
//            let item = NSCollectionLayoutItem(layoutSize: itemSize)
//
//            // высота группы = 0.7 ширины элемента
//            let groupHeight = 0.7 * (contentSize.width - numberOfItemsInRow * PhotosScreenALConstants.itemSpacing) / numberOfItemsInRow
//            let groupSize = NSCollectionLayoutSize(
//                widthDimension: .fractionalWidth(PhotosScreenALConstants.groupFractionalWidth),
//                heightDimension: .absolute(groupHeight)
//            )
//            let group = NSCollectionLayoutGroup.horizontal(
//                layoutSize: groupSize,
//                subitem: item,
//                count: Int(numberOfItemsInRow) // количество элементов в одной группе
//            )
//            group.interItemSpacing = .fixed(PhotosScreenALConstants.itemSpacing)
//            // отступы группы от секции
//            group.contentInsets = .init(
//                top: 0,
//                leading: PhotosScreenALConstants.groupInset,
//                bottom: 0,
//                trailing: PhotosScreenALConstants.groupInset
//            )
//
//            let section = NSCollectionLayoutSection(group: group)
//            section.interGroupSpacing = PhotosScreenALConstants.groupSpacing
//            section.supplementariesFollowContentInsets = true
//
//            return section
            return nil
        }

    }()

    lazy var photosCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionLayout)
        collectionView.toAutoLayout()
        collectionView.backgroundColor = Palette.mainBackground

//        collectionView.dataSource = self
//        collectionView.register()

        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
