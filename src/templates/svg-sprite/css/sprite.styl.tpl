{{#hasMixin}}{{mixinName}}()
	background url("{{{sprite}}}") no-repeat

{{#hasCommon}}.{{commonName}}
	{{mixinName}}()

{{/hasCommon}}{{/hasMixin}}{{^hasMixin}}{{#hasCommon}}.{{/hasCommon}}{{^hasCommon}}${{/hasCommon}}{{commonName}} 
	background url("{{{sprite}}}") no-repeat

{{/hasMixin}}{{#shapes}}{{#selector.shape}}{{#escape}}{{expression}}{{/escape}}{{^last}},{{/last}}
{{/selector.shape}}	{{^hasCommon}}{{#hasMixin}}{{mixinName}}(){{/hasMixin}}{{^hasMixin}}@extend ${{commonName}}{{/hasMixin}}
	{{/hasCommon}}background-position {{position.relative.xy}}{{#dimensions.inline}}
	width {{width.outer}}px
	height {{height.outer}}px{{/dimensions.inline}}
{{#dimensions.extra}}

{{#selector.dimensions}}{{#escape}}{{expression}}{{/escape}}{{^last}},{{/last}}
{{/selector.dimensions}}	width {{width.outer}}px
	height {{height.outer}}px
{{/dimensions.extra}}

{{/shapes}}
