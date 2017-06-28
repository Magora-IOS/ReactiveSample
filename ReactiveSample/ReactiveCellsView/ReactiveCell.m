
#import "ReactiveCell.h"

#import "ReactiveFeedbackView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface ReactiveCell ()

@property (nonatomic, strong) ReactiveFeedbackView *feedback;
@property (nonatomic, strong) IBOutlet UIView *containerView;

@end

@implementation ReactiveCell

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveCell];
}

#pragma mark - PRIVATE

- (void)setupReactiveCell {
    self.feedback = [ReactiveFeedbackView loadFromNib];
    [self.containerView embedView:self.feedback];

    [self setupTitles];
}

- (void)setupTitles {
    RAC(self.feedback, title) = RACObserve(self, title);
    RAC(self.feedback, acceptTitle) = RACObserve(self, acceptTitle);
    RAC(self.feedback, declineTitle) = RACObserve(self, declineTitle);
}

@end

