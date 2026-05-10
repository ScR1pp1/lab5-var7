//
//  NumberFinder.swift
//  task7
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

/// Модель: класс для работы с опциональным массивом целых чисел
class NumberFinder {
    
    /// Опциональный массив целых чисел
    private var numbers: [Int]?
    
    /// Инициализатор с опциональным массивом
    init(numbers: [Int]?) {
        self.numbers = numbers
    }
    
    /// Поиск минимального числа в массиве
    /// - Returns: Минимальное число или nil, если массив nil или пуст
    func findMin() -> Int? {
        guard let nums = numbers, !nums.isEmpty else {
            return nil
        }
        return nums.min()
    }
    
    /// Поиск максимального числа в массиве
    func findMax() -> Int? {
        guard let nums = numbers, !nums.isEmpty else {
            return nil
        }
        return nums.max()
    }
    
    /// Возвращает количество элементов
    func count() -> Int? {
        return numbers?.count
    }
    
    /// Проверяет, является ли массив nil
    func isNil() -> Bool {
        return numbers == nil
    }
    
    /// Проверяет, пуст ли массив
    func isEmpty() -> Bool {
        return numbers?.isEmpty ?? true
    }
    
    /// Возвращает сам массив (для вывода)
    func getArray() -> [Int]? {
        return numbers
    }
}
