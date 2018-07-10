//
//  calculator.h
//  vis
//
//  Created by iROID Technologies on 22/2/18.
//  Copyright (c) 2018 iROID Technologies. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef enum{plus,multiply,division,minus} calcoperations;




@interface calc : UIViewController
{

IBOutlet UITextField *display;
    NSString *storage;
    calcoperations operations;


}



@property (strong, nonatomic) IBOutlet UITextField *display;

@property (strong, nonatomic) IBOutlet UIButton *onkey;
- (IBAction)onkeyaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *clear;
- (IBAction)clearaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *one;
- (IBAction)oneact:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *two;
- (IBAction)twoact:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *three;
- (IBAction)threeactions:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *four;
- (IBAction)fouract:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *five;
- (IBAction)fiveact:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *six;

- (IBAction)sixact:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *seven;

- (IBAction)sevact:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *eight;

- (IBAction)eightact:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *nine;

- (IBAction)nineact:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *deci;

- (IBAction)deciaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *zero;
- (IBAction)zeroaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *eql;
- (IBAction)eqlaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *del;
- (IBAction)delaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *div;
- (IBAction)divaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *mul;
- (IBAction)mulaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *add;
- (IBAction)addaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *sub;
- (IBAction)subaction:(id)sender;

@end
