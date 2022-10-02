//
//  Model.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit

final class SettingsModel {
    
    func createModels() -> [[Settings]] {
        return [
            [Settings(title: "Радик Ахметзянов", icon: UIImage(named: "id") ?? UIImage(), iconBackgroundColor: UIColor.clear, userInfo: "Apple ID, iCloud, контент", additionalInfo: "и покупки", switcher: false)],
            [Settings(title: "Авиарежим", icon: UIImage(systemName: "airplane") ?? UIImage(), iconBackgroundColor: .orange, userInfo: "",  additionalInfo: "",switcher: true),
             Settings(title: "Wi-Fi", icon: UIImage(systemName: "wifi") ?? UIImage(), iconBackgroundColor: .systemBlue, userInfo: "", additionalInfo: "Home-wifi", switcher: false),
             Settings(title: "Bluetooth", icon: UIImage(named:"bluetooth") ?? UIImage(), iconBackgroundColor: .systemBlue, userInfo: "", additionalInfo: "Вкл.", switcher: false),
             Settings(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), iconBackgroundColor: .systemGreen, userInfo: "", additionalInfo: "Вкл.", switcher: false),
             Settings(title: "Режим модема", icon: UIImage(systemName: "personalhotspot") ?? UIImage(), iconBackgroundColor: .systemGreen, userInfo: "",  additionalInfo: "Выкл.", switcher: false),
             Settings(title: "VPN", icon: UIImage(named: "vpn") ?? UIImage(), iconBackgroundColor: .systemBlue, userInfo: "",  additionalInfo: "", switcher: true)],
            [Settings(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill") ?? UIImage(), iconBackgroundColor: .systemRed, userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Звуки", icon: UIImage(systemName: "speaker.wave.3.fill") ?? UIImage(), iconBackgroundColor: .systemPink, userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Фокусирование", icon: UIImage(systemName: "moon.fill") ?? UIImage(), iconBackgroundColor: UIColor(named: "myColor") ?? .red, userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Экранное время", icon: UIImage(systemName: "hourglass") ?? UIImage(), iconBackgroundColor: UIColor(named: "myColor") ?? .red, userInfo: "",  additionalInfo: "", switcher: false)],
            [Settings(title: "Основные", icon: UIImage(systemName: "gear") ?? UIImage(), iconBackgroundColor: .gray, userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Пункт управления", icon: UIImage(systemName: "switch.2") ?? UIImage(), iconBackgroundColor: .gray, userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size") ?? UIImage(), iconBackgroundColor: .systemBlue, userInfo: "",  additionalInfo: "", switcher: false)]
            ]
    }
}
