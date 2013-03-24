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
@synthesize timerView;
@synthesize assistancePopupView;
@synthesize assistanceTable;
@synthesize examTime;
@synthesize timeLabel;
@synthesize timerLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [super createTimer:@selector(updateTimerLabel)];
        [timeFormatter setDateFormat:@"m:ss"];
        self.examTime = [timeFormatter dateFromString:@"1:00"];
        countDown = 1;
    }
    return self;
}

- (void)viewDidLoad
{
    popupView.hidden = YES;
    assistancePopupView.hidden = YES;
    startExamButton.hidden = YES;
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
    countDown--;
    timerLabel.text = [NSString stringWithFormat:@"%d", countDown];
    if(countDown == 0)
    {
        [timer invalidate];
        timeLabel.text = @"You may start your exam now";
        timerLabel.text = @"";
        startExamButton.hidden = NO;
    }
}

- (IBAction)examStarts
{
    timerView.hidden = YES;
    //Load the exam page
}

@end
