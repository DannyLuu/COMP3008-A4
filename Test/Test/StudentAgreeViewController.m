//
//  StudentAgreeViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "StudentAgreeViewController.h"

@implementation StudentAgreeViewController
@synthesize popupView;
@synthesize timerView;
@synthesize assistancePopupView;
@synthesize assistanceTable;
@synthesize examTime;
@synthesize timeLabel;
@synthesize timerLabel;
@synthesize examStartLabel;
@synthesize assistanceList;
@synthesize popupButton;
@synthesize startExamButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [super createTimer:@selector(updateTimerLabel)];
        [timeFormatter setDateFormat:@"m:ss"];
        self.examTime = [timeFormatter dateFromString:@"1:00"];
        countDown = 10;
        
        NSArray *assistanceArray = [NSArray arrayWithObjects:@"Professor", @"Teaching Assistant", @"Proctor", nil];
        self.assistanceList = [[[AssistanceList alloc] initWithArray:assistanceArray] autorelease];
    }
    return self;
}

- (void)viewDidLoad
{
    popupButton.hidden = YES;
    assistancePopupView.hidden = YES;
    startExamButton.hidden = YES;
    examStartLabel.hidden = YES;
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
    countDown--;
    timerLabel.text = [NSString stringWithFormat:@"%d", countDown];
    if(countDown == 0)
    {
        [timer invalidate];
        timeLabel.hidden = YES;
        examStartLabel.hidden = NO;
        timerLabel.hidden = YES;
        startExamButton.hidden = NO;
    }
}

- (IBAction)examStarts
{
    timerView.hidden = YES;
    //Load the exam page
}

- (IBAction)showPopUp:(id)sender
{
    [assistanceList showAssistanceBox:popupButton];
}

@end
