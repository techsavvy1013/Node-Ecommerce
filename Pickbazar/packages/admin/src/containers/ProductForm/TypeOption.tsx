import React from 'react';
import { gql, useQuery } from '@apollo/client';

export default function GetOptions(){

    const GET_TYPE = gql`
    query getTags{
    tags {
        id
        icon
        name
        slug
    }
    }`;

    const { data, error } = useQuery(GET_TYPE);

    var options = [];

    if(data !== undefined){
        var tags = data['tags'];
        for(var i = 0; i < tags.length; i++){
        var temp = { id: `${tags[i].id}`, name: `${tags[i].name}`, value: `${tags[i].slug}`};
        options.push(temp);
        }
        return options;
    }
    if (error) {
    return <div>Error! {error.message}</div>;
    }
};