//
//  ConsoleView.swift
//  task7
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

/// Представление: отвечает за вывод данных в консоль
class ConsoleView {
    
    /// Выводит разделитель
    func showSeparator() {
        print("----------------------------------------")
    }
    
    /// Выводит заголовок раздела
    func showTitle(_ title: String) {
        print("\n===== \(title) =====")
    }
    
    /// Выводит массив
    func showArray(label: String, array: [Int]) {
        if array.isEmpty {
            print("\(label): [] (пустой массив)")
        } else {
            print("\(label): \(array)")
        }
    }
    
    /// Выводит опциональный массив
    func showOptionalArray(label: String, array: [Int]?) {
        if let array = array {
            showArray(label: label, array: array)
        } else {
            print("\(label): nil")
        }
    }
    
    /// Выводит количество элементов
    func showCount(label: String, count: Int?) {
        if let count = count {
            print("\(label): \(count) элементов")
        } else {
            print("\(label): nil (массив не существует)")
        }
    }
    
    /// Выводит результат поиска минимума
    func showMinResult(from finder: NumberFinder) {
        if finder.isNil() {
            print("  Результат: массив равен nil, минимум не найден")
        } else if finder.isEmpty() {
            print("  Результат: массив пуст, минимум не найден")
        } else if let min = finder.findMin() {
            print("  Минимальное число: \(min)")
        }
    }
    
    /// Выводит сообщение
    func showMessage(_ message: String) {
        print("  \(message)")
    }
}
