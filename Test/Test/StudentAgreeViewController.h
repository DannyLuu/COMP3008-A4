//
//  StudentAgreeViewController.h
//  Test
//
//  Created by Bora Sabuncu on 2013-03-21.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "CurrentViewController.h"
#import "AssistanceList.h"
#import "ExtrasList.h"

@interface StudentAgreeViewController : CurrentViewController{
       NSInteger countDown;
}

@property (retain, nonatomic) IBOutlet UIView *popupView;
@property (retain, nonatomic) IBOutlet UIView *timerView;
@property (retain, nonatomic) IBOutlet UIView *assistancePopupView;
@property (retain, nonatomic) IBOutlet UITableView *assistanceTable;
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) IBOutlet UILabel *timerLabel;
@property (retain, nonatomic) IBOutlet UILabel *examStartLabel;
@property (retain ,nonatomic) IBOutlet UIButton *startExamButton;
@property (retain ,nonatomic) IBOutlet UIButton *popupButton;
@property (retain ,nonatomic) IBOutlet UIButton *popupButton2;
@property (nonatomic, retain) NSString *studentStatus;
@property (retain) AssistanceList *assistanceList;
@property (retain) ExtrasList *extrasList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil status:(NSString *)studentState;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)assistanceButtonPressed:(id)sender;
- (IBAction)examStarts;
- (IBAction)showAssistancePopUp:(id)sender;
- (IBAction)showExtrasPopUp:(id)sender;
- (void)updateTimerLabel;
- (void)showAlert;

@end
