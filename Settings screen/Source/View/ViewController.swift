//
//  ViewController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var settingItems: [[SettingsItem]]?
    
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
    
    private var searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "Поиск"
        return searchController
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        settingItems = SettingsItem.settingItems
        view.backgroundColor = .systemGray6
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchController
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(view)
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

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingItems?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingItems?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let user = tableView.dequeueReusableCell(withIdentifier: "user", for: indexPath) as? UserTableViewCell
            user?.setting = settingItems?[indexPath.section][indexPath.row]
            user?.accessoryType = .disclosureIndicator
            return user ?? UITableViewCell()
        default:
            let mySwitch = UISwitch()
            mySwitch.addTarget(self, action: #selector(switchAction), for: .valueChanged)
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
            cell?.setting = settingItems?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            if settingItems?[indexPath.section][indexPath.row].switcher != false {
                cell?.accessoryView = mySwitch
            }
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
    
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
        let viewController = DetailViewController()
        viewController.setting = settingItems?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажал: \(settingItems?[indexPath.section][indexPath.row].title ?? "")")
    }
}
