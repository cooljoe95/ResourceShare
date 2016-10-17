//
//  CreateViewController.h
//  ResourceShare
//
//  Created by Joseph Katz on 9/14/14.
//  Copyright (c) 2014 Mysfits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *Title;
@property (weak, nonatomic) IBOutlet UITextField *Cost;
@property (weak, nonatomic) IBOutlet UITextField *Dates;
@property (weak, nonatomic) IBOutlet UITextView *Description;
@property (weak, nonatomic) IBOutlet UIImageView *Pic;

@end
