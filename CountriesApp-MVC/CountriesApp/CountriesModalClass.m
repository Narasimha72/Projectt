//
//  CountriesModalClass.m
//  CountriesApp
//
//  Created by Nuvvala on 6/8/15.
//  Copyright (c) 2015 Narasimha. All rights reserved.
//

#import "CountriesModalClass.h"

@implementation CountriesModalClass


-(instancetype)initWithCountryName:(NSString *)name image:(UIImage *)image popularCitirs:(NSArray *)poplarCities touristPlaces:(NSArray *)touristPLaces imageView:(UIImage *)imageView{
    self = [super init];
    if (self) {
        _countryNames = name;
        _countryImages = image;
        _popularCities = poplarCities;
        _touristPlaces = touristPLaces;
        _imageView = imageView;
            }
    return self;
}

@end
