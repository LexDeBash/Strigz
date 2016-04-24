//
//  main.m
//  Strigz
//
//  Created by Alexey Efimov on 24.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // Здесь указатель на объект NSError объявляется без создания
        // экземпляра. Экземпляр NSError будет создан только при возникновении ошибки.
        NSError *error = nil;
        
        // Передача по ссылке указателя NSError методу NSString
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        // Проверка полученного флага и вывод информации
        // из NSError в случае ошибки записи
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
    }
    return 0;
}
