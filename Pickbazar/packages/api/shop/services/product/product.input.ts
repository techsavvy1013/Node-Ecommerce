import { InputType, Field } from 'type-graphql';
import { ProductType } from './product.enum';
import Product from './product.type';

@InputType()
class ProductSearchInput implements Partial<Product> {
  @Field({ nullable: true })
  id?: number;

  @Field()
  type: ProductType;

  @Field({ nullable: true })
  quantity: number;

  @Field({ nullable: true })
  category?: string;

  @Field({ defaultValue: 0 })
  offset: number;

  @Field({ defaultValue: 10 })
  limit: number;
}

export default ProductSearchInput;
