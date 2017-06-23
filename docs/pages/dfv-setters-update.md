#### DFV public properties' updaters

Sync title value with labels.

```objc
- (void)updateAcceptTitle {
    if (self.acceptLabel) {
        self.acceptLabel.text = self.acceptTitle;
    }
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
```

