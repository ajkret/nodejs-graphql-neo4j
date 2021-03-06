const { gql } = require('apollo-server');
const fs = require('fs');
const path = require('path');

//function that imports .graphql files
const importGraphQL = (file) => {
    return fs.readFileSync(path.join(__dirname, file), "utf-8");
}

const gqlWrapper = (...files) => {
    return gql`${files}`;
}

module.exports = gqlWrapper(
    importGraphQL('./schemas/schema.graphql')
);