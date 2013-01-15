//
//  JobClassKnight.h
//  Tower Of Heros
//
//  Created by MingYang Lu on 1/8/13.
//  Copyright (c) 2013 Vanderbilt University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JobClassesInfoBox : NSObject{
	
}
//All the functions that retun an array of the stats
//of a class for a particular level.
-(NSArray*)DefenderStatInfo:(NSNumber*)level;

//function that returns an array of the skills
//a class can learn. 
+(NSArray*)GetSkillsLearnableOfClass:(NSNumber*)class;
+(NSArray*)GetClassStatInfoOfClass:(NSNumber*)class AtLevel:(NSNumber*)level;
+(NSArray*)GetStartingEquipmentOfClass:(NSNumber*)class;
@end
