// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:35057,y:32990,varname:node_2865,prsc:2|diff-6343-OUT,spec-2000-OUT,gloss-79-OUT,normal-4770-OUT,difocc-1667-OUT,spcocc-1667-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:33240,y:32593,varname:node_6343,prsc:2|A-5553-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:32904,y:32658,ptovrint:False,ptlb:Tint Color,ptin:_TintColor,varname:_TintColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31738,y:32010,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32806,y:33540,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:534,x:31711,y:32924,ptovrint:False,ptlb:Metallic(Metallic R Roughness G),ptin:_MetallicMetallicRRoughnessG,varname:_MetallicMetallicRRoughnessG,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4282,x:31210,y:32047,ptovrint:True,ptlb:Secondary Texture,ptin:_SubTex,varname:_SubTex,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9158,x:32093,y:32179,varname:node_9158,prsc:2|A-7736-RGB,B-4282-RGB,T-5555-G;n:type:ShaderForge.SFN_VertexColor,id:5555,x:30052,y:32661,varname:node_5555,prsc:2;n:type:ShaderForge.SFN_Lerp,id:3047,x:32097,y:33027,varname:node_3047,prsc:2|A-9325-OUT,B-9343-OUT,T-5555-G;n:type:ShaderForge.SFN_Tex2d,id:9542,x:31711,y:33151,ptovrint:False,ptlb:Secondary metallic,ptin:_Secondarymetallic,varname:_Secondarymetallic,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:9325,x:31896,y:32924,varname:node_9325,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-534-RGB;n:type:ShaderForge.SFN_ComponentMask,id:9343,x:31896,y:33151,varname:node_9343,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9542-RGB;n:type:ShaderForge.SFN_ComponentMask,id:5865,x:32314,y:32901,varname:node_5865,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3047-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2228,x:32314,y:33109,varname:node_2228,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3047-OUT;n:type:ShaderForge.SFN_Tex2d,id:8401,x:32806,y:33781,ptovrint:True,ptlb:Secondary normal,ptin:_BumpMapsub,varname:_BumpMapsub,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:758,x:33128,y:33660,varname:node_758,prsc:2|A-5964-RGB,B-8401-RGB,T-5555-G;n:type:ShaderForge.SFN_Slider,id:7941,x:30625,y:33681,ptovrint:False,ptlb:Puddle,ptin:_Puddle,varname:_Puddle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:79,x:33067,y:33267,varname:node_79,prsc:2|A-2228-OUT,B-3079-OUT,T-8447-OUT;n:type:ShaderForge.SFN_Multiply,id:8447,x:31770,y:33366,varname:node_8447,prsc:2|A-5555-B,B-9324-OUT;n:type:ShaderForge.SFN_RemapRange,id:3079,x:31749,y:33603,cmnt:puddle gloss,varname:node_3079,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.98|IN-7941-OUT;n:type:ShaderForge.SFN_Lerp,id:2000,x:32820,y:33123,varname:node_2000,prsc:2|A-5865-OUT,B-45-OUT,T-8447-OUT;n:type:ShaderForge.SFN_RemapRange,id:45,x:31752,y:33885,cmnt:puddle metallic,varname:node_45,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.3|IN-7941-OUT;n:type:ShaderForge.SFN_Lerp,id:4770,x:33537,y:33653,varname:node_4770,prsc:2|A-758-OUT,B-7030-OUT,T-8447-OUT;n:type:ShaderForge.SFN_Add,id:7584,x:32540,y:32974,varname:node_7584,prsc:2|A-5865-OUT,B-45-OUT;n:type:ShaderForge.SFN_Panner,id:6480,x:31327,y:34165,varname:node_6480,prsc:2,spu:0.05,spv:0.05|UVIN-5598-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5598,x:30825,y:34317,varname:node_5598,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7300,x:32818,y:34016,ptovrint:True,ptlb:Water normal,ptin:_waternormal,varname:_waternormal,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-3733-OUT;n:type:ShaderForge.SFN_OneMinus,id:1588,x:31736,y:32494,varname:node_1588,prsc:2|IN-5555-B;n:type:ShaderForge.SFN_Multiply,id:8275,x:32505,y:32473,varname:node_8275,prsc:2|A-9158-OUT,B-8162-OUT;n:type:ShaderForge.SFN_Add,id:8162,x:32093,y:32413,varname:node_8162,prsc:2|A-1588-OUT,B-8833-OUT;n:type:ShaderForge.SFN_Vector1,id:8833,x:31736,y:32629,varname:node_8833,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Lerp,id:5553,x:32904,y:32486,varname:node_5553,prsc:2|A-9158-OUT,B-8275-OUT,T-8447-OUT;n:type:ShaderForge.SFN_RemapRange,id:9097,x:31247,y:33502,varname:node_9097,prsc:2,frmn:0,frmx:1,tomn:-2,tomx:1|IN-7941-OUT;n:type:ShaderForge.SFN_Clamp01,id:9324,x:31471,y:33502,varname:node_9324,prsc:2|IN-9097-OUT;n:type:ShaderForge.SFN_Tex2d,id:6239,x:28103,y:33127,ptovrint:False,ptlb:Ripple map,ptin:_Ripplemap,varname:_Ripplemap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:712bb094e721eb14da7b180e03d991bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:6556,x:28101,y:32608,varname:node_6556,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4995,x:28490,y:32774,varname:node_4995,prsc:2|A-6556-T,B-9256-OUT;n:type:ShaderForge.SFN_Add,id:6045,x:28714,y:32868,varname:node_6045,prsc:2|A-6239-A,B-4995-OUT;n:type:ShaderForge.SFN_Frac,id:5492,x:28907,y:32868,varname:node_5492,prsc:2|IN-6045-OUT;n:type:ShaderForge.SFN_Subtract,id:4257,x:29109,y:32897,varname:node_4257,prsc:2|A-5492-OUT,B-9029-OUT;n:type:ShaderForge.SFN_Vector1,id:9029,x:28907,y:33027,varname:node_9029,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:5542,x:29328,y:32969,varname:node_5542,prsc:2|A-4257-OUT,B-6239-R;n:type:ShaderForge.SFN_Add,id:2888,x:28654,y:33510,varname:node_2888,prsc:2|A-2752-OUT,B-1528-OUT;n:type:ShaderForge.SFN_Vector1,id:2752,x:28435,y:33470,varname:node_2752,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Set,id:1009,x:31209,y:33824,varname:RippleControl,prsc:2|IN-7941-OUT;n:type:ShaderForge.SFN_Get,id:1528,x:28414,y:33545,varname:node_1528,prsc:2|IN-1009-OUT;n:type:ShaderForge.SFN_Multiply,id:3984,x:28867,y:33569,varname:node_3984,prsc:2|A-2888-OUT,B-405-OUT;n:type:ShaderForge.SFN_Vector1,id:405,x:28654,y:33668,varname:node_405,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Subtract,id:6605,x:29327,y:33450,varname:node_6605,prsc:2|A-3984-OUT,B-5492-OUT;n:type:ShaderForge.SFN_Clamp01,id:9356,x:29503,y:33450,varname:node_9356,prsc:2|IN-6605-OUT;n:type:ShaderForge.SFN_Multiply,id:1284,x:29504,y:33036,varname:node_1284,prsc:2|A-5542-OUT,B-3861-OUT;n:type:ShaderForge.SFN_Vector1,id:3861,x:29328,y:33111,varname:node_3861,prsc:2,v1:9;n:type:ShaderForge.SFN_Clamp,id:3122,x:29803,y:33061,varname:node_3122,prsc:2|IN-1284-OUT,MIN-3501-OUT,MAX-9341-OUT;n:type:ShaderForge.SFN_Vector1,id:3501,x:29504,y:33174,varname:node_3501,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9341,x:29504,y:33237,varname:node_9341,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:48,x:30013,y:33122,varname:node_48,prsc:2|A-3122-OUT,B-4487-OUT;n:type:ShaderForge.SFN_Pi,id:4487,x:29836,y:33202,varname:node_4487,prsc:2;n:type:ShaderForge.SFN_Sin,id:586,x:30210,y:33122,varname:node_586,prsc:2|IN-48-OUT;n:type:ShaderForge.SFN_Multiply,id:3506,x:29803,y:33341,varname:node_3506,prsc:2|A-9356-OUT,B-6239-R;n:type:ShaderForge.SFN_Multiply,id:7216,x:30466,y:33250,varname:node_7216,prsc:2|A-586-OUT,B-3506-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5703,x:29803,y:33483,varname:node_5703,prsc:2,cc1:1,cc2:2,cc3:-1,cc4:-1|IN-6239-RGB;n:type:ShaderForge.SFN_Multiply,id:8664,x:30073,y:33560,varname:node_8664,prsc:2|A-5703-OUT,B-4844-OUT;n:type:ShaderForge.SFN_Vector1,id:4844,x:29803,y:33663,varname:node_4844,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:2122,x:30312,y:33591,varname:node_2122,prsc:2|A-8664-OUT,B-8367-OUT;n:type:ShaderForge.SFN_Vector1,id:8367,x:30073,y:33692,varname:node_8367,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:391,x:30764,y:33386,varname:node_391,prsc:2|A-7216-OUT,B-2122-OUT;n:type:ShaderForge.SFN_Multiply,id:7980,x:30969,y:33351,varname:node_7980,prsc:2|A-391-OUT,B-1634-OUT;n:type:ShaderForge.SFN_Vector1,id:1634,x:30767,y:33525,varname:node_1634,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:3642,x:31189,y:33364,varname:node_3642,prsc:2|A-7980-OUT,B-9776-OUT;n:type:ShaderForge.SFN_Vector1,id:9776,x:30969,y:33498,varname:node_9776,prsc:2,v1:1;n:type:ShaderForge.SFN_NormalBlend,id:7030,x:33128,y:33808,varname:node_7030,prsc:2|BSE-7300-RGB,DTL-3642-OUT;n:type:ShaderForge.SFN_Tex2d,id:7582,x:30678,y:32927,ptovrint:False,ptlb:Secondary Blendmask,ptin:_SecondaryBlendmask,varname:_SecondaryBlendmask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:35d28563517a3434f9e98b3a2e1afb56,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:1025,x:30643,y:32604,varname:node_1025,prsc:2|IN-5555-G;n:type:ShaderForge.SFN_Divide,id:7692,x:30912,y:32927,varname:node_7692,prsc:2|A-9470-OUT,B-5326-OUT;n:type:ShaderForge.SFN_OneMinus,id:7618,x:31103,y:32927,varname:node_7618,prsc:2|IN-7692-OUT;n:type:ShaderForge.SFN_Clamp01,id:9068,x:31502,y:33003,varname:node_9068,prsc:2|IN-8415-OUT;n:type:ShaderForge.SFN_Multiply,id:8415,x:31308,y:33003,varname:node_8415,prsc:2|A-7618-OUT,B-3879-OUT;n:type:ShaderForge.SFN_Vector1,id:3879,x:30678,y:33156,varname:node_3879,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:5326,x:31003,y:33157,varname:node_5326,prsc:2|A-7582-R,B-8627-OUT;n:type:ShaderForge.SFN_Vector1,id:8627,x:30787,y:33278,varname:node_8627,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Multiply,id:9470,x:30942,y:32735,varname:node_9470,prsc:2|A-1025-OUT,B-4785-OUT;n:type:ShaderForge.SFN_Vector1,id:4785,x:30543,y:32801,varname:node_4785,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Tex2d,id:3660,x:31298,y:34462,varname:_Windnoise,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-589-UVOUT,TEX-6544-TEX;n:type:ShaderForge.SFN_Panner,id:589,x:31108,y:34462,varname:node_589,prsc:2,spu:-0.03,spv:-0.03|UVIN-5598-UVOUT;n:type:ShaderForge.SFN_Add,id:5563,x:31743,y:34479,varname:node_5563,prsc:2|A-5598-UVOUT,B-7984-OUT;n:type:ShaderForge.SFN_Multiply,id:7984,x:31534,y:34564,varname:node_7984,prsc:2|A-3660-R,B-2126-OUT;n:type:ShaderForge.SFN_Vector1,id:2126,x:31297,y:34704,varname:node_2126,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Add,id:3733,x:31957,y:34377,varname:node_3733,prsc:2|A-6480-UVOUT,B-5563-OUT;n:type:ShaderForge.SFN_Vector1,id:9256,x:28101,y:32899,varname:node_9256,prsc:0,v1:1.5;n:type:ShaderForge.SFN_Tex2dAsset,id:6544,x:30951,y:34043,ptovrint:False,ptlb:Noise tex,ptin:_Noisetex,varname:_Noisetex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:2387,x:31277,y:32534,varname:node_2387,prsc:2|EXP-3286-OUT;n:type:ShaderForge.SFN_Vector1,id:3286,x:31087,y:32534,varname:node_3286,prsc:2,v1:3;n:type:ShaderForge.SFN_Lerp,id:9714,x:31662,y:32211,varname:node_9714,prsc:2|A-4282-RGB,B-5522-OUT,T-5698-OUT;n:type:ShaderForge.SFN_Vector3,id:5522,x:31213,y:32300,varname:node_5522,prsc:2,v1:1,v2:0.9310346,v3:0;n:type:ShaderForge.SFN_Tex2d,id:2731,x:34432,y:33201,ptovrint:False,ptlb:1stAO,ptin:_1stAO,varname:_1stAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6530,x:34432,y:33454,ptovrint:False,ptlb:2ndAO,ptin:_2ndAO,varname:_2ndAO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:1667,x:34682,y:33341,varname:node_1667,prsc:2|A-2731-R,B-6530-R,T-5555-G;n:type:ShaderForge.SFN_Multiply,id:5698,x:31736,y:32381,varname:node_5698,prsc:2|A-2387-OUT,B-6530-R;proporder:7736-4282-7582-6665-534-9542-5964-8401-7300-6239-7941-6544-2731-6530;pass:END;sub:END;*/

Shader "Team/BG_Splat_NoEffect" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _SubTex ("Secondary Texture", 2D) = "white" {}
        _SecondaryBlendmask ("Secondary Blendmask", 2D) = "white" {}
        _TintColor ("Tint Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MetallicMetallicRRoughnessG ("Metallic(Metallic R Roughness G)", 2D) = "white" {}
        _Secondarymetallic ("Secondary metallic", 2D) = "white" {}
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _BumpMapsub ("Secondary normal", 2D) = "bump" {}
        _waternormal ("Water normal", 2D) = "bump" {}
        _Ripplemap ("Ripple map", 2D) = "white" {}
        _Puddle ("Puddle", Range(0, 1)) = 0
        _Noisetex ("Noise tex", 2D) = "white" {}
        _1stAO ("1stAO", 2D) = "white" {}
        _2ndAO ("2ndAO", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform fixed4 _TintColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicMetallicRRoughnessG; uniform float4 _MetallicMetallicRRoughnessG_ST;
            uniform sampler2D _SubTex; uniform float4 _SubTex_ST;
            uniform sampler2D _Secondarymetallic; uniform float4 _Secondarymetallic_ST;
            uniform sampler2D _BumpMapsub; uniform float4 _BumpMapsub_ST;
            uniform float _Puddle;
            uniform sampler2D _waternormal; uniform float4 _waternormal_ST;
            uniform sampler2D _Ripplemap; uniform float4 _Ripplemap_ST;
            uniform sampler2D _Noisetex; uniform float4 _Noisetex_ST;
            uniform sampler2D _1stAO; uniform float4 _1stAO_ST;
            uniform sampler2D _2ndAO; uniform float4 _2ndAO_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                fixed3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                fixed3 _BumpMapsub_var = UnpackNormal(tex2D(_BumpMapsub,TRANSFORM_TEX(i.uv0, _BumpMapsub)));
                float4 node_8203 = _Time + _TimeEditor;
                float2 node_589 = (i.uv0+node_8203.g*float2(-0.03,-0.03));
                float4 _Windnoise = tex2D(_Noisetex,TRANSFORM_TEX(node_589, _Noisetex));
                float2 node_3733 = ((i.uv0+node_8203.g*float2(0.05,0.05))+(i.uv0+(_Windnoise.r*0.15)));
                fixed3 _waternormal_var = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_3733, _waternormal)));
                float4 _Ripplemap_var = tex2D(_Ripplemap,TRANSFORM_TEX(i.uv0, _Ripplemap));
                float4 node_6556 = _Time + _TimeEditor;
                float node_5492 = frac((_Ripplemap_var.a+(node_6556.g*1.5)));
                float RippleControl = _Puddle;
                float3 node_7030_nrm_base = _waternormal_var.rgb + float3(0,0,1);
                float3 node_7030_nrm_detail = float3((((sin((clamp((((node_5492-1.0)+_Ripplemap_var.r)*9.0),0.0,3.0)*3.141592654))*(saturate((((0.2+RippleControl)*0.8)-node_5492))*_Ripplemap_var.r))*((_Ripplemap_var.rgb.gb*2.0)-1.0))*1.0),1.0) * float3(-1,-1,1);
                float3 node_7030_nrm_combined = node_7030_nrm_base*dot(node_7030_nrm_base, node_7030_nrm_detail)/node_7030_nrm_base.z - node_7030_nrm_detail;
                float3 node_7030 = node_7030_nrm_combined;
                float node_8447 = (i.vertexColor.b*saturate((_Puddle*3.0+-2.0)));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,_BumpMapsub_var.rgb,i.vertexColor.g),node_7030,node_8447);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                fixed4 _MetallicMetallicRRoughnessG_var = tex2D(_MetallicMetallicRRoughnessG,TRANSFORM_TEX(i.uv0, _MetallicMetallicRRoughnessG));
                fixed4 _Secondarymetallic_var = tex2D(_Secondarymetallic,TRANSFORM_TEX(i.uv0, _Secondarymetallic));
                float2 node_3047 = lerp(_MetallicMetallicRRoughnessG_var.rgb.rg,_Secondarymetallic_var.rgb.rg,i.vertexColor.g);
                float gloss = lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float perceptualRoughness = 1.0 - lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float roughness = perceptualRoughness * perceptualRoughness;
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float node_5865 = node_3047.r;
                float node_45 = (_Puddle*0.3+0.0); // puddle metallic
                float3 specularColor = lerp(node_5865,node_45,node_8447);
                float specularMonochrome;
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 _SubTex_var = tex2D(_SubTex,TRANSFORM_TEX(i.uv0, _SubTex));
                float3 node_9158 = lerp(_MainTex_var.rgb,_SubTex_var.rgb,i.vertexColor.g);
                float3 diffuseColor = (lerp(node_9158,(node_9158*((1.0 - i.vertexColor.b)+0.3)),node_8447)*_TintColor.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _1stAO_var = tex2D(_1stAO,TRANSFORM_TEX(i.uv0, _1stAO));
                float4 _2ndAO_var = tex2D(_2ndAO,TRANSFORM_TEX(i.uv0, _2ndAO));
                float node_1667 = lerp(_1stAO_var.r,_2ndAO_var.r,i.vertexColor.g);
                indirectDiffuse *= node_1667; // Diffuse AO
/// Final Color:
                outDiffuse = half4( diffuseColor, node_1667 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
                outEmission.rgb += indirectSpecular * node_1667;
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform fixed4 _TintColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicMetallicRRoughnessG; uniform float4 _MetallicMetallicRRoughnessG_ST;
            uniform sampler2D _SubTex; uniform float4 _SubTex_ST;
            uniform sampler2D _Secondarymetallic; uniform float4 _Secondarymetallic_ST;
            uniform sampler2D _BumpMapsub; uniform float4 _BumpMapsub_ST;
            uniform float _Puddle;
            uniform sampler2D _waternormal; uniform float4 _waternormal_ST;
            uniform sampler2D _Ripplemap; uniform float4 _Ripplemap_ST;
            uniform sampler2D _Noisetex; uniform float4 _Noisetex_ST;
            uniform sampler2D _1stAO; uniform float4 _1stAO_ST;
            uniform sampler2D _2ndAO; uniform float4 _2ndAO_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                fixed3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                fixed3 _BumpMapsub_var = UnpackNormal(tex2D(_BumpMapsub,TRANSFORM_TEX(i.uv0, _BumpMapsub)));
                float4 node_9279 = _Time + _TimeEditor;
                float2 node_589 = (i.uv0+node_9279.g*float2(-0.03,-0.03));
                float4 _Windnoise = tex2D(_Noisetex,TRANSFORM_TEX(node_589, _Noisetex));
                float2 node_3733 = ((i.uv0+node_9279.g*float2(0.05,0.05))+(i.uv0+(_Windnoise.r*0.15)));
                fixed3 _waternormal_var = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_3733, _waternormal)));
                float4 _Ripplemap_var = tex2D(_Ripplemap,TRANSFORM_TEX(i.uv0, _Ripplemap));
                float4 node_6556 = _Time + _TimeEditor;
                float node_5492 = frac((_Ripplemap_var.a+(node_6556.g*1.5)));
                float RippleControl = _Puddle;
                float3 node_7030_nrm_base = _waternormal_var.rgb + float3(0,0,1);
                float3 node_7030_nrm_detail = float3((((sin((clamp((((node_5492-1.0)+_Ripplemap_var.r)*9.0),0.0,3.0)*3.141592654))*(saturate((((0.2+RippleControl)*0.8)-node_5492))*_Ripplemap_var.r))*((_Ripplemap_var.rgb.gb*2.0)-1.0))*1.0),1.0) * float3(-1,-1,1);
                float3 node_7030_nrm_combined = node_7030_nrm_base*dot(node_7030_nrm_base, node_7030_nrm_detail)/node_7030_nrm_base.z - node_7030_nrm_detail;
                float3 node_7030 = node_7030_nrm_combined;
                float node_8447 = (i.vertexColor.b*saturate((_Puddle*3.0+-2.0)));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,_BumpMapsub_var.rgb,i.vertexColor.g),node_7030,node_8447);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                fixed4 _MetallicMetallicRRoughnessG_var = tex2D(_MetallicMetallicRRoughnessG,TRANSFORM_TEX(i.uv0, _MetallicMetallicRRoughnessG));
                fixed4 _Secondarymetallic_var = tex2D(_Secondarymetallic,TRANSFORM_TEX(i.uv0, _Secondarymetallic));
                float2 node_3047 = lerp(_MetallicMetallicRRoughnessG_var.rgb.rg,_Secondarymetallic_var.rgb.rg,i.vertexColor.g);
                float gloss = lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float perceptualRoughness = 1.0 - lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _1stAO_var = tex2D(_1stAO,TRANSFORM_TEX(i.uv0, _1stAO));
                float4 _2ndAO_var = tex2D(_2ndAO,TRANSFORM_TEX(i.uv0, _2ndAO));
                float node_1667 = lerp(_1stAO_var.r,_2ndAO_var.r,i.vertexColor.g);
                float3 specularAO = node_1667;
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float node_5865 = node_3047.r;
                float node_45 = (_Puddle*0.3+0.0); // puddle metallic
                float3 specularColor = lerp(node_5865,node_45,node_8447);
                float specularMonochrome;
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 _SubTex_var = tex2D(_SubTex,TRANSFORM_TEX(i.uv0, _SubTex));
                float3 node_9158 = lerp(_MainTex_var.rgb,_SubTex_var.rgb,i.vertexColor.g);
                float3 diffuseColor = (lerp(node_9158,(node_9158*((1.0 - i.vertexColor.b)+0.3)),node_8447)*_TintColor.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular) * specularAO;
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                indirectDiffuse *= node_1667; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform fixed4 _TintColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MetallicMetallicRRoughnessG; uniform float4 _MetallicMetallicRRoughnessG_ST;
            uniform sampler2D _SubTex; uniform float4 _SubTex_ST;
            uniform sampler2D _Secondarymetallic; uniform float4 _Secondarymetallic_ST;
            uniform sampler2D _BumpMapsub; uniform float4 _BumpMapsub_ST;
            uniform float _Puddle;
            uniform sampler2D _waternormal; uniform float4 _waternormal_ST;
            uniform sampler2D _Ripplemap; uniform float4 _Ripplemap_ST;
            uniform sampler2D _Noisetex; uniform float4 _Noisetex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                fixed3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                fixed3 _BumpMapsub_var = UnpackNormal(tex2D(_BumpMapsub,TRANSFORM_TEX(i.uv0, _BumpMapsub)));
                float4 node_8431 = _Time + _TimeEditor;
                float2 node_589 = (i.uv0+node_8431.g*float2(-0.03,-0.03));
                float4 _Windnoise = tex2D(_Noisetex,TRANSFORM_TEX(node_589, _Noisetex));
                float2 node_3733 = ((i.uv0+node_8431.g*float2(0.05,0.05))+(i.uv0+(_Windnoise.r*0.15)));
                fixed3 _waternormal_var = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_3733, _waternormal)));
                float4 _Ripplemap_var = tex2D(_Ripplemap,TRANSFORM_TEX(i.uv0, _Ripplemap));
                float4 node_6556 = _Time + _TimeEditor;
                float node_5492 = frac((_Ripplemap_var.a+(node_6556.g*1.5)));
                float RippleControl = _Puddle;
                float3 node_7030_nrm_base = _waternormal_var.rgb + float3(0,0,1);
                float3 node_7030_nrm_detail = float3((((sin((clamp((((node_5492-1.0)+_Ripplemap_var.r)*9.0),0.0,3.0)*3.141592654))*(saturate((((0.2+RippleControl)*0.8)-node_5492))*_Ripplemap_var.r))*((_Ripplemap_var.rgb.gb*2.0)-1.0))*1.0),1.0) * float3(-1,-1,1);
                float3 node_7030_nrm_combined = node_7030_nrm_base*dot(node_7030_nrm_base, node_7030_nrm_detail)/node_7030_nrm_base.z - node_7030_nrm_detail;
                float3 node_7030 = node_7030_nrm_combined;
                float node_8447 = (i.vertexColor.b*saturate((_Puddle*3.0+-2.0)));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,_BumpMapsub_var.rgb,i.vertexColor.g),node_7030,node_8447);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                fixed4 _MetallicMetallicRRoughnessG_var = tex2D(_MetallicMetallicRRoughnessG,TRANSFORM_TEX(i.uv0, _MetallicMetallicRRoughnessG));
                fixed4 _Secondarymetallic_var = tex2D(_Secondarymetallic,TRANSFORM_TEX(i.uv0, _Secondarymetallic));
                float2 node_3047 = lerp(_MetallicMetallicRRoughnessG_var.rgb.rg,_Secondarymetallic_var.rgb.rg,i.vertexColor.g);
                float gloss = lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float perceptualRoughness = 1.0 - lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float node_5865 = node_3047.r;
                float node_45 = (_Puddle*0.3+0.0); // puddle metallic
                float3 specularColor = lerp(node_5865,node_45,node_8447);
                float specularMonochrome;
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 _SubTex_var = tex2D(_SubTex,TRANSFORM_TEX(i.uv0, _SubTex));
                float3 node_9158 = lerp(_MainTex_var.rgb,_SubTex_var.rgb,i.vertexColor.g);
                float3 diffuseColor = (lerp(node_9158,(node_9158*((1.0 - i.vertexColor.b)+0.3)),node_8447)*_TintColor.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform fixed4 _TintColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MetallicMetallicRRoughnessG; uniform float4 _MetallicMetallicRRoughnessG_ST;
            uniform sampler2D _SubTex; uniform float4 _SubTex_ST;
            uniform sampler2D _Secondarymetallic; uniform float4 _Secondarymetallic_ST;
            uniform float _Puddle;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 _SubTex_var = tex2D(_SubTex,TRANSFORM_TEX(i.uv0, _SubTex));
                float3 node_9158 = lerp(_MainTex_var.rgb,_SubTex_var.rgb,i.vertexColor.g);
                float node_8447 = (i.vertexColor.b*saturate((_Puddle*3.0+-2.0)));
                float3 diffColor = (lerp(node_9158,(node_9158*((1.0 - i.vertexColor.b)+0.3)),node_8447)*_TintColor.rgb);
                float specularMonochrome;
                float3 specColor;
                fixed4 _MetallicMetallicRRoughnessG_var = tex2D(_MetallicMetallicRRoughnessG,TRANSFORM_TEX(i.uv0, _MetallicMetallicRRoughnessG));
                fixed4 _Secondarymetallic_var = tex2D(_Secondarymetallic,TRANSFORM_TEX(i.uv0, _Secondarymetallic));
                float2 node_3047 = lerp(_MetallicMetallicRRoughnessG_var.rgb.rg,_Secondarymetallic_var.rgb.rg,i.vertexColor.g);
                float node_5865 = node_3047.r;
                float node_45 = (_Puddle*0.3+0.0); // puddle metallic
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp(node_5865,node_45,node_8447), specColor, specularMonochrome );
                float roughness = 1.0 - lerp(node_3047.g,(_Puddle*0.98+0.0),node_8447);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
