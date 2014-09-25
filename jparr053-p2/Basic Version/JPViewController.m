//
//  JPViewController.m
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

#import "JPViewController.h"

@interface JPViewController ()

@end

@implementation JPViewController

// Synthesized variables in order to use there here.
@synthesize buttons;
@synthesize myGameboard;

- (void)viewDidLoad
{
    // Alloc and Init the gameboard
    myGameboard = [[JPGameboard alloc] init];
    
    
    // Create a new MutableArray to serve as starting board
    NSMutableArray *startingBoard = [[NSMutableArray alloc]init];
    
    
    // Set the status of all the indexes in the MutableArray to 'Space'
    for(int i = 0; i < [buttons count]; i++)
    {
        [startingBoard addObject:@"Space"];
    }
    
    // Load this MutableArray as the gameBoard
    [myGameboard setBoardState:startingBoard];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Action to be taken when the user touches the 'restart' button
- (IBAction)restartSquares:(id)sender
{
    // Create a temporary board by making a MutableArray
    NSMutableArray *newBoard = [[NSMutableArray alloc]init];
    
    // Use a For loop to send a message to the view to display 'Space' on ALL buttons
    // and to load our temporary board with 'Space' at every index
    for (int i = 0; i < [buttons count]; i++)
    {
        [newBoard addObject:@"Space"];
        [[buttons objectAtIndex:i]setTitle:@"Space" forState:UIControlStateNormal];
    }
    
    // Reset the gameboard with our newly created temporary board.
    [myGameboard setBoardState:newBoard];
    
    //==================testing
    NSLog(@"%lu",(unsigned long)[myGameboard.getBoardState count]);
}


// Action to be taken when ANY space button is pressed
- (IBAction)squarePressed:(id)sender
{

    // Obtain the button's ID via the tag
    NSInteger tag = [sender tag];
    
    // Create a temporary board
    NSMutableArray *tempBoard = [[NSMutableArray alloc]init];
    
    // Create a gameOver boolean
    Boolean gameOver;
    
    // Grab the current state of the board and assign it to our temporary board.
    tempBoard = [myGameboard getBoardState];
    
    
    // Check the current space or button to see if it's a 'Space', 'X', or 'O'.
    
    // If it's a space, do the following...
    if([[tempBoard objectAtIndex:tag] isEqual:@"Space"])
    {
        
        // Tell the view to update the button to show an 'X'
        [[buttons objectAtIndex:tag]setTitle:@"   X   " forState:UIControlStateNormal];
        
        
        // Tell the model to update the current button condition to an 'X'
        [tempBoard replaceObjectAtIndex:tag withObject:@"X"];
        [myGameboard setBoardState:tempBoard];
        
        
        // Check to see if the game has ended since a change was made to the board.
        // If it is over, the model will reset the board.
        gameOver = [myGameboard evaluateGame:tempBoard];
        
        
        // If the game is over do the following...
        if(gameOver == true)
        {
            //=====================testing
            NSLog(@"Game Over: X WINS!");
            
            // Display a pop up message indicating that X won the game.
            UIAlertView *gameOverMessage = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"X Wins !" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [gameOverMessage show];
            
            
            // Tell the view to change all of the button titles back to 'Space'
            for (int i = 0; i < [buttons count]; i++)
            {
                [[buttons objectAtIndex:i]setTitle:@"Space" forState:UIControlStateNormal];
            }
            
        }
        
        //===============================testing
        tempBoard = [myGameboard getBoardState];
        NSLog(@"Square %i is %@", tag, [tempBoard objectAtIndex:tag]);
    }
    
    // If it's a 'X', do the following...
    else if([[tempBoard objectAtIndex:tag] isEqual:@"X"])
    {
        
        // Tell the view to update the button to show an 'O'
        [[buttons objectAtIndex:tag]setTitle:@"   O   " forState:UIControlStateNormal];
        
        
        // Tell the model to update the current button condition to an 'O'
        [tempBoard replaceObjectAtIndex:tag withObject:@"O"];
        [myGameboard setBoardState:tempBoard];
        
        
        // Check to see if the game has ended since a change was made to the board.
        // If it is over, the model will reset the board.
        gameOver = [myGameboard evaluateGame:tempBoard];
        
        
        // If the game is over do the following...
        if(gameOver == true)
        {
            //=====================testing
            NSLog(@"Game Over: O WINS!");
            
            // Display a pop up message indicating that O won the game.
            UIAlertView *gameOverMessage = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"O Wins !" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [gameOverMessage show];
            
            
            // Tell the view to change all of the button titles back to 'Space'
            for (int i = 0; i < [buttons count]; i++)
            {
                [[buttons objectAtIndex:i]setTitle:@"Space" forState:UIControlStateNormal];
            }
            
        }
        
        //===============================testing
        tempBoard = [myGameboard getBoardState];
        NSLog(@"Square %i is %@", tag, [tempBoard objectAtIndex:tag]);
    }
    
    
    // Otherwise it's a 'O', so do the following...
    else
    {
        
        // Tell the view to update the button to show an 'Space'
        [[buttons objectAtIndex:tag]setTitle:@"Space" forState:UIControlStateNormal];
        
        
        // Tell the model to update the current button condition to an 'Space'
        [tempBoard replaceObjectAtIndex:tag withObject:@"Space"];
        [myGameboard setBoardState:tempBoard];
        
        
        //===============================testing
        tempBoard = [myGameboard getBoardState];
        NSLog(@"Square %i is %@", tag, [tempBoard objectAtIndex:tag]);
    }
    
    
}
@end
