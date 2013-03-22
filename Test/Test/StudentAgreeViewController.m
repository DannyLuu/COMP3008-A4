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
@synthesize webView;

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
    /*UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    self.webView = webView;
    NSString *urlAddress = [NSString stringWithFormat:@"http://www.google.com"];
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];*/
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"
                          inDirectory:@"html_files"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    webView = [[UIWebView alloc] init];
    [webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
    
    //[webView release];
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
