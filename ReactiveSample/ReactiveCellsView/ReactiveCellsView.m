
#import "ReactiveCellsView.h"

#import "ReactiveCell.h"

#import <ReactiveObjC/ReactiveObjC.h>

static NSString * const kReactiveCellsViewCell = @"ReactiveCell";
static CGFloat const kReactiveCellsViewCellHeight = 90;

@interface ReactiveCellsView () <UICollectionViewDataSource>

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *collectionViewLayout;

@end

@implementation ReactiveCellsView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveCellsView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.collectionViewLayout.itemSize =
        CGSizeMake(
            self.collectionView.frame.size.width,
            kReactiveCellsViewCellHeight);
}

#pragma mark - PRIVATE

- (void)setupCollectionView {
    // Configure collection view layout.
    self.collectionViewLayout = [UICollectionViewFlowLayout new];
    self.collectionViewLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionViewLayout.minimumInteritemSpacing = 0;
    self.collectionViewLayout.minimumLineSpacing = 0;
    // Configure collection view.
    self.collectionView.dataSource = self;
    self.collectionView.collectionViewLayout = self.collectionViewLayout;
    // Disable cell selection highlighting.
    self.collectionView.allowsSelection = NO;
    // Register cells.
    [self.collectionView
        registerNib:[UINib nibWithNibName:kReactiveCellsViewCell bundle:[NSBundle mainBundle]]
        forCellWithReuseIdentifier:kReactiveCellsViewCell];
}

- (void)setupReactiveCellsView {
    [self setupCollectionView];
    [self setupItems];
}

- (void)setupItems {
    @weakify(self);
    // Refresh collection view.
    [RACObserve(self, items)
        subscribeNext:^(id x) {
            @strongify(self);
            [self.collectionView reloadData];
        }];
}

#pragma mark - DELEGATE

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv
    cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ReactiveCell *cell =
        [cv dequeueReusableCellWithReuseIdentifier:kReactiveCellsViewCell
            forIndexPath:indexPath];
    // Data.
    CellItem *item = self.items[indexPath.row];
    cell.title = item.title;
    cell.acceptTitle = item.acceptTitle;
    cell.declineTitle = item.declineTitle;
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)cv numberOfItemsInSection:(NSInteger)section {
    NSLog(@"R. Items count: '%@'", @([self.items count]));
    return [self.items count];
}

@end

