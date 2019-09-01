draw_set_color(c_red); 
draw_set_alpha(.3); 
draw_circle(x,y, 5, false); 
draw_set_alpha(1); 
draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 
draw_text(x,y, myText); 

draw_set_color(c_blue); 
draw_point(x,y); 
draw_set_color(c_white);

draw_text(x,y + 10, "X: " + string(x) + "\n" + 
"Y: " + string(y)); 