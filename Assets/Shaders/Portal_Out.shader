// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:2,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6838235,fgcg:0.5402622,fgcb:0.2312933,fgca:1,fgde:0.015,fgrn:10.83,fgrf:121.64,stcl:False,stva:2,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:6,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33383,y:32724,varname:node_2865,prsc:2|emission-3498-OUT,clip-7736-R;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32617,y:32802,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2784bebebccf422449fb6b8aae740b03,ntxv:0,isnm:False|UVIN-5950-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9911,x:30683,y:32757,varname:node_9911,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4175,x:31484,y:32952,varname:node_4175,prsc:2,spu:0,spv:0|UVIN-9650-OUT;n:type:ShaderForge.SFN_Tex2d,id:203,x:31691,y:32932,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4175-UVOUT;n:type:ShaderForge.SFN_Slider,id:5296,x:31598,y:33206,ptovrint:False,ptlb:Anim,ptin:_Anim,varname:_Anim,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:0.5;n:type:ShaderForge.SFN_Lerp,id:1357,x:31979,y:32863,varname:node_1357,prsc:2|A-9911-UVOUT,B-203-R,T-5296-OUT;n:type:ShaderForge.SFN_RemapRange,id:7561,x:31063,y:32967,varname:node_7561,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9911-UVOUT;n:type:ShaderForge.SFN_Abs,id:9650,x:31259,y:32985,varname:node_9650,prsc:2|IN-7561-OUT;n:type:ShaderForge.SFN_Rotator,id:5950,x:32223,y:32700,varname:node_5950,prsc:2|UVIN-1357-OUT,SPD-6308-OUT;n:type:ShaderForge.SFN_Vector1,id:6308,x:31656,y:32740,varname:node_6308,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:231,x:32854,y:32975,varname:node_231,prsc:2|A-7736-R,B-6710-OUT,C-1328-OUT;n:type:ShaderForge.SFN_Vector3,id:6710,x:32652,y:33051,varname:node_6710,prsc:2,v1:0,v2:0.3793104,v3:1;n:type:ShaderForge.SFN_OneMinus,id:9059,x:32839,y:32733,varname:node_9059,prsc:2|IN-7736-R;n:type:ShaderForge.SFN_Multiply,id:8208,x:33115,y:32830,varname:node_8208,prsc:2|A-9059-OUT,B-231-OUT;n:type:ShaderForge.SFN_Vector1,id:1328,x:32652,y:33185,varname:node_1328,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3498,x:33115,y:32674,varname:node_3498,prsc:2|A-231-OUT,B-9569-OUT,T-9059-OUT;n:type:ShaderForge.SFN_Vector3,id:3677,x:32778,y:32452,varname:node_3677,prsc:2,v1:0.8620691,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:9569,x:32971,y:32514,varname:node_9569,prsc:2|A-3677-OUT,B-9428-OUT;n:type:ShaderForge.SFN_Vector1,id:9428,x:32786,y:32612,varname:node_9428,prsc:2,v1:40;n:type:ShaderForge.SFN_RemapRange,id:5500,x:32321,y:33009,varname:node_5500,prsc:2,frmn:0,frmx:1,tomn:-0.1,tomx:1|IN-5950-UVOUT;proporder:7736-203-5296;pass:END;sub:END;*/

Shader "Team/Effect/Portal_Edge" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _Anim ("Anim", Range(0, 0.5)) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+2"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Anim;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 node_1999 = _Time + _TimeEditor;
                float node_5950_ang = node_1999.g;
                float node_5950_spd = 5.0;
                float node_5950_cos = cos(node_5950_spd*node_5950_ang);
                float node_5950_sin = sin(node_5950_spd*node_5950_ang);
                float2 node_5950_piv = float2(0.5,0.5);
                float2 node_4175 = (abs((i.uv0*2.0+-1.0))+node_1999.g*float2(0,0));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_4175, _Noise));
                float2 node_5950 = (mul(lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Anim)-node_5950_piv,float2x2( node_5950_cos, -node_5950_sin, node_5950_sin, node_5950_cos))+node_5950_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5950, _MainTex));
                clip(_MainTex_var.r - 0.5);
////// Lighting:
////// Emissive:
                float3 node_231 = (_MainTex_var.r*float3(0,0.3793104,1)*1.0);
                float node_9059 = (1.0 - _MainTex_var.r);
                float3 emissive = lerp(node_231,(float3(0.8620691,0,1)*40.0),node_9059);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Anim;
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
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_1587 = _Time + _TimeEditor;
                float node_5950_ang = node_1587.g;
                float node_5950_spd = 5.0;
                float node_5950_cos = cos(node_5950_spd*node_5950_ang);
                float node_5950_sin = sin(node_5950_spd*node_5950_ang);
                float2 node_5950_piv = float2(0.5,0.5);
                float2 node_4175 = (abs((i.uv0*2.0+-1.0))+node_1587.g*float2(0,0));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_4175, _Noise));
                float2 node_5950 = (mul(lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Anim)-node_5950_piv,float2x2( node_5950_cos, -node_5950_sin, node_5950_sin, node_5950_cos))+node_5950_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5950, _MainTex));
                clip(_MainTex_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Anim;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_6675 = _Time + _TimeEditor;
                float node_5950_ang = node_6675.g;
                float node_5950_spd = 5.0;
                float node_5950_cos = cos(node_5950_spd*node_5950_ang);
                float node_5950_sin = sin(node_5950_spd*node_5950_ang);
                float2 node_5950_piv = float2(0.5,0.5);
                float2 node_4175 = (abs((i.uv0*2.0+-1.0))+node_6675.g*float2(0,0));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_4175, _Noise));
                float2 node_5950 = (mul(lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Anim)-node_5950_piv,float2x2( node_5950_cos, -node_5950_sin, node_5950_sin, node_5950_cos))+node_5950_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5950, _MainTex));
                float3 node_231 = (_MainTex_var.r*float3(0,0.3793104,1)*1.0);
                float node_9059 = (1.0 - _MainTex_var.r);
                o.Emission = lerp(node_231,(float3(0.8620691,0,1)*40.0),node_9059);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
