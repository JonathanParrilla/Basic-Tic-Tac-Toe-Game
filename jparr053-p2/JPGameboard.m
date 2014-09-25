//
//  JPGameboardState.m
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


#import "JPGameboard.h"

@implementation JPGameboard

@synthesize boardState;


// Override init. Fill the boardState indexes with "Space".
// This sets up the default status of the board.
- (id) init
{
	self = [super init];
	
	if(self)
	{
		boardState = [[NSMutableArray alloc] initWithObjects:@"Space", @"Space", @"Space", @"Space", @"Space", @"Space", @"Space", @"Space", @"Space",nil];
	}
	
	return self;
}


// Take the tag and use it to check the index of the boardState and update the board.
-(void) updateBoard: (int) tag
{
	 // Check the current space or button to see if it's a 'Space', 'X', or 'O'.
    
    // If it's a space, do the following...
    if([[boardState objectAtIndex:tag] isEqual:@"Space"])
    {
        
        // Tell the model to update the current button condition to an 'X'
        [boardState replaceObjectAtIndex:tag withObject:@"X"];
		
		//===============================testing
        NSLog(@"Square %i is %@", tag, [boardState objectAtIndex:tag]);
        
    }
    
    // If it's a 'X', do the following...
    else if([[boardState objectAtIndex:tag] isEqual:@"X"])
    {
        
        // Tell the model to update the current button condition to an 'O'
        [boardState replaceObjectAtIndex:tag withObject:@"O"];
		
		//===============================testing
        NSLog(@"Square %i is %@", tag, [boardState objectAtIndex:tag]);
        
    }
    
    
    // Otherwise it's a 'O', so do the following...
    else
    {
      
        // Tell the model to update the current button condition to an 'Space'
        [boardState replaceObjectAtIndex:tag withObject:@"Space"];
        
        //===============================testing
        NSLog(@"Square %i is %@", tag, [boardState objectAtIndex:tag]);
    }
}


// User a For loop and the boardState count to reset all indexes to "Space"
-(void)resetBoard
{
	// Use a For loop to update all boardState Indexes to "Space"
    for (int i = 0; i < [boardState count]; i++)
    {
        [boardState replaceObjectAtIndex:i withObject:@"Space"];
    }
}

// evaluateGame to see if there is a winner.
-(bool) evaluateGame
{
    //  Now it tests the gameboard is just received.
    
    // Are there 3 X's ACROSS THE TOP ROW? If so the game is over.
    if( ([[boardState objectAtIndex:0] isEqual:@"X"])
       && ([[boardState objectAtIndex:1] isEqual:@"X"])
       && ([[boardState objectAtIndex:2] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's ACROSS THE MIDDLE ROW? If so the game is over.
    else if( ([[boardState objectAtIndex:3] isEqual:@"X"])
       && ([[boardState objectAtIndex:4] isEqual:@"X"])
       && ([[boardState objectAtIndex:5] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's ACROSS THE BOTTOM ROW? If so the game is over.
    else if( ([[boardState objectAtIndex:6] isEqual:@"X"])
            && ([[boardState objectAtIndex:7] isEqual:@"X"])
            && ([[boardState objectAtIndex:8] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's DOWN THE LEFT COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:0] isEqual:@"X"])
            && ([[boardState objectAtIndex:3] isEqual:@"X"])
            && ([[boardState objectAtIndex:6] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's DOWN THE MIDDLE COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:1] isEqual:@"X"])
            && ([[boardState objectAtIndex:4] isEqual:@"X"])
            && ([[boardState objectAtIndex:7] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's DOWN THE RIGHT COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:2] isEqual:@"X"])
            && ([[boardState objectAtIndex:5] isEqual:@"X"])
            && ([[boardState objectAtIndex:8] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's FROM TOP LEFT TO BOTTOM RIGHT? If so the game is over.
    else if( ([[boardState objectAtIndex:0] isEqual:@"X"])
            && ([[boardState objectAtIndex:4] isEqual:@"X"])
            && ([[boardState objectAtIndex:8] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 X's FROM TOP RIGHT TO BOTTOM LEFT? If so the game is over.
    else if( ([[boardState objectAtIndex:2] isEqual:@"X"])
            && ([[boardState objectAtIndex:4] isEqual:@"X"])
            && ([[boardState objectAtIndex:6] isEqual:@"X"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // ======= Checking for O's=======
    
    // Are there 3 O's ACROSS THE TOP ROW? If so the game is over.
    else if( ([[boardState objectAtIndex:0] isEqual:@"O"])
            && ([[boardState objectAtIndex:1] isEqual:@"O"])
            && ([[boardState objectAtIndex:2] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 O's ACROSS THE MIDDLE ROW? If so the game is over.
    else if( ([[boardState objectAtIndex:3] isEqual:@"O"])
            && ([[boardState objectAtIndex:4] isEqual:@"O"])
            && ([[boardState objectAtIndex:5] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 O's ACROSS THE BOTTOM ROW? If so the game is over.
    else if( ([[boardState objectAtIndex:6] isEqual:@"O"])
            && ([[boardState objectAtIndex:7] isEqual:@"O"])
            && ([[boardState objectAtIndex:8] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true; 
    }
    
    // Are there 3 O's DOWN THE LEFT COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:0] isEqual:@"O"])
            && ([[boardState objectAtIndex:3] isEqual:@"O"])
            && ([[boardState objectAtIndex:6] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true; 
    }
    
    // Are there 3 O's DOWN THE MIDDLE COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:1] isEqual:@"O"])
            && ([[boardState objectAtIndex:4] isEqual:@"O"])
            && ([[boardState objectAtIndex:7] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 O's DOWN THE RIGHT COLUMN? If so the game is over.
    else if( ([[boardState objectAtIndex:2] isEqual:@"O"])
            && ([[boardState objectAtIndex:5] isEqual:@"O"])
            && ([[boardState objectAtIndex:8] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true; 
    }
    
    // Are there 3 O's FROM TOP LEFT TO BOTTOM RIGHT? If so the game is over.
    else if( ([[boardState objectAtIndex:0] isEqual:@"O"])
            && ([[boardState objectAtIndex:4] isEqual:@"O"])
            && ([[boardState objectAtIndex:8] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // Are there 3 O's FROM TOP RIGHT TO BOTTOM LEFT? If so the game is over.
    else if( ([[boardState objectAtIndex:2] isEqual:@"O"])
            && ([[boardState objectAtIndex:4] isEqual:@"O"])
            && ([[boardState objectAtIndex:6] isEqual:@"O"]) )
    {
        // We return the true boolean to signify the end of the game.
        return true;
    }
    
    // If no condition is met, then the game is not over and thus, continues!
    else
    {
        return false;
    }
    
}


@end
