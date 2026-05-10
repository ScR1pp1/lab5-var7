//
//  main.swift
//  task6
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

// Создаем менеджер с тестовыми данными
let manager = DictionaryManager()

// ===== 1. ВЫВОД НАЧАЛЬНЫХ ДАННЫХ =====
print("===== 1. НАЧАЛЬНЫЕ ДАННЫЕ =====")
manager.printAllSmartphones()
manager.printAllVendors()

// ===== 2. КОЛИЧЕСТВО ЭЛЕМЕНТОВ =====
print("\n===== 2. КОЛИЧЕСТВО ЭЛЕМЕНТОВ =====")
print("Смартфонов: \(manager.smartphonesCount())")
print("Производителей: \(manager.vendorsCount())")

// ===== 3. ПОИСК ПО КЛЮЧУ =====
print("\n===== 3. ПОИСК ПО КЛЮЧУ =====")
if let cost = manager.getSmartphoneCost("iPhone 15") {
    print("iPhone 15 стоит \(cost)$")
}
if let country = manager.getVendorCountry("Apple") {
    print("Apple из страны: \(country)")
}

// ===== 4. ДОБАВЛЕНИЕ ЭЛЕМЕНТА =====
print("\n===== 4. ДОБАВЛЕНИЕ ЭЛЕМЕНТА =====")
manager.addSmartphone(name: "Google Pixel 8", cost: 799)
manager.addVendor(name: "Google", country: "USA")
manager.printAllSmartphones()

// ===== 5. МОДИФИКАЦИЯ ЭЛЕМЕНТА =====
print("\n===== 5. МОДИФИКАЦИЯ ЭЛЕМЕНТА =====")
manager.updateSmartphoneCost(name: "iPhone 15", newCost: 1099)
manager.printAllSmartphones()

// ===== 6. СОРТИРОВКА ПО КЛЮЧУ =====
print("\n===== 6. СОРТИРОВКА ПО НАЗВАНИЮ =====")
let sortedByKey = manager.smartphonesSortedByKey()
for (name, cost) in sortedByKey {
    print("  \(name): \(cost)$")
}

// ===== 7. СОРТИРОВКА ПО ЗНАЧЕНИЮ =====
print("\n===== 7. СОРТИРОВКА ПО ЦЕНЕ =====")
let sortedByValue = manager.smartphonesSortedByValue()
for (name, cost) in sortedByValue {
    print("  \(name): \(cost)$")
}

// ===== 8. УДАЛЕНИЕ ОДНОГО ЭЛЕМЕНТА =====
print("\n===== 8. УДАЛЕНИЕ ОДНОГО ЭЛЕМЕНТА =====")
manager.removeSmartphone("Xiaomi 14")
manager.printAllSmartphones()

// ===== 9. УДАЛЕНИЕ ВСЕХ ЭЛЕМЕНТОВ =====
print("\n===== 9. УДАЛЕНИЕ ВСЕХ ЭЛЕМЕНТОВ =====")
manager.removeAll()
manager.printAllSmartphones()
manager.printAllVendors()

print("\n===== ПРОГРАММА ЗАВЕРШЕНА =====")
