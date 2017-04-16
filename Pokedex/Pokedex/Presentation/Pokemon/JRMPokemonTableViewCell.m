//
//  JRMPokemonTableViewCell.m
//  Pokedex
//
//  Created by Rafael Moraes on 16/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import "JRMPokemonTableViewCell.h"
#import <UIImageView+WebCache.h>
#import "JRMSprites.h"

@interface JRMPokemonTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *ivSprite;
@property (weak, nonatomic) IBOutlet UILabel *lblName;

@end

@implementation JRMPokemonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setPokemon:(JRMPokemon *)pokemon{
    _pokemon = pokemon;
    self.lblName.text = pokemon.name;
    [self.ivSprite sd_setImageWithURL:[NSURL URLWithString:pokemon.sprites.frontDefault]];
}
@end
