
#import "DelegateCellsView.h"

#import "DelegateCell.h"

static NSString * const kDelegateCellsViewCell = @"DelegateCell";
static CGFloat const kDelegateCellsViewCellHeight = 90;

@interface DelegateCellsView () <UICollectionViewDataSource>

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *collectionViewLayout;

@end

@implementation DelegateCellsView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateCellsView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.collectionViewLayout.itemSize =
        CGSizeMake(
            self.collectionView.frame.size.width,
            kDelegateCellsViewCellHeight);
}

#pragma mark - SETTERS

- (void)setItems:(NSArray *)items {
    _items = items;
    [self refreshCollectionView];
}

#pragma mark - PRIVATE

- (void)refreshCollectionView {
    if (self.collectionView) {
        [self.collectionView reloadData];
    }
}

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
        registerNib:[UINib nibWithNibName:kDelegateCellsViewCell bundle:[NSBundle mainBundle]]
        forCellWithReuseIdentifier:kDelegateCellsViewCell];
}

- (void)setupDelegateCellsView {
    [self setupCollectionView];
}

#pragma mark - DELEGATE

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv
    cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DelegateCell *cell =
        [cv dequeueReusableCellWithReuseIdentifier:kDelegateCellsViewCell
            forIndexPath:indexPath];
    // Data.
    CellItem *item = self.items[indexPath.row];
    cell.title = item.title;
    cell.acceptTitle = item.acceptTitle;
    cell.declineTitle = item.declineTitle;
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)cv numberOfItemsInSection:(NSInteger)section {
    return [self.items count];
}

@end

