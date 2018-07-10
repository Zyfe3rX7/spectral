//
//  Cell.m
//  UICatalog
//
//  Created by zocer on 8/21/14.
//  Copyright (c) 2014 appzoc. All rights reserved.
//

#import "Cell.h"

@implementation Cell
//@synthesize ca;
@synthesize actiondelegate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (void)dealloc
//{
//    [_imgcell release];
//    [_lblcell release];
//    [_txtcell release];
//    [_btnnext release];
//    [_imgcell release];
//    [_lblcell release];
//}

- (IBAction)next:(id)sender
{
    //[ca next:self.lblcell.text];
    [actiondelegate push:self.lblcell.text];
    
    
}

- (IBAction)search:(id)sender
{
    //[ca search:self.txtcell.text];
}
@end
