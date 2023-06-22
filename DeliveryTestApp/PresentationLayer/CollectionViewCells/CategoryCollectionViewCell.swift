//
//  CategoryCollectionViewCell.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit
import SnapKit

class CategoryCollectionViewCell: UICollectionViewCell {

    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.toAutoLayout()
        label.font = Fonts.sfuiDisplayReg13
        label.text = "Категория"
        label.textAlignment = .center

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        cellInitialSettings()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell(with category: String?) {
        categoryLabel.text = category
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        categoryLabel.text = nil
    }

    private func cellInitialSettings() {
        self.layer.cornerRadius = ALConstants.categoryCellRadius
        self.layer.borderWidth = ALConstants.categoryCellBorder
//        self.layer.borderColor = Palette.mainAccent?.cgColor
        self.clipsToBounds = true

        setupSubviews()
        setupSubviewsLayout()
    }

    private func setupSubviews() {
        self.contentView.addSubview(categoryLabel)
    }

    private func setupSubviewsLayout() {
        categoryLabel.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}

