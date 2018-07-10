//
//  New2ViewController.h
//  asd
//
//  Created by iROID Technologies on 2/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface New2ViewController : UIViewController
{

    UIActivityViewController * actind1 ;
    UIProgressView * ProgressBar;
    UIPageControl * PageControl;
    UISegmentedControl * seg1;
}
@property (strong, nonatomic) IBOutlet UISegmentedControl *segcont;
@property (strong, nonatomic) IBOutlet UIProgressView *progress;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *actind;
@property (strong, nonatomic) IBOutlet UIProgressView *p;

@property (strong, nonatomic) IBOutlet UIPageControl *pagecont;
@end
