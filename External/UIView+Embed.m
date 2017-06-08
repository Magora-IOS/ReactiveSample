
#import "UIView+Embed.h"

#import "Masonry.h"

@implementation UIView (Embed)

- (void)embedView:(UIView *)childView {
    [self addSubview:childView];
    [childView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (void)setChildView:(UIView *)childView {
    // We only work with single or no subview.
    if ([self.subviews count] > 1) {
        return;
    }
    UIView *subview = [self.subviews firstObject];
    // Already embedded.
    if (subview && childView == subview) {
        return;
    }
    // Remove old subview.
    if (subview) {
        [subview removeFromSuperview];
    }
    // Add new subview.
    if (childView) {
        [self embedView:childView];
    }
}

@end

