//
//  JPViewController.h
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
#import "JPGameboard.h"

@interface JPViewController : UIViewController
{
    JPGameboard *myGameboard;
}

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;

- (IBAction)restartSquares:(id)sender;

//This IBAction will handle ALL of the buttons
- (IBAction)squarePressed:(id)sender;

@property JPGameboard *myGameboard;

@end
