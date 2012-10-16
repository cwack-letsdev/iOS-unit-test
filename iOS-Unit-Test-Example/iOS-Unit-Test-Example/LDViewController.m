//
//  LDViewController.m
//  iOS-Unit-Test-Example
//
//  Created by Christian Wack (cwack) on 15.10.12.
//  Copyright (c) 2012 let's dev. All rights reserved.
//

#import "LDViewController.h"

@interface LDViewController ()

@end

@implementation LDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIView *theView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
    theView.backgroundColor = [UIColor redColor];
    [self.view addSubview: theView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
