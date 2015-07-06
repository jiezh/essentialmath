layout(location = POSITION) in vec4 position;
layout(location = TEXCOORD0) in vec2 texCoord0;

uniform mat4 IvModelViewProjectionMatrix;

out vec2 uv;

void main()
{
    gl_Position = IvModelViewProjectionMatrix * position;
    uv = texCoord0.xy;
}