// const mdxRenderer = `
//   import React from 'react'
//   import { mdx } from '@mdx-js/react'

//   export async function getStaticProps () {
//     return {
//       props: {
//         foo: 'bar'
//       }
//     }
//   }
// `;

const withMDX = require('@next/mdx')({
  // options: {
  //   renderer: mdxRenderer,
  // },
  extension: /\.mdx?$/,
  // Or use this to support MD files too
  // extension: /\.(md|mdx)$/,
});

module.exports = withMDX({
  pageExtensions: ['js', 'jsx', 'mdx'],
});
