//
//  JobClassKnight.m
//  Tower Of Heros
//
//  Created by MingYang Lu on 1/8/13.
//  Copyright (c) 2013 Vanderbilt University. All rights reserved.
//

//This is the class that will handel the information for all the classes. 
//There is a function for every single class in the game that
//returns all the stats of that class at a particular level.
//Then there is a function that will return a nsarray of
//all the skills that class can learn. 

#import "JobClassesInfoBox.h"
#import "PhysicalEquipment.h"
#import "PhysicalSkill.h"

@implementation JobClassesInfoBox

+(NSArray*)GetClassStatInfoOfClass:(NSNumber*)class AtLevel:(NSNumber*)level;{
	JobClassesInfoBox* temp = [[JobClassesInfoBox alloc] init];
	switch ([class intValue]) {
		case 1:
			return [temp DefenderStatInfo:level];
			break;
		default:
			return 0;
			break;
	}
}

-(NSArray*)DefenderStatInfo:(NSNumber*)level{
	NSArray* stats = 0;
	
	switch ([level intValue]) {
		case 1:
			stats = [NSMutableArray arrayWithObjects:
					 //[0]	HP	HEALTH POINTS
					 [NSNumber numberWithInt:50], 
					 //[1]	STR	STRENTH
					 [NSNumber numberWithInt:6], 
					 //[2]	VIT	VITALITY
					 [NSNumber numberWithInt:11], 
					 //[3]	AGI	AGILITY
					 [NSNumber numberWithInt:8], 
					 //[4]	INT	INTELEGENCE
					 [NSNumber numberWithInt:5], 
					 //[5]	DEX	DEXTERITY
					 [NSNumber numberWithInt:4], 
					 //[6]	ACT	ACTION
					 [NSNumber numberWithInt:8], 
					 //[7]	S1	SPELL LV1
					 [NSNumber numberWithInt:1], 
					 //[8]	S2	SPELL LV2
					 [NSNumber numberWithInt:0], 
					 //[9]	S3	SPELL LV3
					 [NSNumber numberWithInt:0], 
					 //[10]	S4	SPELL LV4
					 [NSNumber numberWithInt:0],
					 //[11]	RED
					 [NSNumber numberWithInt:10],
					 //[12]	GREEN
					 [NSNumber numberWithInt:10],
					 //[13]	YELLOW
					 [NSNumber numberWithInt:10],
					 //[14]	BLUE
					 [NSNumber numberWithInt:10],
					 //[15]	PURPLE
					 [NSNumber numberWithInt:10],
					 //[16]	ATK
					 [NSNumber numberWithInt:17],
					 //[17]	DEF
					 [NSNumber numberWithInt:32],
					 nil];
			break;
		default:
			//shouldn't happen.
			NSLog (@"Level inputted out of range");
			break;
	}
	
	return stats;
}

//Takes in a int value representing class being 
//checked for skills learnable.
//[0] = Defender	[1] = Knight
+(NSArray*)GetSkillsLearnableOfClass:(NSNumber*)class{
	NSArray* skills = 0;
	
	switch ([class intValue]) {
		case 1:
			//Class Defender
			skills = [NSArray arrayWithObjects:
					  [[PhysicalSkill alloc] initSkillWithTag:0],
					  [[PhysicalSkill alloc] initSkillWithTag:0],
					  nil];
			break;
			
		case 2:
			//Class Knight
			skills = [NSArray arrayWithObjects:
					  @"Bash",
					  nil];
			break;
			
		default:
			//Shouldn't happen.
			NSLog (@"Class inputted out of range");
			break;
	}
	
	return skills;
}

+(NSArray*)GetStartingEquipmentOfClass:(NSNumber*)class{
	NSArray* startingEquips = 0;
	
	switch ([class intValue]) {
		case 1:
			//Class Defender
			startingEquips = [NSArray arrayWithObjects:
							  //[0]		Armor
							  [[PhysicalEquipment alloc] initEuipmentWithTag:0],
							  //[1]		Weapon
							  [[PhysicalEquipment alloc] initEuipmentWithTag:1],
							  //[2]		Acc1
							  [[PhysicalEquipment alloc] initEuipmentWithTag:2],
							  //[3]		Acc2
							  [[PhysicalEquipment alloc] initEuipmentWithTag:3],
							  nil];
			break;
			
		case 2:
			//Class Knight
			startingEquips = [NSArray arrayWithObjects:
							  //[0]		Armor
							  [NSNumber numberWithInt:0],
							  //[1]		Weapon
							  [NSNumber numberWithInt:1],
							  //[2]		Acc1
							  [NSNumber numberWithInt:2],
							  //[3]		Acc2
							  [NSNumber numberWithInt:3],
							  nil];
			break;
			
		default:
			//Shouldn't happen.
			NSLog (@"Class inputted out of range");
			break;
	}
	return 0;
}

@end
