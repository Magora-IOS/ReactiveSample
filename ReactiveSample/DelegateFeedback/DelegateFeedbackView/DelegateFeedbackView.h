
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DelegateFeedbackViewStatus) {
    DelegateFeedbackViewStatusNone,
    DelegateFeedbackViewStatusAccept,
    DelegateFeedbackViewStatusDecline,
};

@class DelegateFeedbackView;

@protocol DelegateFeedbackViewDelegate

- (void)delegateFeedbackView:(DelegateFeedbackView *)feedbackView
    status:(DelegateFeedbackViewStatus)status;

@end

@interface DelegateFeedbackView : UIView

// Configuration.
@property (nonatomic, copy) NSString *acceptTitle;
@property (nonatomic, copy) NSString *declineTitle;
@property (nonatomic, copy) NSString *title;

// Reporting.
@property (nonatomic, assign, readonly) DelegateFeedbackViewStatus status;
@property (nonatomic, weak) id<DelegateFeedbackViewDelegate> delegate;

@end

