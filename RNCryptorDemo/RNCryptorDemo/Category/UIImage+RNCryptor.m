//
//  UIImage+RNCryptor.m
//  RNCryptorDemo
//
//  Created by 柴栓柱 on 2018/5/7.
//  Copyright © 2018年 柴栓柱. All rights reserved.
//

#import "UIImage+RNCryptor.h"
#import <RNDecryptor.h>

@implementation UIImage (RNCryptor)

+ (UIImage *)rnc_imageNamed:(NSString *)name {
    NSData *encryptedData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:name ofType:nil]];
    NSError *error;
    NSData *decryptedData = [RNDecryptor decryptData:encryptedData withPassword:@"pwdcxy" error:&error];
    if (!error) {
        return [UIImage imageWithData:decryptedData];
    }
    return nil;
}

@end
