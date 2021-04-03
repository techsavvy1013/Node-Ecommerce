import React from 'react';
import { LazyLoadImage } from 'react-lazy-load-image-component';
import placeholder from './product-placeholder.png';
const Placeholder = () => <img src={placeholder} alt="product img loader" />;
export default function Image({
  url,
  alt = 'placeholder',
  unloader,
  loader,
  className,
  style,
}: {
  url?: string | [string];
  alt?: string;
  unloader?: string;
  loader?: string;
  className?: string;
  style?: any;
}) {
  // var content;
  // if(url == 'null')
  //   content = '';
  // else
  //   content = require(`../../../../admin/src/assets/image/products/${url}`);
  return (
      <LazyLoadImage
        draggable={false}
        style={style}
        src={url}
        alt={alt}
        loader={<Placeholder />}
        unloader={<Placeholder />}
        className={className}
      />
  );
}
