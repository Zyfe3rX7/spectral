//
//  actswipe.h
//  asd
//
//  Created by iROID Technologies on 3/12/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "ViewController.h"

@interface actswipe : ViewController
{
    UIButton * bttn1;
    UIButton * bttn2;
    UIButton * bttn3;
    UIButton * bttn4;
    UIButton * bttn5;
    UIButton * bttn6;
    UIImageView * vew2;
}

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *lft;
@property (strong, nonatomic) IBOutlet UIButton *btn;
@property (strong, nonatomic) IBOutlet UIImageView *img;


@end
