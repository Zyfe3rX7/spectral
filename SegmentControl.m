//
//  SegmentControl.m
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "SegmentControl.h"
#import "ToolBar.h"

@interface SegmentControl ()

@end

@implementation SegmentControl

@synthesize mySegmentedControl;
@synthesize segmentedControl;
@synthesize segmentControl;

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
    lbl.text=@"SEGMENT CONTROL";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:20];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(250, 20, 60, 30);
    [self.view addSubview:btnnext];
    
    //Segment Control with Text
    //set the view background to white
    self.view.backgroundColor = [UIColor whiteColor];
    //frame for the segemented button
    CGRect myFrame = CGRectMake(10, 150, 300, 40);
    //Array of items to go inside the segment control
    //You can choose to add an UIImage as one of the items instead of NSString
    NSArray *mySegments = [[NSArray alloc] initWithObjects: @"Red",
                           @"Blue", @"Green", @"Yellow", nil];
    //create an intialize our segmented control
    self.mySegmentedControl = [[UISegmentedControl alloc] initWithItems:mySegments];
    //set the size and placement
    self.mySegmentedControl.frame = myFrame;
    //set the style for the segmented control
    self.mySegmentedControl.segmentedControlStyle  = UISegmentedControlStyleBar;
    //remove the third index from the control
    [self.mySegmentedControl removeSegmentAtIndex:2
                                         animated:true];
    //add another control at the end
    [self.mySegmentedControl insertSegmentWithTitle:@"Brown"
                                            atIndex:3
                                           animated:true];
    //default the selection to second item
    [self.mySegmentedControl setSelectedSegmentIndex:1];
    //attach target action for if the selection is changed by the user
    [self.mySegmentedControl addTarget:self
                                action:@selector(whichColor:)
                      forControlEvents:UIControlEventValueChanged];
    //add the control to the view
    [self.view addSubview:self.mySegmentedControl];
    
    
    
    //Segment Control with TintColor
segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Home", @"About Us", @"Gallery",@"Contact Us", nil]];
    segmentedControl.frame = CGRectMake(10, 250, 300, 40);
segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    segmentedControl.selectedSegmentIndex = 0;
    segmentedControl.tintColor = [UIColor blackColor];
    [segmentedControl addTarget:self action:@selector(valueChanged:) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];
    
    //Segment Control with Images
    segmentControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(5, 360, 300, 50)];
    segmentControl.tintColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sbar.jpeg"]];
    [segmentControl insertSegmentWithImage:[UIImage imageNamed:@"f.jpeg"] atIndex:0 animated:YES];
    [segmentControl insertSegmentWithImage:[UIImage imageNamed:@"twter.jpeg"]atIndex:1 animated:YES];
    [segmentControl insertSegmentWithImage:[UIImage imageNamed:@"twr.jpeg"] atIndex:2 animated:YES];
    segmentControl.contentMode = UIViewContentModeScaleToFill;
    segmentControl.segmentedControlStyle = UISegmentedControlStyleBar;
    [segmentControl addTarget:self action:@selector(ImageChanged:) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview:segmentControl];
}

- (void) whichColor:(UISegmentedControl *)paramSender
{
    
    //check if its the same control that triggered the change event
    if ([paramSender isEqual:self.mySegmentedControl])
    {
        
        //get index position for the selected control
        NSInteger selectedIndex = [paramSender selectedSegmentIndex];
        
        //get the Text for the segmented control that was selected
        NSString * selectedText =
        [paramSender titleForSegmentAtIndex:selectedIndex];
        //let log this info to the console
        NSLog(@"Segment at position %i with %@ text is selected",
              selectedIndex, selectedText);
    }
}

- (void)valueChanged:(UISegmentedControl *)paramSender
{
    //    if(segment.selectedSegmentIndex == 0) {
    //        //action for the first button (All)
    //    }else if(segment.selectedSegmentIndex == 1){
    //        //action for the second button (Present)
    //    }else if(segment.selectedSegmentIndex == 2){
    //        //action for the third button (Missing)
    //    }
    
    
    //check if its the same control that triggered the change event
    if ([paramSender isEqual:self.segmentedControl])
    {
        
        //get index position for the selected control
        NSInteger selectedIndex = [paramSender selectedSegmentIndex];
        
        //get the Text for the segmented control that was selected
        NSString * selectedText =
        [paramSender titleForSegmentAtIndex:selectedIndex];
        //let log this info to the console
        NSLog(@"Segment at position %i with %@ text is selected",
              selectedIndex, selectedText);
    }
}

- (void) ImageChanged:(UISegmentedControl *)paramSender
{
    
    //check if its the same control that triggered the change event
    if ([paramSender isEqual:self.segmentControl])
    {
        
        //get index position for the selected control
        NSInteger selectedIndex = [paramSender selectedSegmentIndex];
        
        //let log this info to the console
        NSLog(@"Segment at position %i with Image %i is selected",
              selectedIndex, selectedIndex);
    }
}

-(IBAction)next:(id)sender
{
    ToolBar * tb=[[ToolBar alloc]init];
    [self.navigationController pushViewController:tb animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
