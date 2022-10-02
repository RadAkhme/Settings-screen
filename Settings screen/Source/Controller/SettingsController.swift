//
//  SettingsController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 01.10.2022.
//

import UIKit

class SettingsController: UIViewController {
        
        var model: SettingsModel?

        private var settingsView: SettingsView? {
            guard isViewLoaded else { return nil }
            return view as? SettingsView
        }
        
        //MARK: - Lifecycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Настройки"
            navigationController?.navigationBar.prefersLargeTitles = true
            view = SettingsView()
            model = SettingsModel()
            configureView()
        }
}

private extension SettingsController {
    
    // MARK: - Configurations
    
    func configureView() {
        guard let models = model?.createModels() else { return }
        settingsView?.configureView(with: models)
    }
}
