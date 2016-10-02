// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:Diffuse,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33874,y:32701,varname:node_9361,prsc:2|emission-803-OUT,custl-9655-OUT;n:type:ShaderForge.SFN_LightVector,id:4334,x:32445,y:32534,varname:node_4334,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8025,x:32445,y:32698,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7115,x:32678,y:32623,varname:node_7115,prsc:2,dt:4|A-4334-OUT,B-8025-OUT;n:type:ShaderForge.SFN_Tex2d,id:7969,x:33031,y:32623,ptovrint:False,ptlb:Toon Ramp (RGB),ptin:_ToonRampRGB,varname:node_7969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False|UVIN-5995-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2335,x:33256,y:33212,varname:node_2335,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4286,x:33256,y:33044,varname:node_4286,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9053,x:32957,y:32258,ptovrint:False,ptlb:Base (RGB),ptin:_BaseRGB,varname:node_9053,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:5995,x:32860,y:32623,varname:node_5995,prsc:2|A-7115-OUT,B-7115-OUT;n:type:ShaderForge.SFN_Color,id:2238,x:32957,y:32071,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:node_2238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1098,x:33210,y:32167,varname:node_1098,prsc:2|A-2238-RGB,B-9053-RGB;n:type:ShaderForge.SFN_AmbientLight,id:5703,x:33387,y:32552,varname:node_5703,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5346,x:33465,y:33025,varname:node_5346,prsc:2|A-2126-OUT,B-4286-RGB,C-2335-OUT;n:type:ShaderForge.SFN_Multiply,id:3890,x:33659,y:32343,varname:node_3890,prsc:2|A-1098-OUT,B-5703-RGB;n:type:ShaderForge.SFN_Set,id:2729,x:33396,y:32167,varname:Albedo,prsc:2|IN-1098-OUT;n:type:ShaderForge.SFN_Get,id:9838,x:33444,y:32956,varname:node_9838,prsc:2|IN-2729-OUT;n:type:ShaderForge.SFN_Lerp,id:9655,x:33678,y:32940,varname:node_9655,prsc:2|A-8043-OUT,B-9838-OUT,T-5346-OUT;n:type:ShaderForge.SFN_Set,id:7589,x:33838,y:32343,varname:AmbientColor,prsc:2|IN-3890-OUT;n:type:ShaderForge.SFN_Get,id:8043,x:33444,y:32892,varname:node_8043,prsc:2|IN-7589-OUT;n:type:ShaderForge.SFN_Get,id:803,x:33678,y:32800,varname:node_803,prsc:2|IN-7589-OUT;n:type:ShaderForge.SFN_Set,id:1902,x:33199,y:32623,varname:Ramp,prsc:2|IN-7969-RGB;n:type:ShaderForge.SFN_Get,id:2126,x:33235,y:32926,varname:node_2126,prsc:2|IN-1902-OUT;proporder:2238-9053-7969;pass:END;sub:END;*/

Shader "Shader Forge/ToonShader" {
    Properties {
        _MainColor ("Main Color", Color) = (0.5,0.5,0.5,1)
        _BaseRGB ("Base (RGB)", 2D) = "white" {}
        _ToonRampRGB ("Toon Ramp (RGB)", 2D) = "gray" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _ToonRampRGB; uniform float4 _ToonRampRGB_ST;
            uniform sampler2D _BaseRGB; uniform float4 _BaseRGB_ST;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _BaseRGB_var = tex2D(_BaseRGB,TRANSFORM_TEX(i.uv0, _BaseRGB));
                float3 node_1098 = (_MainColor.rgb*_BaseRGB_var.rgb);
                float3 node_3890 = (node_1098*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 AmbientColor = node_3890;
                float3 emissive = AmbientColor;
                float3 Albedo = node_1098;
                float node_7115 = 0.5*dot(lightDirection,i.normalDir)+0.5;
                float2 node_5995 = float2(node_7115,node_7115);
                float4 _ToonRampRGB_var = tex2D(_ToonRampRGB,TRANSFORM_TEX(node_5995, _ToonRampRGB));
                float3 Ramp = _ToonRampRGB_var.rgb;
                float3 node_5346 = (Ramp*_LightColor0.rgb*attenuation);
                float3 finalColor = emissive + lerp(AmbientColor,Albedo,node_5346);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _ToonRampRGB; uniform float4 _ToonRampRGB_ST;
            uniform sampler2D _BaseRGB; uniform float4 _BaseRGB_ST;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _BaseRGB_var = tex2D(_BaseRGB,TRANSFORM_TEX(i.uv0, _BaseRGB));
                float3 node_1098 = (_MainColor.rgb*_BaseRGB_var.rgb);
                float3 node_3890 = (node_1098*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 AmbientColor = node_3890;
                float3 Albedo = node_1098;
                float node_7115 = 0.5*dot(lightDirection,i.normalDir)+0.5;
                float2 node_5995 = float2(node_7115,node_7115);
                float4 _ToonRampRGB_var = tex2D(_ToonRampRGB,TRANSFORM_TEX(node_5995, _ToonRampRGB));
                float3 Ramp = _ToonRampRGB_var.rgb;
                float3 node_5346 = (Ramp*_LightColor0.rgb*attenuation);
                float3 finalColor = lerp(AmbientColor,Albedo,node_5346);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
