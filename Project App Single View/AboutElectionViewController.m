//
//  AboutElectionViewController.m
//  Project App Single View
//
//  Created by julie fleischer on 4/20/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import "AboutElectionViewController.h"

@interface AboutElectionViewController ()

@end

@implementation AboutElectionViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    return [super initWithCoder:aDecoder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)linkButton
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.bbc.com/news/world-us-canada-31120958"]];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
