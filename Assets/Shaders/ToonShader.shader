Shader "Custom/ToonShader"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _RampTex ("Ramp Texture", 2D) = "white"{}
       // _Texture("Main Tex", 2D)="black"{}
    }
        SubShader
    {
        CGPROGRAM
        #pragma surface surf ToonShader

        float4 _Color;
                sampler2D _RampTex;
           //          sampler2D _MainTex;
float4 LightingToonShader(SurfaceOutput s, fixed3 lightDir,fixed atten) {


        half diff = dot(s.Normal, lightDir);
        float h = diff * 0.5 + 0.5;
        float2 rh = h;
        float3 ramp = tex2D(_RampTex, rh).rgb;

  
        float4 c;
        c.rgb = (s.Albedo * _LightColor0.rgb * (ramp));
        c.a = s.Alpha;
        
        return c;

}
        struct Input
        {
            float2 uv_MainTex;
        };


            void surf(Input IN, inout SurfaceOutput o)
        { 

        o.Albedo = _Color.rgb;  

        }
        ENDCG
    }
    FallBack "Diffuse"
}
