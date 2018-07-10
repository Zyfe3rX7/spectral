#import <UIKit/UIKit.h>

@interface asynch : UIViewController<UITableViewDataSource,UITableViewDelegate,NSURLConnectionDataDelegate>
//@property(nonatomic,strong)NSDictionary *dictionary;
@property(nonatomic,strong)NSMutableData *datax;
@property(nonatomic,strong)NSMutableArray *mutarray;

@end
