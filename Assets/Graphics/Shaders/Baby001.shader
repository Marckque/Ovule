// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:13,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7241-RGB,clip-1026-OUT,olwid-7154-OUT,olcol-4544-RGB;n:type:ShaderForge.SFN_Color,id:7241,x:32432,y:32444,ptovrint:False,ptlb:EmissiveColor,ptin:_EmissiveColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9191176,c2:0.7163711,c3:0.7163711,c4:1;n:type:ShaderForge.SFN_Slider,id:7154,x:32092,y:33423,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_7154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.1;n:type:ShaderForge.SFN_Color,id:4544,x:32441,y:33482,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_4544,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8529412,c2:0.5205882,c3:0.5205882,c4:1;n:type:ShaderForge.SFN_Cross,id:9154,x:31203,y:32576,varname:node_9154,prsc:2|A-3568-OUT,B-3503-OUT;n:type:ShaderForge.SFN_NormalVector,id:3568,x:30972,y:32528,prsc:2,pt:True;n:type:ShaderForge.SFN_Tangent,id:3503,x:30986,y:32687,varname:node_3503,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2193,x:31410,y:32620,varname:node_2193,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9154-OUT;n:type:ShaderForge.SFN_Rotator,id:1989,x:31579,y:32846,varname:node_1989,prsc:2|UVIN-667-UVOUT,SPD-4385-OUT;n:type:ShaderForge.SFN_TexCoord,id:667,x:31325,y:32807,varname:node_667,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2295,x:31875,y:32789,varname:node_2295,prsc:2|A-2193-OUT,B-1989-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:1026,x:32372,y:32840,varname:node_1026,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3659-OUT;n:type:ShaderForge.SFN_Slider,id:4886,x:31715,y:33045,ptovrint:False,ptlb:TorePower,ptin:_TorePower,varname:node_4886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.732272,max:5;n:type:ShaderForge.SFN_Multiply,id:3659,x:32109,y:33002,varname:node_3659,prsc:2|A-2295-OUT,B-4886-OUT;n:type:ShaderForge.SFN_Time,id:8284,x:31113,y:32915,varname:node_8284,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4385,x:31386,y:32994,varname:node_4385,prsc:2|A-8284-T,B-8940-OUT;n:type:ShaderForge.SFN_Slider,id:8940,x:30988,y:33097,ptovrint:False,ptlb:ToreSpeed,ptin:_ToreSpeed,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;proporder:7241-4544-7154-4886-8940;pass:END;sub:END;*/

Shader "Shader Forge/Baby001" {
    Properties {
        _EmissiveColor ("EmissiveColor", Color) = (0.9191176,0.7163711,0.7163711,1)
        _OutlineColor ("OutlineColor", Color) = (0.8529412,0.5205882,0.5205882,1)
        _OutlineWidth ("OutlineWidth", Range(0, 0.1)) = 0.05
        _TorePower ("TorePower", Range(0, 5)) = 1.732272
        _ToreSpeed ("ToreSpeed", Range(0, 0.1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            ColorMask RGA
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _OutlineWidth;
            uniform float4 _OutlineColor;
            uniform float _TorePower;
            uniform float _ToreSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + normalize(v.vertex)*_OutlineWidth,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_4649 = _Time + _TimeEditor;
                float4 node_8284 = _Time + _TimeEditor;
                float node_1989_ang = node_4649.g;
                float node_1989_spd = (node_8284.g*_ToreSpeed);
                float node_1989_cos = cos(node_1989_spd*node_1989_ang);
                float node_1989_sin = sin(node_1989_spd*node_1989_ang);
                float2 node_1989_piv = float2(0.5,0.5);
                float2 node_1989 = (mul(i.uv0-node_1989_piv,float2x2( node_1989_cos, -node_1989_sin, node_1989_sin, node_1989_cos))+node_1989_piv);
                clip(((cross(normalDirection,i.tangentDir).r*node_1989)*_TorePower).r - 0.5);
                return fixed4(_OutlineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            ColorMask RGA
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _EmissiveColor;
            uniform float _TorePower;
            uniform float _ToreSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_3909 = _Time + _TimeEditor;
                float4 node_8284 = _Time + _TimeEditor;
                float node_1989_ang = node_3909.g;
                float node_1989_spd = (node_8284.g*_ToreSpeed);
                float node_1989_cos = cos(node_1989_spd*node_1989_ang);
                float node_1989_sin = sin(node_1989_spd*node_1989_ang);
                float2 node_1989_piv = float2(0.5,0.5);
                float2 node_1989 = (mul(i.uv0-node_1989_piv,float2x2( node_1989_cos, -node_1989_sin, node_1989_sin, node_1989_cos))+node_1989_piv);
                clip(((cross(normalDirection,i.tangentDir).r*node_1989)*_TorePower).r - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _EmissiveColor.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            ColorMask RGA
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _TorePower;
            uniform float _ToreSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_1150 = _Time + _TimeEditor;
                float4 node_8284 = _Time + _TimeEditor;
                float node_1989_ang = node_1150.g;
                float node_1989_spd = (node_8284.g*_ToreSpeed);
                float node_1989_cos = cos(node_1989_spd*node_1989_ang);
                float node_1989_sin = sin(node_1989_spd*node_1989_ang);
                float2 node_1989_piv = float2(0.5,0.5);
                float2 node_1989 = (mul(i.uv0-node_1989_piv,float2x2( node_1989_cos, -node_1989_sin, node_1989_sin, node_1989_cos))+node_1989_piv);
                clip(((cross(normalDirection,i.tangentDir).r*node_1989)*_TorePower).r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
