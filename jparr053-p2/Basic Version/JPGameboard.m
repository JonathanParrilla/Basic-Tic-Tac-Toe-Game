//
//  JPGameboard.m
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
{

      
}

// setBoardState accepts a temporary MutableArray
- (void) setBoardState:(NSMutableArray *)state
{
    // boardState is assigned this MutabaleArray
    boardState = state;
}

// getBoardState returns the MutabaleArray boardState
-(NSMutableArray*) getBoardState
{
    return boardState;
}

// evaluateGame accepts a MutableArray
-(bool) evaluateGame: (NSMutableArray*)board
{
    //  Now it tests the gameboard is just received.
    
    // Are there 3 X's ACROSS THE TOP ROW? If so the game is over.
    if( ([[board objectAtIndex:0] isEqual:@"X"])
       && ([[board objectAtIndex:1] isEqual:@"X"])
       && ([[board objectAtIndex:2] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's ACROSS THE MIDDLE ROW? If so the game is over.
    else if( ([[board objectAtIndex:3] isEqual:@"X"])
       && ([[board objectAtIndex:4] isEqual:@"X"])
       && ([[board objectAtIndex:5] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's ACROSS THE BOTTOM ROW? If so the game is over.
    else if( ([[board objectAtIndex:6] isEqual:@"X"])
            && ([[board objectAtIndex:7] isEqual:@"X"])
            && ([[board objectAtIndex:8] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's DOWN THE LEFT COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:0] isEqual:@"X"])
            && ([[board objectAtIndex:3] isEqual:@"X"])
            && ([[board objectAtIndex:6] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's DOWN THE MIDDLE COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:1] isEqual:@"X"])
            && ([[board objectAtIndex:4] isEqual:@"X"])
            && ([[board objectAtIndex:7] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's DOWN THE RIGHT COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:2] isEqual:@"X"])
            && ([[board objectAtIndex:5] isEqual:@"X"])
            && ([[board objectAtIndex:8] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's FROM TOP LEFT TO BOTTOM RIGHT? If so the game is over.
    else if( ([[board objectAtIndex:0] isEqual:@"X"])
            && ([[board objectAtIndex:4] isEqual:@"X"])
            && ([[board objectAtIndex:8] isEqual:@"X"]) )
    {
         
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 X's FROM TOP RIGHT TO BOTTOM LEFT? If so the game is over.
    else if( ([[board objectAtIndex:2] isEqual:@"X"])
            && ([[board objectAtIndex:4] isEqual:@"X"])
            && ([[board objectAtIndex:6] isEqual:@"X"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // ======= Checking for O's=======
    
    // Are there 3 O's ACROSS THE TOP ROW? If so the game is over.
    else if( ([[board objectAtIndex:0] isEqual:@"O"])
            && ([[board objectAtIndex:1] isEqual:@"O"])
            && ([[board objectAtIndex:2] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's ACROSS THE MIDDLE ROW? If so the game is over.
    else if( ([[board objectAtIndex:3] isEqual:@"O"])
            && ([[board objectAtIndex:4] isEqual:@"O"])
            && ([[board objectAtIndex:5] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's ACROSS THE BOTTOM ROW? If so the game is over.
    else if( ([[board objectAtIndex:6] isEqual:@"O"])
            && ([[board objectAtIndex:7] isEqual:@"O"])
            && ([[board objectAtIndex:8] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's DOWN THE LEFT COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:0] isEqual:@"O"])
            && ([[board objectAtIndex:3] isEqual:@"O"])
            && ([[board objectAtIndex:6] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's DOWN THE MIDDLE COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:1] isEqual:@"O"])
            && ([[board objectAtIndex:4] isEqual:@"O"])
            && ([[board objectAtIndex:7] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's DOWN THE RIGHT COLUMN? If so the game is over.
    else if( ([[board objectAtIndex:2] isEqual:@"O"])
            && ([[board objectAtIndex:5] isEqual:@"O"])
            && ([[board objectAtIndex:8] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's FROM TOP LEFT TO BOTTOM RIGHT? If so the game is over.
    else if( ([[board objectAtIndex:0] isEqual:@"O"])
            && ([[board objectAtIndex:4] isEqual:@"O"])
            && ([[board objectAtIndex:8] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
        // We return the true boolean to signify the end of the game.
        return true;
        
    }
    
    // Are there 3 O's FROM TOP RIGHT TO BOTTOM LEFT? If so the game is over.
    else if( ([[board objectAtIndex:2] isEqual:@"O"])
            && ([[board objectAtIndex:4] isEqual:@"O"])
            && ([[board objectAtIndex:6] isEqual:@"O"]) )
    {
        
        // Since the game is over, we reset the gameboard
        for(int i = 0; i < [board count];i++)
        {
            [board replaceObjectAtIndex:i withObject:@"Space"];
            boardState = board;
        }
        
        
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
