//
//  ImageAnimation.m
//  UICatalog
//
//  Created by zocer on 8/8/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "ImageAnimation.h"
#import "WebView.h"

@interface ImageAnimation ()

@end

@implementation ImageAnimation

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(5, 10, 250, 50);
    lbl.text=@"IMAGE ANIMATION";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:24];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    //UIImage View with Animation
    //create an image
   UIImage * myScreenShot = [UIImage imageNamed:@"1.png"];
    
    //image view instance to display the image
    self.myImageView = [[UIImageView alloc] initWithImage:myScreenShot];
    
    //set the frame for the image view
    CGRect myFrame = CGRectMake(20, 120, 200,200);
    [self.myImageView setFrame:myFrame];
    
    //If your image is bigger than the frame then you can scale it
    [self.myImageView setContentMode:UIViewContentModeScaleAspectFit];
    
    //add the image view to the current view
    [self.view addSubview:self.myImageView];
    
    //create a button so that when the user taps it we can animate some images
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(140, 300, 70, 30);
    [myButton setTitle:@"Start"
              forState:UIControlStateNormal];
    [myButton addTarget:self
                 action:@selector(checkButtonClick:)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
    //create a button to stop the animation
    UIButton *myButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton2.frame = CGRectMake(140, 340, 70, 30);
    [myButton2 setTitle:@"Stop"
               forState:UIControlStateNormal];
    [myButton2 addTarget:self
                  action:@selector(checkButtonClick:)
        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton2];
}

- (void) checkButtonClick:(UIButton *)paramSender
{
    UIButton * myButton = paramSender;
    
    //check which button was tapped
    if([myButton.currentTitle isEqualToString:@"Start"])
    {
        //create an array of images
        NSArray * myArray = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"1.png"],
                             [UIImage imageNamed:@"2.png"],
                             [UIImage imageNamed:@"3.png"],
                             [UIImage imageNamed:@"4.png"],
                             [UIImage imageNamed:@"5.png"],
                             [UIImage imageNamed:@"6.png"],
                             [UIImage imageNamed:@"7.png"],
                             [UIImage imageNamed:@"8.png"],
                             [UIImage imageNamed:@"9.png"],
                             [UIImage imageNamed:@"10.png"],
                             [UIImage imageNamed:@"11.png"],
                             [UIImage imageNamed:@"12.png"],
                             [UIImage imageNamed:@"13.png"],
                             [UIImage imageNamed:@"14.png"],
                             [UIImage imageNamed:@"15.png"],
                             [UIImage imageNamed:@"16.png"],
                             [UIImage imageNamed:@"17.png"],
                             [UIImage imageNamed:@"18.png"],
                             [UIImage imageNamed:@"19.png"],
                             [UIImage imageNamed:@"20.png"],
                             [UIImage imageNamed:@"21.png"],
                             [UIImage imageNamed:@"22.png"],
                             [UIImage imageNamed:@"23.png"],
                             [UIImage imageNamed:@"24.png"],
                             [UIImage imageNamed:@"25.png"],
                             [UIImage imageNamed:@"26.png"],
                             [UIImage imageNamed:@"27.png"],
                             [UIImage imageNamed:@"28.png"],
                             [UIImage imageNamed:@"29.png"],
                             [UIImage imageNamed:@"30.png"],
                             [UIImage imageNamed:@"31.png"],
                             [UIImage imageNamed:@"32.png"],
                             [UIImage imageNamed:@"33.png"],
                             [UIImage imageNamed:@"34.png"],
                             [UIImage imageNamed:@"35.png"],
                             [UIImage imageNamed:@"36.png"],nil];
        
        [self.myImageView setAnimationImages:myArray];
        //all image frames will execute in 3.0 seconds
        self.myImageView.animationDuration = 3.0;
        //repeat the annimation forever
        self.myImageView.animationRepeatCount = 0;
        //start animating
        [self.myImageView startAnimating];
        
    }
    else if ([myButton.currentTitle isEqualToString:@"Stop"])
    {
        //stop animating
        [self.myImageView stopAnimating];
    }
}

-(IBAction)next:(id)sender
{
    WebView * iad=[[WebView alloc]init];
    [self.navigationController pushViewController:iad animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
