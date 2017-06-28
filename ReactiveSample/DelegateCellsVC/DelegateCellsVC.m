
#import "DelegateCellsVC.h"

#import "DelegateCellsView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface DelegateCellsVC ()

@property (nonatomic, strong) IBOutlet UIView *containerView;
@property (nonatomic, strong) DelegateCellsView *cellsView;

@end

@implementation DelegateCellsVC

#pragma mark - PUBLIC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDelegateCellsVC];
}

#pragma mark - PRIVATE

- (void)setupDelegateCellsVC {
    self.cellsView = [DelegateCellsView loadFromNib];
    [self.containerView embedView:self.cellsView];

    [self setupItems];
}

- (void)setupItems {
    NSMutableArray *items = [NSMutableArray array];
    int n = 100;
    for (int i = 0; i < n; ++i) {
        CellItem *item = [CellItem new];
        item.title = [NSString stringWithFormat:@"DCTitle %@", @(i)];
        item.acceptTitle = @"Yes";
        item.declineTitle = @"No";
        [items addObject:item];
    }
    self.cellsView.items = items;
}

@end

