//
//  ViewController.m
//  RNCryptorDemo
//
//  Created by 柴栓柱 on 2018/5/7.
//  Copyright © 2018年 柴栓柱. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+RNCryptor.h"
#import "NSDictionary+RNCryptor.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = [UIImage rnc_imageNamed:@"all.cxy"];
    
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Person.plist" ofType:nil]];
    NSLog(@"%@",dic);
    
    NSDictionary *rncDic = [NSDictionary rnc_dictionaryWithContentsOfFileName:@"Person.cxy"];
    NSLog(@"%@",rncDic);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Person.json" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dicJson = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    NSLog(@"%@",dicJson);
//    [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Person.json" ofType:nil] options:nil error:nil]];
    
                             
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
