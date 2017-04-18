//
//  JRMPokemon+Color.m
//  Pokedex
//
//  Created by Rafael Moraes on 17/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import <Chameleon.h>
#import "JRMPokemon+Color.h"
#import "JRMType.h"

@implementation JRMPokemon (Color)
-(NSArray<UIColor *>*) colorsForTypes{
    
    NSMutableArray* colors = [NSMutableArray array];
    NSDictionary *colorsForTypes = @{ POKEMON_TYPE_NORMAL : FlatWhiteDark,
                                      POKEMON_TYPE_FIGHTING : FlatBrownDark,
                                      POKEMON_TYPE_FLYING : FlatPowderBlueDark,
                                      POKEMON_TYPE_POISON : FlatMagentaDark,
                                      POKEMON_TYPE_GROUND : FlatSandDark,
                                      POKEMON_TYPE_ROCK : FlatWhiteDark,
                                      POKEMON_TYPE_BUG : FlatMagenta,
                                      POKEMON_TYPE_GHOST : FlatPurpleDark,
                                      POKEMON_TYPE_STEEL : FlatPowderBlue,
                                      POKEMON_TYPE_FIRE : FlatRed,
                                      POKEMON_TYPE_WATER : FlatSkyBlueDark,
                                      POKEMON_TYPE_GRASS : FlatGreen,
                                      POKEMON_TYPE_ELECTRIC : FlatYellow,
                                      POKEMON_TYPE_PSYCHIC : FlatPurple,
                                      POKEMON_TYPE_ICE : FlatGray,
                                      POKEMON_TYPE_DRAGON : FlatWatermelonDark,
                                      POKEMON_TYPE_DARK : FlatBlack,
                                      POKEMON_TYPE_FAIRY : FlatPink,
                                      POKEMON_TYPE_UNKNOWN : FlatWhiteDark,
                                      POKEMON_TYPE_SHADOW : FlatNavyBlue};
    
    for (JRMType *type in self.types) {
        NSString* typeStr =  type.type[@"name"]; // Yes, this API is kinda crazy...
        UIColor * colorForType = colorsForTypes[typeStr];
        if (colorForType != nil){
            [colors addObject: colorForType];
        }
    }
    
    return colors;
}

@end
