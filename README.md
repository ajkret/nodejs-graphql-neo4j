# Introduction

## Exporting and Importing Data from Neo4J

Exporting and importing data for Neo4J is turned on. Here's how to export to cypher file using the cypher-shell (https://neo4j.com/download-center/#cypher-shell), which can be used at New4J AuraDB load tool:

    CALL apoc.export.cypher.all("sample.cypher",{format: 'cypher-shell'})

The file will be generated inside the container. Connect to it and copy to /mnt/neo4j, which is mounted on compose:

    docker exec neo4j-data cp import/sample.cypher /mnt/neo4j

Run cypher-shell, and connect to your AuraDB / Neo4J server:

    .\cypher-shell.bat -a neo4j+s://xxxxxxx.databases.neo4j.io:7687 -u <user> -p <password>

or

    .\cypher-shell.bat -a bolt://localhost:7687 -u <user> -p <password>

Type the command:

    :source neo4j/install/sample.cypher

You can also export AuraDB content from the neo4j Console:

    CALL apoc.export.cypher.all(null,{stream:true, format: 'cypher-shell'})

The output will generate the column *'cypherStatements'*, where you can copy and paste into a file. Then proceed running cypher-shell.



# Run queries on the neo4j graphql

**graphql-ddm-js** container enables a graphql service. Try out:

    curl --request POST \
        --header 'content-type: application/json' \
        --url http://localhost:4000/ \
        --data '{"query":"query Query {\n  movies {\n    released\n    title\n    peopleActedIn {\n      name\n      born\n    }\n  }\n}"}'

Another example, query Movies where "Keanu" acted

    curl --request POST \
        --header 'content-type: application/json' \
        --url http://localhost:4000/ \
        --data '{"query":"query Query($where: PersonWhere) {\n  movies {\n    released\n    title\n    peopleActedIn(where: $where) {\n      name\n      born\n    }\n  }\n}","variables":{"where":{"name_CONTAINS":"Keanu"}}}'
