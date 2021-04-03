import React, { useState, useCallback } from 'react';
import { useForm } from 'react-hook-form';
import { v4 as uuidv4 } from 'uuid';
import { useMutation, gql, useQuery } from '@apollo/client';
import { useDrawerDispatch } from 'context/DrawerContext';
import { Scrollbars } from 'react-custom-scrollbars';
import Uploader from 'components/Uploader/Uploader';
import Input from 'components/Input/Input';
import Select from 'components/Select/Select';
import Button, { KIND } from 'components/Button/Button';
import DrawerBox from 'components/DrawerBox/DrawerBox';
import { Row, Col } from 'components/FlexBox/FlexBox';
// import fs from 'fs';

// import Stream from 'stream';
import axios from 'axios';
import {
  Form,
  DrawerTitleWrapper,
  DrawerTitle,
  FieldDetails,
  ButtonGroup,
} from '../DrawerItems/DrawerItems.style';
import { FormFields, FormLabel } from 'components/FormFields/FormFields';

const GET_CATEGORIES = gql`
  query getCategories($type: String, $searchBy: String) {
    categories(type: $type, searchBy: $searchBy) {
      id
      icon
      name
      slug
      type
    }
  }
`;
const CREATE_CATEGORY = gql`
   mutation 
   createCategory($category: AddCategoryInput!) {
    createCategory(category: $category) {
      id
      name
      type
      icon
      # creation_date
      slug
      # number_of_product 
    }
  }
`;

const GET_TYPE = gql`
query getTags{
  tags {
    id
    icon
    name
    slug
  }
}`;

type Props = any;

const AddCategory: React.FC<Props> = (props) => {
  const dispatch = useDrawerDispatch();
  const closeDrawer = useCallback(() => dispatch({ type: 'CLOSE_DRAWER' }), [
    dispatch,
  ]);
  const { register, handleSubmit, setValue } = useForm();
  const [category, setCategory] = useState([]);
  React.useEffect(() => {
    register({ name: 'parent' });
    register({ name: 'image' });
    register({ name: 'img_src' });
  }, [register]);

  const [createCategory] = useMutation(CREATE_CATEGORY, {
    update(cache, { data: { createCategory } }) {
      const { categories } = cache.readQuery({
        query: GET_CATEGORIES,
      });

      cache.writeQuery({
        query: GET_CATEGORIES,
        data: { categories: categories.concat([createCategory]) },
      });
    },
  });

  const { data, error } = useQuery(GET_TYPE);

  var options = [{ value: 'none', name: 'None', id: '0' }];
  
  if(data !== undefined){
    var tags = data['tags'];
    for(var i = 0; i < tags.length; i++){
      var temp = { id: `${tags[i].id}`, name: `${tags[i].name}`, value: `${tags[i].slug}`};
      options.push(temp);
    }
  }
  if (error) {
    return <div>Error! {error.message}</div>;
  }

  const onSubmit =async ({ name, slug, parent, image, img_src }) => {
    // [1] prepare request.
    let o = {
      query: `mutation
      categoryImageUpload($file:Upload!){
       categoryImageUpload(file: $file){
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
    fd.append('0', img_src);

    // [2]. send request.
    var image_path;
    await axios.post('http://localhost:4000/admin/graphql',fd).then(res => { 
      image_path =res.data.data.singleFileUpload.filename; 
      console.log(res.data.data.singleFileUpload.filename,res.status);
    });

    const newCategory = {
      id: uuidv4(),
      name: name,
      type: parent[0].id,
      slug: slug,
      icon: image_path,
      creation_date: new Date(),
    };

    await createCategory({
      variables: { category: newCategory },
    });
    
    closeDrawer();
  };
  const handleChange = ({ value }) => {
    setValue('parent', value);
    setCategory(value);
  };

  const handleUploader =async (files) => {  
    var blob:Blob = files[0];
    setValue('image', files[0].path);    
    setValue('img_src', blob); 
  };

  return (
    <>
      <DrawerTitleWrapper>
        <DrawerTitle>Add Category</DrawerTitle>
      </DrawerTitleWrapper>

      <Form onSubmit={handleSubmit(onSubmit)} style={{ height: '100%' }} enctype="multipart/form-data">
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
              <FieldDetails>Upload your Category image here</FieldDetails>
            </Col>
            <Col lg={8}>
              <DrawerBox
                overrides={{
                  Block: {
                    style: {
                      width: '100%',
                      height: 'auto',
                      padding: '30px',
                      borderRadius: '3px',
                      backgroundColor: '#ffffff',
                      display: 'flex',
                      alignItems: 'center',
                      justifyContent: 'center',
                    },
                  },
                }}
              >
                <Uploader onChange={handleUploader} />
              </DrawerBox>
            </Col>
          </Row>

          <Row>
            <Col lg={4}>
              <FieldDetails>
                Add your category description and necessary informations from
                here
              </FieldDetails>
            </Col>

            <Col lg={8}>
              <DrawerBox>
                <FormFields>
                  <FormLabel>Category Name</FormLabel>
                  <Input
                    inputRef={register({ required: true, maxLength: 20 })}
                    name="name"
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Slug</FormLabel>
                  <Input
                    inputRef={register({ pattern: /^[A-Za-z]+$/i })}
                    name="slug"
                  />
                </FormFields>

                <FormFields>
                  <FormLabel>Parent</FormLabel>
                  <Select
                    options={options}
                    labelKey="name"
                    valueKey="value"
                    placeholder="Ex: Choose parent category"
                    value={category}
                    searchable={false}
                    onChange={handleChange}
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
            Create Category
          </Button>
        </ButtonGroup>
      </Form>
    </>
  );
};

export default AddCategory;
