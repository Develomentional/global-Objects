//
//  DLViewController.m
//  sharedGlobalData
//
//  Created by Jeffry Bobb on 7/14/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DLViewController.h"

@interface DLViewController ()

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
