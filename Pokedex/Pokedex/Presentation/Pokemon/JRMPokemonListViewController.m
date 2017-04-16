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

@interface JRMPokemonListViewController ()

@end

@implementation JRMPokemonListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [JRMPokemonRepository getPokemonWithId:1
                                completion:^(bool succeded, JRMPokemon* pokemon) {
                                    if (succeded) {
                                        NSLog([pokemon description]);
                                    }
                                }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
