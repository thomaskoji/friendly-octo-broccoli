viewWidth = 1920/4;
viewHeight = 1080/4;

windowScale = 4;

window_set_size(viewWidth*windowScale,viewHeight*windowScale);
alarm[0] = 1;

surface_resize(application_surface,viewWidth*windowScale,viewHeight*windowScale);