//
//  ViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginViewController;
@class StudentLoggedViewController;
@class ProfLoggedViewController;
@class StudentAgreeViewController;

@interface ViewController : UIViewController {
    LoginViewController *loginViewController;
    StudentLoggedViewController *studentLoggedViewController;
    ProfLoggedViewController *profLoggedViewController;
    StudentAgreeViewController *studentAgreeViewController;
}

@property (retain, nonatomic) LoginViewController *loginViewController;
@property (retain, nonatomic) StudentLoggedViewController *studentLoggedViewController;
@property (retain, nonatomic) ProfLoggedViewController *profLoggedViewController;
@property (retain, nonatomic) StudentAgreeViewController *studentAgreeViewController;

-(IBAction)switchToStudentView:(id)sender;
-(IBAction)switchToProfView:(id)sender;
-(IBAction)logout:(id)sender;
-(IBAction)studentAgree:(id)sender;
@end
