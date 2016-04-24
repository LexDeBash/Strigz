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
        
        // Здесь указатель на объект NSError объявляется без создания
        // экземпляра. Экземпляр NSError будет создан только при возникновении ошибки.
        NSError *error = nil;
        
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolve.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf look like this: %@", str);
        }
        
    }
    return 0;
}
