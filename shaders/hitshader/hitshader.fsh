//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float lerp_val;

uniform int gotHit;

vec4 lerp(vec4 a, vec4 b, float t){
	return a * (1.0 - t) + b * t;
}

void main()
{
	vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = lerp(col,vec4(1.0,1.0,1.0,col.a), lerp_val);
}
