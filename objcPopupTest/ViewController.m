//
//  ViewController.m
//  objcPopupTest
//
//  Created by Kalan Nawarathne on 14/5/16.
//  Copyright © 2016 gamiya. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+MJPopupViewController.h"
#import "CustomPopupViewController.h"

@interface ViewController () <CustomPopupDelegate>

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cancelButtonClicked:(CustomPopupViewController *)customPopupViewController {
    [self dismissPopupViewControllerWithanimationType:MJPopupViewAnimationFade];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown) || (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

- (IBAction)showPopupView:(id)sender {
    CustomPopupViewController *customPopupViewController = [[CustomPopupViewController alloc] initWithNibName:@"CustomPopupViewController" bundle:nil];
    customPopupViewController.delegate = self;
    [self presentPopupViewController:customPopupViewController animationType:MJPopupViewAnimationFade];
}
@end
