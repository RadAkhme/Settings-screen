//
//  Model.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit

struct SettingsItem {
    var title: String
    var icon: UIImage
    var iconBackgroundColor: UIColor
    var userInfo: String?
    var additionalInfo: String?
    var switcher: Bool
}

extension SettingsItem {
    static var settingItems: [[SettingsItem]] = [
        [SettingsItem(title: "Радик Ахметзянов", icon: UIImage(named: "id") ?? UIImage(), iconBackgroundColor: UIColor.clear, userInfo: "Apple ID, iCloud, контент", additionalInfo: "и покупки", switcher: false)],
        [SettingsItem(title: "Авиарежим", icon: UIImage(systemName: "airplane") ?? UIImage(), iconBackgroundColor: .orange, switcher: true),
         SettingsItem(title: "Wi-Fi", icon: UIImage(systemName: "wifi") ?? UIImage(), iconBackgroundColor: .systemBlue, additionalInfo: "Home-wifi", switcher: false),
         SettingsItem(title: "Bluetooth", icon: UIImage(named:"bluetooth") ?? UIImage(), iconBackgroundColor: .systemBlue, additionalInfo: "Вкл.", switcher: false),
         SettingsItem(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), iconBackgroundColor: .systemGreen, additionalInfo: "Вкл.", switcher: false),
         SettingsItem(title: "Режим модема", icon: UIImage(systemName: "personalhotspot") ?? UIImage(), iconBackgroundColor: .systemGreen,  additionalInfo: "Выкл.", switcher: false),
         SettingsItem(title: "VPN", icon: UIImage(named: "vpn") ?? UIImage(), iconBackgroundColor: .systemBlue, switcher: true)],
        [SettingsItem(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill") ?? UIImage(), iconBackgroundColor: .systemRed, switcher: false),
         SettingsItem(title: "Звуки", icon: UIImage(systemName: "speaker.wave.3.fill") ?? UIImage(), iconBackgroundColor: .systemPink, switcher: false),
         SettingsItem(title: "Фокусирование", icon: UIImage(systemName: "moon.fill") ?? UIImage(), iconBackgroundColor: UIColor(named: "myColor") ?? UIColor.purple, switcher: false),
         SettingsItem(title: "Экранное время", icon: UIImage(systemName: "hourglass") ?? UIImage(), iconBackgroundColor: UIColor(named: "myColor") ?? UIColor.purple, switcher: false)],
        [SettingsItem(title: "Основные", icon: UIImage(systemName: "gear") ?? UIImage(), iconBackgroundColor: .gray, switcher: false),
         SettingsItem(title: "Пункт управления", icon: UIImage(systemName: "switch.2") ?? UIImage(), iconBackgroundColor: .gray, switcher: false),
         SettingsItem(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size") ?? UIImage(), iconBackgroundColor: .systemBlue, switcher: false)]
        ]
}
