
#import "DelegateFeedbackView.h"

@interface DelegateFeedbackView ()

@property (nonatomic, assign, readwrite) DelegateFeedbackViewStatus status;

@property (nonatomic, strong) IBOutlet UIImageView *validityImageView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIImageView *acceptImageView;
@property (nonatomic, strong) IBOutlet UILabel *acceptLabel;

@property (nonatomic, strong) IBOutlet UIImageView *declineImageView;
@property (nonatomic, strong) IBOutlet UILabel *declineLabel;

@end

@implementation DelegateFeedbackView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateFeedbackView];
}

- (void)setAcceptTitle:(NSString *)title {
    _acceptTitle = title;
    [self updateAcceptTitle];
}

- (void)setDeclineTitle:(NSString *)title {
    _declineTitle = title;
    [self updateDeclineTitle];
}

- (void)setTitle:(NSString *)title {
    _title = title;
    [self updateTitle];
}

#pragma mark - PRIVATE

- (void)setupDelegateFeedbackView {
    self.status = DelegateFeedbackViewStatusNone;
    [self updateAcceptTitle];
    [self updateDeclineTitle];
    [self updateTitle];
    [self updateValidityImage];
}

- (IBAction)accept:(id)sender {
    self.status = DelegateFeedbackViewStatusAccept;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
}

- (IBAction)decline:(id)sender {
    self.status = DelegateFeedbackViewStatusDecline;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
}

- (void)reportStatus {
    if (self.delegate) {
        [self.delegate delegateFeedbackView:self status:self.status];
    }
}

- (void)updateAcceptTitle {
    if (self.acceptLabel) {
        self.acceptLabel.text = self.acceptTitle;
    }
}

- (void)updateAcceptDeclineImages {
    self.acceptImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusAccept) ? YES : NO;
    self.declineImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusDecline) ? YES : NO;
}

- (void)updateDeclineTitle {
    if (self.declineLabel) {
        self.declineLabel.text = self.declineTitle;
    }
}

- (void)updateTitle {
    if (self.titleLabel) {
        self.titleLabel.text = self.title;
    }
}

- (void)updateValidityImage {
    self.validityImageView.highlighted =
        (self.status != DelegateFeedbackViewStatusNone) ? YES : NO;
}

@end

