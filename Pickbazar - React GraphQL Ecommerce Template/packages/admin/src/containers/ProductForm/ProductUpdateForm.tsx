import React, { useState, useCallback } from 'react';
import { useForm } from 'react-hook-form';
import { useMutation, gql } from '@apollo/client';
import { Scrollbars } from 'react-custom-scrollbars';
import { useDrawerDispatch, useDrawerState } from 'context/DrawerContext';
import Uploader from 'components/Uploader/Uploader';
import Button, { KIND } from 'components/Button/Button';
import DrawerBox from 'components/DrawerBox/DrawerBox';
import { Row, Col } from 'components/FlexBox/FlexBox';
import Input from 'components/Input/Input';
import { Textarea } from 'components/Textarea/Textarea';
import Select from 'components/Select/Select';
import { FormFields, FormLabel } from 'components/FormFields/FormFields';
import getOptions from './TypeOption';
import axios from 'axios';

import {
  Form,
  DrawerTitleWrapper,
  DrawerTitle,
  FieldDetails,
  ButtonGroup,
} from '../DrawerItems/DrawerItems.style';

const GET_PRODUCTS = gql`
  query getProducts(
    $type: String
    $sortByPrice: String
    $searchText: String
    $offset: Int
  ) {
    products(
      type: $type
      sortByPrice: $sortByPrice
      searchText: $searchText
      offset: $offset
    ) {
      items {
        id
        name
        image
        type
        price
        unit
        salePrice
        discountInPercent
      }
      totalCount
      hasMore
    }
  }
`;

const UPDATE_PRODUCT = gql`
  mutation updateProduct($product: AddProductInput!) {
    updateProduct(product: $product) {
      id
      name
      image
      slug
      type
      categories
      {
        id
        name
      }
      price
      unit
      description
      salePrice
      discountInPercent
      # per_unit
      quantity
      # creation_date
    }
  }
`;

const options = [
  { value: 'Fruits & Vegetables', name: 'Fruits & Vegetables', id: '1' },
  { value: 'Meat & Fish', name: 'Meat & Fish', id: '2' },
  { value: 'Purse', name: 'Purse', id: '3' },
  { value: 'Hand bags', name: 'Hand bags', id: '4' },
  { value: 'Shoulder bags', name: 'Shoulder bags', id: '5' },
  { value: 'Wallet', name: 'Wallet', id: '6' },
  { value: 'Laptop bags', name: 'Laptop bags', id: '7' },
  { value: 'Women Dress', name: 'Women Dress', id: '8' },
  { value: 'Outer Wear', name: 'Outer Wear', id: '9' },
  { value: 'Pants', name: 'Pants', id: '10' },
];

// const typeOptions = [
//   { value: 'grocery', name: 'Grocery', id: '1' },
//   { value: 'women-cloths', name: 'Women Cloths', id: '2' },
//   { value: 'bags', name: 'Bags', id: '3' },
//   { value: 'makeup', name: 'Makeup', id: '4' },
// ];

type Props = any;

const AddProduct: React.FC<Props> = () => {
  const dispatch = useDrawerDispatch();
  var data = useDrawerState('data');
  var t = [];
  for(var i = 0; i < data.categories.length; i++)
  {
    delete data.categories[i].__typename;
    var tmp = { value:`${data.categories[i].name}`, name:`${data.categories[i].name}`, id:`${data.categories[i].id}` };
    t.push(tmp);
  }

  const closeDrawer = useCallback(() => dispatch({ type: 'CLOSE_DRAWER' }), [
    dispatch,
  ]);
  const { register, handleSubmit, setValue } = useForm({
    defaultValues: data,
  });
  const [type, setType] = useState([{ value: data.type }]);
  const [tag, setTag] = useState([]);
  const [description, setDescription] = useState(data.description);

  React.useEffect(() => {
    register({ name: 'type' });
    register({ name: 'categories' });
    register({ name: 'image' });
    register({ name: 'description' });
    register({ name: 'img_src' });
  }, [register]);

  const [update_Product] = useMutation(UPDATE_PRODUCT, {
    update(cache, { data: { updateProduct } }) {
      const { products } = cache.readQuery({
        query: GET_PRODUCTS,
      });

      for(var i = 0; i < products.items.length; i++)
      {
        if(products.items[i].id === updateProduct.id){
          products.items[i] = updateProduct;
          break;
        }
      }

      cache.writeQuery({
        query: GET_PRODUCTS,
        data: {
          products: {
            __typename: products.__typename,
            items: products.items,
            hasMore: products.hasMore,
            totalCount: products.items.length,
          },
        },
      });
    },
  });

  var typeOptions = getOptions();
  const handleMultiChange = ({ value }) => {
    setValue('categories', value);
    setTag(value);
  };
  const handleDescriptionChange = (e) => {
    const value = e.target.value;
    setValue('description', value);
    setDescription(value);
  };

  const handleTypeChange = ({ value }) => {
    setValue('type', value);
    setType(value);
  };
  const handleUploader = (files) => {
    var blob:Blob = files[0];
    setValue('image', files[0].path);    
    setValue('img_src', blob); 
  };
  const onSubmit =async (temp) => {

    //[1]. Image uploading...
    let o = {
      query: `mutation
      productImageUpload($file:Upload!){
       productImageUpload(file: $file){
        mimetype
        filename 
       }
      }`,
      variables: {
        file: null
      }
    }
    let map = {
      '0': ['variables.file']
    }
    let fd = new FormData()
    fd.append('operations', JSON.stringify(o))
    fd.append('map', JSON.stringify(map))
    fd.append('0', temp.img_src);

    var image_path;
    await axios.post('http://localhost:4000/admin/graphql',fd).then(res => { 
      console.log(res);
      image_path =res.data.data.productImageUpload.filename; 
      console.log(res.data.data.productImageUpload.filename,res.status);
    });

    const updateProduct = {
      id: data.id,
      name: temp.name,
      type: `${temp.type[0].id}`,
      description: temp.description,
      categories: temp.categories,
      image: image_path,
      price: Number(temp.price),
      unit: temp.unit,
      salePrice: Number(temp.salePrice),
      discountInPercent: Number(temp.discountInPercent),
      quantity: Number(temp.quantity),
      slug: temp.name,
      creation_date: new Date(),
    };

    update_Product({
      variables: { product: updateProduct },
    });
    closeDrawer();
  };

  const getValues = (value) => {
    if(value.length === 0){
      value = t
      t = [];
    }
    return value;
  }

  return (
    <>
      <DrawerTitleWrapper>
        <DrawerTitle>Update Product</DrawerTitle>
      </DrawerTitleWrapper>

      <Form
        onSubmit={handleSubmit(onSubmit)}
        style={{ height: '100%' }}
        noValidate
      >
        <Scrollbars
          autoHide
          renderView={(props) => (
            <div {...props} style={{ ...props.style, overflowX: 'hidden' }} />
          )}
          renderTrackHorizontal={(props) => (
            <div
              {...props}
              style={{ display: 'none' }}
              className="track-horizontal"
            />
          )}
        >
          <Row>
            <Col lg={4}>
              <FieldDetails>Upload your Product image here</FieldDetails>
            </Col>
            <Col lg={8}>
              <DrawerBox>
                <Uploader onChange={handleUploader} imageURL={data.image} />
              </DrawerBox>
            </Col>
          </Row>

          <Row>
            <Col lg={4}>
              <FieldDetails>
                Add your Product description and necessary information from here
              </FieldDetails>
            </Col>

            <Col lg={8}>
              <DrawerBox>
                <FormFields>
                  <FormLabel>Name</FormLabel>
                  <Input
                    inputRef={register({ required: true, maxLength: 20 })}
                    name="name"
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Description</FormLabel>
                  <Textarea
                    value={description}
                    onChange={handleDescriptionChange}
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Unit</FormLabel>
                  <Input type="text" inputRef={register} name="unit" />
                </FormFields>

                <FormFields>
                  <FormLabel>Price</FormLabel>
                  <Input
                    type="number"
                    inputRef={register({ required: true })}
                    name="price"
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Sale Price</FormLabel>
                  <Input type="number" inputRef={register} name="salePrice" />
                </FormFields>

                <FormFields>
                  <FormLabel>Discount In Percent</FormLabel>
                  <Input
                    type="number"
                    inputRef={register}
                    name="discountInPercent"
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Product Quantity</FormLabel>
                  <Input type="number" inputRef={register} name="quantity" />
                </FormFields>

                <FormFields>
                  <FormLabel>Type</FormLabel>
                  <Select
                    options={typeOptions}
                    labelKey="name"
                    valueKey="value"
                    placeholder="Product Type"
                    value={type}
                    searchable={false}
                    onChange={handleTypeChange}
                    overrides={{
                      Placeholder: {
                        style: ({ $theme }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $theme.colors.textNormal,
                          };
                        },
                      },
                      DropdownListItem: {
                        style: ({ $theme }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $theme.colors.textNormal,
                          };
                        },
                      },
                      OptionContent: {
                        style: ({ $theme, $selected }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $selected
                              ? $theme.colors.textDark
                              : $theme.colors.textNormal,
                          };
                        },
                      },
                      SingleValue: {
                        style: ({ $theme }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $theme.colors.textNormal,
                          };
                        },
                      },
                      Popover: {
                        props: {
                          overrides: {
                            Body: {
                              style: { zIndex: 5 },
                            },
                          },
                        },
                      },
                    }}
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Categories</FormLabel>
                  <Select
                    options={options}
                    labelKey="name"
                    valueKey="value"
                    placeholder="Product Tag"
                    value={getValues(tag)}
                    onChange={handleMultiChange}
                    overrides={{
                      Placeholder: {
                        style: ({ $theme }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $theme.colors.textNormal,
                          };
                        },
                      },
                      DropdownListItem: {
                        style: ({ $theme }) => {
                          return {
                            ...$theme.typography.fontBold14,
                            color: $theme.colors.textNormal,
                          };
                        },
                      },
                      Popover: {
                        props: {
                          overrides: {
                            Body: {
                              style: { zIndex: 5 },
                            },
                          },
                        },
                      },
                    }}
                    multi
                  />
                </FormFields>
              </DrawerBox>
            </Col>
          </Row>
        </Scrollbars>

        <ButtonGroup>
          <Button
            kind={KIND.minimal}
            onClick={closeDrawer}
            overrides={{
              BaseButton: {
                style: ({ $theme }) => ({
                  width: '50%',
                  borderTopLeftRadius: '3px',
                  borderTopRightRadius: '3px',
                  borderBottomRightRadius: '3px',
                  borderBottomLeftRadius: '3px',
                  marginRight: '15px',
                  color: $theme.colors.red400,
                }),
              },
            }}
          >
            Cancel
          </Button>

          <Button
            type="submit"
            overrides={{
              BaseButton: {
                style: ({ $theme }) => ({
                  width: '50%',
                  borderTopLeftRadius: '3px',
                  borderTopRightRadius: '3px',
                  borderBottomRightRadius: '3px',
                  borderBottomLeftRadius: '3px',
                }),
              },
            }}
          >
            Update Product
          </Button>
        </ButtonGroup>
      </Form>
    </>
  );
};

export default AddProduct;
