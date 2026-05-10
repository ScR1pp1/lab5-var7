//
//  ArrayController.swift
//  task7
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

/// Контроллер: управляет логикой операций с массивами
class ArrayController {
    
    private let view = ConsoleView()
    
    /// Запуск демонстрации всех операций
    func run() {
        
        // а) Вывод неизменяемого массива
        view.showTitle("а) ВЫВОД НЕИЗМЕНЯЕМОГО МАССИВА")
        let immutableArray = [10, 5, 8, 3, 12, 7]
        view.showArray(label: "Неизменяемый массив", array: immutableArray)
        
        // б) Создание пустого изменяемого массива
        view.showTitle("б) ПУСТОЙ ИЗМЕНЯЕМЫЙ МАССИВ")
        var mutableArray: [Int] = []
        view.showArray(label: "Изменяемый массив", array: mutableArray)
        
        // в) Ввод элементов с консоли
        view.showTitle("в) ВВОД ЭЛЕМЕНТОВ С КОНСОЛИ")
        print("  Введите числа через пробел:")
        if let input = readLine() {
            let parts = input.split(separator: " ")
            for part in parts {
                if let num = Int(part) {
                    mutableArray.append(num)
                }
            }
        }
        view.showArray(label: "После ввода", array: mutableArray)
        
        // г) Подсчет количества элементов
        view.showTitle("г) КОЛИЧЕСТВО ЭЛЕМЕНТОВ")
        print("  В неизменяемом: \(immutableArray.count)")
        print("  В изменяемом: \(mutableArray.count)")
        
        // д) Добавление элемента
        view.showTitle("д) ДОБАВЛЕНИЕ ЭЛЕМЕНТА")
        mutableArray.append(100)
        view.showArray(label: "После добавления 100", array: mutableArray)
        
        // е) Вставка элемента по индексу
        view.showTitle("е) ВСТАВКА ПО ИНДЕКСУ")
        if mutableArray.count >= 1 {
            mutableArray.insert(200, at: 1)
            view.showArray(label: "После вставки 200 на индекс 1", array: mutableArray)
        }
        
        // ё) Удаление последнего элемента
        view.showTitle("ё) УДАЛЕНИЕ ПОСЛЕДНЕГО ЭЛЕМЕНТА")
        if !mutableArray.isEmpty {
            mutableArray.removeLast()
            view.showArray(label: "После удаления последнего", array: mutableArray)
        }
        
        // ж) Удаление элемента по индексу
        view.showTitle("ж) УДАЛЕНИЕ ПО ИНДЕКСУ")
        if !mutableArray.isEmpty {
            mutableArray.remove(at: 0)
            view.showArray(label: "После удаления по индексу 0", array: mutableArray)
        }
        
        // з) Удаление всех элементов
        view.showTitle("з) УДАЛЕНИЕ ВСЕХ ЭЛЕМЕНТОВ")
        mutableArray.removeAll()
        view.showArray(label: "После удаления всех", array: mutableArray)
        
        // ===== ИНДИВИДУАЛЬНОЕ ЗАДАНИЕ: NumberFinder =====
        view.showTitle("ИНДИВИДУАЛЬНОЕ ЗАДАНИЕ: NumberFinder")
        view.showMessage("Класс принимает опциональный массив чисел")
        view.showMessage("Метод: поиск минимального числа")
        view.showSeparator()
        
        // Тест 1: обычный массив
        view.showMessage("Тест 1: массив [9, 4, 7, 1, 5]")
        let finder1 = NumberFinder(numbers: [9, 4, 7, 1, 5])
        view.showMinResult(from: finder1)
        
        // Тест 2: пустой массив
        view.showMessage("\n  Тест 2: пустой массив []")
        let finder2 = NumberFinder(numbers: [])
        view.showMinResult(from: finder2)
        
        // Тест 3: nil массив
        view.showMessage("\n  Тест 3: nil массив")
        let finder3 = NumberFinder(numbers: nil)
        view.showMinResult(from: finder3)
        
        // Тест 4: массив с отрицательными числами
        view.showMessage("\n  Тест 4: массив [-5, -1, -10, 0, 3]")
        let finder4 = NumberFinder(numbers: [-5, -1, -10, 0, 3])
        view.showMinResult(from: finder4)
        
        view.showTitle("ПРОГРАММА ЗАВЕРШЕНА")
    }
}
