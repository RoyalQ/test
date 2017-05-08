//
//  Vedio.h
//  getJSON
//
//  Created by Nine on 2017/4/24.
//  Copyright © 2017年 Nine. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vedio : NSObject
@property (nonatomic,copy) NSMutableArray *vedioList;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* img;
-(instancetype)initWithDic:(NSDictionary*)Dic;
@end
