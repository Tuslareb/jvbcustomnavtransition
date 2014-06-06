//
//  JvBViewController.h
//  JvBcustomNavTransition
//
//  Created by J.J.A.P. van Breukelen on 06-06-14.
//  Copyright (c) 2014 J.J.A.P. van Breukelen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JvBAnimator.h"

@interface JvBViewController : UIViewController <UINavigationControllerDelegate> //adopt the UINavigationcontrollerDelegate

@property (nonatomic) JvBAnimator *animator;

@end
