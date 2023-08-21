import { Field, Int, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class Profession{
    @Field(type=>Int)
    id: number

    @Field()
    name: string
}