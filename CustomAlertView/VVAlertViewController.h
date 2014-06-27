//
//  VVAlertViewController.h
//  CustomAlertView
//
//  Created by Vinod Vishwakarma on 25/06/14.
//  Copyright (c) 2014 indigo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@protocol VVAlertViewControllerDelegate <NSObject>

@optional
- (void)cancelAlertView;

@end


@interface VVAlertViewController : UIViewController {

}

@property (nonatomic, weak) id <VVAlertViewControllerDelegate>delegate;
@property (nonatomic, weak) IBOutlet UIView *showPopView;


- (void)showPopup;
- (IBAction)onButtonClickIndex:(id)sender;


@end
