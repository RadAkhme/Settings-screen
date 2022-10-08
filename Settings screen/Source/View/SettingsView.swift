//
//  SettingsView.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit
import SnapKit

class SettingsView: UIView {
    
    func configureView(with models: [[Settings]]) {
        self.models = models
        tableView.reloadData()
    }
    
    private var models = SettingsController.model
    
    var navigationController = UINavigationController()
    
    // MARK: - Outlets
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.layer.masksToBounds = true
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 10
        tableView.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
        return tableView
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
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(safeAreaInsets)
        }
    }
    
    @objc func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch активирован")
        } else {
            print("Switch деактивирован")
        }
    }
}

extension SettingsView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let user = tableView.dequeueReusableCell(withIdentifier: "user", for: indexPath) as? UserTableViewCell
            user?.configureView(with: models[indexPath.section][indexPath.row])
            user?.accessoryType = .disclosureIndicator
            return user ?? UITableViewCell()
        default:
            let mySwitch = UISwitch()
            mySwitch.addTarget(self, action: #selector(switchAction), for: .valueChanged)
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
            cell?.configureView(with: models[indexPath.section][indexPath.row])
            cell?.accessoryType = .disclosureIndicator
            if models[indexPath.section][indexPath.row].switcher != false {
                cell?.accessoryView = mySwitch
            }
            return cell ?? UITableViewCell()
        }
    }
}

extension SettingsView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 80
        }
        if (indexPath.section != 0) {
            return 40
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let viewController = DetailController()
//        navigationController.pushViewController(viewController, animated: true)

        tableView.deselectRow(at: indexPath, animated: true)
    }
}
