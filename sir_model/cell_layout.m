function [bs] = cell_layout(radius,cell_no)
Up_x = 0;
Up_y = ((sqrt(3)/2)*2*radius);
UpR_x = (radius+(radius/2));
UpR_y = ((sqrt(3)/2)*radius);
UpL_x = -(radius+(radius/2));
UpL_y = ((sqrt(3)/2)*radius);
Down_x = 0;
Down_y = -((sqrt(3)/2)*2*radius);
DownR_x = (radius+(radius/2));
DownR_y = -((sqrt(3)/2)*radius);
DownL_x = -(radius+(radius/2));
DownL_y = -((sqrt(3)/2)*radius);
t = linspace(0,2*pi,7);
x_coor = [0,Up_x,UpR_x,DownR_x,Down_x,DownL_x,UpL_x,2*Up_x,Up_x+UpR_x,2*UpR_x,UpR_x+DownR_x,2*DownR_x,DownR_x+Down_x,2*Down_x,Down_x+DownL_x,2*DownL_x,DownL_x+UpL_x,2*UpL_x,UpL_x+Up_x];
y_coor = [0,Up_y,UpR_y,DownR_y,Down_y,DownL_y,UpL_y,2*Up_y,Up_y+UpR_y,2*UpR_y,UpR_y+DownR_y,2*DownR_y,DownR_y+Down_y,2*Down_y,Down_y+DownL_y,2*DownL_y,DownL_y+UpL_y,2*UpL_y,UpL_y+Up_y];

for m=1:cell_no
x1 = x_coor(m) + radius*cos(t);
y1 = y_coor(m) + radius*sin(t);
plot(x1,y1);
hold on
end
plot(x_coor(1:cell_no),y_coor(1:cell_no),'r+')
bs = [x_coor' y_coor' ];