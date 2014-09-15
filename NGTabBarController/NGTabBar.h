//
//  NGTabBar.h
//  NGTabBarController
//
//  Created by Tretter Matthias on 14.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGTabBarPosition.h"

typedef enum {
    NGTabBarLayoutStrategyStrungTogether        = 0,  //聚在一起
    NGTabBarLayoutStrategyEvenlyDistributed,//铺满
    NGTabBarLayoutStrategyCentered //分布在中间
} NGTabBarLayoutStrategy;


@interface NGTabBar : UIScrollView

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) NSUInteger selectedItemIndex;
@property (nonatomic, assign) NGTabBarPosition position;
@property (nonatomic, assign) NGTabBarLayoutStrategy layoutStrategy;
/** the padding to apply between items, not taken into account when layoutStrategy is EvenlyDistributed */
@property (nonatomic, assign) CGFloat itemPadding;//item之间的间隔

/** defaults to black */
@property (nonatomic, strong) UIColor *tintColor;
/** defaults to nil */
@property (nonatomic, strong) UIImage *backgroundImage;
/** flag whether the semi-transparent item highlight is shown */
@property (nonatomic, assign) BOOL drawItemHighlight;
/** flag whether tabbar-gloss should be drawn */
@property (nonatomic, assign) BOOL drawGloss;   //tab Bar渐变
/** defaults to white */
@property (nonatomic, strong) UIColor *itemHighlightColor;


//Lwgfangz add
@property (nonatomic, assign) CGFloat itemHighlightSpace; //hightlight距离边的宽度,默认是0
@property (nonatomic, assign) CGFloat itemHighlightRadius;//hightlight的边的圆角,默认是0
@property (nonatomic, assign) CGFloat itemTopPosition;    //垂直排列的时候第一个的y位置

- (void)selectItemAtIndex:(NSUInteger)index;
- (void)deselectSelectedItem;

- (UIImageView *)imageViewRepresentation;

@end
