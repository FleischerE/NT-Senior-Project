//
//  ChooseCandidateViewController.m
//  Project App Single View
//
//  Created by julie fleischer on 4/20/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//


#import "ChooseCandidateViewController.h"


@interface ChooseCandidateViewController ()

@property NSArray *firstPickerChoices;
@property NSArray *secondPickerChoices;

@property NSArray *democrats;
@property NSArray *republicans;

@property (nonatomic) NSString *partySelected;

@end

//NSArray *_firstPickerChoices;
//NSArray *_secondPickerDemocrats;
//NSArray *_secondPickerRepublicans;
//NSString *partySelected;

@implementation ChooseCandidateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.firstPicker.delegate = self;
    self.firstPicker.dataSource = self;
    
    self.firstPickerChoices = @[@"Democrats", @"Republicans"];
    
    self.secondPicker.delegate = self;
    self.secondPicker.dataSource = self;
    
    self.democrats = @[@"Hillary Clinton", @"Bernie Sanders"];
    self.republicans = @[@"Ted Cruz", @"John Kasich", @"Donald Trump"];
    
    self.partySelected = @"Democrats";
    
//    firstPicker.delegate = self;
//    firstPicker.dataSource = self;
//    
//    _firstPickerChoices = @[@"Democrats", @"Republicans"];
//    
//    secondPicker.delegate = self;
//    secondPicker.dataSource = self;
//    
//    _secondPickerDemocrats = @[@"Hillary Clinton", @"Bernie Sanders"];
//    _secondPickerRepublicans = @[@"Ted Cruz", @"John Kasich", @"Donald Trump"];
//    
//    partySelected = @"Democrats";
    
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
    if ([pickerView isEqual:self.firstPicker])
    {
        return self.firstPickerChoices[row];
    }
    else
    {
        return self.secondPickerChoices[row];
    }
    
//    if ([pickerView isEqual:secondPicker])
//    {
//        //partySelected = [_firstPickerChoices objectAtIndex:row];
//        
//        if ([partySelected isEqualToString:@"Democrats"])
//        {
//            return _secondPickerDemocrats[row];
//        }
//        if ([partySelected isEqualToString:@"Republicans"])
//        {
//            return _secondPickerRepublicans[row];
//        }
//    }
//    return 0;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.partySelected = [_firstPickerChoices objectAtIndex:row];
    [self.secondPicker reloadAllComponents];
    
//    partySelected = [_firstPickerChoices objectAtIndex:row];
//    if (partySelected)
//        [secondPicker reloadAllComponents];

}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if ([pickerView isEqual:self.firstPicker])
    {
        return self.firstPickerChoices.count;
    }
    else
    {
        return self.secondPickerChoices.count;
    }
    
//    if ([pickerView isEqual:secondPicker])
//    {
//        //partySelected = [_firstPickerChoices objectAtIndex:row];
//        //partySelected = @"Democrats";
//        
//        if ([partySelected isEqualToString:@"Democrats"])
//        {
//            return _secondPickerDemocrats.count;
//        }
//        if ([partySelected isEqualToString:@"Republicans"])
//        {
//            return _secondPickerRepublicans.count;
//        }
//    }
//    return 0;
    
}

- (void)setPartySelected:(NSString *)partySelected
{
    _partySelected = partySelected;
    
    if([partySelected isEqualToString:@"Democrats"])
    {
        self.secondPickerChoices = self.democrats;
    }
    else
    {
        self.secondPickerChoices = self.republicans;
    }
    
    [self.secondPicker reloadAllComponents];
}



@end

