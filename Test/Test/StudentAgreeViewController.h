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
    IBOutlet UIView *timerView;
    IBOutlet UITableView *assistanceTable;
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *timerLabel;
    IBOutlet UIButton *startExamButton;
    NSDate *examTime;
    NSInteger countDown;
}

@property (retain, nonatomic) IBOutlet UIView *popupView;
@property (retain, nonatomic) IBOutlet UIView *timerView;
@property (retain, nonatomic) IBOutlet UIView *assistancePopupView;
@property (retain, nonatomic) IBOutlet UITableView *assistanceTable;
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) IBOutlet UILabel *timerLabel;
@property (nonatomic, retain) NSDate *examTime;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)assistanceButtonPressed:(id)sender;
- (IBAction)examStarts;
- (void)updateTimerLabel;

@end
