describe "L20n FTL grammar", ->
    grammar = null

    beforeEach ->
        waitsForPromise ->
            atom.packages.activatePackage("l20n.atom")

        runs ->
            grammar = atom.grammars.grammarForScopeName("source.ftl")

    it "parses the grammar", ->
        expect(grammar).toBeDefined()
        expect(grammar.scopeName).toBe "source.ftl"

    it "tokenizes one-line comments", ->
        {tokens} = grammar.tokenizeLine('# comment')
        expect(tokens[0]).toEqual value: '#', scopes: ['source.ftl', 'comment.line.number-sign.ftl', 'punctuation.definition.comment.ftl']
        expect(tokens[1]).toEqual value: ' comment', scopes: ['source.ftl', 'comment.line.number-sign.ftl']

    it "tokenizes sections", ->
        {tokens} = grammar.tokenizeLine('[[ a section ]]')
        expect(tokens[0]).toEqual value: '[[ ', scopes: ['source.ftl', 'meta.section.ftl']
        #expect(tokens[3]).toEqual value: 'a section', scopes: ['source.ftl', 'meta.section.ftl', 'entity.name.keyword.ftl']
