//
//  JRMPokemon+Color.h
//  Pokedex
//
//  Created by Rafael Moraes on 17/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import "JRMPokemon.h"
#define POKEMON_TYPE_NORMAL @"normal"
#define POKEMON_TYPE_FIGHTING @"fighting"
#define POKEMON_TYPE_FLYING @"flying"
#define POKEMON_TYPE_POISON @"poison"
#define POKEMON_TYPE_GROUND @"ground"
#define POKEMON_TYPE_ROCK @"rock"
#define POKEMON_TYPE_BUG @"bug"
#define POKEMON_TYPE_GHOST @"ghost"
#define POKEMON_TYPE_STEEL @"steel"
#define POKEMON_TYPE_FIRE @"fire"
#define POKEMON_TYPE_WATER @"water"
#define POKEMON_TYPE_GRASS @"grass"
#define POKEMON_TYPE_ELECTRIC @"electric"
#define POKEMON_TYPE_PSYCHIC @"psychic"
#define POKEMON_TYPE_ICE @"ice"
#define POKEMON_TYPE_DRAGON @"dragon"
#define POKEMON_TYPE_DARK @"dark"
#define POKEMON_TYPE_FAIRY @"fairy"
#define POKEMON_TYPE_UNKNOWN @"unknown"
#define POKEMON_TYPE_SHADOW @"shadow"


@interface JRMPokemon (Color)

-(NSArray<UIColor *>*) colorsForTypes;

@end
