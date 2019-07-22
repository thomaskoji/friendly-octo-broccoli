event_inherited();

camera = camera_create();

var _vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var _pm = matrix_build_projection_ortho(640,360,1,10000);

camera_set_view_mat(camera,_vm);
camera_set_proj_mat(camera,_pm);

view_camera[0] = camera;

follow = obj_player;
xTo = x;
yTo = y;