//
//  CurrentViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-23.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "CurrentViewController.h"

@interface CurrentViewController ()

@end

@implementation CurrentViewController
@synthesize webView;
@synthesize timeFormatter;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.timeFormatter = [[[NSDateFormatter alloc] init] autorelease];
        [timeFormatter setTimeStyle:NSDateFormatterLongStyle];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)resetWebView
{
    NSString *urlAddress = [NSString stringWithFormat:@"about:blank"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
}

- (void)createTimer:(SEL)sender
{
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:sender userInfo:nil repeats:YES];
}

@end
