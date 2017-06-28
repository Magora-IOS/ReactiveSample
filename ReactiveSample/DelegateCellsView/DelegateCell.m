
#import "DelegateCell.h"

#import "DelegateFeedbackView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface DelegateCell ()

@property (nonatomic, strong) DelegateFeedbackView *feedback;
@property (nonatomic, strong) IBOutlet UIView *containerView;

@end

@implementation DelegateCell

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateCell];
}

#pragma mark - SETTERS

- (void)setTitle:(NSString *)title {
    _title = title;
    [self updateTitle];
}

- (void)setAcceptTitle:(NSString *)title {
    _acceptTitle = title;
    [self updateAcceptTitle];
}

- (void)setDeclineTitle:(NSString *)title {
    _declineTitle = title;
    [self updateDeclineTitle];
}

#pragma mark - PRIVATE

- (void)setupDelegateCell {
    self.feedback = [DelegateFeedbackView loadFromNib];
    [self.containerView embedView:self.feedback];

    [self updateTitle];
    [self updateAcceptTitle];
    [self updateDeclineTitle];
}

- (void)updateAcceptTitle {
    if (self.feedback) {
        self.feedback.acceptTitle = self.acceptTitle;
    }
}

- (void)updateDeclineTitle {
    if (self.feedback) {
        self.feedback.declineTitle = self.declineTitle;
    }
}

- (void)updateTitle {
    if (self.feedback) {
        self.feedback.title = self.title;
    }
}

@end

