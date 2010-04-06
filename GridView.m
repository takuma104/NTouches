#import "GridView.h"
/*
@interface Grid : NSObject
{
	GridView *gridView;
}

@property (readwrite, assign) GridView *gridView;

@end

@implementation Grid 

@synthesize gridView;

- (void)drawLayer:(CALayer *)l inContext:(CGContextRef)context {
	CGContextSetLineWidth(context, 1.f);
	const CGFloat col = 55.f/255.f;
	CGContextSetRGBStrokeColor(context, col, col, col, 1.f);
	CGFloat width = gridView.bounds.size.width;
	CGFloat height = gridView.bounds.size.height;
	for (UIView *v in gridView.subviews) {
		if ([v isKindOfClass:[UIImageView class]]) {
			CGPoint pt = v.center;
			CGPoint pts[4];
			pts[0] = CGPointMake(0, pt.y+0.5f);
			pts[1] = CGPointMake(width, pt.y+0.5f);
			pts[2] = CGPointMake(pt.x+0.5f, 0.f);
			pts[3] = CGPointMake(pt.x+0.5f, height);
			CGContextStrokeLineSegments(context, pts, 4);
		}
	}
}

@end
*/

@implementation GridView

/*- (id)initWithFrame:(CGRect)f {
	if ((self = [super initWithFrame:f])) {
		
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	if ((self = [super initWithCoder:aDecoder])) {
		Grid *g = [[[Grid alloc] init] autorelease];
		g.gridView = self;
		gridLayer = [[CALayer layer] retain];
		gridLayer.delegate = g;
		gridLayer.bounds = self.bounds;
		gridLayer.position = self.center;
		[self.layer addSublayer:gridLayer];
	}
	return self;
}

- (void)dealloc {
	[gridLayer release];
	[super dealloc];
}
*/


- (void)drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetLineWidth(context, 1.f);
	const CGFloat col = 55.f/255.f;
	CGContextSetRGBStrokeColor(context, col, col, col, 1.f);
	CGFloat width = self.bounds.size.width;
	CGFloat height = self.bounds.size.height;
	for (UIView *v in self.subviews) {
		if ([v isKindOfClass:[UIImageView class]]) {
			CGPoint pt = v.center;
			CGPoint pts[4];
			pts[0] = CGPointMake(0, pt.y+0.5f);
			pts[1] = CGPointMake(width, pt.y+0.5f);
			pts[2] = CGPointMake(pt.x+0.5f, 0.f);
			pts[3] = CGPointMake(pt.x+0.5f, height);
			CGContextStrokeLineSegments(context, pts, 4);
		}
	}
}

- (void)updateGrid {
	[super setNeedsDisplay];
//	[gridLayer setNeedsDisplay];
}

@end
