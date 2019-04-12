//
//  WXFLogModule.m
//  AFNetworking
//
//  Created by 郑江荣 on 2019/4/11.
//

#import "WXFLogModule.h"
#import "farwolf.h"
#import "Weex.h"

#import <WeexSDK/WXEventModuleProtocol.h>
#import <WeexSDK/WXModuleProtocol.h>

@implementation WXFLogModule
WX_EXPORT_METHOD(@selector(log:))
-(void)log:(NSString*)msg{
    NSString *m=[@"log:" add:msg];
    [[Weex getRefreshManager] send:m];
}
@end
