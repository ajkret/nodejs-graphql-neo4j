const { Neo4jGraphQL } = require("@neo4j/graphql");
const { toGraphQLTypeDefs } = require("@neo4j/introspector");
const { ApolloServer } = require("apollo-server");
const neo4j = require("neo4j-driver");
const schemaFromFile = require('./load-graphql-schemas');
const config = require('./config');

const driver = neo4j.driver(
    `bolt://${config.neo4jServer}:7687`, neo4j.auth.basic(config.neo4jUser, config.neo4jPassword)
);

const sessionFactory = () => driver.session({ defaultAccessMode: neo4j.session.READ });

// We create a async function here until "top level await" has landed
// so we can use async/await
async function main() {

    var typeDefs = schemaFromFile;
    if(process.env.LIVE_SCHEMA) {
        const readonly = false; // 'true' if We don't want to expose mutations 
        const typeDefs = await toGraphQLTypeDefs(sessionFactory, readonly);
    }

    const neoSchema = new Neo4jGraphQL({ typeDefs, driver });

    const schema = await neoSchema.getSchema();

    const server = new ApolloServer({
        schema: schema,
        context: ({ req }) => ({ req }),
    });

    server.listen().then(({ url }) => {
        console.log(`🚀 Server ready at ${url}`);
    });

}
main();