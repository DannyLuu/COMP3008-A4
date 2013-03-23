//
//  LoginViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentViewController.h"

@interface LoginViewController : CurrentViewController {
    IBOutlet UITextField *loginField;
    IBOutlet UITextField *passwordField;
    IBOutlet UILabel *dateLabel;
    IBOutlet UILabel *timeLabel;
}

@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

-(IBAction)loginButtonPressed:(id)sender;
@end
