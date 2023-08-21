import { InputType, Int, Field } from '@nestjs/graphql';

@InputType()
export class CreateProfessionInput {
  @Field(() => Int, { description: 'Example field (placeholder)' })
  exampleField: number;
}
