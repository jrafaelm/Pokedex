//
//  JRMType.m
//  Autogenerated by plank
//
//  DO NOT EDIT - EDITS WILL BE OVERWRITTEN
//  @generated
//

#import "JRMType.h"

struct JRMTypeDirtyProperties {
    unsigned int JRMTypeDirtyPropertySlot:1;
    unsigned int JRMTypeDirtyPropertyType:1;
};

@interface JRMType ()
@property (nonatomic, assign, readwrite) struct JRMTypeDirtyProperties typeDirtyProperties;
@end

@interface JRMTypeBuilder ()
@property (nonatomic, assign, readwrite) struct JRMTypeDirtyProperties typeDirtyProperties;
@end

@implementation JRMType
+ (NSString *)className
{
    return @"JRMType";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"type";
}
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithModelDictionary:dictionary];
}
- (instancetype)init
{
    return [self initWithModelDictionary:@{}];
}
- (instancetype)initWithModelDictionary:(NSDictionary *)modelDictionary
{
    NSParameterAssert(modelDictionary);
    if (!(self = [super init])) {
        return self;
    }
    [modelDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *  _Nonnull key, id  _Nonnull obj, __unused BOOL * _Nonnull stop){
        if ([key isEqualToString:@"type"]) {
            id value = valueOrNil(modelDictionary, @"type");
            if (value != nil) {
                self->_type = value;
            }
            self->_typeDirtyProperties.JRMTypeDirtyPropertyType = 1;
        }
        if ([key isEqualToString:@"slot"]) {
            id value = valueOrNil(modelDictionary, @"slot");
            if (value != nil) {
                self->_slot = [value integerValue];
            }
            self->_typeDirtyProperties.JRMTypeDirtyPropertySlot = 1;
        }
    }];
    if ([self class] == [JRMType class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(JRMTypeBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(JRMTypeBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _type = builder.type;
    _slot = builder.slot;
    _typeDirtyProperties = builder.typeDirtyProperties;
    if ([self class] == [JRMType class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:2];
    [descriptionFields addObject:parentDebugDescription];
    struct JRMTypeDirtyProperties props = _typeDirtyProperties;
    if (props.JRMTypeDirtyPropertyType) {
        [descriptionFields addObject:[@"_type = " stringByAppendingFormat:@"%@", _type]];
    }
    if (props.JRMTypeDirtyPropertySlot) {
        [descriptionFields addObject:[@"_slot = " stringByAppendingFormat:@"%@", @(_slot)]];
    }
    return [NSString stringWithFormat:@"JRMType = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(JRMTypeBuilder *builder))block
{
    NSParameterAssert(block);
    JRMTypeBuilder *builder = [[JRMTypeBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[JRMType class]] == NO) {
        return NO;
    }
    return [self isEqualToType:anObject];
}
- (BOOL)isEqualToType:(JRMType *)anObject
{
    return (
        (anObject != nil) &&
        (self == anObject) &&
        (_slot == anObject.slot) &&
        (_type == anObject.type || [_type isEqualToDictionary:anObject.type])
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
        [_type hash],
        (NSUInteger)_slot
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(JRMType *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(JRMType *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    JRMTypeBuilder *builder = [[JRMTypeBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[JRMType alloc] initWithBuilder:builder initType:initType];
}
#pragma mark - NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding
{
    return YES;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (!(self = [super init])) {
        return self;
    }
    _type = [aDecoder decodeObjectOfClass:[NSDictionary class] forKey:@"type"];
    _slot = [aDecoder decodeIntegerForKey:@"slot"];
    _typeDirtyProperties.JRMTypeDirtyPropertyType = [aDecoder decodeIntForKey:@"type_dirty_property"] & 0x1;
    _typeDirtyProperties.JRMTypeDirtyPropertySlot = [aDecoder decodeIntForKey:@"slot_dirty_property"] & 0x1;
    if ([self class] == [JRMType class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeInteger:self.slot forKey:@"slot"];
    [aCoder encodeInt:_typeDirtyProperties.JRMTypeDirtyPropertyType forKey:@"type_dirty_property"];
    [aCoder encodeInt:_typeDirtyProperties.JRMTypeDirtyPropertySlot forKey:@"slot_dirty_property"];
}
@end

@implementation JRMTypeBuilder
- (instancetype)initWithModel:(JRMType *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct JRMTypeDirtyProperties typeDirtyProperties = modelObject.typeDirtyProperties;
    if (typeDirtyProperties.JRMTypeDirtyPropertyType) {
        _type = modelObject.type;
    }
    if (typeDirtyProperties.JRMTypeDirtyPropertySlot) {
        _slot = modelObject.slot;
    }
    _typeDirtyProperties = typeDirtyProperties;
    return self;
}
- (JRMType *)build
{
    return [[JRMType alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(JRMType *)modelObject
{
    NSParameterAssert(modelObject);
    JRMTypeBuilder *builder = self;
    if (modelObject.typeDirtyProperties.JRMTypeDirtyPropertyType) {
        builder.type = modelObject.type;
    }
    if (modelObject.typeDirtyProperties.JRMTypeDirtyPropertySlot) {
        builder.slot = modelObject.slot;
    }
}
- (void)setType:(NSDictionary *)type
{
    _type = type;
    _typeDirtyProperties.JRMTypeDirtyPropertyType = 1;
}
- (void)setSlot:(NSInteger)slot
{
    _slot = slot;
    _typeDirtyProperties.JRMTypeDirtyPropertySlot = 1;
}
@end
