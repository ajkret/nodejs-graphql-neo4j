# Introduction

This will enable a GraphQL server with Neo4J Community

# Building the application

This application requires Docker / Rancher to run.

## Build

Just type (For Rancher with containerd, replace **docker** by **nerdctl**:

    docker compose build
    
Then

    docker compose up -d

Follow instructions on how to import the schema to execute queries


## Exporting and Importing Data from Neo4J

Exporting and importing data for Neo4J is turned on. Here's how to export to cypher file using the cypher-shell (https://neo4j.com/download-center/#cypher-shell), which can be used at New4J AuraDB load tool:

    CALL apoc.export.cypher.all("all.cypher",{format: 'cypher-shell'})

The file will be generated inside the container. Connect to it and copy to /mnt/neo4j, which is mounted on compose:

    docker exec neo4j cp import/all.cypher /mnt/neo4j

Run cypher-shell, and connect to your AuraDB / Neo4J server:

    .\cypher-shell.bat -a neo4j+s://xxxxxxx.databases.neo4j.io:7687 -u <user> -p <password>

Type the command:

    :source neo4j/install/all.cypher

You can also export AuraDB content from the neo4j Console:

    CALL apoc.export.cypher.all(null,{stream:true, format: 'cypher-shell'})

The output will generate the column *'cypherStatements'*, where you can copy and paste into a file. Then proceed running cypher-shell.



# Run queries on the neo4j graphql

**graphql-ddm-js** container enables a graphql service. Try out:

    curl --request POST \
        --header 'content-type: application/json' \
        --url http://localhost:4000/ \
        --data '{"query":"query ExampleQuery {\n  deviceModels {\n    created_by_id\n    description\n    device_number\n    id\n    last_modified_by_id\n    name\n    version\n    created_date\n    last_modified_date\n  }\n}"}'

Another example, query DeviceModel "MI 632"

    curl --request POST \
        --header 'content-type: application/json' \
        --url http://localhost:4000/ \
        --data '{"query":"query DeviceModels($where: DeviceModelWhere) {\r\n  deviceModels(where: $where) {\r\n    id\r\n    name\r\n    releasesReleaseToDevice {\r\n      id\r\n      version_number\r\n    }\r\n  }\r\n}","variables":{"where":{"id":"ca78b04e-c33a-460f-8af6-30178cbda6c3"}}}'

