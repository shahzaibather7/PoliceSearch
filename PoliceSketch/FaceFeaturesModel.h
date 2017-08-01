//
//  FaceFeaturesModel.h
//  PoliceSketch
//
//  Created by Mohammad Shahzaib Ather on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FaceFeaturesModel : NSObject


@property (nonatomic ,strong) UIImage *eyesPicture;
@property (nonatomic ,strong) UIImage *nosePicture;
@property (nonatomic ,strong) UIImage *mouthPicture;

- (instancetype)initWithEyes: (UIImage*) eyes;
- (instancetype)initWithNose: (UIImage*) nose;
- (instancetype)initWithMouth: (UIImage*) mouth;



@end
