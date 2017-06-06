// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:2,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,stva:2,stmr:255,stmw:255,stcp:5,stps:0,stfa:0,stfz:6,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33547,y:32642,varname:node_2865,prsc:2|emission-3796-OUT,alpha-814-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32540,y:32768,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2135-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9911,x:31341,y:32677,varname:node_9911,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4175,x:31605,y:32792,varname:node_4175,prsc:2,spu:0,spv:1.5|UVIN-9911-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:203,x:31865,y:32864,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4175-UVOUT;n:type:ShaderForge.SFN_Slider,id:5296,x:31739,y:33125,ptovrint:False,ptlb:Anim,ptin:_Anim,varname:_Anim,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_Lerp,id:1357,x:32120,y:32782,varname:node_1357,prsc:2|A-9911-UVOUT,B-203-R,T-5296-OUT;n:type:ShaderForge.SFN_Vector1,id:814,x:33207,y:33072,varname:node_814,prsc:2,v1:1;n:type:ShaderForge.SFN_Rotator,id:2135,x:32316,y:32674,varname:node_2135,prsc:2|UVIN-1357-OUT,SPD-961-OUT;n:type:ShaderForge.SFN_Vector1,id:961,x:32102,y:32654,varname:node_961,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:9410,x:32795,y:32767,varname:node_9410,prsc:2|IN-7736-R;n:type:ShaderForge.SFN_Lerp,id:2059,x:33154,y:32714,varname:node_2059,prsc:2|A-3303-OUT,B-2967-OUT,T-9410-OUT;n:type:ShaderForge.SFN_Multiply,id:3303,x:32807,y:32938,varname:node_3303,prsc:2|A-7736-R,B-8917-OUT;n:type:ShaderForge.SFN_Vector3,id:8917,x:32540,y:32996,varname:node_8917,prsc:2,v1:0,v2:0.3764706,v3:1;n:type:ShaderForge.SFN_Vector3,id:2967,x:32795,y:32621,varname:node_2967,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_OneMinus,id:7380,x:32938,y:33042,varname:node_7380,prsc:2|IN-7736-R;n:type:ShaderForge.SFN_Multiply,id:2886,x:33154,y:32859,varname:node_2886,prsc:2|A-7380-OUT,B-7736-R,C-8917-OUT,D-3902-OUT;n:type:ShaderForge.SFN_Vector1,id:3902,x:32765,y:33151,varname:node_3902,prsc:2,v1:40;n:type:ShaderForge.SFN_Add,id:3796,x:33346,y:32780,varname:node_3796,prsc:2|A-2059-OUT,B-2886-OUT;proporder:7736-203-5296;pass:END;sub:END;*/

Shader "Shader Forge/Stencil2" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _Anim ("Anim", Range(0, 0.5)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+2"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            Stencil {
                Ref 2
                Comp NotEqual
                ZFail IncrWrap
            }
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
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
////// Lighting:
////// Emissive:
                float4 node_408 = _Time + _TimeEditor;
                float node_2135_ang = node_408.g;
                float node_2135_spd = 2.0;
                float node_2135_cos = cos(node_2135_spd*node_2135_ang);
                float node_2135_sin = sin(node_2135_spd*node_2135_ang);
                float2 node_2135_piv = float2(0.5,0.5);
                float2 node_4175 = (i.uv0+node_408.g*float2(0,1.5));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_4175, _Noise));
                float2 node_2135 = (mul(lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Anim)-node_2135_piv,float2x2( node_2135_cos, -node_2135_sin, node_2135_sin, node_2135_cos))+node_2135_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_2135, _MainTex));
                float3 node_8917 = float3(0,0.3764706,1);
                float3 node_2967 = float3(0,0,0);
                float3 emissive = (lerp((_MainTex_var.r*node_8917),node_2967,(1.0 - _MainTex_var.r))+((1.0 - _MainTex_var.r)*_MainTex_var.r*node_8917*40.0));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1.0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
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
                
                float4 node_8507 = _Time + _TimeEditor;
                float node_2135_ang = node_8507.g;
                float node_2135_spd = 2.0;
                float node_2135_cos = cos(node_2135_spd*node_2135_ang);
                float node_2135_sin = sin(node_2135_spd*node_2135_ang);
                float2 node_2135_piv = float2(0.5,0.5);
                float2 node_4175 = (i.uv0+node_8507.g*float2(0,1.5));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_4175, _Noise));
                float2 node_2135 = (mul(lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Anim)-node_2135_piv,float2x2( node_2135_cos, -node_2135_sin, node_2135_sin, node_2135_cos))+node_2135_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_2135, _MainTex));
                float3 node_8917 = float3(0,0.3764706,1);
                float3 node_2967 = float3(0,0,0);
                o.Emission = (lerp((_MainTex_var.r*node_8917),node_2967,(1.0 - _MainTex_var.r))+((1.0 - _MainTex_var.r)*_MainTex_var.r*node_8917*40.0));
                
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
