//
//  DictionaryManager.swift
//  task6
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

/// Класс для управления словарями смартфонов и производителей
class DictionaryManager {
    
    // Словарь смартфонов (название -> цена)
    private var smartphones: [String: Int]
    
    // Словарь производителей (название -> страна)
    private var vendors: [String: String]
    
    /// Инициализация с тестовыми данными
    init() {
        self.smartphones = [
            "iPhone 15": 999,
            "Samsung S24": 899,
            "Xiaomi 14": 699
        ]
        self.vendors = [
            "Apple": "USA",
            "Samsung": "Korea",
            "Xiaomi": "China"
        ]
    }
    
    /// Инициализация пустых словарей
    init(empty: Bool) {
        self.smartphones = [:]
        self.vendors = [:]
    }
    
    // MARK: - Количество элементов
    
    func smartphonesCount() -> Int {
        return smartphones.count
    }
    
    func vendorsCount() -> Int {
        return vendors.count
    }
    
    // MARK: - Поиск по ключу
    
    func getSmartphoneCost(_ name: String) -> Int? {
        return smartphones[name]
    }
    
    func getVendorCountry(_ name: String) -> String? {
        return vendors[name]
    }
    
    // MARK: - Добавление
    
    func addSmartphone(name: String, cost: Int) {
        smartphones[name] = cost
        print("Смартфон '\(name)' добавлен с ценой \(cost)$")
    }
    
    func addVendor(name: String, country: String) {
        vendors[name] = country
        print("Производитель '\(name)' из \(country) добавлен")
    }
    
    // MARK: - Модификация
    
    func updateSmartphoneCost(name: String, newCost: Int) {
        if smartphones[name] != nil {
            smartphones[name] = newCost
            print("Цена '\(name)' изменена на \(newCost)$")
        } else {
            print("Смартфон '\(name)' не найден")
        }
    }
    
    // MARK: - Вывод всех элементов
    
    func printAllSmartphones() {
        print("\n--- Смартфоны (название, цена) ---")
        if smartphones.isEmpty {
            print("Словарь пуст")
        } else {
            for (name, cost) in smartphones.sorted(by: { $0.key < $1.key }) {
                print("  \(name): \(cost)$")
            }
        }
    }
    
    func printAllVendors() {
        print("\n--- Производители (название, страна) ---")
        if vendors.isEmpty {
            print("Словарь пуст")
        } else {
            for (name, country) in vendors.sorted(by: { $0.key < $1.key }) {
                print("  \(name): \(country)")
            }
        }
    }
    
    // MARK: - Сортировка
    
    func smartphonesSortedByKey() -> [(String, Int)] {
        return smartphones.sorted { $0.key < $1.key }
    }
    
    func smartphonesSortedByValue() -> [(String, Int)] {
        return smartphones.sorted { $0.value < $1.value }
    }
    
    // MARK: - Удаление
    
    func removeSmartphone(_ name: String) {
        if smartphones.removeValue(forKey: name) != nil {
            print("Смартфон '\(name)' удален")
        } else {
            print("Смартфон '\(name)' не найден")
        }
    }
    
    func removeVendor(_ name: String) {
        if vendors.removeValue(forKey: name) != nil {
            print("Производитель '\(name)' удален")
        } else {
            print("Производитель '\(name)' не найден")
        }
    }
    
    func removeAll() {
        smartphones.removeAll()
        vendors.removeAll()
        print("Все элементы удалены из обоих словарей")
    }
}
