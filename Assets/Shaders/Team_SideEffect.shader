// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:34037,y:32622,varname:node_4795,prsc:2|emission-2393-OUT,alpha-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32153,y:32620,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2784bebebccf422449fb6b8aae740b03,ntxv:0,isnm:False|UVIN-8781-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:33581,y:32731,varname:node_2393,prsc:2|A-8317-OUT,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32153,y:32863,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:33144,y:32988,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:33149,y:32809,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:33581,y:32877,varname:node_798,prsc:2|A-6074-R,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Append,id:5614,x:30789,y:32674,varname:node_5614,prsc:2|A-6131-OUT,B-443-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6131,x:30570,y:32618,ptovrint:False,ptlb:Xspeed,ptin:_Xspeed,varname:_Xspeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-5;n:type:ShaderForge.SFN_ValueProperty,id:443,x:30570,y:32762,ptovrint:False,ptlb:Yspeed,ptin:_Yspeed,varname:_Yspeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-5;n:type:ShaderForge.SFN_Time,id:9811,x:30789,y:32829,varname:node_9811,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6010,x:31018,y:32745,varname:node_6010,prsc:2|A-5614-OUT,B-9811-T;n:type:ShaderForge.SFN_Add,id:2708,x:31480,y:32663,varname:node_2708,prsc:2|A-3836-OUT,B-6010-OUT;n:type:ShaderForge.SFN_TexCoord,id:5460,x:31290,y:32161,varname:node_5460,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:4452,x:31133,y:32451,varname:node_4452,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3493-OUT;n:type:ShaderForge.SFN_Abs,id:3836,x:31374,y:32434,varname:node_3836,prsc:2|IN-4452-OUT;n:type:ShaderForge.SFN_Tex2d,id:6035,x:31747,y:32675,ptovrint:False,ptlb:Distort tex,ptin:_Distorttex,varname:_Distorttex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2708-OUT;n:type:ShaderForge.SFN_Lerp,id:8781,x:31948,y:32623,varname:node_8781,prsc:2|A-5460-UVOUT,B-6035-R,T-8837-OUT;n:type:ShaderForge.SFN_Slider,id:8837,x:31550,y:33015,ptovrint:False,ptlb:Distort Intensity,ptin:_DistortIntensity,varname:_DistortIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2496004,max:1;n:type:ShaderForge.SFN_OneMinus,id:8001,x:32365,y:32719,varname:node_8001,prsc:2|IN-6074-R;n:type:ShaderForge.SFN_Multiply,id:3999,x:32580,y:32620,varname:node_3999,prsc:2|A-6074-R,B-8001-OUT;n:type:ShaderForge.SFN_Vector1,id:1029,x:32958,y:32799,varname:node_1029,prsc:2,v1:100;n:type:ShaderForge.SFN_Power,id:4334,x:32821,y:32655,varname:node_4334,prsc:2|VAL-3999-OUT,EXP-7240-OUT;n:type:ShaderForge.SFN_Vector1,id:7240,x:32580,y:32753,varname:node_7240,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:2268,x:33149,y:32640,varname:node_2268,prsc:2|A-5492-OUT,B-1029-OUT;n:type:ShaderForge.SFN_Vector1,id:2937,x:32821,y:32536,varname:node_2937,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Multiply,id:8361,x:33149,y:32421,varname:node_8361,prsc:2|A-6074-R,B-2937-OUT;n:type:ShaderForge.SFN_Add,id:9657,x:33356,y:32491,varname:node_9657,prsc:2|A-8361-OUT,B-2268-OUT;n:type:ShaderForge.SFN_Multiply,id:8317,x:33591,y:32557,varname:node_8317,prsc:2|A-9657-OUT,B-9936-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9936,x:33338,y:32721,ptovrint:False,ptlb:Bloom,ptin:_Bloom,varname:_Bloom,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Clamp01,id:5492,x:32974,y:32640,varname:node_5492,prsc:2|IN-4334-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1397,x:30472,y:32229,varname:node_1397,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3493,x:30776,y:32249,varname:node_3493,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1397-XYZ;proporder:6074-797-6131-443-6035-8837-9936;pass:END;sub:END;*/

Shader "Team/SideEffect" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (1,0,0,1)
        _Xspeed ("Xspeed", Float ) = -5
        _Yspeed ("Yspeed", Float ) = -5
        _Distorttex ("Distort tex", 2D) = "white" {}
        _DistortIntensity ("Distort Intensity", Range(0, 1)) = 0.2496004
        _Bloom ("Bloom", Float ) = 10
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 300
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _Xspeed;
            uniform float _Yspeed;
            uniform sampler2D _Distorttex; uniform float4 _Distorttex_ST;
            uniform float _DistortIntensity;
            uniform float _Bloom;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9811 = _Time + _TimeEditor;
                float2 node_2708 = (abs((i.posWorld.rgb.rb*2.0+-1.0))+(float2(_Xspeed,_Yspeed)*node_9811.g));
                float4 _Distorttex_var = tex2D(_Distorttex,TRANSFORM_TEX(node_2708, _Distorttex));
                float2 node_8781 = lerp(i.uv0,float2(_Distorttex_var.r,_Distorttex_var.r),_DistortIntensity);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8781, _MainTex));
                float3 emissive = ((((_MainTex_var.r*0.01)+(saturate(pow((_MainTex_var.r*(1.0 - _MainTex_var.r)),3.0))*100.0))*_Bloom)*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.r*i.vertexColor.a*_TintColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
