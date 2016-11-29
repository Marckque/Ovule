// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32681,y:33621,varname:node_3138,prsc:2|emission-1118-OUT,clip-6067-OUT;n:type:ShaderForge.SFN_TexCoord,id:3684,x:31053,y:32392,varname:node_3684,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:8215,x:32308,y:32532,varname:node_8215,prsc:2,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False|UVIN-4643-OUT,TEX-6359-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6359,x:31975,y:32604,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_6359,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:6980,x:31214,y:32396,varname:node_6980,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3684-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:3315,x:31381,y:32396,varname:node_3315,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6980-OUT;n:type:ShaderForge.SFN_ArcTan2,id:5567,x:31553,y:32410,varname:node_5567,prsc:2,attp:1|A-3315-G,B-3315-R;n:type:ShaderForge.SFN_Append,id:4643,x:31999,y:32423,varname:node_4643,prsc:2|A-105-OUT,B-105-OUT;n:type:ShaderForge.SFN_Slider,id:426,x:30251,y:32826,ptovrint:False,ptlb:DissolveAmount,ptin:_DissolveAmount,varname:node_426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3694375,max:1;n:type:ShaderForge.SFN_Tex2d,id:6574,x:30687,y:33008,ptovrint:False,ptlb:node_6574,ptin:_node_6574,varname:node_6574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:332,x:31024,y:32918,varname:node_332,prsc:2|A-7485-OUT,B-6574-R;n:type:ShaderForge.SFN_RemapRange,id:7485,x:30808,y:32792,varname:node_7485,prsc:2,frmn:0,frmx:1,tomn:-0.7,tomx:0.7|IN-9446-OUT;n:type:ShaderForge.SFN_OneMinus,id:9446,x:30620,y:32788,varname:node_9446,prsc:2|IN-426-OUT;n:type:ShaderForge.SFN_RemapRange,id:9829,x:31548,y:32723,varname:node_9829,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:4|IN-332-OUT;n:type:ShaderForge.SFN_Clamp01,id:9234,x:31756,y:32729,varname:node_9234,prsc:2|IN-9829-OUT;n:type:ShaderForge.SFN_OneMinus,id:105,x:31747,y:32483,varname:node_105,prsc:2|IN-9234-OUT;n:type:ShaderForge.SFN_TexCoord,id:6438,x:31116,y:33610,varname:node_6438,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:3319,x:31290,y:33613,varname:node_3319,prsc:2,frmn:0,frmx:1,tomn:-9,tomx:2|IN-6438-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:2025,x:31463,y:33615,varname:node_2025,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3319-OUT;n:type:ShaderForge.SFN_ArcTan2,id:6037,x:31664,y:33627,varname:node_6037,prsc:2,attp:2|A-2025-G,B-9736-OUT;n:type:ShaderForge.SFN_Append,id:1118,x:31829,y:33627,varname:node_1118,prsc:2|A-6037-OUT,B-6037-OUT;n:type:ShaderForge.SFN_Multiply,id:9736,x:31568,y:33825,varname:node_9736,prsc:2|A-2025-R,B-9069-OUT;n:type:ShaderForge.SFN_Slider,id:9069,x:31195,y:33892,ptovrint:False,ptlb:node_9069,ptin:_node_9069,varname:node_9069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6273261,max:1;n:type:ShaderForge.SFN_ComponentMask,id:2890,x:31979,y:33889,varname:node_2890,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1118-OUT;n:type:ShaderForge.SFN_Multiply,id:6067,x:32145,y:34068,varname:node_6067,prsc:2|A-2890-OUT,B-7090-OUT;n:type:ShaderForge.SFN_Slider,id:9140,x:31610,y:34100,ptovrint:False,ptlb:node_9140,ptin:_node_9140,varname:node_9140,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:7090,x:31960,y:34085,varname:node_7090,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-9140-OUT;proporder:6359-6574-426-9069-9140;pass:END;sub:END;*/

Shader "Shader Forge/002" {
    Properties {
        _Ramp ("Ramp", 2D) = "white" {}
        _node_6574 ("node_6574", 2D) = "white" {}
        _DissolveAmount ("DissolveAmount", Range(0, 1)) = 0.3694375
        _node_9069 ("node_9069", Range(0, 1)) = 0.6273261
        _node_9140 ("node_9140", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _node_9069;
            uniform float _node_9140;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 node_2025 = (i.uv0*11.0+-9.0).rg;
                float node_6037 = ((atan2(node_2025.g,(node_2025.r*_node_9069))/6.28318530718)+0.5);
                float2 node_1118 = float2(node_6037,node_6037);
                float node_6067 = (node_1118.r*(_node_9140*1.0+-0.5));
                clip(node_6067 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = float3(node_1118,0.0);
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
            uniform float _node_9069;
            uniform float _node_9140;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 node_2025 = (i.uv0*11.0+-9.0).rg;
                float node_6037 = ((atan2(node_2025.g,(node_2025.r*_node_9069))/6.28318530718)+0.5);
                float2 node_1118 = float2(node_6037,node_6037);
                float node_6067 = (node_1118.r*(_node_9140*1.0+-0.5));
                clip(node_6067 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
