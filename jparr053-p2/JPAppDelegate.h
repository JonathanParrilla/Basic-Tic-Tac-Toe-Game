//
//  JPAppDelegate.h
//  jparr053-p2
//
//  Created by Jonathan Parrilla on 1/23/14.
//  Copyright (c) 2014 Jonathan Parrilla. All rights reserved.
//

/*
 
 PROGRAMMER: Jonathan Parrilla
 
 PANTHER ID: 3767284
 
 CLASS: COP 4655 MW 5:00 PM
 
 INSTRUCTOR: Steven Luis
 
 ASSIGNMENT: Program 2 - Tic Tac Toe (Jparr053-p2)
 
 DUE: Wednesday 1/29/2014
 
 */

#import <UIKit/UIKit.h>

@class JPViewController;

@interface JPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JPViewController *viewController;

@end
