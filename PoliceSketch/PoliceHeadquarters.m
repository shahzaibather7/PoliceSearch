//
//  PoliceHeadquarters.m
//  PoliceSketch
//
//  Created by Mohammad Shahzaib Ather on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "PoliceHeadquarters.h"

@interface PoliceHeadquarters ()

@property (nonatomic , assign) int indexOfEyes;
@property (nonatomic , assign) int indexOfNose;
@property (nonatomic , assign) int indexOfMouth;


@end



@implementation PoliceHeadquarters

+(NSArray*) peoplesEyes {
     return   @[
         
               [[FaceFeaturesModel alloc] initWithEyes:[UIImage imageNamed:@"eyes_1.jpg"]],
               [[FaceFeaturesModel alloc] initWithEyes:[UIImage imageNamed:@"eyes_2.jpg"]],
               [[FaceFeaturesModel alloc] initWithEyes:[UIImage imageNamed:@"eyes_3.jpg"]],
               [[FaceFeaturesModel alloc] initWithEyes:[UIImage imageNamed:@"eyes_4.jpg"]],
               [[FaceFeaturesModel alloc] initWithEyes:[UIImage imageNamed:@"eyes_5.jpg"]]

                ];
   
}


+(NSArray*) peoplesNose{
    return   @[
               
               [[FaceFeaturesModel alloc] initWithNose:[UIImage imageNamed:@"nose_1.jpg"]],
               [[FaceFeaturesModel alloc] initWithNose:[UIImage imageNamed:@"nose_2.jpg"]],
               [[FaceFeaturesModel alloc] initWithNose:[UIImage imageNamed:@"nose_3.jpg"]],
               [[FaceFeaturesModel alloc] initWithNose:[UIImage imageNamed:@"nose_4.jpg"]],
               [[FaceFeaturesModel alloc] initWithNose:[UIImage imageNamed:@"nose_5.jpg"]]
               
               
               ];
    
}


+(NSArray*) peoplesMouth {
    return   @[
               
               [[FaceFeaturesModel alloc] initWithMouth:[UIImage imageNamed:@"mouth_1.jpg"]],
               [[FaceFeaturesModel alloc] initWithMouth:[UIImage imageNamed:@"mouth_2.jpg"]],
               [[FaceFeaturesModel alloc] initWithMouth:[UIImage imageNamed:@"mouth_3.jpg"]],
               [[FaceFeaturesModel alloc] initWithMouth:[UIImage imageNamed:@"mouth_4.jpg"]],
               [[FaceFeaturesModel alloc] initWithMouth:[UIImage imageNamed:@"mouth_5.jpg"]]
               
               
               ];
}

- (instancetype)init {
    if (self = [super init]){
        self.indexOfEyes = 0;
        self.indexOfNose = 0;
        self.indexOfMouth = 0;
    }
    return self;
}

-(UIImage*) getPreviousImageEyes {
    
    int i = self.indexOfEyes ;
    
    NSArray *peoplesEyes =  [PoliceHeadquarters peoplesEyes];
  
    if ( i == 0 ) {
        self.indexOfEyes = @(peoplesEyes.count-1).intValue;
        FaceFeaturesModel *face = peoplesEyes[peoplesEyes.count-1];
        return face.eyesPicture;
    }
    
    else  {
    
        self.indexOfEyes = @(self.indexOfEyes -1 ).intValue;
        FaceFeaturesModel *face = peoplesEyes[i -1];
        return face.eyesPicture;
    }
   
    
}

-(UIImage*) getNextImageEyes {
  
    int i = self.indexOfEyes ;
    
    NSArray *peoplesEyes =  [PoliceHeadquarters peoplesEyes];
    
    if ( i == peoplesEyes.count -1  ) {
        self.indexOfEyes = @(0).intValue;
        FaceFeaturesModel *face = peoplesEyes[self.indexOfEyes];
        return face.eyesPicture;
    }
    
    else  {
        
        self.indexOfEyes = @(self.indexOfEyes + 1 ).intValue;
        FaceFeaturesModel *face = peoplesEyes[self.indexOfEyes];
        return face.eyesPicture;
    }
}
-(UIImage*) getPreviousImageNose {
    
    int i = self.indexOfNose ;
    
    NSArray *peoplesNose =  [PoliceHeadquarters peoplesNose];
    
    if ( i == 0 ) {
        self.indexOfNose = @(peoplesNose.count-1).intValue;
        FaceFeaturesModel *face = peoplesNose[peoplesNose.count-1];
        return face.nosePicture;
    }
    
    else  {
        
        self.indexOfNose = @(self.indexOfNose -1 ).intValue;
        FaceFeaturesModel *face = peoplesNose[i -1];
        return face.nosePicture;
    }
    
    
}
-(UIImage*) getNextImageNose {
    
    int i = self.indexOfNose ;
    
    NSArray *peoplesNose =  [PoliceHeadquarters peoplesNose];
    
    if ( i == peoplesNose.count -1  ) {
        self.indexOfNose = @(0).intValue;
        FaceFeaturesModel *face = peoplesNose[self.indexOfNose];
        return face.nosePicture;
    }
    
    else  {
        
        self.indexOfNose = @(self.indexOfNose + 1 ).intValue;
        FaceFeaturesModel *face = peoplesNose[self.indexOfNose];
        return face.nosePicture;
    }
}
-(UIImage*) getPreviousImageMouth {
    
    int i = self.indexOfMouth ;
    
    NSArray *peoplesMouth =  [PoliceHeadquarters peoplesMouth];
    
    if ( i == 0 ) {
        self.indexOfMouth = @(peoplesMouth.count-1).intValue;
        FaceFeaturesModel *face = peoplesMouth[peoplesMouth.count-1];
        return face.mouthPicture;
    }
    
    else  {
        
        self.indexOfMouth = @(self.indexOfMouth -1 ).intValue;
        FaceFeaturesModel *face = peoplesMouth[i -1];
        return face.mouthPicture;
    }
}

-(UIImage*) getNextImageMouth {
    
    int i = self.indexOfMouth ;
    
    NSArray *peoplesMouth =  [PoliceHeadquarters peoplesMouth];
    
    if ( i == peoplesMouth.count -1  ) {
        self.indexOfMouth = @(0).intValue;
        FaceFeaturesModel *face = peoplesMouth[self.indexOfMouth];
        return face.mouthPicture;
    }
    
    else  {
        
        self.indexOfMouth = @(self.indexOfMouth + 1 ).intValue;
        FaceFeaturesModel *face = peoplesMouth[self.indexOfMouth];
        return face.mouthPicture;
    }
}

@end
