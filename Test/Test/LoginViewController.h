//
//  LoginViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController {
    IBOutlet UITextField *loginField;
    IBOutlet UITextField *passwordField;
}

@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

-(IBAction)loginButtonPressed:(id)sender;
@end
