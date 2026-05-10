//
//  main.swift
//  task4
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

import Foundation

// Массив названий дней недели
let daysOfWeek = [
    "понедельник",
    "вторник",
    "среда",
    "четверг",
    "пятница",
    "суббота",
    "воскресенье"
]

print("===== ОПРЕДЕЛЕНИЕ ДНЯ НЕДЕЛИ =====")
print("1 января — понедельник")
print("Введите число от 1 до 365:")

// Читаем ввод
guard let input = readLine(), let dayNumber = Int(input) else {
    print("Ошибка: введите целое число!")
    exit(1)
}

// Проверяем диапазон
guard dayNumber >= 1 && dayNumber <= 365 else {
    print("Ошибка: число должно быть от 1 до 365!")
    exit(1)
}

// Вычисляем индекс дня недели
// 1 января (день 1) = понедельник (индекс 0)
// (1 - 1) % 7 = 0 → понедельник
// (7 - 1) % 7 = 6 → воскресенье
// (8 - 1) % 7 = 0 → снова понедельник
let dayIndex = (dayNumber - 1) % 7
let dayName = daysOfWeek[dayIndex]

// Вывод результата
print("")
print("===== РЕЗУЛЬТАТ =====")
print("День \(dayNumber) — это \(dayName)")

// Для отчета: тестовые примеры
print("")
print("===== ТЕСТОВЫЕ ПРИМЕРЫ =====")
let testDays = [1, 7, 8, 15, 365]
for testDay in testDays {
    let idx = (testDay - 1) % 7
    print("День \(testDay): \(daysOfWeek[idx])")
}
