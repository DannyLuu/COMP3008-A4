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
    //Start the timer according to exam time    
    [super createTimer:@selector(updateTimerLabel)];
    
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    
    /*NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *myFile = [mainBundle pathForResource: @"index" ofType: @"html"];
    NSLog(@"File path %@", myFile);
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"Student_Wait" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    [webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];*/
    
    //Load the assitance table items
    
    popupView.hidden = YES;
    assistancePopupView.hidden = YES;
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
    NSDateFormatter *timeFormatter = [[[NSDateFormatter alloc] init] autorelease];
    [timeFormatter setTimeStyle:NSDateFormatterLongStyle];
    NSString *timeStr = [timeFormatter stringFromDate:[NSDate date]];
    timerLabel.text = timeStr;
}

@end
