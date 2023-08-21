import { CreateProfessionInput } from './create-profession.input';
import { InputType, Field, Int, PartialType } from '@nestjs/graphql';

@InputType()
export class UpdateProfessionInput extends PartialType(CreateProfessionInput) {
  @Field(() => Int)
  id: number;
}
