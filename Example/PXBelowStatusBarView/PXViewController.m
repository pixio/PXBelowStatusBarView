//
//  PXViewController.m
//  PXBelowStatusBarView
//
//  Created by Spencer Phippen on 09/16/2015.
//  Copyright (c) 2015 Spencer Phippen. All rights reserved.
//

#import "PXViewController.h"

#import <PXBelowStatusBarView/PXBelowStatusBarView.h>
#import <SPHStringContentFillView/SPHStringContentFillView.h>

@implementation PXViewController

- (void) loadView {
    PXBelowStatusBarView* view = [[PXBelowStatusBarView alloc] init];
    [view setBackgroundColor:[UIColor blueColor]];
    
    SPHStringContentFillView* c = [[SPHStringContentFillView alloc] init];
    [c setBackgroundColor:[UIColor yellowColor]];
    [view setContainedView:c];
    [self setView:view];
}

- (SPHStringContentFillView*) stringView {
    return (SPHStringContentFillView*)[((PXBelowStatusBarView*)[self view]) containedView];
}

- (void) viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer* tap = [UITapGestureRecognizer new];
    [tap addTarget:self action:@selector(tapUpdate:)];
    [[self stringView] addGestureRecognizer:tap];
}

- (void) tapUpdate:(UITapGestureRecognizer*)tap {
    SPHStringContentFillView* view = [self stringView];
    [view regenerateFromPoint:[tap locationInView:view]];
}

@end
