//
//  ChooseCandidateViewController.m
//  Project App Single View
//
//  Created by julie fleischer on 4/20/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//


#import "ChooseCandidateViewController.h"


@interface ChooseCandidateViewController ()

@end

NSArray *_firstPickerChoices;
NSArray *_secondPickerDemocrats;
NSArray *_secondPickerRepublicans;
NSString *partySelected;

@implementation ChooseCandidateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    firstPicker.delegate = self;
    firstPicker.dataSource = self;
    
    _firstPickerChoices = @[@"Democrats", @"Republicans"];
    
    secondPicker.delegate = self;
    secondPicker.dataSource = self;
    
    _secondPickerDemocrats = @[@"Hillary Clinton", @"Bernie Sanders"];
    _secondPickerRepublicans = @[@"Ted Cruz", @"John Kasich", @"Donald Trump"];
    
    partySelected = @"Democrats";
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 #pragma mark - Navigation
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)componen
{
    if ([pickerView isEqual:firstPicker])
    {
        return _firstPickerChoices[row];
    }
    if ([pickerView isEqual:secondPicker])
    {
        //partySelected = [_firstPickerChoices objectAtIndex:row];
        
        if ([partySelected isEqualToString:@"Democrats"])
        {
            return _secondPickerDemocrats[row];
        }
        if ([partySelected isEqualToString:@"Republicans"])
        {
            return _secondPickerRepublicans[row];
        }
    }
    return 0;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    partySelected = [_firstPickerChoices objectAtIndex:row];
    if (partySelected)
        [secondPicker reloadAllComponents];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if ([pickerView isEqual:firstPicker])
    {
        return _firstPickerChoices.count;
    }
    if ([pickerView isEqual:secondPicker])
    {
        //partySelected = [_firstPickerChoices objectAtIndex:row];
        //partySelected = @"Democrats";
        
        if ([partySelected isEqualToString:@"Democrats"])
        {
            return _secondPickerDemocrats.count;
        }
        if ([partySelected isEqualToString:@"Republicans"])
        {
            return _secondPickerRepublicans.count;
        }
    }
    return 0;
}



@end

