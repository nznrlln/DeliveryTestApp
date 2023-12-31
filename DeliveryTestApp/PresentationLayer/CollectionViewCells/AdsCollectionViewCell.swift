//
//  AdsCollectionViewCell.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit
import SnapKit

class AdsCollectionViewCell: UICollectionViewCell {

    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.toAutoLayout()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill

        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        cellInitialSettings()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell(with ads: UIImage?) {
        guard let model = ads else { assertionFailure("no image in collection"); return }
        photoImageView.image = model
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        photoImageView.image = nil
    }

    private func cellInitialSettings() {
        self.layer.cornerRadius = 8
        self.clipsToBounds = true

        setupSubviews()
        setupSubviewsLayout()
    }

    private func setupSubviews() {
        self.contentView.addSubview(photoImageView)
    }

    private func setupSubviewsLayout() {
        photoImageView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}
