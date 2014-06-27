//
//  VVAlertViewController.m
//  CustomAlertView
//
//  Created by Vinod Vishwakarma on 25/06/14.
//  Copyright (c) 2014 indigo. All rights reserved.
//

#import "VVAlertViewController.h"

@interface VVAlertViewController ()

@end

@implementation VVAlertViewController

@synthesize showPopView, delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.showPopView.layer.cornerRadius = 5.0f;
     self.showPopView.alpha = 0.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showPopup  {
    // Animation
    [UIView animateWithDuration:0.3f
                     animations:^{
                         self.showPopView.alpha = 1.0f;
                     }];
}

- (IBAction)onButtonClickIndex:(id)sender {
    if ([self.delegate respondsToSelector:@selector(cancelAlertView)]) {
        [self.delegate cancelAlertView];
    } else {
        [self dismissViewControllerAnimated:NO completion:NULL];
    }
    
}


@end
