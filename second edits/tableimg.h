
#import <UIKit/UIKit.h>

@interface tableimg : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    
    UILabel * lblname;
    UIWebView * myWebView;
    UILabel * lbl;
    UIButton * btnnext;
    UILabel * lblnulltxtvalue;
    UITableView *tableView;
}

@property(nonatomic,strong)NSString * strCellValue;
@property(nonatomic,strong)NSString * strtxtValue;

@end

