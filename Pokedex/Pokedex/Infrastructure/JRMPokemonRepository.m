//
//  JRMPokemonRepository.m
//  Pokedex
//
//  Created by Rafael Moraes on 15/04/17.
//  Copyright © 2017 Rafael Moraes. All rights reserved.
//

#import "JRMPokemonRepository.h"
#import <AFNetworking.h>
@implementation JRMPokemonRepository

+ (void) getPokemonWithId:(NSInteger) identifier completion: (void (^) (bool succeeded, JRMPokemon* pokemon)) completion {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    NSString* urlString = [NSString stringWithFormat:@"http://pokeapi.co/api/v2/pokemon/%ld",(long)identifier];
    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET"
                                                                          URLString:urlString
                                                                         parameters:nil
                                                                              error:nil];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request
                                                completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
            completion(NO, nil);
            return;
        } else {
            if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
                
                NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
                
                if (statusCode != 200) {
                    NSLog(@"dataTaskWithRequest HTTP status code: %ld", (long)statusCode);
                    completion(NO, nil);
                    return;
                }
            }
            if ([responseObject isKindOfClass:[NSDictionary class]])
            {
                JRMPokemon* pokemon = [[JRMPokemon alloc] initWithModelDictionary:responseObject];
                completion(YES, pokemon);
                return;
            }
        }
    }];
    [dataTask resume];
}

@end
