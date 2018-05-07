//
//  NSDictionary+RNCryptor.h
//  RNCryptorDemo
//
//  Created by 柴栓柱 on 2018/5/7.
//  Copyright © 2018年 柴栓柱. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RNCryptor)

+ (NSDictionary *)rnc_dictionaryWithContentsOfFileName:(NSString *)name;

@end
