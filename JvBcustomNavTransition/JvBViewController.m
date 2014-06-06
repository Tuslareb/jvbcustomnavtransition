//
//  JvBViewController.m
//  JvBcustomNavTransition
//
//  Created by J.J.A.P. van Breukelen on 06-06-14.
//  Copyright (c) 2014 J.J.A.P. van Breukelen. All rights reserved.
//

#import "JvBViewController.h"

@interface JvBViewController ()

@end

@implementation JvBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create the animator object
    self.animator = [JvBAnimator new];
	
    //tell the navigationcontroller that this view controller acts as its delegate
    self.navigationController.delegate = self;
    
}



#pragma mark - UINavigationController delegate method

/*
 
 Implement the UINavigationController delegate method for custom transitions. This method is called by
 the UINavigationController when it asks for a custom animator object. In this case the method returns a JvBAnimator
 object, which holds the transition.
 
 */

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                  animationControllerForOperation:(UINavigationControllerOperation)operation
                                               fromViewController:(UIViewController *)fromVC
                                                 toViewController:(UIViewController *)toVC
{
    return self.animator;
}


@end
