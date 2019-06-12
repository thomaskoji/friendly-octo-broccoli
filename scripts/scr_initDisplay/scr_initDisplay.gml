/// @description initializes display properties.

// set base ideal width/height
ideal_width = 0;
ideal_height = 192;
zoom = 1;

// calculate display aspect ratio
aspect_ratio = display_get_width()/display_get_height();
ideal_width = round(ideal_height*aspect_ratio);

// PIXEL PERFECT SCALING
if (display_get_width() mod ideal_width != 0)
{
    var _d = round(display_get_width()/ideal_width);
    ideal_width= display_get_width()/_d;
}

if (display_get_height() mod ideal_height != 0)
{
    var _d = round(display_get_height()/ideal_height);
    ideal_height = display_get_height()/_d;
}


// ELIMINATE ODD NUMBERED WIDTH AND HEIGHT VALUES
if (ideal_width & 1) ideal_width++;
if (ideal_height & 1) ideal_height++;

// store maximum zoom value for windowed mode.
max_zoom = floor(display_get_width()/ideal_width);

// resize application surface

surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);
alarm[0] = 1; // centers view.