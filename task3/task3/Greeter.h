//
//  Greeter.h
//  task3
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import <Foundation/Foundation.h>

@interface Greeter : NSObject

// Публичные методы

/// Возвращает тестовый массив
- (NSArray *)inputArray;

/// Выводит массив в консоль
- (void)printArray:(NSArray *)array;

/// Создает новый массив с уникальными значениями
- (NSArray *)uniqueValuesFromArray:(NSArray *)array;

/// Подсчитывает количество элементов в массиве
- (NSUInteger)countElementsInArray:(NSArray *)array;

/// Добавляет элемент в конец изменяемого массива
- (void)addElement:(id)element toMutableArray:(NSMutableArray *)array;

/// Вставляет элемент по индексу в изменяемый массив
- (void)insertElement:(id)element atIndex:(NSUInteger)index inMutableArray:(NSMutableArray *)array;

/// Удаляет последний элемент изменяемого массива
- (void)removeLastElementFromMutableArray:(NSMutableArray *)array;

/// Удаляет элемент по индексу из изменяемого массива
- (void)removeElementAtIndex:(NSUInteger)index fromMutableArray:(NSMutableArray *)array;

/// Удаляет все элементы из изменяемого массива
- (void)removeAllElementsFromMutableArray:(NSMutableArray *)array;

@end
