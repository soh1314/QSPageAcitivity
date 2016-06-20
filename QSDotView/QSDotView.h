//
//  QSDotView.h
//  QSDotView
//
//  Created by jingshuihuang on 16/6/20.
//  Copyright © 2016年 QS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QSDotView : UIView
@property (nonatomic,assign)BOOL state;
- (void)initDotsViews;
- (void)setState:(BOOL)active;
@end
