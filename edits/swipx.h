//
//  swipx.h
//  asd
//
//  Created by iROID Technologies on 3/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface swipx : UIViewController
{
    
}
@property (strong, nonatomic) IBOutlet UILabel *lblx;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *lft;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *rgt;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *dwn;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *up;


@end
