//
//  Controls.m
//  UICatalog
//
//  Created by zocer on 8/4/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "Controls.h"
#import "TextFields.h"

@interface Controls ()
    

@end

@implementation Controls

@synthesize mySlider;

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
    
    lbl=[[UILabel alloc]init];
    lbl.frame=CGRectMake(0, 10, 150, 50);
    lbl.text=@"CONTROLS";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:25];
    //lbl.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(235, 20, 80, 30);
    [self.view addSubview:btnnext];
    
    //Standard Switch Control
    UISwitch * SwitchButton = [[UISwitch alloc] initWithFrame:CGRectMake(130, 100, 100, 50)];
    [SwitchButton addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:SwitchButton];
    
    //Standard Slider Control
    Slider = [[UISlider alloc] init];
    Slider.frame=CGRectMake(120, 160, 100, 50);
    Slider.minimumValue = 1000;
    Slider.maximumValue = 10000;
    [Slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:Slider];
    
    //Custom Slider Control
    //set the view background to white
    self.view.backgroundColor = [UIColor whiteColor];
    //frame for the slider
    CGRect myFrame = CGRectMake(50, 440, 200, 25);
    //create and initialize the slider
    self.mySlider = [[UISlider alloc] initWithFrame:myFrame];
    //set the minimum value
    self.mySlider.minimumValue = 1000;
    //set the maximum value
    self.mySlider.maximumValue = 1000000;
    //slider maximum color
    self.mySlider.maximumTrackTintColor=[UIColor redColor];
    //set minimum color
    self.mySlider.minimumTrackTintColor=[UIColor greenColor];
    //attach action so that you can listen for changes in value
    [self.mySlider addTarget:self
                      action:@selector(getSliderValue:)
            forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.mySlider];
    
    //Page Control
    UIPageControl * PageControl = [[UIPageControl alloc] init];
    PageControl.frame = CGRectMake(120,240,100,50);
    PageControl.backgroundColor=[UIColor grayColor];
    PageControl.numberOfPages = 5; // Indicate tottal number of pages
    PageControl.currentPage = 0;//Indicate which page in default(0 for first page)
    [self.view addSubview:PageControl];
    
    
    //Activity Indicator Control
    UIActivityIndicatorView * ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    ActivityIndicator.center = CGPointMake(170, 330);
    [ActivityIndicator startAnimating];
    [self.view addSubview:ActivityIndicator];
    
    //Progress Bar Control
    UIProgressView * ProgressBar = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleBar];
    ProgressBar.frame = CGRectMake(120,370,100,50);
    [self.view addSubview:ProgressBar];
}

- (void)changeSwitch:(id)sender
{
    
    if([sender isOn])
    {
        NSLog(@"Switch is ON");
    }
    else
    {
        NSLog(@"Switch is OFF");
    }
}
 
-(IBAction)sliderAction:(id)sender
{
    int i = Slider.value;
    NSLog(@"Slider Value=%d",i);
}

-(IBAction)next:(id)sender
{
    TextFields * t=[[TextFields alloc]init];
    [self.navigationController pushViewController:t animated:YES];
}

- (void) getSliderValue:(UISlider *)paramSender{
    
    //if this is my Step Slider then change the value
    int i = Slider.value;
    NSLog(@"Slider Value=%d",i);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_lb release];
    [super dealloc];
}
@end
