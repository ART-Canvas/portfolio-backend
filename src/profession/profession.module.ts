import { Module } from '@nestjs/common';
import { ProfessionService } from './profession.service';
import { ProfessionResolver } from './profession.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  imports: [PrismaModule],
  providers: [ProfessionResolver, ProfessionService],
  exports: [ProfessionService]
})
export class ProfessionModule {}
