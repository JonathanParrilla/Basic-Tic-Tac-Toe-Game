//
//  JPGameboard.h
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

#import <Foundation/Foundation.h>

@interface JPGameboard : NSObject
{
    // This is the MutableArray that will store the gameboard's state
    NSMutableArray *boardState;
}

@property (strong, nonatomic) NSMutableArray *boardState;


// Override the init method to set up default state of the gameBoard upon startup.
-(id) init;

// updateBoard method accepts an int named buttonTag and uses it to update the board.
-(void) updateBoard:(int)buttonTag;

// resetBoard does exactly what it says...it resets all the board indexes to "Space".
-(void) resetBoard;

// evaluateGame method checks to see if there is a winner.
-(bool) evaluateGame;

@end
