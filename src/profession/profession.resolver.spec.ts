import { Test, TestingModule } from '@nestjs/testing';
import { ProfessionResolver } from './profession.resolver';
import { ProfessionService } from './profession.service';

describe('ProfessionResolver', () => {
  let resolver: ProfessionResolver;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ProfessionResolver, ProfessionService],
    }).compile();

    resolver = module.get<ProfessionResolver>(ProfessionResolver);
  });

  it('should be defined', () => {
    expect(resolver).toBeDefined();
  });
});
