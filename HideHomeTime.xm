//
//  HideHomeTime.xm
//  HideHomeTime
//
//  Created by Julian Weiss on 1/28/14.
//  Copyright (c) 2014 insanj. All rights reserved.
//

@interface UIStatusBarItemView : UIView
@end

@interface UIStatusBarTimeItemView : UIStatusBarItemView{
	NSString *_timeString;
}

-(int)textStyle;
-(BOOL)cachesImage;
-(id)contentsImage;
-(BOOL)updateForNewData:(id)arg1 actions:(int)arg2;
@end

%hook UIStatusBarTimeItemView
-(id)contentsImage{
	return nil;
}
%end