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
    
    __weak IBOutlet UITextView *infoText;
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
        
        infoText.text = @"His first hurdle in the race for president is the candidates from his own party: Ted Cruz and Donald Trump.";
    }
    else if ([_candidateSelected isEqualToString:@"Hillary Clinton"])
    {
        UIImage *image = [UIImage imageNamed:@"34percent"];
        [pic setImage:image];
        
        infoText.text = @"Her first hurdle in the race for president is the candidate from her own party: Bernie Sanders.";
    }
    else if ([_candidateSelected isEqualToString:@"Bernie Sanders"])
    {
        UIImage *image = [UIImage imageNamed:@"38percent"];
        [pic setImage:image];
        
        infoText.text = @"His first hurdle in the race for president is the candidate from his own party: Hillary Clinton.";
    }
    else if ([_candidateSelected isEqualToString:@"Ted Cruz"])
    {
        UIImage *image = [UIImage imageNamed:@"4percent"];
        [pic setImage:image];
        
        infoText.text = @"His first hurdle in the race for president is the candidates from his own party: John Kasich and Donald Trump.";
    }
    else  //Donald Trump
    {
        UIImage *image = [UIImage imageNamed:@"4percent"];
        [pic setImage:image];
        
        infoText.text = @"His first hurdle in the race for president is the candidates from his own party: Ted Cruz and John Kasich.";
    }
    
    infoText.font = [UIFont systemFontOfSize:17];
    
//    if ([_selectedParty isEqualToString:@"Democrats"])
//    {
//        infoText.text = @"";
//    }
//    else
//    {
//        infoText.text = @"";
//    }
    
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
