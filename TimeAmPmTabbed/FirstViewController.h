//
//  FirstViewController.h
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "SecondViewController.h"


//protocol has to be in view that sends sthg
@protocol SecondDelegate <NSObject>

-(void)updateTextFromFirstToSecond:(NSString *)textFromInput;

@end

@interface FirstViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textTime;
@property (weak, nonatomic) IBOutlet UISlider *timeSlider;
@property (weak, nonatomic) IBOutlet UITextField *textCalc;
@property (weak, nonatomic) id<SecondDelegate>delegate;

@end

