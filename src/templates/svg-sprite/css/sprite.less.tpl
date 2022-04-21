{{#hasMixin}}.{{mixinName}}() {
	background: url("{{{sprite}}}") no-repeat;
}

{{#hasCommon}}.{{commonName}} {
	.{{mixinName}}();
}

{{/hasCommon}}{{/hasMixin}}{{^hasMixin}}.{{commonName}}{{^hasCommon}}(){{/hasCommon}} {
	background: url("{{{sprite}}}") no-repeat;
}

{{/hasMixin}}{{#shapes}}{{#selector.shape}}{{expression}}{{^last}},
{{/last}}{{/selector.shape}} {
	{{^hasCommon}}{{#hasMixin}}.{{mixinName}}();{{/hasMixin}}{{^hasMixin}}.{{commonName}}();{{/hasMixin}}
	{{/hasCommon}}background-position: {{position.relative.xy}};{{#dimensions.inline}}
	width: {{width.outer}}px;
	height: {{height.outer}}px;{{/dimensions.inline}}
}{{#dimensions.extra}}

{{#selector.dimensions}}{{expression}}{{^last}},
{{/last}}{{/selector.dimensions}} {
	width: {{width.outer}}px;
	height: {{height.outer}}px;
}{{/dimensions.extra}}

{{/shapes}}
