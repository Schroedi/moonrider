varying vec2 uvs;
uniform float progress;
void main() {
  uvs.xy = uv.xy;
  vec3 pos = position;
  float isGlow = step(0.5, uvs.y);
  float isArc =  step(0.05, uvs.y) - step(0.51, uvs.y);
  float isCut =  1.0 - step(0.05, uvs.y);
  // move arc sprite
  pos.z -= mix(0.0, -0.5 + progress * 0.6, isArc);
  gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
}