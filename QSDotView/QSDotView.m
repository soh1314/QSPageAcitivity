//
//  QSDotView.m
//  QSDotView
//
//  Created by jingshuihuang on 16/6/20.
//  Copyright © 2016年 QS. All rights reserved.
//

#import "QSDotView.h"

@implementation QSDotView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialization];
    }
    
    return self;
}

- (void)initialization
{
    self.backgroundColor    = [UIColor clearColor];
    self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
    self.layer.borderColor  = [UIColor whiteColor].CGColor;
    self.layer.borderWidth  = 2;
}
- (void)setState:(BOOL)active
{
    _state = active;
    
    active?self.backgroundColor = [UIColor whiteColor] :(self.backgroundColor = [UIColor clearColor]);
}

- (void)changeActivityState:(BOOL)active
{
    if (active) {
        self.backgroundColor = [UIColor redColor];
    } else {
        self.backgroundColor = [UIColor clearColor];
    }
}

@end
