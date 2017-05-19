//
//  ViewController.m
//  CollectionViewPatterns
//
//  Created by Radbonus on 19.05.17.
//  Copyright © 2017 Radbonus. All rights reserved.
//

#import "ViewController.h"
#import "PatternViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *PatternImagesArray;

@end

@implementation ViewController

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.PatternImagesArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    PatternViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PatternCell" forIndexPath:indexPath];
    
    NSString *myPatternString = [self.PatternImagesArray objectAtIndex:indexPath.row];
    cell.PatternImageView.image = [UIImage imageNamed:myPatternString];
    cell.PatternLabel.text = myPatternString;
    
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(150.0, 150.0);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.PatternImagesArray = @[@"angry_birds_cake.jpg",@"angry_birds_cake1.jpg",@"angry_birds_cake2.jpg",@"angry_birds_cake3.jpg",@"angry_birds_cake4.jpg",@"angry_birds_cake5.jpg",@"angry_birds_cake6.jpg"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
