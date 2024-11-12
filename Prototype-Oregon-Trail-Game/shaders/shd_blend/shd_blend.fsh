//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sampled_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Sample the underlying texture (the scene surface you passed in)
    vec4 underlyingColor = texture2D(u_UnderlyingTex, v_vTexcoord);
	
	// Perform the blend operation: add or subtract half the underlying color
    if (u_AddHalf > 0.5)
    {
        mainColor.rgb += 0.5 * underlyingColor.rgb; // Add half
    }
    else
    {
        mainColor.rgb -= 0.5 * underlyingColor.rgb; // Subtract half
    }
	
	gl_FragColor = sampled_color;
	
}
