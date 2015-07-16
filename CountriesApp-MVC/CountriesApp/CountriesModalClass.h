//
//  CountriesModalClass.h
//  CountriesApp
//
//  Created by Nuvvala on 6/8/15.
//  Copyright (c) 2015 Narasimha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CountriesModalClass : NSObject

@property(nonatomic,strong) NSString *countryNames;
@property(nonatomic,strong) UIImage *countryImages;
@property(nonatomic,strong) NSArray *popularCities;
@property(nonatomic,strong) NSArray *touristPlaces;
@property(nonatomic,strong) UIImage *imageView;



-(instancetype)initWithCountryName:(NSString *)name
                             image:(UIImage *)image
                             popularCitirs:(NSArray *)poplarCities
                             touristPlaces:(NSArray *)touristPLaces
                             imageView:(UIImage *)imageView;


@end