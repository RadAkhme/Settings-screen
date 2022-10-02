//
//  DetailViewController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 01.09.2022.
//

import UIKit
import SnapKit

class DetailViewController: UIView {

    var setting: SettingsModel?
    
    func configureView(with model: Settings) {
        imageView.image = model.icon
        label.text = model.title
        imageContainer.backgroundColor = model.iconBackgroundColor
    }
    
    // MARK: - Outlets
        
    private let imageContainer: UIView = {
        let container = UIView()
        container.layer.cornerRadius = 5
        return container
    }()
    
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    // MARK: - Initial
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .systemGray6
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        imageContainer.addSubview(imageView)
        addSubview(imageContainer)
        addSubview(label)
    }
    
    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.center.self
            make.centerY.equalTo(-30)
            make.width.height.equalTo(30)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.self
            make.top.equalTo(15)
            make.centerX.self
        }
    }
}

