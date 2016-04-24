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

@implementation ChooseCandidateViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    firstPicker.delegate = self;
    firstPicker.dataSource = self;
    
    _firstPickerChoices = @[@"Democrats", @"Republicans"];
    
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
    return _firstPickerChoices[row];
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _firstPickerChoices.count;
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    
}


@end

