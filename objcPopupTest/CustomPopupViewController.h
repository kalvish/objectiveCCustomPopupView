//
//  CustomPopupViewController.h
//  objcPopupTest
//
//  Created by Kalan Nawarathne on 14/5/16.
//  Copyright © 2016 gamiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomPopupDelegate;

@interface CustomPopupViewController : UIViewController

@property (assign, nonatomic) id <CustomPopupDelegate>delegate;

- (IBAction)closePopup:(id)sender;

@end

@protocol CustomPopupDelegate<NSObject>
@optional
- (void)cancelButtonClicked:(CustomPopupViewController*)customPopupViewController;
@end