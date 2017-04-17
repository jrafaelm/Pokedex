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
#import <UIColor+Chameleon.h>
#import "JRMType.h"
#import <Chameleon.h>

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
    NSMutableArray *colors = [NSMutableArray arrayWithObject:FlatWhite];
    for (JRMType *type in pokemon.types) {
        NSString* typeStr =  type.type[@"name"]; // Yes, this API is kinda crazy...
        [colors addObject: [self getColorForPokemonType:typeStr]];
    }
    self.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleLeftToRight
                                                 withFrame:self.frame
                                                 andColors:colors];
    self.lblName.textColor = [UIColor colorWithContrastingBlackOrWhiteColorOn:self.backgroundColor isFlat:NO];
}

- (UIColor*) getColorForPokemonType: (NSString*) type {
    if([type isEqualToString:@"normal"]) {
        return FlatWhiteDark;
    }else if ([type isEqualToString:@"fighting"]) {
        return FlatBrownDark;
    }else if ([type isEqualToString:@"flying"]) {
        return FlatPowderBlueDark;
    }else if ([type isEqualToString:@"poison"]) {
        return FlatMagentaDark;
    }else if ([type isEqualToString:@"ground"]) {
        return FlatSandDark;
    }else if ([type isEqualToString:@"rock"]) {
        return FlatWhiteDark;
    }else if ([type isEqualToString:@"bug"]) {
        return FlatMagenta;
    }else if ([type isEqualToString:@"ghost"]) {
        return FlatPurpleDark;
    }else if ([type isEqualToString:@"steel"]) {
        return FlatPowderBlue;
    }else if ([type isEqualToString:@"fire"]) {
        return FlatRed;
    }else if ([type isEqualToString:@"water"]) {
        return FlatSkyBlueDark;
    }else if ([type isEqualToString:@"grass"]) {
        return FlatGreen;
    }else if ([type isEqualToString:@"electric"]) {
        return FlatYellow;
    }else if ([type isEqualToString:@"psychic"]) {
        return FlatPurple;
    }else if ([type isEqualToString:@"ice"]) {
        return FlatPowderBlueDark;
    }else if ([type isEqualToString:@"dragon"]) {
        return FlatWatermelonDark;
    }else if ([type isEqualToString:@"dark"]) {
        return FlatBlack;
    }else if ([type isEqualToString:@"fairy"]) {
        return FlatPink;
    }else if ([type isEqualToString:@"unknown"]) {
        return FlatWhiteDark;
    }else if ([type isEqualToString:@"shadow"]) {
        return FlatNavyBlue;
    }else {
        return FlatWhite;
    }
}
@end
