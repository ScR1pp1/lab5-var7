//
//  Greeter.h
//  task2
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import <Foundation/Foundation.h>

@interface Greeter : NSObject

/// Устанавливает значение числа A
- (void)setNumberA:(int)a;

/// Возвращает сохраненное значение числа A
- (int)numberA;

/// Находит первое число Фибоначчи, превышающее число A
- (int)firstFibonacciGreaterThanA;

@end
