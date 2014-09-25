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

// Accessor methods for the MutableArray 'boardState'

// The set method accepts a MutableArray which is named 'state'
- (void) setBoardState:(NSMutableArray*)state;

// The get method returns a MutableArray
- (NSMutableArray*) getBoardState;


// Extra methods

// evaluateGame method accepts a MutableArray named 'board'
-(bool) evaluateGame:(NSMutableArray*)board;



@end
