//
//  ColorPickerViewController.h
//  TestDelegate
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorPickerDelegate <NSObject>

-(void)userDidChooseColor:(UIColor *)color;

@end

@interface ColorPickerViewController : UIViewController

@property(nonatomic, weak)id<ColorPickerDelegate> delegate;

@end
