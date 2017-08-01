//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "PoliceHeadquarters.h"


@interface LPSViewController ()

@property (nonatomic ,strong) PoliceHeadquarters *policeHeadQuarters;
@end

@implementation LPSViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
	 
    self.policeHeadQuarters = [[PoliceHeadquarters alloc] init];
    
    
    
    
    // Here is where you will create the buttons & image views and add them to the view.
}


//EYES LEFT

- (IBAction)leftButtonTop:(id)sender {
    // 1. Get correct eyes (UIImage) from controller (or data source).
    // 2. Set image view for eyes with eyes from data source.
   
    
    UIImage * eyes = [self.policeHeadQuarters getPreviousImageEyes];
    [self.eyesImageView setImage:eyes];
    
}

//NOSE LEFT

- (IBAction)leftButtonMiddle:(id)sender {

    
    UIImage *nose = [self.policeHeadQuarters getPreviousImageNose];
    [self.noseImageView setImage:nose];

}
//MOUTH LEFT

- (IBAction)leftButtonBottom:(id)sender {
    UIImage *mouth = [self.policeHeadQuarters getPreviousImageMouth];
    [self.mouthImageView setImage:mouth];
}

//EYES RIGHT
- (IBAction)rightButtonTop:(id)sender {

    UIImage *eyes = [self.policeHeadQuarters getNextImageEyes];
    [self.eyesImageView setImage:eyes];
    
}



// NOSE RIGHT

- (IBAction)rightButtonMiddle:(id)sender {
    UIImage * nose = [self.policeHeadQuarters getNextImageNose];
    [self.noseImageView setImage:nose];
}

//MOUTH RIGHT

- (IBAction)rightButtonBottom:(id)sender {
    UIImage *mouth = [self.policeHeadQuarters getNextImageMouth];
    [self.mouthImageView setImage:mouth];

}

@end
