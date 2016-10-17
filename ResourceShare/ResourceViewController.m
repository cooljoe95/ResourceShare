//
//  ResourceViewController.m
//  ResourceShare
//
//  Created by Joseph Katz on 9/14/14.
//  Copyright (c) 2014 Mysfits. All rights reserved.
//

#import "ResourceViewController.h"

@interface ResourceViewController ()

@end

@implementation ResourceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
    [self.pic1 setImage:[UIImage imageNamed: @"sbs-logo"]];
    [self.pic2 setImage:[UIImage imageNamed: @"sbs-logo"]];
    [self.pic3 setImage:[UIImage imageNamed: @"sbs-logo"]];
    [self.pic4 setImage:[UIImage imageNamed: @"sbs-logo"]];
    [self.pic5 setImage:[UIImage imageNamed: @"sbs-logo"]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
