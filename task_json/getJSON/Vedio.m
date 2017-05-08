//
//  Vedio.m
//  getJSON
//
//  Created by Nine on 2017/4/24.
//  Copyright © 2017年 Nine. All rights reserved.
//

#import "Vedio.h"

@implementation Vedio

-(instancetype)initWithDic:(NSDictionary*)Dic{
    [super self];
    if (self) {
        _img=Dic[@"img"];
        _name=Dic[@"name"];
        _vedioList=Dic[@"vedioList"];
    }
    return self;
}
@end
