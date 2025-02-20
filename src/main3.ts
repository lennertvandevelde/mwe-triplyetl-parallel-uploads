import { Etl, fromJson, Source, toTriplyDb } from "@triplyetl/etl/generic";
import { addSkolemIri, str, triple } from "@triplyetl/etl/ratt";
import { sdo } from "@triplyetl/etl/vocab";


export default async function (): Promise<Etl> {
    const etl = new Etl({
        defaultGraph: 'https://triplydb.com/graph/default3'
    })
    etl.use(
        fromJson(
            Source.file('output.json'),
            { toRecords: (json: any) => {
                return json["results"]} }
        ),
        addSkolemIri(
            {
                prefix: str('https://test.com/'),
                key: 'iri'
            }
        ),
        triple('iri', sdo.creator, str('main3.ts')),
        triple('iri', sdo.givenName, 'givenName'),
        triple('iri', sdo.familyName, 'familyName'),
        toTriplyDb({account: 'meemoo', dataset: 'test', opts: { mergeGraphs: true }}),
    )
    
    return etl
}