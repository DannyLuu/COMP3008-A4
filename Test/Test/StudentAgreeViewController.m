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
@synthesize timeLabel;
@synthesize timerLabel;
@synthesize examStartLabel;
@synthesize assistanceList;
@synthesize popupButton;
@synthesize startExamButton;
@synthesize studentStatus;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil status:(NSString *)studentState
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [super createTimer:@selector(updateTimerLabel)];
        countDown = 10;
        NSArray *assistanceArray = [NSArray arrayWithObjects:@"Professor", @"Teaching Assistant", @"Proctor", nil];
        self.assistanceList = [[[AssistanceList alloc] initWithArray:assistanceArray] autorelease];
        self.studentStatus = studentState;
    }
    return self;
}

- (void)viewDidLoad
{
    if([studentStatus isEqualToString:@"StudentOnTime"])
        [self studentOnTime];
    else if([studentStatus isEqualToString:@"StudentLate"])
        [self studentLate];
    [super viewDidLoad];
    
}

- (void)studentOnTime
{
    popupButton.hidden = YES;
    assistancePopupView.hidden = YES;
    startExamButton.hidden = YES;
    examStartLabel.hidden = YES;
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
}

- (void)studentLate
{
    [self timerEnds];
    popupButton.hidden = YES;
    assistancePopupView.hidden = YES;
    startExamButton.hidden = YES;
    examStartLabel.hidden = YES;
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Started.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

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

- (void)timerEnds
{
    [timer invalidate];
    timeLabel.hidden = YES;
    examStartLabel.hidden = NO;
    timerLabel.hidden = YES;
    startExamButton.hidden = NO;
}

- (void)updateTimerLabel
{
    countDown--;
    timerLabel.text = [NSString stringWithFormat:@"%d", countDown];
    if(countDown == 0)
    {
        [self timerEnds];
    }
}

- (IBAction)examStarts
{
    //Load the exam page
    timerView.hidden = YES;
    
}

- (IBAction)showPopUp:(id)sender
{
    [assistanceList showAssistanceBox:popupButton];
}

@end
