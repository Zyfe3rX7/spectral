//
//  WebView.m
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "WebView.h"
#import "SegmentControl.h"

@interface WebView ()

@end

@implementation WebView
@synthesize myWebView;

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
    lbl.frame=CGRectMake(10, 0, 250, 50);
    lbl.text=@"WEB VIEW";
    lbl.textColor=[UIColor grayColor];
    lbl.font=[UIFont boldSystemFontOfSize:22];
    [self.view addSubview:lbl];
    
    btnnext=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnnext addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [btnnext setTitle:@"NEXT" forState:UIControlStateNormal];
    btnnext.frame=CGRectMake(245, 10, 70, 30);
    [self.view addSubview:btnnext];
    
    webbtnback = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnback.frame = CGRectMake(0, 50, 50, 50);
    [webbtnback setImage:[UIImage imageNamed:@"wbak.jpeg"] forState:UIControlStateNormal];
    [webbtnback addTarget:self action:@selector(pageback:) forControlEvents:UIControlEventTouchUpInside];
    webbtnback.showsTouchWhenHighlighted = YES;
    [self.view addSubview:webbtnback];
    
    webbtnreload = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnreload.frame = CGRectMake(80, 50, 50, 50);
    [webbtnreload setImage:[UIImage imageNamed:@"wreload.jpeg"] forState:UIControlStateNormal];
    [webbtnreload addTarget:self action:@selector(pagereload:) forControlEvents:UIControlEventTouchUpInside];
    webbtnreload.showsTouchWhenHighlighted = YES;
    [self.view addSubview:webbtnreload];
    
    webbtnclose = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnclose.frame = CGRectMake(180, 50, 50, 50);
    [webbtnclose setImage:[UIImage imageNamed:@"wclose.jpeg"] forState:UIControlStateNormal];
    [webbtnclose addTarget:self action:@selector(pageclose:) forControlEvents:UIControlEventTouchUpInside];
    webbtnclose.showsTouchWhenHighlighted = YES;
    [self.view addSubview:webbtnclose];
    
    webbtnforward = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnforward.frame = CGRectMake(270, 50, 50, 50);
    [webbtnforward setImage:[UIImage imageNamed:@"wforward.jpeg"] forState:UIControlStateNormal];
    [webbtnforward addTarget:self action:@selector(pageforward:) forControlEvents:UIControlEventTouchUpInside];
    webbtnforward.showsTouchWhenHighlighted = YES;
    [self.view addSubview:webbtnforward];
    
    
    //Web View
    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 110, 300,500)];
    self.myWebView.scalesPageToFit = YES;
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
    [self.view addSubview:self.myWebView];

}

-(IBAction)pageback:(id)sender
{
    [myWebView goBack];
}

-(IBAction)pagereload:(id)sender
{
    [myWebView goForward];
}

-(IBAction)pageclose:(id)sender
{
    [myWebView stopLoading];
}

-(IBAction)pageforward:(id)sender
{
    [myWebView reload];
}

-(IBAction)next:(id)sender
{
    SegmentControl * sc=[[SegmentControl alloc]init];
    [self.navigationController pushViewController:sc animated:YES];
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    self.myWebView.delegate = self; // setup the delegate as the web view is shown
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    [self.myWebView stopLoading]; // in case the web view is still loading its content
//    self.myWebView.delegate = nil; // disconnect the delegate as the webview is hidden
//    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
//}
//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // we support rotation in this view controller
//    return YES;
//}
//
//// this helps dismiss the keyboard when the "Done" button is clicked
//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [textField resignFirstResponder];
//    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[textField text]]]];
//    
//    return YES;
//}
//
//#pragma mark -
//#pragma mark UIWebViewDelegate
//
//- (void)webViewDidStartLoad:(UIWebView *)webView
//{
//    // starting the load, show the activity indicator in the status bar
//    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
//}
//
//- (void)webViewDidFinishLoad:(UIWebView *)webView
//{
//    // finished loading, hide the activity indicator in the status bar
//    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
//}
//
//- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
//{
//    // load error, hide the activity indicator in the status bar
//    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
//    
//    // report the error inside the webview
//    NSString* errorString = [NSString stringWithFormat:
//                             @"<html><center><font size=+5 color='red'>An error occurred:<br>%@</font></center></html>",
//                             error.localizedDescription];
//    [self.myWebView loadHTMLString:errorString baseURL:nil];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
