//
//  JRMPokemonRepository.h
//  Pokedex
//
//  Created by Rafael Moraes on 15/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JRMPokemon.h"

@interface JRMPokemonRepository : NSObject

+ (void) getPokemonWithId:(NSInteger) identifier
               completion: (void (^) (bool succeeded, JRMPokemon* pokemon)) completion ;

@end
