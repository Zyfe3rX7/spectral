//
//  webv.m
//  asd
//
//  Created by iROID Technologies on 3/8/18.
//  Copyright © 2018 iROID Technologies. All rights reserved.
//

#import "webv.h"

@interface webv ()

@end

@implementation webv
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
  

    
    webbtnback = [UIButton buttonWithType:UIButtonTypeCustom];
    webbtnback.frame = CGRectMake(0, 50, 50, 50);
    [webbtnback setImage:[UIImage imageNamed:@"1.jpeg"] forState:UIControlStateNormal];
    [webbtnback addTarget:self action:@selector(pageback:) forControlEvents:UIControlEventTouchUpInside];
    webbtnback.showsTouchWhenHighlighted = YES;
//    [self.view addSubview:webbtnback];
    
    webbtnreload = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnreload.frame = CGRectMake(80, 50, 50, 50);
    [webbtnreload setImage:[UIImage imageNamed:@"2.jpeg"] forState:UIControlStateNormal];
    [webbtnreload addTarget:self action:@selector(pagereload:) forControlEvents:UIControlEventTouchUpInside];
    webbtnreload.showsTouchWhenHighlighted = YES;
//    [self.view addSubview:webbtnreload];
    
    webbtnclose = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnclose.frame = CGRectMake(180, 50, 50, 50);
    [webbtnclose setImage:[UIImage imageNamed:@"3.jpeg"] forState:UIControlStateNormal];
    [webbtnclose addTarget:self action:@selector(pageclose:) forControlEvents:UIControlEventTouchUpInside];
    webbtnclose.showsTouchWhenHighlighted = YES;
//    [self.view addSubview:webbtnclose];
    
    webbtnforward = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    webbtnforward.frame = CGRectMake(270, 50, 50, 50);
    [webbtnforward setImage:[UIImage imageNamed:@"4.jpeg"] forState:UIControlStateNormal];
    [webbtnforward addTarget:self action:@selector(pageforward:) forControlEvents:UIControlEventTouchUpInside];
    webbtnforward.showsTouchWhenHighlighted = YES;
//    [self.view addSubview:webbtnforward];
    
    

    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 110, 300,500)];
    self.myWebView.scalesPageToFit = YES;
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.co.in"]]];
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
- (IBAction)go:(id)sender {
    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 110, 300,500)];
    self.myWebView.scalesPageToFit = YES;
//    NSString* a = @"https://";
//    NSString* b = @".com";
//    NSString* result = [a stringByAppendingString:_srchbar.text];
//    NSString* result2 =[result stringByAppendingString:b];
//    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:result2]]]];
     
     [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@.com",_srchbar.text]]]];

    [self.view addSubview:self.myWebView];
}
- (IBAction)srch:(id)sender {
    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 110, 300,500)];
    self.myWebView.scalesPageToFit = YES;
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com/search?q=%@",_srchbar.text]]]];
    

    [self.view addSubview:self.myWebView];
}
@end

