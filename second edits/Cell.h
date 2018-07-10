


#import <UIKit/UIKit.h>

@protocol buttonactiondelegate <NSObject>

-(void)push:(NSString*)rowtitle;

@end

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
