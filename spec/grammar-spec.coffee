describe "Language L20n package", ->

    beforeEach ->
        waitsForPromise ->
            atom.packages.activatePackage("language-l20n")

    describe "FTL grammar", ->
        grammar = null

        beforeEach ->
            runs ->
                grammar = atom.grammars.grammaForScopeName('source.ftl')

        it "parses the grammar", ->
            expect(grammar).toBeDefined()
            expect(grammar.scopeName).toBe "source.ftl"

        it "tokenizes variable type followed by comment", ->
            tokens = grammar.tokenizeLines """
            # hello comment
            """
            expect(tokens[1][1]).toEqual value: '#', scopes: ['source.ftl', 'meta.entry.ftl', 'comment.line.hash.ftl']
