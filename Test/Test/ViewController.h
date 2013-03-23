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
@class ProctorViewController;
@class CurrentViewController;

@interface ViewController : UIViewController {
    LoginViewController *loginViewController;
    StudentLoggedViewController *studentLoggedViewController;
    ProfLoggedViewController *profLoggedViewController;
    StudentAgreeViewController *studentAgreeViewController;
    ProctorViewController *proctorViewController;
    CurrentViewController *currentViewController;
}

@property (retain, nonatomic) LoginViewController *loginViewController;
@property (retain, nonatomic) StudentLoggedViewController *studentLoggedViewController;
@property (retain, nonatomic) ProfLoggedViewController *profLoggedViewController;
@property (retain, nonatomic) StudentAgreeViewController *studentAgreeViewController;
@property (retain, nonatomic) ProctorViewController *proctorViewController;
@property (retain, nonatomic) CurrentViewController *currentViewController;

-(IBAction)swtichViews:(id)sender;
-(IBAction)switchToStudentView;
-(IBAction)switchToProfView;
-(IBAction)logout;
-(IBAction)studentAgree:(id)sender;
-(IBAction)swtichToProctorView;
@end
