//
//  CandidateStatsViewController.m
//  Project App Single View
//
//  Created by julie fleischer on 5/2/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import "CandidateStatsViewController.h"

@interface CandidateStatsViewController ()
{
    IBOutlet UILabel *name;
    
    //IBOutlet UIImage *picture;
    
    __weak IBOutlet UIImageView *pic;
}

@end

@implementation CandidateStatsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    name.text = _candidateSelected;
    
    if ([_candidateSelected isEqualToString:@"John Kasich"])
    {
        UIImage *image = [UIImage imageNamed:@"20percent"];
        [pic setImage:image];
    }
    else if ([_candidateSelected isEqualToString:@"Hillary Clinton"])
    {
        UIImage *image = [UIImage imageNamed:@"34percent"];
        [pic setImage:image];
    }
    else if ([_candidateSelected isEqualToString:@"Bernie Sanders"])
    {
        UIImage *image = [UIImage imageNamed:@"38percent"];
        [pic setImage:image];
    }
    else
    {
        UIImage *image = [UIImage imageNamed:@"4percent"];
        [pic setImage:image];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)changetext
//{
//    name.text = _candidateSelected;
//} 

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
