import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { ProfessionModule } from './profession/profession.module';
import { join } from 'path';
import { ProfessionResolver } from './profession/profession.resolver';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: join(process.cwd(), 'src/graphql-schema.gql'),
      // typePaths: ['./**/*.graphql'],
      // definitions: {
      //   path: join(process.cwd(), 'src/graphql.gql'),
      //   outputAs: 'class'
      // },
      playground: true
    }), ProfessionModule
  ],
  providers: [ProfessionResolver]
})
export class AppModule {}
