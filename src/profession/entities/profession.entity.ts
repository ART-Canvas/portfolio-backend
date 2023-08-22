import { ObjectType, Field, Int } from '@nestjs/graphql';

@ObjectType()
export class Profession {
  @Field()
  profession_id: number;

  @Field()
  profession_name: string;
}
