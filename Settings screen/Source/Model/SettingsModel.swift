//
//  Model.swift
//  Settings screen
//
//  Created by Радик Ахметзянов on 30.08.2022.
//

import Foundation

final class SettingsModel {
    
    func createModels() -> [[Settings]] {
        return [
            [Settings(title: "Радик Ахметзянов", icon: "id", iconBackgroundColor: "", userInfo: "Apple ID, iCloud, контент", additionalInfo: "и покупки", switcher: false)],
            [Settings(title: "Авиарежим", icon: "airplane", iconBackgroundColor: "orange", userInfo: "",  additionalInfo: "",switcher: true),
             Settings(title: "Wi-Fi", icon: "wifi", iconBackgroundColor: "blue", userInfo: "", additionalInfo: "Home-wifi", switcher: false),
             Settings(title: "Bluetooth", icon: "bluetooth", iconBackgroundColor: "blue", userInfo: "", additionalInfo: "Вкл.", switcher: false),
             Settings(title: "Сотовая связь", icon: "antenna.radiowaves.left.and.right", iconBackgroundColor: "green", userInfo: "", additionalInfo: "Вкл.", switcher: false),
             Settings(title: "Режим модема", icon: "personalhotspot", iconBackgroundColor: "green", userInfo: "",  additionalInfo: "Выкл.", switcher: false),
             Settings(title: "VPN", icon: "vpn", iconBackgroundColor: "blue", userInfo: "",  additionalInfo: "", switcher: true)],
            [Settings(title: "Уведомления", icon: "bell.badge.fill", iconBackgroundColor: "red", userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Звуки", icon: "speaker.wave.3.fill", iconBackgroundColor: "red", userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Фокусирование", icon: "moon.fill", iconBackgroundColor: "myColor", userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Экранное время", icon: "hourglass", iconBackgroundColor: "myColor", userInfo: "",  additionalInfo: "", switcher: false)],
            [Settings(title: "Основные", icon: "gear", iconBackgroundColor: "gray", userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Пункт управления", icon: "switch.2", iconBackgroundColor: "gray", userInfo: "",  additionalInfo: "", switcher: false),
             Settings(title: "Экран и яркость", icon: "textformat.size", iconBackgroundColor: "blue", userInfo: "",  additionalInfo: "", switcher: false)]
        ]
    }
}
