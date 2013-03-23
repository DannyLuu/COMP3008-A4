//
//  CurrentViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-23.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrentViewController : UIViewController {
    IBOutlet UIWebView *webView;
    NSTimer *timer;
    NSDateFormatter *timeFormatter;
}

@property (retain, nonatomic) IBOutlet UIWebView *webView;
@property (retain, nonatomic) NSDateFormatter *timeFormatter;

-(void)resetWebView;
-(void)createTimer:(SEL)sender;
@end
