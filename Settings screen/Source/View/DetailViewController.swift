//
//  DetailViewController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 01.09.2022.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    var setting: SettingsItem?
    
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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        configure()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        imageContainer.addSubview(imageView)
        view.addSubview(imageContainer)
        view.addSubview(label)
    }
    
    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.centerY.equalTo(view).offset(-30)
            make.width.height.equalTo(30)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(imageContainer.snp.bottom).offset(15)
            make.centerX.equalTo(view)
        }
    }
    
    private func configure() {
        imageView.image = setting?.icon
        label.text = setting?.title
        imageContainer.backgroundColor = setting?.iconBackgroundColor
    }
}

