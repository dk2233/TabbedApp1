//
//  SecondViewController.h
//  TimeAmPmTabbed
//
//  Created by Daniel Kucharski on 28.03.2018.
//  Copyright © 2018 code masterss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface SecondViewController : UIViewController <UITextFieldDelegate, SecondDelegate, UITabBarDelegate>  {
    
    FirstViewController *firstView;
}

@property (weak, nonatomic) IBOutlet UITextField *textOn2View;

@end

