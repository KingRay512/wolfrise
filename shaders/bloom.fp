vec4 processBright(void)
{
    return vec4(2.0, 2.0, 2.0, 1.0);
}

void SetupMaterial( inout Material material )
{
    vec2 texCoord = vTexCoord.st;
    mat3 tbn = GetTBN();
    material.Base = getTexel(texCoord);
    material.Normal = GetBumpedNormal(tbn, texCoord);
#if defined(SPECULAR)
    material.Specular = texture(speculartexture, texCoord).rgb;
    material.Glossiness = uSpecularMaterial.x;
    material.SpecularLevel = uSpecularMaterial.y;
#endif
#if defined(PBR)
    material.Metallic = texture(metallictexture, texCoord).r;
    material.Roughness = texture(roughnesstexture, texCoord).r;
    material.AO = texture(aotexture, texCoord).r;
#endif
    material.Bright = processBright();
}