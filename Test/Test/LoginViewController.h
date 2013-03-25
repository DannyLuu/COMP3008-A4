//
//  LoginViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentViewController.h"

@interface LoginViewController : CurrentViewController

@property (retain, nonatomic) IBOutlet UITextField *loginField;
@property (retain, nonatomic) IBOutlet UITextField *passwordField;
@property (retain, nonatomic) IBOutlet UILabel *dateLabel;
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) NSDateFormatter *dateFormatter;

@end
