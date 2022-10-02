//
//  TableViewCell.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    static var identifier = "cell"
    
    func configureView(with model: Settings) {
        iconImage.image = model.icon
        label.text = model.title
        imageContainer.backgroundColor = model.iconBackgroundColor
        additionalInfo.text = model.additionalInfo
    }
    
//    var setting: SettingsItem? {
//        didSet {
//            iconImage.image = setting?.icon
//            label.text = setting?.title
//            imageContainer.backgroundColor = setting?.iconBackgroundColor
//            additionalInfo.text = setting?.additionalInfo
//        }
//    }
    
    // MARK: _ Outlets
    
    private let imageContainer: UIView = {
        let container = UIView()
        container.layer.cornerRadius = 5
        return container
    }()
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let additionalInfo: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        return label
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Error")
    }

    // MARK: - Setup
    
    private func setupHierarchy() {
        imageContainer.addSubview(iconImage)
        contentView.addSubview(imageContainer)
        contentView.addSubview(label)
        contentView.addSubview(additionalInfo)
    }
    
    private func setupLayout() {
        iconImage.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left).offset(15)
            make.centerY.equalTo(contentView)
            make.height.equalTo(contentView).dividedBy(1.5)
            make.width.equalTo(imageContainer.snp.height)
        }
        
        label.snp.makeConstraints { make in
            make.centerY.equalTo(imageContainer)
            make.left.equalTo(imageContainer.snp.right).offset(15)
        }
        
        additionalInfo.snp.makeConstraints { make in
            make.right.equalTo(contentView).offset(-8)
            make.centerY.equalTo(contentView)
        }
    }
}

