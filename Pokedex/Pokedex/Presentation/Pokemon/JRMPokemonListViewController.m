//
//  ViewController.m
//  Pokedex
//
//  Created by Rafael Moraes on 13/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import "JRMPokemonListViewController.h"
#import "JRMPokemonRepository.h"
#import "JRMPokemon.h"

#define POKEMON_COUNT 721
#define POKEMON_MEGA_COUNT 90

@interface JRMPokemonListViewController ()

@property (strong, nonatomic) NSMutableArray *pokemons;
@property (nonatomic) NSInteger completedFetchCount;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JRMPokemonListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pokemons = [NSMutableArray array];
    for (int i = 1; i <= POKEMON_COUNT ; i++) {
        [self requestPokemonWithId:i];
    }
    for (int i = 1; i <= POKEMON_MEGA_COUNT ; i++) {
        [self requestPokemonWithId: 10000 + i];
    }
    
}

#pragma MARK - private methods

- (void)requestPokemonWithId:(NSInteger) identifier {
    __weak JRMPokemonListViewController *weakSelf = self;
    [JRMPokemonRepository getPokemonWithId:identifier
                                completion:^(bool succeded, JRMPokemon* pokemon) {
                                    if (succeded) {
                                        [weakSelf.pokemons addObject:pokemon];
                                        NSLog(@"Pokemon fetch: %ld, %@",identifier, pokemon.name);
                                        weakSelf.completedFetchCount += 1;
                                    }
                                }];
}

//TODO Replace with reactive
- (void)setCompletedFetchCount:(NSInteger)completedFetchCount {
    _completedFetchCount = completedFetchCount;
    if (completedFetchCount == POKEMON_COUNT + POKEMON_MEGA_COUNT) {
        [self.tableView reloadData];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
