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
@synthesize dateFormatter;

- (IBAction)loginButtonPressed:(id)sender
{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
        [dateFormatter setDateFormat:@"dd.MM.YYYY"];
        [super createTimer:@selector(updateDate)];
        [timeFormatter setTimeStyle:NSDateFormatterShortStyle];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    passwordField.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateDate
{
    //Get today's date
    NSString *dateStr = [dateFormatter stringFromDate:[NSDate date]];
    dateLabel.text = dateStr;
    
    //Get time
    NSString *timeStr = [timeFormatter stringFromDate:[NSDate date]];
    timeLabel.text = timeStr;
}

@end
