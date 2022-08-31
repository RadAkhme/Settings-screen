//
//  Model.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import UIKit
import SnapKit

struct SettingsItem {
    var title: String
    var icon: UIImage
    var iconBackgroundColor: UIColor
    var userInfo: String?
    var switcher: Bool
}

extension SettingsItem {
    static var settingItems: [[SettingsItem]] = [
        [SettingsItem(title: "Радик Ахметзянов", icon: UIImage(named: "id")!, iconBackgroundColor: UIColor.clear, userInfo: "Apple ID, iCloud, контент и покупки", switcher: false)],
        [SettingsItem(title: "Авиарежим", icon: UIImage(systemName: "airplane")!, iconBackgroundColor: .orange, userInfo: nil, switcher: true),
         SettingsItem(title: "Wi-Fi", icon: UIImage(systemName: "wifi")!, iconBackgroundColor: .systemBlue, userInfo: nil, switcher: false),
         SettingsItem(title: "Bluetooth", icon: UIImage(named:"bluetooth")!, iconBackgroundColor: .systemBlue, userInfo: nil, switcher: false),
         SettingsItem(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, iconBackgroundColor: .systemGreen, userInfo: nil, switcher: false),
         SettingsItem(title: "Режим модема", icon: UIImage(systemName: "personalhotspot")!, iconBackgroundColor: .systemGreen, userInfo: nil, switcher: false),
         SettingsItem(title: "VPN", icon: UIImage(named: "vpn")!, iconBackgroundColor: .systemBlue, userInfo: nil, switcher: false)],
        [SettingsItem(title: "Уведомления", icon: UIImage(systemName: "bell.badge.fill")!, iconBackgroundColor: .systemRed, userInfo: nil, switcher: false),
         SettingsItem(title: "Звуки", icon: UIImage(systemName: "speaker.wave.3.fill")!, iconBackgroundColor: .systemPink, userInfo: nil, switcher: false),
         SettingsItem(title: "Фокусирование", icon: UIImage(systemName: "moon.fill")!, iconBackgroundColor: .purple, userInfo: nil, switcher: false),
         SettingsItem(title: "Экранное время", icon: UIImage(systemName: "hourglass")!, iconBackgroundColor: .purple, userInfo: nil, switcher: false)],
        [SettingsItem(title: "Основные", icon: UIImage(systemName: "gear")!, iconBackgroundColor: .gray, userInfo: nil, switcher: false),
         SettingsItem(title: "Пункт управления", icon: UIImage(systemName: "switch.2")!, iconBackgroundColor: .gray, userInfo: nil, switcher: false),
         SettingsItem(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size")!, iconBackgroundColor: .systemBlue, userInfo: nil, switcher: false)]
        ]
}
