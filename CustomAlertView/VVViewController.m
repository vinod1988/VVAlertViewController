//
//  VVViewController.m
//  CustomAlertView
//
//  Created by Vinod Vishwakarma on 25/06/14.
//  Copyright (c) 2014 indigo. All rights reserved.
//

#import "VVViewController.h"
#import "VVAlertViewController.h"


@interface VVViewController ()

@end

@implementation VVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showAlert:(id)sender {

    VVAlertViewController *alert = [[VVAlertViewController alloc] initWithNibName:@"VVAlertViewController" bundle:[NSBundle mainBundle]];
    alert.delegate = self;
    [self presentViewController:alert animated:YES completion:NULL];
    [alert showPopup];
    
}

#pragma -
#pragma mark VVAlertViewControllerDelegate Method

- (void)cancelAlertView {
    // override the mehtod , you can do some  custom coding here.
    [self dismissViewControllerAnimated:NO completion:NULL];
    
}



@end
