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
#import "JPGameboard.h"

@implementation JPViewController

// Synthesized variables in order to use there here.
@synthesize buttons;
@synthesize myGameboard;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// Alloc and Init the gameboard
    myGameboard = [[JPGameboard alloc] init];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Action to be taken when the user touches the 'restart' button
- (IBAction)restartSquares:(id)sender
{
    // Call the resetGame method
    [self resetGame];
}


/* resetGame: I created this method because there are multiple conditions that result in the view being told to change all of the buttons back to 'Space'. So why type the same code twice?
 */
-(void) resetGame
{
    // Use a For loop to send a message to the view to display 'Space' on ALL buttons.
    for (int i = 0; i < [buttons count]; i++)
    {
        [[buttons objectAtIndex:i]setTitle:@"Space" forState:UIControlStateNormal];
    }
	
    // Tell model to reset the gameboard.
	[myGameboard resetBoard];}


// Action to be taken when ANY space button is pressed
- (IBAction)squarePressed:(id)sender
{

    // Obtain the button's ID via the tag
    NSInteger tag = [sender tag];
    
    // Create a gameOver boolean
    Boolean gameOver;
    
    // Check the current space or button to see if it's a 'Space', 'X', or 'O'.
    
    // If it's a space, do the following...
    if([[myGameboard.boardState objectAtIndex:tag] isEqual:@"Space"])
    {
        
        // Tell the view to update the button to show an 'X'
        [[buttons objectAtIndex:tag]setTitle:@"   X   " forState:UIControlStateNormal];
        
        NSString *stuff = [NSString stringWithFormat:@"%i",tag];
        
        NSLog(@"%@",stuff);
        
        // Call the updateBoard Method and pass it the button id tag:
        // Updates board's current tag index to "  X  "
        [myGameboard updateBoard: tag];
        
        // Check to see if the game has ended since a change was made to the board.
        gameOver = [myGameboard evaluateGame];
        
        
        // If the game is over do the following...
        if(gameOver == true)
        {
            //=====================testing
            NSLog(@"Game Over: X WINS!");
            
            // Display a pop up message indicating that X won the game.
            UIAlertView *gameOverMessage = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"X Wins !" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [gameOverMessage show];
			
			// Reset the gameboard and view buttons by calling the resetGame method.
            [self resetGame];            
        }
    }
    
    // If it's a 'X', do the following...
    else if([[myGameboard.boardState objectAtIndex:tag] isEqual:@"X"])
    {
        
        // Tell the view to update the button to show an 'O'
        [[buttons objectAtIndex:tag]setTitle:@"   O   " forState:UIControlStateNormal];
        
        // Call the updateBoard Method and pass it the button id tag:
        // Updates board's current tag index to "  O  "
        [myGameboard updateBoard: tag];
        
        // Check to see if the game has ended since a change was made to the board.
        gameOver = [myGameboard evaluateGame];
        
        
        // If the game is over do the following...
        if(gameOver == true)
        {
            //=====================testing
            NSLog(@"Game Over: O WINS!");
            
            // Display a pop up message indicating that O won the game.
            UIAlertView *gameOverMessage = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"O Wins !" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [gameOverMessage show];
			
			// Reset the gameboard and view buttons by calling the resetGame method.
            [self resetGame];            
        }
    }
    
    
    // Otherwise it's a 'O', so do the following...
    else
    {
        // Tell the view to update the button to show an 'Space'
        [[buttons objectAtIndex:tag]setTitle:@"Space" forState:UIControlStateNormal];
        
        // Call the updateBoard Method and pass it the button id tag:
        // Updates board's current tag index to "Space"
        [myGameboard updateBoard: tag];
        
    }
}
@end
