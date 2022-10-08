//
//  DetailController.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 08.10.2022.
//

import UIKit

class DetailController: UIViewController {
    
    var models: SettingsModel?
    
    var model = [[Settings]]()
    
    var modelTwo: Settings?

        
    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DetailView()
        models = SettingsModel()
        configureView()
    }
}

extension DetailController {
    
    // MARK: - Configurations
    
    func configureView() {
        guard let model = models?.createModels() else { return }
        detailView?.configureView(with: model)
    }
}

