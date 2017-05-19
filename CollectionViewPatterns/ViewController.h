//
//  ViewController.h
//  CollectionViewPatterns
//
//  Created by Radbonus on 19.05.17.
//  Copyright © 2017 Radbonus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) IBOutlet UICollectionView *myCollectionView;

@end

