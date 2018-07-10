//
//  SegViewController.h
//  asd
//
//  Created by iROID Technologies on 2/23/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SegViewController : UIViewController
{
    UISegmentedControl * seg1;
    
}
@property (strong, nonatomic) IBOutlet UITextField *indx;
@property (strong, nonatomic) IBOutlet UIButton *badd;
@property (strong, nonatomic) IBOutlet UIButton *bdel;
@property (strong, nonatomic) IBOutlet UITextField *txt;

@end
