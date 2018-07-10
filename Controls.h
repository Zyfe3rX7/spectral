//
//  Controls.h
//  UICatalog
//
//  Created by zocer on 8/4/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Controls : UIViewController

{
    UILabel * lbl;
    UIButton * btnnext;
    UISlider * Slider;
}

@property (nonatomic, strong) UISlider *mySlider;
@property (retain, nonatomic) IBOutlet UILabel *lb;

@end
