event_inherited();

g.SEVolume = .5; // Sound Effect Volume (scale of 0 - 10)
g.MusicVolume = .5; // Music Volume (scale of 0-10)

// Initialize emitters to make allow us to alter the sound effects and music independently.
g.SEEmitter = audio_emitter_create();
audio_emitter_gain(g.SEEmitter, g.SEVolume);

g.MusicEmitter = audio_emitter_create();
audio_emitter_gain(g.MusicEmitter, g.MusicVolume);
