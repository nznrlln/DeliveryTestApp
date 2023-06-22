//
//  PriceCollectionViewCell.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit
import SnapKit

class ProductCollectionViewCell: UICollectionViewCell {

    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.toAutoLayout()

        return imageView
    }()

    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.toAutoLayout()
        label.font = Fonts.sfuiDisplaySemibold17
        label.tintColor = Palette.mainText
        label.text = "Товар"

        return label
    }()

    private let productDescriptionLabel: UILabel = {
        let label = UILabel()
        label.toAutoLayout()
        label.font = Fonts.sfuiDisplayReg13
        label.tintColor = Palette.secondaryText
        label.text = "Описание товара"
        label.textAlignment = .left
        label.numberOfLines = 5
        label.lineBreakMode = .byTruncatingMiddle

        return label
    }()

    private let priceLabel: UILabel = {
        let label = UILabel()
        label.toAutoLayout()
        label.font = Fonts.sfuiDisplayReg13
        label.tintColor = Palette.mainAccent
        label.text = "Цена"
        label.textAlignment = .center
        label.layer.cornerRadius = ALConstants.priceRadius
        label.layer.borderWidth = ALConstants.priceBorder
        label.layer.borderColor = Palette.mainAccent?.cgColor

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        cellInitialSettings()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell() {
        productImageView.image
        productNameLabel.text
        productDescriptionLabel.text
        priceLabel.text
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        productImageView.image = nil
        productNameLabel.text = ""
        productDescriptionLabel.text = ""
        priceLabel.text = ""
    }

    private func cellInitialSettings() {
//        self.layer.cornerRadius = ALConstants.priceCellRadius
//        self.layer.borderWidth = ALConstants.priceCellBorder
//        self.layer.borderColor = Palette.mainAccent?.cgColor
//        self.clipsToBounds = true

        setupSubviews()
        setupSubviewsLayout()
    }

    private func setupSubviews() {
        self.contentView.addSubviews(
            productImageView,
            productNameLabel,
            productDescriptionLabel,
            priceLabel
        )
    }

    private func setupSubviewsLayout() {
        productImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(ALConstants.productImageYInset)
            make.leading.equalToSuperview().inset(ALConstants.productImageXInset)
            make.bottom.lessThanOrEqualToSuperview().inset(ALConstants.productImageYInset)
            make.width.equalTo(ALConstants.productImageWidth)
            make.height.equalTo(ALConstants.productImageHeight)
        }

        productNameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(ALConstants.productNameYInset)
            make.leading.equalTo(productImageView.snp.trailing).offset(ALConstants.productNameXOffset)
            make.trailing.equalToSuperview().inset(ALConstants.productNameXInset)
        }

        productDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(productNameLabel.snp.bottom).offset(ALConstants.productDescriptionYOffset)
            make.leading.equalTo(productImageView.snp.trailing).offset(ALConstants.productDescriptionXOffset)
            make.trailing.equalToSuperview().inset(ALConstants.productDescriptionXInset)
        }

        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(productDescriptionLabel.snp.bottom).offset(ALConstants.priceYOffset)
            make.trailing.bottom.equalToSuperview().inset(ALConstants.priceInset)
        }
    }
}
