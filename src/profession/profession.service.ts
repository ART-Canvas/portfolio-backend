import { Injectable } from '@nestjs/common';
import { CreateProfessionInput } from './dto/create-profession.input';
import { UpdateProfessionInput } from './dto/update-profession.input';

@Injectable()
export class ProfessionService {
  create(createProfessionInput: CreateProfessionInput) {
    return 'This action adds a new profession';
  }

  findAll() {
    return `This action returns all profession`;
  }

  findOne(id: number) {
    return `This action returns a #${id} profession`;
  }

  update(id: number, updateProfessionInput: UpdateProfessionInput) {
    return `This action updates a #${id} profession`;
  }

  remove(id: number) {
    return `This action removes a #${id} profession`;
  }
}
