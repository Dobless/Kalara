Shader "Custom/Fire" {
	Properties {
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Noise ("noise", 2D) = "white" {}
		_NormalMap("Normal", 2D) = "bump" {}
		_Bloom ("Bloom", float) = 30
		[HideInInspector] _texcoord("", 2D) = "white" {}
	}
	SubShader {
		Tags { "Queue" = "Transparent" "RenderType"="Transparent" }

		GrabPass
		{ "_GrabScreen0" }


		

		LOD 200

		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Lambert alpha
		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 4.0

		sampler2D _MainTex;
		sampler2D _Noise;
		sampler2D _NormalMap;
		float4 _NormalMap_ST;
		sampler2D _GrabScreen0;
		float _Bloom;

		struct Input {
			float3 worldNormal;
			INTERNAL_DATA
			
			float2 uv_MainTex;
			float2 uv_Noise;
			float2 uv_texcoord;

			float3 worldPos;
			float4 screenPos;
		};

		inline float4 Refraction(Input i, SurfaceOutput o, float indexOfRefraction, float chomaticAberration) {
			float3 worldNormal = o.Normal;
			float4 screenPos = i.screenPos;
			#if UNITY_UV_STARTS_AT_TOP
			float scale = -1.0;
			#else
			float scale = 1.0;
			#endif
			float halfPosW = screenPos.w * 0.5;
			screenPos.y = (screenPos.y - halfPosW) * _ProjectionParams.x * scale + halfPosW;
			#if SHADER_API_D3D9 || SHADER_API_D3D11
			screenPos.w += 0.0000001;
			#endif
			float2 projScreenPos = (screenPos / screenPos.w).xy;
			float3 worldViewDir = normalize(UnityWorldSpaceViewDir(i.worldPos));
			float3 refractionOffset = ((((indexOfRefraction - 1.0) * mul(UNITY_MATRIX_V, float4(worldNormal, 0.0))) * (1.0 / (screenPos.z + 1.0))) * (1.0 - dot(worldNormal, worldViewDir)));
			float2 cameraRefraction = float2(refractionOffset.x, -(refractionOffset.y * _ProjectionParams.x));
			float4 redAlpha = tex2D(_GrabScreen0, (projScreenPos + cameraRefraction));
			float green = tex2D(_GrabScreen0, (projScreenPos + (cameraRefraction * (1.0 - chomaticAberration)))).g;
			float blue = tex2D(_GrabScreen0, (projScreenPos + (cameraRefraction * (1.0 + chomaticAberration)))).b;
			return float4(redAlpha.r, green, blue, redAlpha.a);
		}

		//void RefractionF(Input i, SurfaceOutput o, inout fixed4 color)
		//{
			//#ifdef UNITY_PASS_FORWARDBASE
			//color = lerp(Refraction(i, o, _IndexofRefraction, _ChromaticAberration), color, o.Alpha);
			//#endif
		//}


		void surf (Input IN, inout SurfaceOutput o) {
			
			fixed4 noise1 = tex2D(_Noise, (_Time * float2(0, -1.5)) + IN.uv_Noise);

			fixed4 mask = tex2D(_MainTex, IN.uv_MainTex);
			fixed maskg = (mask.g * 0.5 + 0.5 * 1.5) * noise1.r;

			fixed4 c = tex2D (_MainTex, lerp(IN.uv_MainTex, maskg.r, 0.3));

			o.Albedo = 0;
			o.Emission = (c.r * fixed3(1, 0.22, 0)) * _Bloom;
			o.Alpha = c.r;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
