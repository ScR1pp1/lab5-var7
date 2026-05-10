//
//  Greeter.m
//  task3
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import "Greeter.h"

@implementation Greeter

// Приватный метод (не объявлен в @interface)
- (void)privateLog:(NSString *)message {
    NSLog(@"[ПРИВАТНЫЙ ЛОГ] %@", message);
}

- (NSArray *)inputArray {
    [self privateLog:@"Создание тестового массива"];
    return @[@1, @2, @2, @3, @3, @4];
}

- (void)printArray:(NSArray *)array {
    NSLog(@"Массив: %@", array);
}

- (NSArray *)uniqueValuesFromArray:(NSArray *)array {
    NSMutableArray *unique = [NSMutableArray array];
    for (id obj in array) {
        if (![unique containsObject:obj]) {
            [unique addObject:obj];
        }
    }
    [self privateLog:[NSString stringWithFormat:@"Найдено уникальных: %lu", (unsigned long)[unique count]]];
    return [unique copy];
}

- (NSUInteger)countElementsInArray:(NSArray *)array {
    return [array count];
}

- (void)addElement:(id)element toMutableArray:(NSMutableArray *)array {
    [array addObject:element];
}

- (void)insertElement:(id)element atIndex:(NSUInteger)index inMutableArray:(NSMutableArray *)array {
    if (index <= [array count]) {
        [array insertObject:element atIndex:index];
    } else {
        [self privateLog:@"Ошибка: индекс вне диапазона"];
    }
}

- (void)removeLastElementFromMutableArray:(NSMutableArray *)array {
    if ([array count] > 0) {
        [array removeLastObject];
    }
}

- (void)removeElementAtIndex:(NSUInteger)index fromMutableArray:(NSMutableArray *)array {
    if (index < [array count]) {
        [array removeObjectAtIndex:index];
    } else {
        [self privateLog:@"Ошибка: индекс вне диапазона"];
    }
}

- (void)removeAllElementsFromMutableArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
