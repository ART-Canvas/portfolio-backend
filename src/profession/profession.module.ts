import { Module } from '@nestjs/common';
import { ProfessionService } from './profession.service';
import { ProfessionResolver } from './profession.resolver';

@Module({
  providers: [ProfessionResolver, ProfessionService],
})
export class ProfessionModule {}
