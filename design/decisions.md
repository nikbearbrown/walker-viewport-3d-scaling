# Open questions log — walker-viewport-3d-scaling

Gate — unsigned at time of writing. Written by `/gdd reverse --path godot silent`, 2026-09-27. Every `[MISSING]` in `GDD.md` is an entry here.

Format: THE QUESTION / THE STAKES / DECISION DEADLINE / OPTIONS / OWNER / STATUS. Status is Open, In Discussion, or Decided.

| # | Question | Stakes | Deadline | Options | Owner | Status |
|---|---|---|---|---|---|---|
| Q-01 | What is this demo for in Walker? | No definition of done; Ghost Center stays permanent | before further work or film | (a) film source only; (b) reusable HUD/scaling setup for a Walker game; (c) course example | Nik Bear Brown | Open |
| Q-02 | Who is the audience, and what should they see? | Replaces PX goals; decides the film's shot list | with Q-01 | developer / student / reference copy only | Nik Bear Brown | Open |
| Q-03 | Stay a demo, or seed a game? | A game needs a person-written Vision layer (`/gdd v1`) | with Q-01 | demo / game / undecided | Nik Bear Brown | Open |
| Q-04 | Visual acceptance per scaling mode: which modes must visibly work on the capture machine? | The label names a mode whether or not the GPU honours it (R-01); a film could teach a fallback as FSR/MetalFX | before the films | capture all six; capture only the modes the capture GPU supports and say so on screen | Nik Bear Brown | Open |
| Q-05 | Is the upstream "improve performance" claim repeated anywhere Walker publishes? | Unmeasured claim in teaching material | before any script or narration uses it | measure (T-07); quote it as upstream's claim; drop it | Nik Bear Brown | Open |
| Q-06 | Definition of done for the two pending native-4K Liam films | Blocked on GPU/visible capture; "review-ready" undefined | when the capture constraint clears | shot list against F-01..F-03 + Q-04 answer | Nik Bear Brown | Open |
| Q-07 | CORE is 3/7 = 43% (over 40%). Cut or extend? | Priority Inflation flag; harmless for a demo | low | (1) reduced MVP: reclassify F-02 as SUPPORTING; (2) keep and accept the overage | Nik Bear Brown | Open (tags unchanged) |
| Q-08 | `noto_sans_ui_regular.ttf` is not referenced by anything. Keep, wire in, or leave as-is? | Carries an OFL obligation for a file that may do nothing; deleting needs explicit confirmation | low | keep as shipped upstream (no change); document only | Nik Bear Brown | Open |
| Q-09 | Label shows "Metalfx" instead of "MetalFX" | Cosmetic, upstream code; visible in any film | before the films | leave upstream text; note in narration; propose a fix outside `godot/` | Nik Bear Brown | Open |
