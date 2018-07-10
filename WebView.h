//
//  WebView.h
//  UICatalog
//
//  Created by zocer on 8/11/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebView : UIViewController

{
    UILabel * lbl;
    UIButton * btnnext;
    UIButton * webbtnback;
    UIButton * webbtnreload;
    UIButton * webbtnclose;
    UIButton * webbtnforward;
}

@property UIWebView *myWebView;
@end