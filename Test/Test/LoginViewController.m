//
//  LoginViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize loginField;
@synthesize passwordField;
@synthesize dateLabel;
@synthesize timeLabel;

- (IBAction)loginButtonPressed:(id)sender
{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    passwordField.secureTextEntry = YES;
    
    [super createTimer:@selector(updateDate)];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateDate
{
    //Get today's date
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];
    [formatter setDateFormat:@"dd-MM-YYYY"];
    NSString *dateStr = [formatter stringFromDate:[NSDate date]];
    dateLabel.text = dateStr;
    
    //Get time
    NSDateFormatter *timeFormatter = [[[NSDateFormatter alloc] init] autorelease];
    [timeFormatter setTimeStyle:NSDateFormatterShortStyle];
    NSString *timeStr = [timeFormatter stringFromDate:[NSDate date]];
    timeLabel.text = timeStr;
}

@end
