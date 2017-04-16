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
#import "JRMPokemonTableViewCell.h"

#define POKEMON_COUNT 721
#define POKEMON_MEGA_COUNT 90

@interface JRMPokemonListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *pokemons;
@property (nonatomic) NSInteger completedFetchCount;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JRMPokemonListViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pokemons = [NSMutableArray array];
    
    self.tableView.estimatedRowHeight = 100.f;
    
    [self requestPokemonWithId:1];
    
}

#pragma MARK - private methods

- (void)requestPokemonWithId:(NSInteger) identifier {
    __weak JRMPokemonListViewController *weakSelf = self;
    [JRMPokemonRepository getPokemonWithId:identifier
                                completion:^(bool succeded, JRMPokemon* pokemon) {
                                    if (succeded) {
                                        dispatch_async(dispatch_get_main_queue(), ^{
                                            [weakSelf.pokemons addObject:pokemon];
                                            [weakSelf requestPokemonWithId:(identifier + 1)];
                                            [weakSelf.tableView reloadData];
                                        });
                                    }
                                }];
}

#pragma MARK - UITableView DataSource & Delegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pokemons.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JRMPokemonTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"JRMPokemonTableViewCellId"];
    JRMPokemon *pokemon = (JRMPokemon*) self.pokemons[indexPath.row];
    cell.pokemon = pokemon;
    return cell;
}

@end
