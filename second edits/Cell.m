
#import "Cell.h"

@implementation Cell

@synthesize actiondelegate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

}


- (IBAction)next:(id)sender
{

    [actiondelegate push:self.lblcell.text];
    
    
}

- (IBAction)search:(id)sender
{

}
@end
