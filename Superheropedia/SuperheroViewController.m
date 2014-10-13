//
//  ViewController.m
//  Superheropedia
//
//  Created by Adam Cooper on 10/13/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "SuperheroViewController.h"

@interface SuperheroViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSArray *superheroes;

@end

@implementation SuperheroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *supermanDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Superman", @"name", @"Krypton", @"home", nil];
    self.superheroes = [NSArray arrayWithObjects:supermanDictionary, supermanDictionary, nil];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *superHero = [self.superheroes objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = [superHero objectForKey:@"name"];
    cell.detailTextLabel.text = [superHero objectForKey:@"home"];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.superheroes.count;
}



@end
