config = {
    neo4jServer : process.env.NEO4J_SERVER || 'localhost',
    neo4jUser: process.env.NEO4J_USER || 'neo4j',
    neo4jPassword: process.env.NEO4J_PASSWORD || 'maya-2022'
}

module.exports = config
