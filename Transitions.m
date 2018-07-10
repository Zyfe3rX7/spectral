//
//  Transitions.m
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "Transitions.h"
#import "TableViewArray.h"

#define kImageHeight		200.0
#define kImageWidth			250.0
#define kTransitionDuration	0.75
#define kTopPlacement		10.0	// y coord for the images

@interface Transitions ()

@property (nonatomic, strong) UIView * containerView;
@property (nonatomic, strong) UIImageView * myImageView;
@property (nonatomic, strong) UIImageView * flipToView;

@end

@implementation Transitions

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
    lbl.frame=CGRectMake(5, 10, 200, 50);
    lbl.text=@"TRANSITIONS";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    //UIImage View
    UIImageView * dot =[[UIImageView alloc] initWithFrame:CGRectMake(50,100,250,150)];
    dot.image=[UIImage imageNamed:@"t2.png"];
    [self.view addSubview:dot];
    
    //UIImage View with Animation
    //create an image
    UIImage * myImage = [UIImage imageNamed:@"a5.jpg"];
    
    //image view instance to display the image
    self.myImageView = [[UIImageView alloc] initWithImage:myImage];
    
    //set the frame for the image view
    CGRect myFrame = CGRectMake(100, 230, 200,200);
    [self.myImageView setFrame:myFrame];
    
    //If your image is bigger than the frame then you can scale it
    [self.myImageView setContentMode:UIViewContentModeScaleAspectFit];
    
    //add the image view to the current view
    [self.view addSubview:self.myImageView];
    
    //create a button so that when the user taps it we can animate some images
    UIButton * btnstart = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnstart.frame = CGRectMake(10, 260, 70, 30);
    [btnstart setTitle:@"Start"
              forState:UIControlStateNormal];
    [btnstart addTarget:self
                 action:@selector(checkButtonClick:)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnstart];
    
    //create a button to stop the animation
    UIButton * btnstop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnstop.frame = CGRectMake(10, 300, 70, 30);
    [btnstop setTitle:@"Stop"
             forState:UIControlStateNormal];
    [btnstop addTarget:self
                action:@selector(checkButtonClick:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnstop];
    
    //create a button to flip an image using animations
    btnflip = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnflip.frame = CGRectMake(10, 340, 70, 30);
    [btnflip setTitle:@"Flip"
             forState:UIControlStateNormal];
    [btnflip addTarget:self
                action:@selector(checkButtonClick:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnflip];
    
    btncurl = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btncurl.frame = CGRectMake(10, 380, 70, 30);
    [btncurl setTitle:@"Curl"
             forState:UIControlStateNormal];
    [btncurl addTarget:self
                action:@selector(checkButtonClick:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btncurl];
}

- (void) checkButtonClick:(UIButton *)sender
{
    UIButton * btnstart = sender;
    
    //check which button was tapped
    if([btnstart.currentTitle isEqualToString:@"Start"])
    {
        //create an array of images
        NSArray * myArray = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"a3.jpg"],
                             [UIImage imageNamed:@"a5.jpg"],
                             [UIImage imageNamed:@"imagesss.jpg"], nil];
        
        [self.myImageView setAnimationImages:myArray];
        //all image frames will execute in 3.0 seconds
        self.myImageView.animationDuration = 3.0;
        //repeat the annimation forever
        //        self.myImageView.animationRepeatCount = 0;
        //start animating
        [self.myImageView startAnimating];
        
    }
    else if ([btnstart.currentTitle isEqualToString:@"Stop"])
    {
        //stop animating
        [self.myImageView stopAnimating];
    }
    else if ([btnstart.currentTitle isEqualToString:@"Flip"])
    {
        UIImage * myImage2 = [UIImage imageNamed:@"a5.jpg"];
        [UIView transitionWithView:self.myImageView duration:2.5
                           options:UIViewAnimationOptionTransitionFlipFromRight
                        animations:^{
                            self.myImageView.image = myImage2;
                        }
                        completion:nil];
    }
    else if ([btnstart.currentTitle isEqualToString:@"Curl"])
    {
        UIImage * myImage2 = [UIImage imageNamed:@"a5.jpg"];
    }
}
//UIView *transitionWithView.self.myImageView duration:2.5
//                           options:UIViewAnimationOptionTransitionCurlUp
//                        animations:^{
//                            self.myImageView.image = myImage2;
//                        }
//                        completion
-(IBAction)next:(id)sender
{    
    TableViewArray * pc=[[TableViewArray alloc]init];
    [self.navigationController pushViewController:pc animated:NO];
}

#pragma mark - UIViewController delegate methods

// called after this controller's view will appear
- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
    
    // for aesthetic reasons (the background is black), make the nav bar black for this particular page
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
