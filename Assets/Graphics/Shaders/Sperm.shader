// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-876-RGB,olwid-106-OUT,voffset-7190-OUT,disp-7190-OUT,tess-4529-OUT;n:type:ShaderForge.SFN_Color,id:876,x:32184,y:32564,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_876,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:7207,x:30005,y:32990,varname:node_7207,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:915,x:30243,y:33001,varname:node_915,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7207-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6182,x:30922,y:33053,varname:node_6182,prsc:2|A-915-R,B-4407-OUT,C-3204-OUT,D-2943-OUT;n:type:ShaderForge.SFN_Tau,id:4407,x:30266,y:33165,varname:node_4407,prsc:2;n:type:ShaderForge.SFN_Slider,id:3204,x:30238,y:33326,ptovrint:False,ptlb:TimeMulitplier,ptin:_TimeMulitplier,varname:node_3204,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3333336,max:1;n:type:ShaderForge.SFN_Multiply,id:4195,x:31070,y:33302,varname:node_4195,prsc:2|A-915-G,B-4407-OUT,C-3204-OUT,D-2943-OUT;n:type:ShaderForge.SFN_Sin,id:8,x:31102,y:33048,varname:node_8,prsc:2|IN-6182-OUT;n:type:ShaderForge.SFN_Cos,id:416,x:31246,y:33299,varname:node_416,prsc:2|IN-4195-OUT;n:type:ShaderForge.SFN_Multiply,id:9448,x:31857,y:33211,varname:node_9448,prsc:2|A-8894-OUT,B-1429-OUT,C-2456-OUT;n:type:ShaderForge.SFN_RemapRange,id:8894,x:31317,y:33098,varname:node_8894,prsc:2,frmn:-1,frmx:1,tomn:-0.5,tomx:0.5|IN-8-OUT;n:type:ShaderForge.SFN_RemapRange,id:1429,x:31434,y:33296,varname:node_1429,prsc:2,frmn:-1,frmx:1,tomn:-0.5,tomx:0.5|IN-416-OUT;n:type:ShaderForge.SFN_NormalVector,id:2456,x:31595,y:33325,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:7492,x:31789,y:33510,ptovrint:False,ptlb:VertexOffsetScalar,ptin:_VertexOffsetScalar,varname:node_7492,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3410003,max:1;n:type:ShaderForge.SFN_Multiply,id:3319,x:32050,y:33262,varname:node_3319,prsc:2|A-9448-OUT,B-7492-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7190,x:32325,y:33079,varname:node_7190,prsc:2,min:-1,max:1|IN-3319-OUT;n:type:ShaderForge.SFN_Slider,id:106,x:31777,y:32680,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_106,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01423136,max:0.1;n:type:ShaderForge.SFN_Sin,id:6371,x:31920,y:32793,varname:node_6371,prsc:2|IN-3990-OUT;n:type:ShaderForge.SFN_Multiply,id:4529,x:32156,y:32939,varname:node_4529,prsc:2|A-6371-OUT,B-2943-OUT;n:type:ShaderForge.SFN_Slider,id:3990,x:31471,y:32779,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_3990,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01,max:0.1;n:type:ShaderForge.SFN_Slider,id:2943,x:30470,y:33177,ptovrint:False,ptlb:TesselationAmount,ptin:_TesselationAmount,varname:node_2943,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:112,max:1000;proporder:876-3204-7492-106-3990-2943;pass:END;sub:END;*/

Shader "Shader Forge/Sperm" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _TimeMulitplier ("TimeMulitplier", Range(0, 1)) = 0.3333336
        _VertexOffsetScalar ("VertexOffsetScalar", Range(0, 1)) = 0.3410003
        _OutlineWidth ("OutlineWidth", Range(0, 0.1)) = 0.01423136
        _Tesselation ("Tesselation", Range(0.01, 0.1)) = 0.01
        _TesselationAmount ("TesselationAmount", Range(1, 1000)) = 112
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float _TimeMulitplier;
            uniform float _VertexOffsetScalar;
            uniform float _OutlineWidth;
            uniform float _Tesselation;
            uniform float _TesselationAmount;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_915 = o.uv0.rg;
                float node_4407 = 6.28318530718;
                float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                v.vertex.xyz += node_7190;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_OutlineWidth,1) );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float2 node_915 = v.texcoord0.rg;
                    float node_4407 = 6.28318530718;
                    float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                    v.vertex.xyz += node_7190;
                }
                float Tessellation(TessVertex v){
                    return (sin(_Tesselation)*_TesselationAmount);
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform float _TimeMulitplier;
            uniform float _VertexOffsetScalar;
            uniform float _Tesselation;
            uniform float _TesselationAmount;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_915 = o.uv0.rg;
                float node_4407 = 6.28318530718;
                float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                v.vertex.xyz += node_7190;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float2 node_915 = v.texcoord0.rg;
                    float node_4407 = 6.28318530718;
                    float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                    v.vertex.xyz += node_7190;
                }
                float Tessellation(TessVertex v){
                    return (sin(_Tesselation)*_TesselationAmount);
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float _TimeMulitplier;
            uniform float _VertexOffsetScalar;
            uniform float _Tesselation;
            uniform float _TesselationAmount;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_915 = o.uv0.rg;
                float node_4407 = 6.28318530718;
                float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                v.vertex.xyz += node_7190;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float2 node_915 = v.texcoord0.rg;
                    float node_4407 = 6.28318530718;
                    float3 node_7190 = clamp((((sin((node_915.r*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*(cos((node_915.g*node_4407*_TimeMulitplier*_TesselationAmount))*0.5+0.0)*v.normal)*_VertexOffsetScalar),-1,1);
                    v.vertex.xyz += node_7190;
                }
                float Tessellation(TessVertex v){
                    return (sin(_Tesselation)*_TesselationAmount);
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
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
