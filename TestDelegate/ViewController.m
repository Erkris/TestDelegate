//
//  ViewController.m
//  TestDelegate
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UIColor* chooseColor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"PickColor"]) {
        ColorPickerViewController *desinationController = [segue destinationViewController];
        desinationController.delegate = self;
    }
}

#pragma mark - Color Picker Delegate

-(void)userDidChooseColor:(UIColor *)color {
    _chooseColor = self.view.backgroundColor;
    self.view.backgroundColor = color;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Color"
                                                       message:@"Do you want to save this color?"
                                                      delegate:self
                                             cancelButtonTitle:@"Yes"
                                             otherButtonTitles:nil];
    [alertView addButtonWithTitle:@"No"];
    [alertView show];

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"No"])
    {
        self.view.backgroundColor = _chooseColor;
    }
}

@end
