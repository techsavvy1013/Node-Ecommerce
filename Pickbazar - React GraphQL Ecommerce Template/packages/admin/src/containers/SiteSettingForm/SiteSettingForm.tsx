import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import Uploader from 'components/Uploader/Uploader';
import Input from 'components/Input/Input';
import { Textarea } from 'components/Textarea/Textarea';
import Select from 'components/Select/Select';
import Button from 'components/Button/Button';
import DrawerBox from 'components/DrawerBox/DrawerBox';
import { Grid, Row, Col } from 'components/FlexBox/FlexBox';
import { gql,useMutation } from '@apollo/client';
import { Form, FieldDetails } from '../DrawerItems/DrawerItems.style';
import { FormFields, FormLabel } from 'components/FormFields/FormFields';
import { v4 as uuidv4 } from 'uuid';
import axios from 'axios';
import {BASE_URL} from '../../base_url';

const options = [
  { value: 'active', label: 'Active' },
  { value: 'maintenance', label: 'Maintenance' },
  { value: 'turn-off', label: 'Down' },
];

const UPDATE_SETTING = gql`
  mutation 
  updateSettings($setting: SettingInput!) {
    updateSettings(setting: $setting) {
      id
      file_name
      site_name
      site_description
      site_state
    }
  }
`;

type Props = {};
const SiteSettingsForm: React.FC<Props> = () => {
  const { register, handleSubmit, setValue } = useForm();

  const [category, setCategory] = useState([]);
  const [description, setDescription] = React.useState('');

  const [mutate] = useMutation(UPDATE_SETTING);

  const onSubmit =async (data) => {
    console.log(data);
    console.log(description,'description');

    // [1] prepare request.
    let o = {
      query: `mutation
      logoImageUpload($file:Upload!){
       logoImageUpload(file: $file){
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
    fd.append('0', data.logofile);

    // [2]. send request.
    var image_path;
    await axios.post(BASE_URL,fd).then(res => { 
      console.log(res);
      image_path =res.data.data.logoImageUpload.filename; 
      console.log(res.data.data.logoImageUpload.filename,res.status);
    });

    var newSetting = {
      id:               uuidv4(),
      file_name:        image_path,
      site_name:        data.site_name,
      site_description: description,
      site_state:       data.state
    };
    mutate({ variables: { setting: newSetting } });
  };

  const handleMultiChange = ({ value }) => {
    console.log(value[0].value);
    setValue('state', value[0].value);
    setCategory(value);
  };
  const handleUploader = (files) => {
    setValue('logofile', files[0]);
  };
  React.useEffect(() => {
    register({ name: 'state' });
    register({ name: 'logofile' });
  }, [register]);
  return (
    <Grid fluid={true}>
      <Form onSubmit={handleSubmit(onSubmit)} style={{ paddingBottom: 0 }}>
        <Row>
          <Col md={4}>
            <FieldDetails>Upload your site logo here</FieldDetails>
          </Col>

          <Col md={8}>
            <DrawerBox>
              <Uploader onChange={handleUploader} />
            </DrawerBox>
          </Col>
        </Row>

        <Row>
          <Col md={4}>
            <FieldDetails>
              Add your site description and necessary information from here
            </FieldDetails>
          </Col>

          <Col md={8}>
            <DrawerBox>
              <FormFields>
                <FormLabel>Site Name</FormLabel>
                <Input
                  name="site_name"
                  inputRef={register({ required: true, maxLength: 20 })}
                />
              </FormFields>

              <FormFields>
                <FormLabel>Site Description</FormLabel>
                <Textarea
                  value={description}
                  onChange={(e) => setDescription(e.target.value)}
                />
              </FormFields>

              <FormFields>
                <FormLabel>Status</FormLabel>
                <Select
                  options={options}
                  labelKey="label"
                  valueKey="value"
                  placeholder="Choose current status"
                  value={category}
                  searchable={false}
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
                <Button
                  type="submit"
                  overrides={{
                    BaseButton: {
                      style: ({ $theme }) => ({
                        width: '50%',
                        marginLeft: 'auto',
                        borderTopLeftRadius: '3px',
                        borderTopRightRadius: '3px',
                        borderBottomLeftRadius: '3px',
                        borderBottomRightRadius: '3px',
                      }),
                    },
                  }}
                >
                  Submit
                </Button>
              </FormFields>
            </DrawerBox>
          </Col>
        </Row>
      </Form>
    </Grid>
  );
};

export default SiteSettingsForm;
