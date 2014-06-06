//
//  JvBAnimator.m
//  JvBCustomTransitionCode
//
//  Created by J.J.A.P. van Breukelen on 06-06-14.
//  Copyright (c) 2014 J.J.A.P. van Breukelen. All rights reserved.
//

#import "JvBAnimator.h"

@implementation JvBAnimator

/*
 
When the UIViewControllerAnimatedTransitioning protocol is adopted, the two methods beneath have to be implemented. 
These methods are called by the UINavigationController because its delegate says to use this (the JvBAnimator) object.

The transitionDuration method returns the duration.
 
The animateTransition method holds the transition itself. The transitionContext is a model object that holds all
information that is needed for the transition to take place. It gives us the presenting and the presented viewcontroller, 
as well as a container view, which acts as a superview for the views involved in the transition. 
 
After the transition animation is finished, the 'completeTransitinon' method is called. This ends the transition state.
 
*/

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
    //get a reference to the viewcontrollers involved in the transition
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    //set the alpha of the view that is to presented to zero
    toViewController.view.alpha = 0;
    
    //get the container superview and add the view that is to be presented as its subview.
    [[transitionContext containerView] addSubview:toViewController.view];
    
    //start and end simple fade in / fade out transition
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
     
                     animations:^
     {
         fromViewController.view.alpha = 0;
         toViewController.view.alpha = 1;
     }
     
                     completion:^(BOOL finished)
     {
         [transitionContext completeTransition:finished]; // end transiton
     }];
    
    
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5; //transition will take 0,5 seconds.
}


@end
