//
//  NSDictionary+SettingsDictionaries.h
//  Ensighten
//
//  Created by Miles Alden on 8/7/12.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (SettingsDictionaries)

+ (NSDictionary *)dictionaryWithEnsightenToggleSwitch;
+ (NSDictionary *)rootPlistEmptyDictionary;
+ (NSDictionary *)defaultGroupForSettingsDictionary;
- (BOOL)containsKey: (NSString *)key;

@end
