depth = 1.5;
emit = audio_emitter_create();
audio_emitter_position(emit, x, y, 0);
audio_falloff_set_model(audio_falloff_exponent_distance);
instance_deactivate_object(id);
