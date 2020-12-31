//
//  CustomView.m
//  CustomView
//
//  Created by 李培培 on 2020/9/20.
//

#import "CustomView.h"

@implementation CustomView{
    int _curX;
    int _curY;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [touches anyObject];
    CGPoint lastTouch = [touch locationInView:self];
    _curX = lastTouch.x;
    _curY = lastTouch.y;
    [self setNeedsDisplay];
}

-(void) drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    CGContextFillEllipseInRect(ctx, CGRectMake(_curX - 10, _curY - 10, 20, 20));
}


@end
