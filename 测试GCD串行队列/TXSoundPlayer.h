//
//  TXSoundPlayer.h
//  feimaotui
//
//  Created by Apple on 16/6/15.
//  Copyright © 2016年 ZengWei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface TXSoundPlayer : NSObject
{
    ///声音设置
    NSMutableDictionary *soundSet;
    ///配置文件路径
    NSString *path;
}
///语速
@property (nonatomic, assign) float rate;
///音量
@property (nonatomic, assign) float volume;
///音调
@property (nonatomic, assign) float pitchMultiplier;
///自动播放
@property (nonatomic, assign) BOOL autoPlay;

+ (TXSoundPlayer *)soundPlayerInstance;

- (void)play:(NSString *)text;

- (void)setDefault;

- (void)writeSoundSet;

@end
