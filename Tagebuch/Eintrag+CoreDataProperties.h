//
//  Eintrag+CoreDataProperties.h
//  Tagebuch
//
//  Created by Tim Gymnich on 06.08.15.
//  Copyright © 2015 Christopher Lindhof. All rights reserved.
//
//  Delete this file and regenerate it using "Create NSManagedObject Subclass…"
//  to keep your implementation up to date with your model.
//

#import "Eintrag.h"

NS_ASSUME_NONNULL_BEGIN

@interface Eintrag (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *title;

@end

NS_ASSUME_NONNULL_END
