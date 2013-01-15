//
//  PhysicalCharacter.m
//  Tower Of Heros
//
//  Created by MingYang Lu on 1/10/13.
//  Copyright (c) 2013 Vanderbilt University. All rights reserved.
//

#import "PhysicalCharacter.h"
#import "PhysicalSkill.h"
#import "JobClassesInfoBox.h"

@implementation PhysicalCharacter

-(PhysicalCharacter*)initCharacterWithClass:(NSNumber*)classTag 
				 WithPosition:(int)position 
					 WithName:(NSString*)name{	
	
	PartyPosition = [NSNumber numberWithInt:position];
	
	NSArray* classStats = [JobClassesInfoBox GetClassStatInfoOfClass:classTag AtLevel:0];
	NSNumber* temp = [classStats objectAtIndex:0];
	HPcur = [NSNumber numberWithInt:[temp intValue]];
	HPmax = [classStats objectAtIndex:0];
	HPmod = [NSNumber numberWithInt:0];
	
	STRcur = [classStats objectAtIndex:1];
	VITcur = [classStats objectAtIndex:2];
	AGIcur = [classStats objectAtIndex:3];
	INTcur = [classStats objectAtIndex:4];
	DEXcur = [classStats objectAtIndex:5];
	
	STRmod = [NSNumber numberWithInt:0];
	VITmod = [NSNumber numberWithInt:0];
	AGImod = [NSNumber numberWithInt:0];
	INTmod = [NSNumber numberWithInt:0];
	DEXmod = [NSNumber numberWithInt:0];
	
	ACTcur = [classStats objectAtIndex:6];
	ACTmod = [classStats objectAtIndex:0];
	
	S1cur = [classStats objectAtIndex:7];
	S1max = [classStats objectAtIndex:7];
	S2cur = [classStats objectAtIndex:8];
	S2max = [classStats objectAtIndex:8];
	S3cur = [classStats objectAtIndex:9];
	S3max = [classStats objectAtIndex:9];
	S4cur = [classStats objectAtIndex:10];
	S4max = [classStats objectAtIndex:10];
	S1mod = [NSNumber numberWithInt:0];
	S2mod = [NSNumber numberWithInt:0];
	S3mod = [NSNumber numberWithInt:0];
	S4mod = [NSNumber numberWithInt:0];
	
	STRcur = [classStats objectAtIndex:11];
	VITcur = [classStats objectAtIndex:12];
	AGIcur = [classStats objectAtIndex:13];
	INTcur = [classStats objectAtIndex:14];
	DEXcur = [classStats objectAtIndex:15];
	
	STRmod = [NSNumber numberWithInt:0];
	VITmod = [NSNumber numberWithInt:0];
	AGImod = [NSNumber numberWithInt:0];
	INTmod = [NSNumber numberWithInt:0];
	DEXmod = [NSNumber numberWithInt:0];
	
	ATK = [classStats objectAtIndex:16];
	DEF = [classStats objectAtIndex:17];
	
	Skills = [JobClassesInfoBox GetSkillsLearnableOfClass:classTag];
	
	characterName = [NSString stringWithString:name];
	
	NSArray* EquipTemp = [JobClassesInfoBox GetStartingEquipmentOfClass:classTag];
	
	Armor = [EquipTemp objectAtIndex:0];
	Weapon = [EquipTemp objectAtIndex:1];
	Acc1 = [EquipTemp objectAtIndex:2];
	Acc2 = [EquipTemp objectAtIndex:3];
	
	return self;
}

-(NSNumber*)getHPMAX{
	return HPmax;
}
-(NSNumber*)getHPCUR{
	return HPcur;
}
-(NSNumber*)getATK{
	return ATK;
}
-(NSNumber*)getDEF{
	return DEF;
}
-(NSNumber*)getSTR{
	return STRcur;
}
-(NSNumber*)getVIT{
	return VITcur;
}
-(NSNumber*)getDEX{
	return DEXcur;
}
-(NSNumber*)getAGI{
	return AGIcur;
}
-(NSNumber*)getACT{
	return ACTcur;
}

-(NSNumber*)getS1{
	return S1cur;
}
-(NSNumber*)getS2{
	return S2cur;
}
-(NSNumber*)getS3{
	return S3cur;
}
-(NSNumber*)getS4{
	return S4cur;
}

-(NSArray*)getAffinity{
	NSArray* Affinity = [NSArray arrayWithObjects:REDcur, GREENcur, YELLOWcur, BLUEcur, PURPLEcur, nil];
	return Affinity;
}

-(NSArray*)getSkillsLearned{
	//Skills will contain all the skills the player has that are at least at Lvl 1. 
	//It will store the skills by storing first the number representation of that skill, 
	//and then the level value of the skill.
	NSMutableArray* LearnedSkills;
	
	for (size_t i = 0; i < [Skills count]; i++) {
		PhysicalSkill* zoobar = [Skills objectAtIndex:i];
		if ([zoobar getSkillLevel] > 0) {
			[LearnedSkills addObject:zoobar];
		}
	}
	
	return LearnedSkills;
}

-(NSArray*)getSkillsAll{
	return Skills;
}

@end
