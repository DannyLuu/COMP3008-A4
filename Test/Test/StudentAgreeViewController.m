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
@synthesize extrasList;
@synthesize popupButton;
@synthesize startExamButton;
@synthesize studentStatus;
@synthesize popupButton2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil status:(NSString *)studentState
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [super createTimer:@selector(updateTimerLabel)];
        countDown = 10;
        NSArray *assistanceArray = [NSArray arrayWithObjects:@"Professor", @"Teaching Assistant", @"Proctor", nil];
        self.assistanceList = [[[AssistanceList alloc] initWithArray:assistanceArray] autorelease];
        NSArray *extrasArray = [NSArray arrayWithObjects:@"Ambient", @"Submit Exam", nil];
        self.extrasList = [[[ExtrasList alloc] initWithArray:extrasArray] autorelease];
        self.studentStatus = studentState;
    }
    return self;
}

- (void)viewDidLoad
{   
    [super viewDidLoad];
        
    popupView.hidden = YES;
    popupButton.hidden = YES;
    popupButton2.hidden = YES;
    assistancePopupView.hidden = YES;
    startExamButton.hidden = YES;
    examStartLabel.hidden = YES;
    
    if([studentStatus isEqualToString:@"StudentOnTime"])
        [self studentOnTime];
    else if([studentStatus isEqualToString:@"StudentLate"])
        [self studentLate];
    
    self.extrasList.webView = webView;
    
}

- (void)studentOnTime
{
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Wait.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
}

- (void)studentLate
{
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_Started.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [self timerEnds];
    examStartLabel.hidden = YES;

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
    timerLabel.hidden = YES;
    examStartLabel.hidden = NO;
    startExamButton.hidden = NO;
}

- (void)updateTimerLabel
{
    countDown--;
    timerLabel.text = [NSString stringWithFormat:@"%d", countDown];
    if(countDown == 0)
        [self timerEnds];
}

- (IBAction)examStarts
{
    timerView.hidden = YES;
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Student/Student_questions.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

}

- (IBAction)showAssistancePopUp:(id)sender
{
    [assistanceList showAssistanceBox:popupButton];
}

- (IBAction)showExtrasPopUp:(id)sender
{
    if(popupView.hidden)
        popupView.hidden = NO;
    else
        popupView.hidden = YES;
    [extrasList showAssistanceBox:popupButton2];
}

-(void)showAlert
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Alert!"
                          message:[NSString stringWithFormat:@"Please wait for assistance"]
                          delegate:nil
                          cancelButtonTitle:nil
                          otherButtonTitles:nil];
    [alert show];
    [alert release];

}
@end
