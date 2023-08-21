import { Resolver, Query, Mutation, Args, Int } from '@nestjs/graphql';
import { ProfessionService } from './profession.service';
import { Profession } from './entities/profession.entity';
import { CreateProfessionInput } from './dto/create-profession.input';
import { UpdateProfessionInput } from './dto/update-profession.input';

@Resolver(() => Profession)
export class ProfessionResolver {
  constructor(private readonly professionService: ProfessionService) {}

  @Mutation(() => Profession)
  createProfession(@Args('createProfessionInput') createProfessionInput: CreateProfessionInput) {
    return this.professionService.create(createProfessionInput);
  }

  @Query(() => [Profession], { name: 'profession' })
  findAll() {
    return this.professionService.findAll();
  }

  @Query(() => Profession, { name: 'profession' })
  findOne(@Args('id', { type: () => Int }) id: number) {
    return this.professionService.findOne(id);
  }

  @Mutation(() => Profession)
  updateProfession(@Args('updateProfessionInput') updateProfessionInput: UpdateProfessionInput) {
    return this.professionService.update(updateProfessionInput.id, updateProfessionInput);
  }

  @Mutation(() => Profession)
  removeProfession(@Args('id', { type: () => Int }) id: number) {
    return this.professionService.remove(id);
  }
}
