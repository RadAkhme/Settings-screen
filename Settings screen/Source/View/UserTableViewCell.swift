//
//  UserTableViewCell.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 31.08.2022.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    static var identifier = "user"

    var setting: SettingsItem? {
        didSet {
            photo.image = setting?.icon
            name.text = setting?.title
            userInfo.text = setting?.userInfo
            additionalInfo.text = setting?.additionalInfo
        }
    }
    
    // MARK: - Outlets
    
    private let imageContainer: UIView = {
        let container = UIView()
        container.clipsToBounds = true
        container.contentMode = .scaleToFill
        container.layer.cornerRadius = 30
        container.layer.masksToBounds = true
        return container
    }()
    
    private let photo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    private let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    private let userInfo: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    private let additionalInfo: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 2
        return stack
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
        imageContainer.addSubview(photo)
        addSubview(imageContainer)
        addSubview(stack)
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(userInfo)
        stack.addArrangedSubview(additionalInfo)
    }
    
    private func setupLayout() {
        photo.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(imageContainer)
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.top.bottom.equalTo(contentView).offset(10)
            make.left.equalTo(contentView).offset(15)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(60)
        }
        
        stack.snp.makeConstraints { make in
            make.centerY.equalTo(imageContainer)
            make.left.equalTo(imageContainer.snp.right).offset(15)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.setting = nil
    }
}

