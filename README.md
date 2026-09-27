# Walker — 3D Resolution Scaling

This is Walker's independent, title-only copy of the official Godot demo `viewport/3d_scaling`. It shows how to lower the 3D render resolution and switch the 3D scaling mode while the 2D HUD stays at native resolution. It is a rendering tech demo, not a game: two keys change two settings, and there is no goal, score or end state. It sits in Walker as a partly verified local adaptation with two native-4K Liam films pending and a recovered design package; its wider purpose in Walker is an open question (`design/decisions.md` Q-01). What has been found: import, runtime and 37 headless input/state checks pass. GPU scaling quality, native-resolution HUD pixels, performance and both films remain unverified.

## How to run

1. Open `godot/project.godot` in Godot 4.7 (the logs record 4.7.2.stable). The main scene is `godot/hud.tscn`.
2. Controls:
   - **Space** (`cycle_viewport_resolution`): 3D resolution 100% → 50% → 33% → 25% → 100%.
   - **Enter** (`toggle_filtering`): cycle the 3D scaling mode (on the logged build: Bilinear, FSR, FSR 2, MetalFX Spatial, MetalFX Temporal, Nearest).

## Design

- [`GDD.md`](GDD.md): recovered design document (identical copy of `design/GDD.md`).
- [`design/DECK.html`](design/DECK.html): review slides.
- [`design/IMPLEMENTATION-MAP.md`](design/IMPLEMENTATION-MAP.md): feature → scene/script/line, input map.
- [`design/decisions.md`](design/decisions.md): open questions (purpose, per-mode visual criteria, the upstream performance claim, the unreferenced font).

The GDD is a recovered, unapproved description of what the code does, written by `/gdd reverse` in silent mode. No design gate is signed, and it does not invent a player goal the demo does not have.

## Source & license

Independent title-only copy of Godot `viewport/3d_scaling`, source commit `a3b5c113112f77291d5f3d1360f33a882fdc52f7`. Original source untouched; root Godot MIT license retained in `LICENSE.md`. Font metadata identifies Noto Sans UI, Copyright 2012 Google Inc. All Rights Reserved, licensed under SIL OFL 1.1. The full OFL text in `LICENSE.Noto.txt` was copied from the source checkout's `gui/bidi_and_font_features/LICENSE.Noto.txt`. Font binary, original assets and UIDs are preserved without modification; no font substitutions were made.

## Status

- Godot 4.7.2 headless import and a normal 120-frame runtime exit 0 without script errors.
- `scaling-20260924.log` passes 37 assertions. Actual Space key events cycle 1/2, 1/3, 1/4 and full scaling twice, with matching label and state and unchanged HUD dimensions. Enter cycles all six enum modes twice; requested and stored viewport properties agree. Eight cube mesh instances exist. No runtime fixes were needed.
- Headless stored scaling properties do not establish supported GPU modes, actual rendered resolution, filter quality, sharp HUD pixels or performance improvement.
- GPU scaling quality, native-resolution HUD pixels, performance and both native-4K Liam films remain unverified, pending the existing GPU/visible-capture constraint. No visible window, mocked footage, media upload or human approval. See `FRICTIONAL.md`.

Repository: https://github.com/nikbearbrown/walker-viewport-3d-scaling
