//
//  main.m
//  task3
//
//  Создано: 04.05.2026
//  Автор: Студент группы 12б Жук Егор
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Greeter *greeter = [[Greeter alloc] init];
        
        // а) Вывод исходного массива
        NSArray *numbers = [greeter inputArray];
        printf("\n===== а) Исходный массив =====\n");
        [greeter printArray:numbers];
        
        // 3. Задание: уникальные значения
        NSArray *unique = [greeter uniqueValuesFromArray:numbers];
        printf("\n===== Задание 3. Уникальные значения =====\n");
        [greeter printArray:unique];
        
        // г) Количество элементов
        printf("\n===== г) Количество элементов =====\n");
        printf("В исходном: %lu\n", (unsigned long)[greeter countElementsInArray:numbers]);
        printf("В уникальном: %lu\n", (unsigned long)[greeter countElementsInArray:unique]);
        
        // б) Создание пустого изменяемого массива
        NSMutableArray *mutable = [NSMutableArray array];
        printf("\n===== б) Пустой изменяемый массив =====\n");
        [greeter printArray:mutable];
        
        // д) Добавление элемента
        [greeter addElement:@100 toMutableArray:mutable];
        [greeter addElement:@200 toMutableArray:mutable];
        printf("\n===== д) После добавления 100 и 200 =====\n");
        [greeter printArray:mutable];
        
        // е) Вставка элемента по индексу
        [greeter insertElement:@150 atIndex:1 inMutableArray:mutable];
        printf("\n===== е) После вставки 150 на индекс 1 =====\n");
        [greeter printArray:mutable];
        
        // ё) Удаление последнего элемента
        [greeter removeLastElementFromMutableArray:mutable];
        printf("\n===== ё) После удаления последнего =====\n");
        [greeter printArray:mutable];
        
        // ж) Удаление элемента по индексу
        [greeter removeElementAtIndex:0 fromMutableArray:mutable];
        printf("\n===== ж) После удаления по индексу 0 =====\n");
        [greeter printArray:mutable];
        
        // з) Удаление всех элементов
        [greeter removeAllElementsFromMutableArray:mutable];
        printf("\n===== з) После удаления всех =====\n");
        [greeter printArray:mutable];
        
        printf("\n===== Программа завершена =====\n");
        
    }
    return 0;
}
