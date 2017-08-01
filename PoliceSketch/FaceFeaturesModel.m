//
//  FaceFeaturesModel.m
//  PoliceSketch
//
//  Created by Mohammad Shahzaib Ather on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FaceFeaturesModel.h"

@implementation FaceFeaturesModel

- (instancetype)initWithEyes:(UIImage *)eyes {
 
    if (self = [super init]){
    
    self.eyesPicture = eyes;
   
    }
    return self;
}
- (instancetype)initWithNose:(UIImage *)nose {
    
    if (self = [super init]){
        
        self.nosePicture = nose;
        
    }
    return self;
}
- (instancetype)initWithMouth:(UIImage *)mouth {
    
    if (self = [super init]){
        
        self.mouthPicture = mouth;
    }
    return self;
}






@end
