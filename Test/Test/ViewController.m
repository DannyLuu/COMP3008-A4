//
//  ViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "StudentLoggedViewController.h"
#import "ProfLoggedViewController.h"
#import "StudentAgreeViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize loginViewController;
@synthesize studentLoggedViewController;
@synthesize profLoggedViewController;
@synthesize studentAgreeViewController;
@synthesize currentViewController;


- (void)viewDidLoad
{
    [super viewDidLoad]; 
    LoginViewController *loginViewController = [[LoginViewController alloc]
                                                initWithNibName:@"LoginViewController" bundle:nil];
    self.loginViewController = loginViewController;
    [self.view insertSubview:loginViewController.view atIndex:0];
    [loginViewController release];
    self.currentViewController = loginViewController;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchViews:(id)sender
{
    if([loginViewController.loginField.text isEqualToString:@"student"])
    {
        [self switchToStudentView];
    }else if([loginViewController.loginField.text isEqualToString:@"prof"])
    {
        [self switchToProfView];
    }
    
    loginViewController.loginField.text = @"";
    loginViewController.passwordField.text = @"";
}

- (IBAction)switchToStudentView
{
    
    if(self.studentLoggedViewController == nil)
    {
        StudentLoggedViewController *studentLoggedViewController = [[StudentLoggedViewController alloc] initWithNibName:@"StudentLoggedViewController" bundle:nil];
        self.studentLoggedViewController = studentLoggedViewController;
        [studentLoggedViewController release];
    }
    
    [studentLoggedViewController viewWillAppear:YES];
    [loginViewController viewWillDisappear:YES];
    [loginViewController.view removeFromSuperview];
    [self.view insertSubview:studentLoggedViewController.view atIndex:0];
    [loginViewController viewDidDisappear:YES];
    [studentLoggedViewController viewDidAppear:YES];
    currentViewController = studentLoggedViewController;
    
}

- (IBAction)switchToProfView
{
    if(self.profLoggedViewController == nil)
    {
        ProfLoggedViewController *profLoggedViewController = [[ProfLoggedViewController alloc] initWithNibName:@"ProfLoggedViewController" bundle:nil];
        self.profLoggedViewController = profLoggedViewController;
        [profLoggedViewController release];
    }
    
    [profLoggedViewController viewWillAppear:YES];
    [loginViewController viewWillDisappear:YES];
    [loginViewController.view removeFromSuperview];
    [self.view insertSubview:profLoggedViewController.view atIndex:0];
    [loginViewController viewDidDisappear:YES];
    [profLoggedViewController viewDidAppear:YES];
    currentViewController = profLoggedViewController;

}

- (IBAction)logout
{
    if(self.loginViewController == nil)
    {
        LoginViewController *loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
        self.loginViewController = loginViewController;
        [loginViewController release];
    }
    
    [loginViewController viewWillAppear:YES];
    [currentViewController viewWillDisappear:YES];
    [currentViewController.view removeFromSuperview];
    [self.view insertSubview:loginViewController.view atIndex:0];
    [currentViewController viewDidDisappear:YES];
    [loginViewController viewDidAppear:YES];
    currentViewController = loginViewController;
}

- (IBAction)studentAgree:(id)sender
{
    if(self.studentAgreeViewController == nil)
    {
        StudentAgreeViewController *studentAgreeViewController = [[StudentAgreeViewController alloc] initWithNibName:@"StudentAgreeViewController" bundle:nil];
        self.studentAgreeViewController = studentAgreeViewController;
        [studentAgreeViewController release];
    }
    
    [studentAgreeViewController viewWillAppear:YES];
    [studentLoggedViewController viewWillDisappear:YES];
    [studentLoggedViewController.view removeFromSuperview];
    [self.view insertSubview:studentAgreeViewController.view atIndex:0];
    [studentLoggedViewController viewDidDisappear:YES];
    [studentAgreeViewController viewDidAppear:YES];
    currentViewController = studentAgreeViewController;
}

@end
