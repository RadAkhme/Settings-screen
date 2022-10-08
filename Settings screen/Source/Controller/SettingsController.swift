//
//  SettingsController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 01.10.2022.
//

import UIKit

class SettingsController: UIViewController {
    
        static var models: SettingsModel?
    
        static var model = [[Settings]]()
    
        private var settingsView: SettingsView? {
            guard isViewLoaded else { return nil }
            return view as? SettingsView
        }
    
        private var detailView: DetailView? {
            guard isViewLoaded else { return nil }
            return view as? DetailView
        }
        
        //MARK: - Lifecycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Настройки"
            navigationController?.navigationBar.prefersLargeTitles = true
            view = SettingsView()
            SettingsController.models = SettingsModel()
            configureView()
        }
}

extension SettingsController {
    
    // MARK: - Configurations
    
    func configureView() {
        guard let models = SettingsController.models?.createModels() else { return }
        settingsView?.configureView(with: models)
    }
}

