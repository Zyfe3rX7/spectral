//
//  alertimg.m
//  asd
//
//  Created by iROID Technologies on 3/6/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "alertimg.h"

@interface alertimg ()

@end

@implementation alertimg

{
  
    UIActionSheet *sheet;
   
}

- (void)viewDidLoad

{
   
    [super viewDidLoad];
   
}

- (IBAction)btnOpenSheet:(id)sender {
    
    sheet = [[UIActionSheet alloc] initWithTitle:@"Open"
             
                                        delegate:self
            
                               cancelButtonTitle:@"Cancel"
            
                          destructiveButtonTitle:@"A"
           
                               otherButtonTitles:@"B", @"C", @"D", nil];

//
//    [[[sheet valueForKey:@"_buttons"] objectAtIndex:0] setImage:[UIImage imageNamed:@"Download.png"] forState:UIControlStateNormal];
//
//    [[[sheet valueForKey:@"_buttons"] objectAtIndex:1] setImage:[UIImage imageNamed:@"Download.png"] forState:UIControlStateNormal];
//
//    [[[sheet valueForKey:@"_buttons"] objectAtIndex:2] setImage:[UIImage imageNamed:@"Download.png"] forState:UIControlStateNormal];
//
//    [[[sheet valueForKey:@"_buttons"] objectAtIndex:3] setImage:[UIImage imageNamed:@"Download.png"] forState:UIControlStateNormal];
    
    [sheet showInView:self.view];
 


}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex

{
    
    switch (buttonIndex) {
            
        case 0:
           
            lblResult.text = @" Your Selected Item 0";
          
            break;
          
        case 1:
            
            lblResult.text = @" Your Selected Item 1";
        
            break;
          
        case 2:
          
            lblResult.text = @" Your Selected Item 2";
           
            break;
         
        case 3:
        
            lblResult.text = @" Your Selected Item 3";
            
            break;
           
        case 4:
           
            lblResult.text = @" Your Selected Item 4";
          
            break;
            
        default:
          
            break;
          
    }
  
}
- (void)didReceiveMemoryWarning

{

    [super didReceiveMemoryWarning];
    
}


@end
