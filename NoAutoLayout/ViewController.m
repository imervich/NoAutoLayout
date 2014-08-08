//
//  ViewController.m
//  NoAutoLayout
//
//  Created by Iván Mervich on 8/7/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewOne;
@property CGRect viewOneFrame;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.viewOneFrame = self.viewOne.frame;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
	[super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
	if (fromInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
		fromInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		self.viewOne.frame = self.viewOneFrame;
	} else {
		self.viewOne.frame = CGRectMake(self.viewOneFrame.origin.x, self.viewOneFrame.origin.y, self.viewOneFrame.size.width, self.viewOneFrame.size.height);
	}
}

@end
