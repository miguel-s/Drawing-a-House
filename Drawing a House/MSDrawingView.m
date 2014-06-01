//
//  MSDrawingView.m
//  Drawing a House
//
//  Created by Miguel Serrano on 01/06/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSDrawingView.h"

@implementation MSDrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *housePath = [UIBezierPath bezierPath];
    housePath.lineWidth = 2.0;
    
    [housePath moveToPoint:CGPointMake(1/5.0 * self.bounds.size.width, 4/5.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(1/5.0 * self.bounds.size.width, 3/5.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(2.5/5.0 * self.bounds.size.width, 2.5/5.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(4/5.0 * self.bounds.size.width, 3/5.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(4/5.0 * self.bounds.size.width, 4/5.0 * self.bounds.size.height)];
    [housePath closePath];
    [housePath stroke];
    
    UIBezierPath *windowPath = [UIBezierPath bezierPath];
    [windowPath moveToPoint:CGPointMake(1.2/5.0 * self.bounds.size.width, 3.5/5.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(1.8/5.0 * self.bounds.size.width, 3.5/5.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(1.8/5.0 * self.bounds.size.width, 3.2/5.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(1.2/5.0 * self.bounds.size.width, 3.2/5.0 * self.bounds.size.height)];
    [windowPath closePath];
    [[UIColor blueColor] setFill];
    [windowPath fill];
    
    UIBezierPath *doorPath = [UIBezierPath bezierPath];
    [doorPath moveToPoint:CGPointMake(3.2/5.0 * self.bounds.size.width, 4/5.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(3.6/5.0 * self.bounds.size.width, 4/5.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(3.6/5.0 * self.bounds.size.width, 3.5/5.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(3.2/5.0 * self.bounds.size.width, 3.5/5.0 * self.bounds.size.height)];
    [doorPath closePath];
    [[UIColor brownColor] setFill];
    [doorPath fill];

}

@end
