// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.625,fgcg:0.8913793,fgcb:1,fgca:1,fgde:0.15,fgrn:25,fgrf:70,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|diff-7959-OUT,emission-3231-OUT,alpha-5148-R,refract-2317-OUT;n:type:ShaderForge.SFN_Tex2d,id:5148,x:32000,y:33019,varname:_Tex2,prsc:2,tex:69aa218ec85f1824090f95c05d0d7e53,ntxv:0,isnm:False|UVIN-5178-OUT,TEX-843-TEX;n:type:ShaderForge.SFN_Vector3,id:3433,x:32011,y:32695,varname:node_3433,prsc:2,v1:1,v2:0.2275862,v3:0;n:type:ShaderForge.SFN_Multiply,id:3231,x:32506,y:32835,varname:node_3231,prsc:2|A-6345-OUT,B-4146-OUT;n:type:ShaderForge.SFN_Multiply,id:6345,x:32240,y:32785,varname:node_6345,prsc:2|A-3433-OUT,B-5148-R;n:type:ShaderForge.SFN_Panner,id:2274,x:30840,y:33030,varname:node_2274,prsc:2,spu:0,spv:-1.5|UVIN-6191-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6191,x:30531,y:32859,varname:node_6191,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7893,x:31138,y:32858,ptovrint:False,ptlb:noise,ptin:_noise,varname:_noise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2274-UVOUT;n:type:ShaderForge.SFN_Lerp,id:5178,x:31796,y:32845,varname:node_5178,prsc:2|A-6191-UVOUT,B-2111-OUT,T-2694-OUT;n:type:ShaderForge.SFN_Vector1,id:2694,x:31517,y:33029,varname:node_2694,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Tex2d,id:8531,x:31069,y:33280,varname:_Tex1,prsc:2,tex:69aa218ec85f1824090f95c05d0d7e53,ntxv:0,isnm:False|TEX-843-TEX;n:type:ShaderForge.SFN_Multiply,id:2111,x:31517,y:32891,varname:node_2111,prsc:2|A-7893-R,B-134-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:843,x:30653,y:32660,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:69aa218ec85f1824090f95c05d0d7e53,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:7959,x:32293,y:32669,varname:node_7959,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4146,x:32240,y:32933,ptovrint:False,ptlb:Bloom,ptin:_Bloom,varname:_Bloom,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:30;n:type:ShaderForge.SFN_Tex2d,id:6529,x:31933,y:33332,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:_Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dee9e4244950f9244ac37d5fcdb5922b,ntxv:3,isnm:True|UVIN-2274-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:518,x:32215,y:33295,varname:node_518,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6529-RGB;n:type:ShaderForge.SFN_Multiply,id:2317,x:32449,y:33200,varname:node_2317,prsc:2|A-518-OUT,B-5148-B,C-49-OUT;n:type:ShaderForge.SFN_Vector1,id:49,x:32215,y:33454,varname:node_49,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4891,x:31283,y:33361,varname:node_4891,prsc:2|A-8531-G,B-3939-OUT;n:type:ShaderForge.SFN_Vector1,id:3939,x:31075,y:33465,varname:node_3939,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:6084,x:31451,y:33386,varname:node_6084,prsc:2|A-4891-OUT,B-3939-OUT;n:type:ShaderForge.SFN_Multiply,id:134,x:31647,y:33451,varname:node_134,prsc:2|A-6084-OUT,B-5594-OUT;n:type:ShaderForge.SFN_Vector1,id:5594,x:31451,y:33533,varname:node_5594,prsc:2,v1:1.5;proporder:7893-843-4146-6529;pass:END;sub:END;*/

Shader "Team/Fire_Effect" {
    Properties {
        _noise ("noise", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _Bloom ("Bloom", Float ) = 30
        _Refraction ("Refraction", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 300
        GrabPass{ }
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Bloom;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                float4 screenPos : TEXCOORD7;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
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
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 node_3913 = _Time + _TimeEditor;
                float2 node_2274 = (i.uv0+node_3913.g*float2(0,-1.5));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_2274, _Refraction)));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(node_2274, _noise));
                float4 _Tex1 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_3939 = 0.5;
                float node_2111 = (_noise_var.r*(((_Tex1.g*node_3939)+node_3939)*1.5));
                float2 node_5178 = lerp(i.uv0,float2(node_2111,node_2111),0.3);
                float4 _Tex2 = tex2D(_MainTex,TRANSFORM_TEX(node_5178, _MainTex));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*_Tex2.b*0.5);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_7959 = 0.0;
                float3 diffuseColor = float3(node_7959,node_7959,node_7959);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = ((float3(1,0.2275862,0)*_Tex2.r)*_Bloom);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,_Tex2.r),1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Bloom;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                float4 screenPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_2077 = _Time + _TimeEditor;
                float2 node_2274 = (i.uv0+node_2077.g*float2(0,-1.5));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_2274, _Refraction)));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(node_2274, _noise));
                float4 _Tex1 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_3939 = 0.5;
                float node_2111 = (_noise_var.r*(((_Tex1.g*node_3939)+node_3939)*1.5));
                float2 node_5178 = lerp(i.uv0,float2(node_2111,node_2111),0.3);
                float4 _Tex2 = tex2D(_MainTex,TRANSFORM_TEX(node_5178, _MainTex));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction_var.rgb.rg*_Tex2.b*0.5);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_7959 = 0.0;
                float3 diffuseColor = float3(node_7959,node_7959,node_7959);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * _Tex2.r,0);
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Bloom;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_6978 = _Time + _TimeEditor;
                float2 node_2274 = (i.uv0+node_6978.g*float2(0,-1.5));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(node_2274, _noise));
                float4 _Tex1 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_3939 = 0.5;
                float node_2111 = (_noise_var.r*(((_Tex1.g*node_3939)+node_3939)*1.5));
                float2 node_5178 = lerp(i.uv0,float2(node_2111,node_2111),0.3);
                float4 _Tex2 = tex2D(_MainTex,TRANSFORM_TEX(node_5178, _MainTex));
                o.Emission = ((float3(1,0.2275862,0)*_Tex2.r)*_Bloom);
                
                float node_7959 = 0.0;
                float3 diffColor = float3(node_7959,node_7959,node_7959);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
