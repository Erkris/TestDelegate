//
//  ColorPickerViewController.h
//  TestDelegate
//
//  Created by iem on 11/12/2014.
//  Copyright (c) 2014 iem. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ColorPickerCompletionHandler)(UIColor *color);

@interface ColorPickerViewController : UIViewController

@property(nonatomic, copy) ColorPickerCompletionHandler completionHandler;

@end
