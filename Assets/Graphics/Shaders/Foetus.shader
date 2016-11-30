// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32620,y:32606,varname:node_3138,prsc:2|emission-1552-OUT,voffset-5170-OUT;n:type:ShaderForge.SFN_Color,id:8089,x:31731,y:32175,ptovrint:False,ptlb:Color001,ptin:_Color001,varname:_Color001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7058823,c2:0.03633217,c3:0.32724,c4:1;n:type:ShaderForge.SFN_Lerp,id:1552,x:31991,y:32364,varname:node_1552,prsc:2|A-8318-OUT,B-212-RGB,T-1517-OUT;n:type:ShaderForge.SFN_Color,id:212,x:31734,y:32342,ptovrint:False,ptlb:Color002,ptin:_Color002,varname:_Color002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8970588,c2:0.1649005,c3:0.1649005,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6028,x:31484,y:32756,varname:node_6028,prsc:2,uv:0;n:type:ShaderForge.SFN_NormalVector,id:987,x:31669,y:33033,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5170,x:32095,y:33008,varname:node_5170,prsc:2|A-8093-G,B-987-OUT,C-7399-OUT;n:type:ShaderForge.SFN_Slider,id:7399,x:31554,y:33236,ptovrint:False,ptlb:VertexOffsetHeight,ptin:_VertexOffsetHeight,varname:_VertexOffsetHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.245023,max:3;n:type:ShaderForge.SFN_Tex2d,id:8093,x:31898,y:32814,ptovrint:False,ptlb:VertexOffsetTexture,ptin:_VertexOffsetTexture,varname:_VertexOffsetTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:2,isnm:False|UVIN-8414-UVOUT;n:type:ShaderForge.SFN_Rotator,id:8414,x:31697,y:32844,varname:node_8414,prsc:2|UVIN-6028-UVOUT,SPD-2769-OUT;n:type:ShaderForge.SFN_Slider,id:2769,x:31102,y:32932,ptovrint:False,ptlb:VertexOffsetMovementSpeed,ptin:_VertexOffsetMovementSpeed,varname:_VertexOffsetMovementSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01374258,max:0.1;n:type:ShaderForge.SFN_Sin,id:1336,x:31521,y:32393,varname:node_1336,prsc:2|IN-7146-T;n:type:ShaderForge.SFN_Time,id:7146,x:31334,y:32381,varname:node_7146,prsc:2;n:type:ShaderForge.SFN_Time,id:2251,x:31336,y:32553,varname:node_2251,prsc:2;n:type:ShaderForge.SFN_Cos,id:3005,x:31494,y:32561,varname:node_3005,prsc:2|IN-2251-T;n:type:ShaderForge.SFN_Multiply,id:1517,x:31675,y:32499,varname:node_1517,prsc:2|A-1336-OUT,B-3005-OUT;n:type:ShaderForge.SFN_Tex2d,id:3197,x:31710,y:31976,ptovrint:False,ptlb:TextureBlending,ptin:_TextureBlending,varname:_TextureBlending,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8318,x:31933,y:32019,varname:node_8318,prsc:2|A-3197-RGB,B-8089-RGB;proporder:8093-3197-8089-212-7399-2769;pass:END;sub:END;*/

Shader "Shader Forge/Foetus" {
    Properties {
        _VertexOffsetTexture ("VertexOffsetTexture", 2D) = "black" {}
        _TextureBlending ("TextureBlending", 2D) = "black" {}
        _Color001 ("Color001", Color) = (0.7058823,0.03633217,0.32724,1)
        _Color002 ("Color002", Color) = (0.8970588,0.1649005,0.1649005,1)
        _VertexOffsetHeight ("VertexOffsetHeight", Range(0, 3)) = 1.245023
        _VertexOffsetMovementSpeed ("VertexOffsetMovementSpeed", Range(0, 0.1)) = 0.01374258
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color001;
            uniform float4 _Color002;
            uniform float _VertexOffsetHeight;
            uniform sampler2D _VertexOffsetTexture; uniform float4 _VertexOffsetTexture_ST;
            uniform float _VertexOffsetMovementSpeed;
            uniform sampler2D _TextureBlending; uniform float4 _TextureBlending_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5973 = _Time + _TimeEditor;
                float node_8414_ang = node_5973.g;
                float node_8414_spd = _VertexOffsetMovementSpeed;
                float node_8414_cos = cos(node_8414_spd*node_8414_ang);
                float node_8414_sin = sin(node_8414_spd*node_8414_ang);
                float2 node_8414_piv = float2(0.5,0.5);
                float2 node_8414 = (mul(o.uv0-node_8414_piv,float2x2( node_8414_cos, -node_8414_sin, node_8414_sin, node_8414_cos))+node_8414_piv);
                float4 _VertexOffsetTexture_var = tex2Dlod(_VertexOffsetTexture,float4(TRANSFORM_TEX(node_8414, _VertexOffsetTexture),0.0,0));
                v.vertex.xyz += (_VertexOffsetTexture_var.g*v.normal*_VertexOffsetHeight);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _TextureBlending_var = tex2D(_TextureBlending,TRANSFORM_TEX(i.uv0, _TextureBlending));
                float4 node_7146 = _Time + _TimeEditor;
                float4 node_2251 = _Time + _TimeEditor;
                float3 emissive = lerp((_TextureBlending_var.rgb*_Color001.rgb),_Color002.rgb,(sin(node_7146.g)*cos(node_2251.g)));
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _VertexOffsetHeight;
            uniform sampler2D _VertexOffsetTexture; uniform float4 _VertexOffsetTexture_ST;
            uniform float _VertexOffsetMovementSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1964 = _Time + _TimeEditor;
                float node_8414_ang = node_1964.g;
                float node_8414_spd = _VertexOffsetMovementSpeed;
                float node_8414_cos = cos(node_8414_spd*node_8414_ang);
                float node_8414_sin = sin(node_8414_spd*node_8414_ang);
                float2 node_8414_piv = float2(0.5,0.5);
                float2 node_8414 = (mul(o.uv0-node_8414_piv,float2x2( node_8414_cos, -node_8414_sin, node_8414_sin, node_8414_cos))+node_8414_piv);
                float4 _VertexOffsetTexture_var = tex2Dlod(_VertexOffsetTexture,float4(TRANSFORM_TEX(node_8414, _VertexOffsetTexture),0.0,0));
                v.vertex.xyz += (_VertexOffsetTexture_var.g*v.normal*_VertexOffsetHeight);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
