#### DFV public properties' setters

Keep the value and update corresponding label.

```objc
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
```

