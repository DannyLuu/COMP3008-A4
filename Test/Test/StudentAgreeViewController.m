//
//  StudentAgreeViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "StudentAgreeViewController.h"

@interface StudentAgreeViewController ()

@end

@implementation StudentAgreeViewController
@synthesize popupView;
@synthesize assistancePopupView;
@synthesize assistanceTable;
@synthesize examTime;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        examTime = [NSDate dateWithTimeIntervalSinceNow:20.0];
        [super createTimer:@selector(updateTimerLabel)];
        [timeFormatter setTimeStyle:NSDateFormatterLongStyle];
    }
    return self;
}

- (void)viewDidLoad
{
    //Load the assitance table items
    
    popupView.hidden = YES;
    assistancePopupView.hidden = YES;
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    if(popupView.hidden)
    {
        popupView.hidden = NO;
    }else
        popupView.hidden = YES;
}

- (IBAction)assistanceButtonPressed:(id)sender
{
    if(assistancePopupView.hidden)
    {
        assistancePopupView.hidden = NO;
    }else
        assistancePopupView.hidden = YES;
}

- (void)resetWebView
{
    [super resetWebView];
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

}

- (void)updateTimerLabel
{
    NSString *timeStr = [timeFormatter stringFromDate:[NSDate date]];
    timerLabel.text = timeStr;
}

@end
