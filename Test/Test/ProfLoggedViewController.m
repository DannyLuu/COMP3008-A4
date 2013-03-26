//
//  ProfLoggedViewController.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "ProfLoggedViewController.h"

@interface ProfLoggedViewController ()

@end

@implementation ProfLoggedViewController

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
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Professor/Professor_Hub.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)resetWebView
{
    NSString *urlAddress = [NSString stringWithFormat:@"http://people.scs.carleton.ca/~bsabuncu/COMP3008-A4/Professor/Professor_Hub.html"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

}

-(IBAction)mainPage
{
    [self resetWebView];
}
@end
