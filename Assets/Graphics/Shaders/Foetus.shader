// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32620,y:32606,varname:node_3138,prsc:2|emission-1552-OUT,custl-9855-OUT,voffset-5170-OUT;n:type:ShaderForge.SFN_Color,id:8089,x:31864,y:31849,ptovrint:False,ptlb:Color001,ptin:_Color001,varname:_Color001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7058823,c2:0.03633217,c3:0.32724,c4:1;n:type:ShaderForge.SFN_Lerp,id:1552,x:32123,y:32045,varname:node_1552,prsc:2|A-8318-OUT,B-212-RGB,T-1517-OUT;n:type:ShaderForge.SFN_Color,id:212,x:31866,y:32023,ptovrint:False,ptlb:Color002,ptin:_Color002,varname:_Color002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8970588,c2:0.1649005,c3:0.1649005,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6028,x:31382,y:33171,varname:node_6028,prsc:2,uv:0;n:type:ShaderForge.SFN_NormalVector,id:987,x:31567,y:33448,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5170,x:31993,y:33423,varname:node_5170,prsc:2|A-8093-G,B-987-OUT,C-7399-OUT;n:type:ShaderForge.SFN_Slider,id:7399,x:31452,y:33651,ptovrint:False,ptlb:VertexOffsetHeight,ptin:_VertexOffsetHeight,varname:_VertexOffsetHeight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.078285,max:3;n:type:ShaderForge.SFN_Tex2d,id:8093,x:31796,y:33229,ptovrint:False,ptlb:VertexOffsetTexture,ptin:_VertexOffsetTexture,varname:_VertexOffsetTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:2,isnm:False|UVIN-8414-UVOUT;n:type:ShaderForge.SFN_Rotator,id:8414,x:31595,y:33259,varname:node_8414,prsc:2|UVIN-6028-UVOUT,SPD-2769-OUT;n:type:ShaderForge.SFN_Slider,id:2769,x:31146,y:33373,ptovrint:False,ptlb:VertexOffsetSpeed,ptin:_VertexOffsetSpeed,varname:_VertexOffsetSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.005,cur:0.03,max:0.03;n:type:ShaderForge.SFN_Sin,id:1336,x:31640,y:32142,varname:node_1336,prsc:2|IN-7146-T;n:type:ShaderForge.SFN_Time,id:7146,x:31453,y:32130,varname:node_7146,prsc:2;n:type:ShaderForge.SFN_Time,id:2251,x:31443,y:32321,varname:node_2251,prsc:2;n:type:ShaderForge.SFN_Cos,id:3005,x:31635,y:32286,varname:node_3005,prsc:2|IN-2251-T;n:type:ShaderForge.SFN_Multiply,id:1517,x:31794,y:32248,varname:node_1517,prsc:2|A-1336-OUT,B-3005-OUT;n:type:ShaderForge.SFN_Tex2d,id:3197,x:31861,y:31652,ptovrint:False,ptlb:TextureBlending,ptin:_TextureBlending,varname:_TextureBlending,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8318,x:32084,y:31695,varname:node_8318,prsc:2|A-3197-RGB,B-8089-RGB;n:type:ShaderForge.SFN_Tex2d,id:1309,x:31877,y:32576,ptovrint:False,ptlb:LightTexture,ptin:_LightTexture,varname:_LightTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5de0eafe0c281495b8272d9a1d7c3ea8,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:7714,x:31762,y:32804,ptovrint:False,ptlb:LightTextureMultiplier,ptin:_LightTextureMultiplier,varname:_LightTextureMultiplier,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:153,x:32084,y:32685,varname:node_153,prsc:2|A-1309-RGB,B-7714-OUT;n:type:ShaderForge.SFN_OneMinus,id:9855,x:32282,y:32767,varname:node_9855,prsc:2|IN-153-OUT;proporder:8093-3197-8089-212-7399-2769-1309-7714;pass:END;sub:END;*/

Shader "Shader Forge/Foetus" {
    Properties {
        _VertexOffsetTexture ("VertexOffsetTexture", 2D) = "black" {}
        _TextureBlending ("TextureBlending", 2D) = "black" {}
        _Color001 ("Color001", Color) = (0.7058823,0.03633217,0.32724,1)
        _Color002 ("Color002", Color) = (0.8970588,0.1649005,0.1649005,1)
        _VertexOffsetHeight ("VertexOffsetHeight", Range(0, 3)) = 1.078285
        _VertexOffsetSpeed ("VertexOffsetSpeed", Range(0.005, 0.03)) = 0.03
        _LightTexture ("LightTexture", 2D) = "black" {}
        _LightTextureMultiplier ("LightTextureMultiplier", Range(0.5, 1)) = 1
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
            uniform float _VertexOffsetSpeed;
            uniform sampler2D _TextureBlending; uniform float4 _TextureBlending_ST;
            uniform sampler2D _LightTexture; uniform float4 _LightTexture_ST;
            uniform float _LightTextureMultiplier;
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
                float4 node_3513 = _Time + _TimeEditor;
                float node_8414_ang = node_3513.g;
                float node_8414_spd = _VertexOffsetSpeed;
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
                float4 _LightTexture_var = tex2D(_LightTexture,TRANSFORM_TEX(i.uv0, _LightTexture));
                float3 finalColor = emissive + (1.0 - (_LightTexture_var.rgb*_LightTextureMultiplier));
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
            uniform float _VertexOffsetSpeed;
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
                float4 node_8908 = _Time + _TimeEditor;
                float node_8414_ang = node_8908.g;
                float node_8414_spd = _VertexOffsetSpeed;
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
