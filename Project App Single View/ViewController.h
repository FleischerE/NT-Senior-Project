//
//  ViewController.h
//  Project App Single View
//
//  Created by julie fleischer on 3/23/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    IBOutlet UIPickerView *pickerViewOne;
}

//@property (weak, nonatomic) UIButton *companyButton;
//@property (weak, nonatomic) UIButton *aboutSlaveryButton;
//@property (weak, nonatomic) UIButton *aboutAppButton;

//@property (weak, nonatomic) IBOutlet UIPickerView *pickerOne;
//@property (strong, nonatomic) IBOutlet UIPickerView *firstPicker;
//@property (strong, nonatomic) NSArray *firstPickerChoices;

- (void)firstButtonPressed:(UIButton *)sender;

//- (IBAction)Next;


@end

