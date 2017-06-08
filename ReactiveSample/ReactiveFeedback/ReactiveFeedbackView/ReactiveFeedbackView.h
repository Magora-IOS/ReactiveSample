
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ReactiveFeedbackViewStatus) {
    ReactiveFeedbackViewStatusNone,
    ReactiveFeedbackViewStatusAccept,
    ReactiveFeedbackViewStatusDecline,
};

@interface ReactiveFeedbackView : UIView

// Configuration.
@property (nonatomic, copy) NSString *acceptTitle;
@property (nonatomic, copy) NSString *declineTitle;
@property (nonatomic, copy) NSString *title;

// Reporting.
@property (nonatomic, assign, readonly) ReactiveFeedbackViewStatus status;

@end

