//
//  PoliceHeadquarters.h
//  PoliceSketch
//
//  Created by Mohammad Shahzaib Ather on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FaceFeaturesModel.h"


@interface PoliceHeadquarters : NSObject

+(NSArray*) peoplesEyes;
+(NSArray*) peoplesNose;
+(NSArray*) peoplesMouth;

-(UIImage*) getPreviousImageEyes;
-(UIImage*) getNextImageEyes;
-(UIImage*) getPreviousImageNose;
-(UIImage*) getNextImageNose;
-(UIImage*) getPreviousImageMouth;
-(UIImage*) getNextImageMouth;

@end
