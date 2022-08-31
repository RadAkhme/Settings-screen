//
//  TableViewCell.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    var setting: SettingsItem? {
        didSet {
            iconImage.image = setting?.icon
            label.text = setting?.title
            imageContainer.backgroundColor = setting?.iconBackgroundColor
        }
    }
    
    // MARK: _ Outlets
    
    private let imageContainer: UIView = {
        let container = UIView()
        container.clipsToBounds = true
        container.contentMode = .scaleToFill
        container.layer.cornerRadius = 5
        container.layer.masksToBounds = true
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
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    
    private func setupHierarchy() {
        imageContainer.addSubview(iconImage)
        addSubview(imageContainer)
        addSubview(label)

    }
    
    private func setupLayout() {
        iconImage.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(imageContainer)
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.top.bottom.equalTo(contentView).offset(10)
            make.left.equalTo(contentView).offset(15)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(25)
        }
        
        label.snp.makeConstraints { make in
            make.centerY.equalTo(imageContainer)
            make.left.equalTo(imageContainer.snp.right).offset(20)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.setting = nil
    }
}

