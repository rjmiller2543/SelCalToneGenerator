//
//  ViewController.m
//  SelCalToneGenerator
//
//  Created by Robert Miller on 6/20/12.
//  Copyright (c) 2012 Gables Engineering. All rights reserved.
//

#import "ViewController.h"
#import "CoreAudio/CoreAudioTypes.h"
#import "AVFoundation/AVFoundation.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation ViewController
@synthesize toneOne,toneTwo,toneThree,toneFour,offsetSlider;
@synthesize audioPlayerOne,audioPlayerTwo, offsetLabel;

#define PI 3.141592653589793
#define SAMPLERATE 44100

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    toneNumber = 1;
    self.toneOne.text = @"Tone1";
    self.toneTwo.text = @"Tone2";
    self.toneThree.text = @"Tone3";
    self.toneFour.text = @"Tone4";
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


#pragma mark - Chosen Tones

-(IBAction)buttonASelected  {
    NSLog(@"Selected Button A");
    if(toneNumber == 1) {
        NSLog(@"toneNumber == 1");
        toneOne.text = @"A";
        toneOne.text = @"A";
    }
    if(toneNumber == 2) {
        NSLog(@"toneNumber == 2");
        toneTwo.text = @"A";
    }
    if(toneNumber == 3) {
        NSLog(@"toneNumber == 3");
        toneThree.text = @"A";
    }
    if(toneNumber == 4) {
        NSLog(@"toneNumber == 4");
        toneFour.text = @"A";
    }
    toneNumber++;
}

-(IBAction)buttonTSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"T";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"T";
    }
    if(toneNumber == 3) {
        toneThree.text = @"T";
    }
    if(toneNumber == 4) {
        toneFour.text = @"T";
    }
    toneNumber++;
}

-(IBAction)buttonBSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"B";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"B";
    }
    if(toneNumber == 3) {
        toneThree.text = @"B";
    }
    if(toneNumber == 4) {
        toneFour.text = @"B";
    }
    toneNumber++;
}

-(IBAction)buttonUSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"U";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"U";
    }
    if(toneNumber == 3) {
        toneThree.text = @"U";
    }
    if(toneNumber == 4) {
        toneFour.text = @"U";
    }
    toneNumber++;
}

-(IBAction)buttonCSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"C";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"C";
    }
    if(toneNumber == 3) {
        toneThree.text = @"C";
    }
    if(toneNumber == 4) {
        toneFour.text = @"C";
    }
    toneNumber++;
}

-(IBAction)buttonVSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"V";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"V";
    }
    if(toneNumber == 3) {
        toneThree.text = @"V";
    }
    if(toneNumber == 4) {
        toneFour.text = @"V";
    }
    toneNumber++;
}

-(IBAction)buttonDSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"D";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"D";
    }
    if(toneNumber == 3) {
        toneThree.text = @"D";
    }
    if(toneNumber == 4) {
        toneFour.text = @"D";
    }
    toneNumber++;
}

-(IBAction)buttonWSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"W";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"W";
    }
    if(toneNumber == 3) {
        toneThree.text = @"W";
    }
    if(toneNumber == 4) {
        toneFour.text = @"W";
    }
    toneNumber++;
}

-(IBAction)buttonESelected  {
    if(toneNumber == 1) {
        toneOne.text = @"E";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"E";
    }
    if(toneNumber == 3) {
        toneThree.text = @"E";
    }
    if(toneNumber == 4) {
        toneFour.text = @"E";
    }
    toneNumber++;
}

-(IBAction)buttonXSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"X";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"X";
    }
    if(toneNumber == 3) {
        toneThree.text = @"X";
    }
    if(toneNumber == 4) {
        toneFour.text = @"X";
    }
    toneNumber++;
}

-(IBAction)buttonFSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"F";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"F";
    }
    if(toneNumber == 3) {
        toneThree.text = @"F";
    }
    if(toneNumber == 4) {
        toneFour.text = @"F";
    }
    toneNumber++;
}

-(IBAction)buttonYSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"Y";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"Y";
    }
    if(toneNumber == 3) {
        toneThree.text = @"Y";
    }
    if(toneNumber == 4) {
        toneFour.text = @"Y";
    }
    toneNumber++;
}

-(IBAction)buttonGSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"G";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"G";
    }
    if(toneNumber == 3) {
        toneThree.text = @"G";
    }
    if(toneNumber == 4) {
        toneFour.text = @"G";
    }
    toneNumber++;
}

-(IBAction)buttonZSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"Z";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"Z";
    }
    if(toneNumber == 3) {
        toneThree.text = @"Z";
    }
    if(toneNumber == 4) {
        toneFour.text = @"Z";
    }
    toneNumber++;
}

-(IBAction)buttonHSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"H";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"H";
    }
    if(toneNumber == 3) {
        toneThree.text = @"H";
    }
    if(toneNumber == 4) {
        toneFour.text = @"H";
    }
    toneNumber++;
}

-(IBAction)button1Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"1";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"1";
    }
    if(toneNumber == 3) {
        toneThree.text = @"1";
    }
    if(toneNumber == 4) {
        toneFour.text = @"1";
    }
    toneNumber++;
}

-(IBAction)buttonJSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"J";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"J";
    }
    if(toneNumber == 3) {
        toneThree.text = @"J";
    }
    if(toneNumber == 4) {
        toneFour.text = @"J";
    }
    toneNumber++;
}

-(IBAction)button2Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"2";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"2";
    }
    if(toneNumber == 3) {
        toneThree.text = @"2";
    }
    if(toneNumber == 4) {
        toneFour.text = @"2";
    }
    toneNumber++;
}

-(IBAction)buttonKSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"K";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"K";
    }
    if(toneNumber == 3) {
        toneThree.text = @"K";
    }
    if(toneNumber == 4) {
        toneFour.text = @"K";
    }
    toneNumber++;
}

-(IBAction)button3Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"3";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"3";
    }
    if(toneNumber == 3) {
        toneThree.text = @"3";
    }
    if(toneNumber == 4) {
        toneFour.text = @"3";
    }
    toneNumber++;
}

-(IBAction)buttonLSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"L";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"L";
    }
    if(toneNumber == 3) {
        toneThree.text = @"L";
    }
    if(toneNumber == 4) {
        toneFour.text = @"L";
    }
    toneNumber++;
}

-(IBAction)button4Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"4";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"4";
    }
    if(toneNumber == 3) {
        toneThree.text = @"4";
    }
    if(toneNumber == 4) {
        toneFour.text = @"4";
    }
    toneNumber++;
}

-(IBAction)buttonMSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"M";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"M";
    }
    if(toneNumber == 3) {
        toneThree.text = @"M";
    }
    if(toneNumber == 4) {
        toneFour.text = @"M";
    }
    toneNumber++;
}

-(IBAction)button5Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"5";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"5";
    }
    if(toneNumber == 3) {
        toneThree.text = @"5";
    }
    if(toneNumber == 4) {
        toneFour.text = @"5";
    }
    toneNumber++;
}

-(IBAction)buttonPSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"P";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"P";
    }
    if(toneNumber == 3) {
        toneThree.text = @"P";
    }
    if(toneNumber == 4) {
        toneFour.text = @"P";
    }
    toneNumber++;
}

-(IBAction)button6Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"6";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"6";
    }
    if(toneNumber == 3) {
        toneThree.text = @"6";
    }
    if(toneNumber == 4) {
        toneFour.text = @"6";
    }
    toneNumber++;
}

-(IBAction)buttonQSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"Q";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"Q";
    }
    if(toneNumber == 3) {
        toneThree.text = @"Q";
    }
    if(toneNumber == 4) {
        toneFour.text = @"Q";
    }
    toneNumber++;
}

-(IBAction)button7Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"7";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"7";
    }
    if(toneNumber == 3) {
        toneThree.text = @"7";
    }
    if(toneNumber == 4) {
        toneFour.text = @"7";
    }
    toneNumber++;
}

-(IBAction)buttonRSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"R";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"R";
    }
    if(toneNumber == 3) {
        toneThree.text = @"R";
    }
    if(toneNumber == 4) {
        toneFour.text = @"R";
    }
    toneNumber++;
}

-(IBAction)button8Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"8";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"8";
    }
    if(toneNumber == 3) {
        toneThree.text = @"8";
    }
    if(toneNumber == 4) {
        toneFour.text = @"8";
    }
    toneNumber++;
}

-(IBAction)buttonSSelected  {
    if(toneNumber == 1) {
        toneOne.text = @"S";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"S";
    }
    if(toneNumber == 3) {
        toneThree.text = @"S";
    }
    if(toneNumber == 4) {
        toneFour.text = @"S";
    }
    toneNumber++;
}

-(IBAction)button9Selected  {
    if(toneNumber == 1) {
        toneOne.text = @"9";
    }
    if(toneNumber == 2) {
        toneTwo.text = @"9";
    }
    if(toneNumber == 3) {
        toneThree.text = @"9";
    }
    if(toneNumber == 4) {
        toneFour.text = @"9";
    }
    toneNumber++;
}



#pragma mark - Controls

-(IBAction)clearTones   {
    toneOne.text = @"Tone1";
    toneTwo.text = @"Tone2";
    toneThree.text = @"Tone3";
    toneFour.text = @"Tone4";
    toneNumber = 1;
}

-(IBAction)playTones    {
    
    float volume = 0.2;
    volume = [offsetSlider value];
    offsetLabel.text = [[[NSNumber alloc] initWithFloat:volume] stringValue];
    
    if([self.toneOne.text isEqualToString:@"Tone1"] || [self.toneTwo.text isEqualToString:@"Tone2"] ||
        [self.toneThree.text isEqualToString:@"Tone3"] || [self.toneFour.text isEqualToString:@"Tone4"])   {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tone Missing!!!" message:@"There is a tone missing! Make a selection first!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }

    else {
        
        NSString *pathOne = [[NSBundle mainBundle] pathForResource:self.toneOne.text ofType:@"wav"];
        NSURL *urlOne = [NSURL fileURLWithPath:pathOne];
        self.audioPlayerOne = [[AVAudioPlayer alloc] initWithContentsOfURL:urlOne error:nil];
        [audioPlayerOne setVolume:volume];
        [audioPlayerOne prepareToPlay];
    
        NSString *pathTwo = [[NSBundle mainBundle] pathForResource:self.toneTwo.text ofType:@"wav"];
        NSURL *urlTwo = [NSURL fileURLWithPath:pathTwo];
        self.audioPlayerTwo = [[AVAudioPlayer alloc] initWithContentsOfURL:urlTwo error:nil];
        [audioPlayerTwo setVolume:volume];
        [audioPlayerTwo prepareToPlay];
        [audioPlayerOne play];
        [audioPlayerTwo play];
        [NSThread sleepForTimeInterval:1.0];
        
        while ([audioPlayerOne isPlaying] || [audioPlayerTwo isPlaying]) {
            //Do Nothing
        }
        
        NSString *silentFile = [[NSBundle mainBundle] pathForResource:@"SILENCE" ofType:@"wav"];
        NSURL *silentURL = [NSURL fileURLWithPath:silentFile];
        self.audioPlayerOne = [[AVAudioPlayer alloc] initWithContentsOfURL:silentURL error:nil];
        [audioPlayerOne prepareToPlay];
        [audioPlayerOne play];
        [NSThread sleepForTimeInterval:0.2];
        
        while([audioPlayerOne isPlaying])   {
            //Do Nothing
        }
        
        NSString *pathThree = [[NSBundle mainBundle] pathForResource:self.toneThree.text ofType:@"wav"];
        NSURL *urlThree = [NSURL fileURLWithPath:pathThree];
        self.audioPlayerOne = [[AVAudioPlayer alloc] initWithContentsOfURL:urlThree error:nil];
        [audioPlayerOne setVolume:volume];
        [audioPlayerOne prepareToPlay];
    
        NSString *pathFour = [[NSBundle mainBundle] pathForResource:self.toneFour.text ofType:@"wav"];
        NSURL *urlFour = [NSURL fileURLWithPath:pathFour];
        self.audioPlayerTwo = [[AVAudioPlayer alloc] initWithContentsOfURL:urlFour error:nil];
        [audioPlayerOne setVolume:volume];
        [audioPlayerTwo prepareToPlay];
    
        [audioPlayerOne play];
        [audioPlayerTwo play];
        [NSThread sleepForTimeInterval:1.0];
    }
    
    
}



@end
