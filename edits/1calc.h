//
//  calc.h
//  asd
//
//  Created by iROID Technologies on 2/14/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface calc : UIViewController
{
    UITextField * num;
}
@property (strong, nonatomic) IBOutlet UILabel *question;
@property (strong, nonatomic) IBOutlet UILabel *answer;
@property (strong, nonatomic) IBOutlet UIButton *x9;
@property (strong, nonatomic) IBOutlet UIButton *x8;
@property (strong, nonatomic) IBOutlet UIButton *x7;
@property (strong, nonatomic) IBOutlet UIButton *x6;
@property (strong, nonatomic) IBOutlet UIButton *x5;
@property (strong, nonatomic) IBOutlet UIButton *x4;
@property (strong, nonatomic) IBOutlet UIButton *x3;
@property (strong, nonatomic) IBOutlet UIButton *x2;
@property (strong, nonatomic) IBOutlet UIButton *x1;
@property (strong, nonatomic) IBOutlet UIButton *x0;
@property (strong, nonatomic) IBOutlet UIButton *multiply;
@property (strong, nonatomic) IBOutlet UIButton *add;
@property (strong, nonatomic) IBOutlet UIButton *sub;
@property (strong, nonatomic) IBOutlet UIButton *div;
@property (strong, nonatomic) IBOutlet UIButton *calcu;

@end
