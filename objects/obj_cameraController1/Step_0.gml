/// @description Follow followObject if it exists.
var _followObject = followObject;
if (scr_isValidInstance(_followObject))
{
	
	var _displayControl = obj_displayController;
	width = _displayControl.ideal_width*zoom;
	height = _displayControl.ideal_height*zoom;

	halfWidth = width / 2;
	halfHeight = height /2; 

	var _cameraXGoal = _followObject.x - (halfWidth);
	var _cameraYGoal = _followObject.y - (halfHeight);
	
	cameraX = _cameraXGoal;//lerp(cameraX, _cameraXGoal, .2);
	cameraY = _cameraYGoal; //lerp(cameraY, _cameraYGoal, .2);

	finalCameraX = round(clamp(cameraX, 0, room_width - width));
	finalCameraY = round(clamp(cameraY, 0, room_height - height));
	
	camera_set_view_size(camera, width,height);
	camera_set_view_pos(camera, round(finalCameraX), round(finalCameraY));
}
