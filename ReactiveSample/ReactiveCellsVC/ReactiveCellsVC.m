
#import "ReactiveCellsVC.h"

#import "ReactiveCellsView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface ReactiveCellsVC ()

@property (nonatomic, strong) IBOutlet UIView *containerView;
@property (nonatomic, strong) ReactiveCellsView *cellsView;

@end

@implementation ReactiveCellsVC

#pragma mark - PUBLIC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupReactiveCellsVC];
}

#pragma mark - PRIVATE

- (void)setupReactiveCellsVC {
    self.cellsView = [ReactiveCellsView loadFromNib];
    [self.containerView embedView:self.cellsView];

    [self setupItems];
}

- (void)setupItems {
    NSMutableArray *items = [NSMutableArray array];
    int n = 100;
    for (int i = 0; i < n; ++i) {
        CellItem *item = [CellItem new];
        item.title = [NSString stringWithFormat:@"RCTitle %@", @(i)];
        item.acceptTitle = @"Yes";
        item.declineTitle = @"No";
        [items addObject:item];
    }
    self.cellsView.items = items;
}

@end

