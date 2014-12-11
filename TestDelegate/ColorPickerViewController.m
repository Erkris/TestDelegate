//
//  ColorPickerViewController.m
//  TestDelegate
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import "ColorPickerViewController.h"

@interface ColorPickerViewController ()

@end

@implementation ColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBackgroundColorToGreen:(id)sender {
    UIColor *green = [UIColor colorWithRed:26.0/255
                                     green:197.0/255
                                      blue:115.0/255
                                     alpha:1];
    self.completionHandler(green);
}

- (IBAction)changeBackgroundColorToOrange:(id)sender {
    UIColor *orange = [UIColor colorWithRed:237.0/255
                                     green:102.0/255
                                      blue:7.0/255
                                     alpha:1];
    self.completionHandler(orange);
}

- (IBAction)changeBackgroundColorToRed:(id)sender {
    UIColor *red = [UIColor colorWithRed:110.0/255
                                     green:0.0/255
                                      blue:47.0/255
                                     alpha:1];
    self.completionHandler(red);
}

@end
