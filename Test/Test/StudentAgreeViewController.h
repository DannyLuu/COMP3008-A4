//
//  StudentAgreeViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentAgreeViewController : UIViewController{
    IBOutlet UIWebView *webView;
    IBOutlet UIView *popupView;
    IBOutlet UIView *assistancePopupView;
    IBOutlet UITableView *assistanceTable;
}

@property (retain, nonatomic) IBOutlet UIWebView *webView;
@property (retain, nonatomic) IBOutlet UIView *popupView;
@property (retain, nonatomic) IBOutlet UIView *assistancePopupView;
@property (retain, nonatomic) IBOutlet UITableView *assistanceTable;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)assistanceButtonPressed:(id)sender;

@end
