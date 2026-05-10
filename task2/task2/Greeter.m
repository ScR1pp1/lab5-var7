//
//  Greeter.m
//  task2
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import "Greeter.h"

@implementation Greeter {
    int _numberA; // приватная переменная для хранения числа A
}

- (void)setNumberA:(int)a {
    _numberA = a;
}

- (int)numberA {
    return _numberA;
}

- (int)firstFibonacciGreaterThanA {
    int a = 0;
    int b = 1;
    
    // Ищем первое число Фибоначчи, которое больше _numberA
    while (b <= _numberA) {
        int temp = a + b;
        a = b;
        b = temp;
    }
    
    return b;
}

@end
