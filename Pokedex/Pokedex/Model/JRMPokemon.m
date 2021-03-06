//
//  JRMPokemon.m
//  Autogenerated by plank
//
//  DO NOT EDIT - EDITS WILL BE OVERWRITTEN
//  @generated
//

#import "JRMPokemon.h"
#import "JRMSprites.h"
#import "JRMStat.h"
#import "JRMType.h"

struct JRMPokemonDirtyProperties {
    unsigned int JRMPokemonDirtyPropertyBaseExperience:1;
    unsigned int JRMPokemonDirtyPropertyHeight:1;
    unsigned int JRMPokemonDirtyPropertyIdentifier:1;
    unsigned int JRMPokemonDirtyPropertyIsDefault:1;
    unsigned int JRMPokemonDirtyPropertyName:1;
    unsigned int JRMPokemonDirtyPropertyOrder:1;
    unsigned int JRMPokemonDirtyPropertySprites:1;
    unsigned int JRMPokemonDirtyPropertyStats:1;
    unsigned int JRMPokemonDirtyPropertyTypes:1;
    unsigned int JRMPokemonDirtyPropertyWeight:1;
};

@interface JRMPokemon ()
@property (nonatomic, assign, readwrite) struct JRMPokemonDirtyProperties pokemonDirtyProperties;
@end

@interface JRMPokemonBuilder ()
@property (nonatomic, assign, readwrite) struct JRMPokemonDirtyProperties pokemonDirtyProperties;
@end

@implementation JRMPokemon
+ (NSString *)className
{
    return @"JRMPokemon";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"pokemon";
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
        if ([key isEqualToString:@"sprites"]) {
            id value = valueOrNil(modelDictionary, @"sprites");
            if (value != nil) {
                self->_sprites = [JRMSprites modelObjectWithDictionary:value];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertySprites = 1;
        }
        if ([key isEqualToString:@"height"]) {
            id value = valueOrNil(modelDictionary, @"height");
            if (value != nil) {
                self->_height = [value integerValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight = 1;
        }
        if ([key isEqualToString:@"name"]) {
            id value = valueOrNil(modelDictionary, @"name");
            if (value != nil) {
                self->_name = value;
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyName = 1;
        }
        if ([key isEqualToString:@"is_default"]) {
            id value = valueOrNil(modelDictionary, @"is_default");
            if (value != nil) {
                self->_isDefault = [value boolValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault = 1;
        }
        if ([key isEqualToString:@"id"]) {
            id value = valueOrNil(modelDictionary, @"id");
            if (value != nil) {
                self->_identifier = [value integerValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier = 1;
        }
        if ([key isEqualToString:@"base_experience"]) {
            id value = valueOrNil(modelDictionary, @"base_experience");
            if (value != nil) {
                self->_baseExperience = [value integerValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience = 1;
        }
        if ([key isEqualToString:@"weight"]) {
            id value = valueOrNil(modelDictionary, @"weight");
            if (value != nil) {
                self->_weight = [value integerValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight = 1;
        }
        if ([key isEqualToString:@"stats"]) {
            id value = valueOrNil(modelDictionary, @"stats");
            if (value != nil) {
                NSArray *items = value;
                NSMutableArray *result0 = [NSMutableArray arrayWithCapacity:items.count];
                for (id obj0 in items) {
                    if ([obj0 isEqual:[NSNull null]] == NO) {
                        id tmp0 = nil;
                        tmp0 = [JRMStat modelObjectWithDictionary:obj0];
                        if (tmp0 != nil) {
                            [result0 addObject:tmp0];
                        }
                    }
                }
                self->_stats = result0;
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyStats = 1;
        }
        if ([key isEqualToString:@"order"]) {
            id value = valueOrNil(modelDictionary, @"order");
            if (value != nil) {
                self->_order = [value integerValue];
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder = 1;
        }
        if ([key isEqualToString:@"types"]) {
            id value = valueOrNil(modelDictionary, @"types");
            if (value != nil) {
                NSArray *items = value;
                NSMutableArray *result0 = [NSMutableArray arrayWithCapacity:items.count];
                for (id obj0 in items) {
                    if ([obj0 isEqual:[NSNull null]] == NO) {
                        id tmp0 = nil;
                        tmp0 = [JRMType modelObjectWithDictionary:obj0];
                        if (tmp0 != nil) {
                            [result0 addObject:tmp0];
                        }
                    }
                }
                self->_types = result0;
            }
            self->_pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes = 1;
        }
    }];
    if ([self class] == [JRMPokemon class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(JRMPokemonBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(JRMPokemonBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _sprites = builder.sprites;
    _height = builder.height;
    _name = builder.name;
    _isDefault = builder.isDefault;
    _identifier = builder.identifier;
    _baseExperience = builder.baseExperience;
    _weight = builder.weight;
    _stats = builder.stats;
    _order = builder.order;
    _types = builder.types;
    _pokemonDirtyProperties = builder.pokemonDirtyProperties;
    if ([self class] == [JRMPokemon class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:10];
    [descriptionFields addObject:parentDebugDescription];
    struct JRMPokemonDirtyProperties props = _pokemonDirtyProperties;
    if (props.JRMPokemonDirtyPropertySprites) {
        [descriptionFields addObject:[@"_sprites = " stringByAppendingFormat:@"%@", _sprites]];
    }
    if (props.JRMPokemonDirtyPropertyHeight) {
        [descriptionFields addObject:[@"_height = " stringByAppendingFormat:@"%@", @(_height)]];
    }
    if (props.JRMPokemonDirtyPropertyName) {
        [descriptionFields addObject:[@"_name = " stringByAppendingFormat:@"%@", _name]];
    }
    if (props.JRMPokemonDirtyPropertyIsDefault) {
        [descriptionFields addObject:[@"_isDefault = " stringByAppendingFormat:@"%@", @(_isDefault)]];
    }
    if (props.JRMPokemonDirtyPropertyIdentifier) {
        [descriptionFields addObject:[@"_identifier = " stringByAppendingFormat:@"%@", @(_identifier)]];
    }
    if (props.JRMPokemonDirtyPropertyBaseExperience) {
        [descriptionFields addObject:[@"_baseExperience = " stringByAppendingFormat:@"%@", @(_baseExperience)]];
    }
    if (props.JRMPokemonDirtyPropertyWeight) {
        [descriptionFields addObject:[@"_weight = " stringByAppendingFormat:@"%@", @(_weight)]];
    }
    if (props.JRMPokemonDirtyPropertyStats) {
        [descriptionFields addObject:[@"_stats = " stringByAppendingFormat:@"%@", _stats]];
    }
    if (props.JRMPokemonDirtyPropertyOrder) {
        [descriptionFields addObject:[@"_order = " stringByAppendingFormat:@"%@", @(_order)]];
    }
    if (props.JRMPokemonDirtyPropertyTypes) {
        [descriptionFields addObject:[@"_types = " stringByAppendingFormat:@"%@", _types]];
    }
    return [NSString stringWithFormat:@"JRMPokemon = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(JRMPokemonBuilder *builder))block
{
    NSParameterAssert(block);
    JRMPokemonBuilder *builder = [[JRMPokemonBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[JRMPokemon class]] == NO) {
        return NO;
    }
    return [self isEqualToPokemon:anObject];
}
- (BOOL)isEqualToPokemon:(JRMPokemon *)anObject
{
    return (
        (anObject != nil) &&
        (self == anObject) &&
        (_order == anObject.order) &&
        (_weight == anObject.weight) &&
        (_baseExperience == anObject.baseExperience) &&
        (_identifier == anObject.identifier) &&
        (_isDefault == anObject.isDefault) &&
        (_height == anObject.height) &&
        (_sprites == anObject.sprites || [_sprites isEqual:anObject.sprites]) &&
        (_name == anObject.name || [_name isEqualToString:anObject.name]) &&
        (_stats == anObject.stats || [_stats isEqual:anObject.stats]) &&
        (_types == anObject.types || [_types isEqual:anObject.types])
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
        [_sprites hash],
        (NSUInteger)_height,
        [_name hash],
        (_isDefault ? 1231 : 1237),
        (NSUInteger)_identifier,
        (NSUInteger)_baseExperience,
        (NSUInteger)_weight,
        [_stats hash],
        (NSUInteger)_order,
        [_types hash]
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(JRMPokemon *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(JRMPokemon *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    JRMPokemonBuilder *builder = [[JRMPokemonBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[JRMPokemon alloc] initWithBuilder:builder initType:initType];
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
    _sprites = [aDecoder decodeObjectOfClass:[JRMSprites class] forKey:@"sprites"];
    _height = [aDecoder decodeIntegerForKey:@"height"];
    _name = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"name"];
    _isDefault = [aDecoder decodeBoolForKey:@"is_default"];
    _identifier = [aDecoder decodeIntegerForKey:@"id"];
    _baseExperience = [aDecoder decodeIntegerForKey:@"base_experience"];
    _weight = [aDecoder decodeIntegerForKey:@"weight"];
    _stats = [aDecoder decodeObjectOfClasses:[NSSet setWithArray:@[[JRMStat class], [NSArray class]]] forKey:@"stats"];
    _order = [aDecoder decodeIntegerForKey:@"order"];
    _types = [aDecoder decodeObjectOfClasses:[NSSet setWithArray:@[[JRMType class], [NSArray class]]] forKey:@"types"];
    _pokemonDirtyProperties.JRMPokemonDirtyPropertySprites = [aDecoder decodeIntForKey:@"sprites_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight = [aDecoder decodeIntForKey:@"height_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyName = [aDecoder decodeIntForKey:@"name_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault = [aDecoder decodeIntForKey:@"is_default_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier = [aDecoder decodeIntForKey:@"id_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience = [aDecoder decodeIntForKey:@"base_experience_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight = [aDecoder decodeIntForKey:@"weight_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyStats = [aDecoder decodeIntForKey:@"stats_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder = [aDecoder decodeIntForKey:@"order_dirty_property"] & 0x1;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes = [aDecoder decodeIntForKey:@"types_dirty_property"] & 0x1;
    if ([self class] == [JRMPokemon class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.sprites forKey:@"sprites"];
    [aCoder encodeInteger:self.height forKey:@"height"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeBool:self.isDefault forKey:@"is_default"];
    [aCoder encodeInteger:self.identifier forKey:@"id"];
    [aCoder encodeInteger:self.baseExperience forKey:@"base_experience"];
    [aCoder encodeInteger:self.weight forKey:@"weight"];
    [aCoder encodeObject:self.stats forKey:@"stats"];
    [aCoder encodeInteger:self.order forKey:@"order"];
    [aCoder encodeObject:self.types forKey:@"types"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertySprites forKey:@"sprites_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight forKey:@"height_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyName forKey:@"name_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault forKey:@"is_default_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier forKey:@"id_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience forKey:@"base_experience_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight forKey:@"weight_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyStats forKey:@"stats_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder forKey:@"order_dirty_property"];
    [aCoder encodeInt:_pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes forKey:@"types_dirty_property"];
}
@end

@implementation JRMPokemonBuilder
- (instancetype)initWithModel:(JRMPokemon *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct JRMPokemonDirtyProperties pokemonDirtyProperties = modelObject.pokemonDirtyProperties;
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertySprites) {
        _sprites = modelObject.sprites;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight) {
        _height = modelObject.height;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyName) {
        _name = modelObject.name;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault) {
        _isDefault = modelObject.isDefault;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier) {
        _identifier = modelObject.identifier;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience) {
        _baseExperience = modelObject.baseExperience;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight) {
        _weight = modelObject.weight;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyStats) {
        _stats = modelObject.stats;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder) {
        _order = modelObject.order;
    }
    if (pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes) {
        _types = modelObject.types;
    }
    _pokemonDirtyProperties = pokemonDirtyProperties;
    return self;
}
- (JRMPokemon *)build
{
    return [[JRMPokemon alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(JRMPokemon *)modelObject
{
    NSParameterAssert(modelObject);
    JRMPokemonBuilder *builder = self;
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertySprites) {
        id value = modelObject.sprites;
        if (value != nil) {
            if (builder.sprites) {
                builder.sprites = [builder.sprites mergeWithModel:value initType:PlankModelInitTypeFromSubmerge];
            }
             else {
                builder.sprites = value;
            }
        }
         else {
            builder.sprites = nil;
        }
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight) {
        builder.height = modelObject.height;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyName) {
        builder.name = modelObject.name;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault) {
        builder.isDefault = modelObject.isDefault;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier) {
        builder.identifier = modelObject.identifier;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience) {
        builder.baseExperience = modelObject.baseExperience;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight) {
        builder.weight = modelObject.weight;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyStats) {
        builder.stats = modelObject.stats;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder) {
        builder.order = modelObject.order;
    }
    if (modelObject.pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes) {
        builder.types = modelObject.types;
    }
}
- (void)setSprites:(JRMSprites *)sprites
{
    _sprites = sprites;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertySprites = 1;
}
- (void)setHeight:(NSInteger)height
{
    _height = height;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyHeight = 1;
}
- (void)setName:(NSString *)name
{
    _name = name;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyName = 1;
}
- (void)setIsDefault:(BOOL)isDefault
{
    _isDefault = isDefault;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyIsDefault = 1;
}
- (void)setIdentifier:(NSInteger)identifier
{
    _identifier = identifier;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyIdentifier = 1;
}
- (void)setBaseExperience:(NSInteger)baseExperience
{
    _baseExperience = baseExperience;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyBaseExperience = 1;
}
- (void)setWeight:(NSInteger)weight
{
    _weight = weight;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyWeight = 1;
}
- (void)setStats:(NSArray<JRMStat *> *)stats
{
    _stats = stats;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyStats = 1;
}
- (void)setOrder:(NSInteger)order
{
    _order = order;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyOrder = 1;
}
- (void)setTypes:(NSArray<JRMType *> *)types
{
    _types = types;
    _pokemonDirtyProperties.JRMPokemonDirtyPropertyTypes = 1;
}
@end
