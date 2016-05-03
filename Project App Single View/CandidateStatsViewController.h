//
//  CandidateStatsViewController.h
//  Project App Single View
//
//  Created by julie fleischer on 5/2/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CandidateStatsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *candidateName;
@property NSString *candidateSelected;
@property NSString *selectedParty;

//-(IBAction)changetext;

@end
