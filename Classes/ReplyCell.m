//
//  ReplyCell.m
//  LatestChatty2
//
//  Created by Alex Wayne on 3/24/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ReplyCell.h"

#define INDENDATION 12.0

@implementation ReplyCell

@synthesize post;

+ (CGFloat)cellHeight {
  return 20.0;
}

- (id)init {
  self = [super initWithNibName:@"ReplyCell" bundle:nil];
  return self;
}

- (void)layoutSubviews {
  preview.text = post.preview;
  CGFloat indentation = (post.depth + 1) * INDENDATION;
  preview.frame = CGRectMake(indentation, 0, self.contentView.frame.size.width - indentation, [ReplyCell cellHeight]);
  
  [super layoutSubviews];
}

- (void)dealloc {
  self.post = nil;
  [super dealloc];
}


@end