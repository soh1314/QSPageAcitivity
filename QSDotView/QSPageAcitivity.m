//
//  QSPageAcitivity.m
//  QSDotView
//
//  Created by jingshuihuang on 16/6/20.
//  Copyright © 2016年 QS. All rights reserved.
//

#import "QSPageAcitivity.h"
#define  KLeftPadding 10
#define  KTopPadding 5
#define KBoundWidth self.bounds.size.width
#define KBoundHeight self.bounds.size.height
@implementation QSPageAcitivity
- (id)init
{
    if (self = [super init]) {
        [self prepareView];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self prepareView];
    }
    return self;
}
- (void)prepareView
{
    [self defaultParSet];
    [self initDotsViews];
    
}
- (void)defaultParSet
{
    self.shouldHidePage = NO;
    self.dotSpaceDistance = QSDefaultSpacingBetweenDots;
    self.dotCount = QSDefaultNumberOfPages;
    self.currentPage = QSefaultCurrentPage;
    self.dotViewType = QSDotViewNormal;
    self.dotsize = CGSizeMake(8, 8);
}
- (void)initDotsViews
{
    if (self.dotCount == 0) {
        return;
    }
    for (int i = 0; i < self.dotCount; i++) {
        /// bulid dotView with dotView type
        QSDotView * dotView = [[QSDotView alloc]initWithFrame:CGRectMake(KLeftPadding+i*(self.dotsize.width+self.dotSpaceDistance), (KBoundHeight-self.dotsize.height)/2.0,self.dotsize.width, self.dotsize.height)];
        [self addSubview:dotView];
        [self.dotsViewGroup addObject:dotView];
    }
    [self refreshAcitvityDotView:YES indexOfDotsViewGroup:self.currentPage];
    self.dotsViewGroup.count == 1 ? self.hidden = YES : (self.hidden = NO);
}

// refresh dotsView status
- (void)refreshDotsView
{
    if (self.dotsViewGroup.count > 0) {
        for (UIView *dotView in self.dotsViewGroup) {
            [dotView removeFromSuperview];
        }
    }
    [self.dotsViewGroup removeAllObjects];
    [self initDotsViews];
}


// when scroll the page we need show the different image In current pageDotView;
- (void)refreshAcitvityDotView:(BOOL)activity indexOfDotsViewGroup:(NSInteger)index
{
    QSDotView * dotView = [self.dotsViewGroup objectAtIndex:index];
    [dotView setState:activity];
}
///// lazy load
- (NSMutableArray*)dotsViewGroup
{
    if (!_dotsViewGroup) {
        _dotsViewGroup = [NSMutableArray array];
        
    }
    return _dotsViewGroup;
}



@end
