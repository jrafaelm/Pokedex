//
//  JRMStat.h
//  Autogenerated by plank
//
//  DO NOT EDIT - EDITS WILL BE OVERWRITTEN
//  @generated
//

#import <Foundation/Foundation.h>
#import "PlankModelRuntime.h"
@class JRMStatBuilder;

NS_ASSUME_NONNULL_BEGIN

@interface JRMStat : NSObject<NSCopying, NSSecureCoding>
@property (nullable, nonatomic, strong, readonly) NSDictionary * stat;
@property (nonatomic, assign, readonly) NSInteger baseStat;
@property (nonatomic, assign, readonly) NSInteger effort;
+ (NSString *)className;
+ (NSString *)polymorphicTypeIdentifier;
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary;
- (instancetype)initWithModelDictionary:(NSDictionary *)modelDictionary;
- (instancetype)initWithBuilder:(JRMStatBuilder *)builder;
- (instancetype)initWithBuilder:(JRMStatBuilder *)builder initType:(PlankModelInitType)initType;
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(JRMStatBuilder *builder))block;
- (BOOL)isEqualToStat:(JRMStat *)anObject;
- (instancetype)mergeWithModel:(JRMStat *)modelObject;
- (instancetype)mergeWithModel:(JRMStat *)modelObject initType:(PlankModelInitType)initType;
@end

@interface JRMStatBuilder : NSObject
@property (nullable, nonatomic, strong, readwrite) NSDictionary * stat;
@property (nonatomic, assign, readwrite) NSInteger baseStat;
@property (nonatomic, assign, readwrite) NSInteger effort;
- (instancetype)initWithModel:(JRMStat *)modelObject;
- (JRMStat *)build;
- (void)mergeWithModel:(JRMStat *)modelObject;
@end

NS_ASSUME_NONNULL_END
