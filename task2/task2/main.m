//
//  main.m
//  task2
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Создание экземпляра класса — блок program
        Greeter *greeter = [[Greeter alloc] init];
        
        // Ввод числа A с консоли
        printf("Введите число A: ");
        int a;
        scanf("%d", &a);
        
        // Передача данных объекту через сообщение
        [greeter setNumberA:a];
        
        // Вычисление результата
        int result = [greeter firstFibonacciGreaterThanA];
        
        // Вывод результата
        printf("Первое число Фибоначчи, превышающее %d: %d\n", a, result);
        
    }
    return 0;
}
