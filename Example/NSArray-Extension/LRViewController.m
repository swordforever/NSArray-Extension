//
//  LRViewController.m
//  NSArray-Extension
//
//  Created by bloack on 05/29/2018.
//  Copyright (c) 2018 bloack. All rights reserved.
//

#import "LRViewController.h"
#import <NSArray_Extension/NSArray+Functional.h>

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *list = @[@1, @2, @3];
    NSArray *filterResult = [list filter:^BOOL(NSNumber *element) {
        return element.integerValue % 2 == 0;
    }];
    NSLog(@"%@", filterResult);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
