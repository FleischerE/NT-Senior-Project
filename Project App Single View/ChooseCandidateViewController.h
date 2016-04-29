//
//  ChooseCandidateViewController.h
//  Project App Single View
//
//  Created by julie fleischer on 4/22/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooseCandidateViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    //IBOutlet UIPickerView *firstPicker;
    //IBOutlet UIPickerView *secondPicker;
}

@property (strong, nonatomic) IBOutlet UIPickerView *firstPicker;
@property (strong, nonatomic) IBOutlet UIPickerView *secondPicker;

@end
