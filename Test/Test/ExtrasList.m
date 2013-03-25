//
//  ExtrasList.m
//  Test
//
//  Created by Bora Sabuncu on 2013-03-25.
//  Copyright (c) 2013 Bora Sabuncu. All rights reserved.
//

#import "ExtrasList.h"


#define WIDTH 225
#define HEIGHT 150

@implementation ExtrasList
@synthesize assistance;
@synthesize popOver;

-(id)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        self.assistance = array;
        self.popOver = [[[UIPopoverController alloc] initWithContentViewController:self] autorelease];
        self.popOver.popoverContentSize = CGSizeMake(WIDTH, HEIGHT);
        [self initAudioPlayer];
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)showAssistanceBox:(UIButton*)sender
{
    UIPopoverArrowDirection arrowDirection = UIPopoverArrowDirectionUp;
    [popOver presentPopoverFromRect:sender.frame inView:sender.superview permittedArrowDirections:arrowDirection animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [self.assistance count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil){
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [self.assistance objectAtIndex:indexPath.row];
    if([[self.assistance objectAtIndex:indexPath.row] isEqualToString:@"Ambient"])
    {
        playButton = [UIButton buttonWithType:UIButtonTypeCustom];
        playButton.frame = CGRectMake(185, 8, 30, 30);
        //[playButton setTitle:@">" forState:UIControlStateNormal];
        [playButton addTarget:self action:@selector(playAmbientNoise) forControlEvents:UIControlEventTouchUpInside];
        [playButton setImage:[UIImage imageNamed:@"play_button.png"] forState:UIControlStateNormal];
        [cell.contentView addSubview:playButton];
    }
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.popOver dismissPopoverAnimated:YES];
    
    if([[self.assistance objectAtIndex:indexPath.row] isEqualToString:@"Ambient"])
        [self playAmbientNoise];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}
- (void)initAudioPlayer
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ambient" ofType:@"mp3"];
    NSURL *filePath = [NSURL fileURLWithPath:path];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:filePath error:&error];
    [audioPlayer prepareToPlay];

}
- (void)playAmbientNoise
{
    if(audioPlayer.playing)
    {
        [audioPlayer stop];
        [playButton setImage:[UIImage imageNamed:@"play_button.png"] forState:UIControlStateNormal];
    }else
    {
        [self initAudioPlayer];
        [audioPlayer play];
        [playButton setImage:[UIImage imageNamed:@"stop_button.png"] forState:UIControlStateNormal];

    }
}

@end
