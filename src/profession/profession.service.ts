import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ProfessionService {

  constructor(private prisma: PrismaService) {}

  // create(createProfessionInput: CreateProfessionInput) {
  //   return 'This action adds a new profession';
  // }

  findAll() {
    return this.prisma.profession.findMany();
  }

  findOne(id: number) {
    return this.prisma.profession.findFirst({where: {profession_id: id}});
  }

  // update(id: number, updateProfessionInput: UpdateProfessionInput) {
  //   return `This action updates a #${id} profession`;
  // }

  // remove(id: number) {
  //   return `This action removes a #${id} profession`;
  // }
}
