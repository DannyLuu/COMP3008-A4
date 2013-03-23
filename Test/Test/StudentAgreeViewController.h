//
//  StudentAgreeViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "CurrentViewController.h"

@interface StudentAgreeViewController : CurrentViewController{
    IBOutlet UIView *popupView;
    IBOutlet UIView *assistancePopupView;
    IBOutlet UITableView *assistanceTable;
    IBOutlet UILabel *timerLabel;
}

@property (retain, nonatomic) IBOutlet UIView *popupView;
@property (retain, nonatomic) IBOutlet UIView *assistancePopupView;
@property (retain, nonatomic) IBOutlet UITableView *assistanceTable;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)assistanceButtonPressed:(id)sender;
- (void)updateTimerLabel;

@end
