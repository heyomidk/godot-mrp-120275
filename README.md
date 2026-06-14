# godot-mrp-120275

Minimal repro for [godotengine/godot#120275](https://github.com/godotengine/godot/issues/120275).

Run on **Godot 4.7-rc2**. Adding `Label`s to a `Container` spams the console:

```
ERROR: _shaped_text_substr: Condition "sd->end < p_start + p_length" is true. Returning: RID()
ERROR: _shaped_text_get_ascent/_get_descent/_get_size/_is_ready: Parameter "sd" is null.
```

## Other notes
- The errors only appear when the default font uses MSDF (`gui/theme/default_font_multichannel_signed_distance_field=true`). Turn MSDF off and they stop.
- The error appears to be intermittent. This repo spams labels so you can see the number of errors varies with each run.

