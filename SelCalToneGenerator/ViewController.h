//
//  ViewController.h
//  SelCalToneGenerator
//
//  Created by Robert Miller on 6/20/12.
//  Copyright (c) 2012 Gables Engineering. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController <AVAudioPlayerDelegate>   {
    
    //Labels for the four tones to be generated
    IBOutlet UILabel *toneOne;
    IBOutlet UILabel *toneTwo;
    IBOutlet UILabel *toneThree;
    IBOutlet UILabel *toneFour;
    
    IBOutlet UILabel *offsetLabel;
    
    //Outlet for the offset slider
    IBOutlet UISlider *offsetSlider;
    
    //A counter as a simple method to keep track of which tone is being selected
    NSInteger toneNumber;
    float offset;
    
    AVAudioPlayer *audioPlayerOne;
    AVAudioPlayer *audioPlayerTwo;
    
}

@property(nonatomic, retain) IBOutlet UILabel *toneOne;
@property(nonatomic, retain) IBOutlet UILabel *toneTwo;
@property(nonatomic, retain) IBOutlet UILabel *toneThree;
@property(nonatomic, retain) IBOutlet UILabel *toneFour;
@property(nonatomic, retain) IBOutlet UILabel *offsetLabel;
@property(nonatomic, retain) IBOutlet UISlider *offsetSlider;

@property(strong, nonatomic) AVAudioPlayer *audioPlayerOne;
@property(strong, nonatomic) AVAudioPlayer *audioPlayerTwo;

//A function for each of the SelCal Tone buttons
-(IBAction)buttonASelected;
-(IBAction)buttonTSelected;
-(IBAction)buttonBSelected;
-(IBAction)buttonUSelected;
-(IBAction)buttonCSelected;
-(IBAction)buttonVSelected;
-(IBAction)buttonDSelected;
-(IBAction)buttonWSelected;
-(IBAction)buttonESelected;
-(IBAction)buttonXSelected;
-(IBAction)buttonFSelected;
-(IBAction)buttonYSelected;
-(IBAction)buttonGSelected;
-(IBAction)buttonZSelected;
-(IBAction)buttonHSelected;
-(IBAction)button1Selected;
-(IBAction)buttonJSelected;
-(IBAction)button2Selected;
-(IBAction)buttonKSelected;
-(IBAction)button3Selected;
-(IBAction)buttonLSelected;
-(IBAction)button4Selected;
-(IBAction)buttonMSelected;
-(IBAction)button5Selected;
-(IBAction)buttonPSelected;
-(IBAction)button6Selected;
-(IBAction)buttonQSelected;
-(IBAction)button7Selected;
-(IBAction)buttonRSelected;
-(IBAction)button8Selected;
-(IBAction)buttonSSelected;
-(IBAction)button9Selected;

//function to play the selected tones
-(IBAction)playTones;
//-(void)stop;

//function to clear the tones to choose new tones
-(IBAction)clearTones;

@end
