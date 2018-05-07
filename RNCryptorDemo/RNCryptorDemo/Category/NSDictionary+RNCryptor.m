//
//  NSDictionary+RNCryptor.m
//  RNCryptorDemo
//
//  Created by 柴栓柱 on 2018/5/7.
//  Copyright © 2018年 柴栓柱. All rights reserved.
//

#import "NSDictionary+RNCryptor.h"
#import <RNDecryptor.h>

@implementation NSDictionary (RNCryptor)

+ (NSDictionary *)rnc_dictionaryWithContentsOfFileName:(NSString *)name {
    NSData *encryptedData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:name ofType:nil]];
    NSError *error;
    NSData *decryptedData = [RNDecryptor decryptData:encryptedData withPassword:@"pwdcxy" error:&error];
    if (!error) {
        NSString* string = [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
        if (!error) {
//            return dic;
        }
    }
    return nil;
}
@end
