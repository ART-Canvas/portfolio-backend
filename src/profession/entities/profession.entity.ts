import { ObjectType, Field, Int } from '@nestjs/graphql';

@ObjectType()
export class Profession {
  @Field(() => Int, { description: 'Example field (placeholder)' })
  exampleField: number;
}
