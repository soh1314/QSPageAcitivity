//
//  QSPageAcitivity.h
//  QSDotView
//
//  Created by jingshuihuang on 16/6/20.
//  Copyright © 2016年 QS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QSDotView.h"
#import "QSPageActivityConstant.h"
typedef NS_ENUM(NSInteger,QSDotViewType)
{
    QSDotViewNormal = 0,
    QSDotViewAnimate = 1
};
@interface QSPageAcitivity : UIView
@property (nonatomic , strong) NSMutableArray * dotsViewGroup;
@property (nonatomic , strong) QSDotView * dotView;
@property (nonatomic , assign) NSInteger dotCount;
@property (nonatomic , assign) CGFloat dotSpaceDistance;
@property (nonatomic , assign) NSInteger currentPage;
@property (nonatomic) CGSize dotsize;
@property (nonatomic , assign)QSDotViewType dotViewType;
// when  just one page , we need hide the page dot view;
@property (nonatomic , assign) BOOL shouldHidePage;
@property (nonatomic , strong) UIView * bgView;

///API QSPageAcitivity
- (void)refreshAcitvityDotView:(BOOL)activity indexOfDotsViewGroup:(NSInteger)index;

@end
