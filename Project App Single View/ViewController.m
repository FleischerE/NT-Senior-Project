//
//  ViewController.m
//  Project App Single View
//
//  Created by julie fleischer on 3/23/16.
//  Copyright © 2016 Eliana Fleischer. All rights reserved.
//

#import "ViewController.h"
#import "AboutElectionViewController.h"

//@interface ViewController ()

//@end

@implementation ViewController

//- (IBAction)Next {
//    AboutElectionViewController *election = [[AboutElectionViewController alloc] initWtihNibName:nil bundle:nil];
//    [self presentViewController:election animated:NO completion:NULL];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor lightGrayColor];
//    
//    UIButton *companyButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    companyButton.frame = CGRectMake(130, 400, 150, 60);
//    [companyButton setTitle:@"Choose a candidate" forState:UIControlStateNormal];
//    companyButton.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:companyButton];
//    
//    UIButton *aboutElectionButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    aboutElectionButton.frame = CGRectMake(60, 500, 135, 60);
//    [aboutElectionButton setTitle:@"About the election" forState:UIControlStateNormal];
//    aboutElectionButton.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:aboutElectionButton];
//    
//    UIButton *aboutAppButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    aboutAppButton.frame = CGRectMake(220, 500, 135, 60);
//    [aboutAppButton setTitle:@"About 'NAME'" forState:UIControlStateNormal];
//    aboutAppButton.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:aboutAppButton];
    
//    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 90, 175, 60)];
//    nameLabel.text = @"Name of app here!!";
//    nameLabel.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:nameLabel];
    
    //[companyButton addTarget:self action:@selector(firstButtonPressed:)forControlEvents:UIControlEventTouchUpInside];
}

- (void) loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)firstButtonPressed:(UIButton *)sender {
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
