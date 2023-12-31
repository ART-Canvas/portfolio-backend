import { Module } from '@nestjs/common';
import { UserProfileModule } from './user-profile/user-profile.module';

@Module({
  imports: [UserProfileModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
