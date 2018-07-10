//
//  Cell.h
//  UICatalog
//
//  Created by zocer on 8/21/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

//@protocol cellAction <NSObject>
//
//-(void)next:(NSString *)strnextvalue;
//-(void)search:(NSString *)strsearchvalue;
//
//@end

@protocol buttonactiondelegate <NSObject>

-(void)push:(NSString*)rowtitle;

@end

#import <UIKit/UIKit.h>

@interface Cell : UITableViewCell


//@property (nonatomic,assign)id <cellAction>ca;

@property(nonatomic,assign)id<buttonactiondelegate>actiondelegate;
@property (retain, nonatomic) IBOutlet UILabel *lblcell;
@property (retain, nonatomic) IBOutlet UIImageView *imgcell;
@property (retain, nonatomic) IBOutlet UIButton * btnnext;
@property (retain, nonatomic) IBOutlet UITextField *txtcell;
- (IBAction)next:(id)sender;
- (IBAction)search:(id)sender;

@end
