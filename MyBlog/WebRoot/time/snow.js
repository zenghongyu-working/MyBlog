var snow_size = new Array();
var snow_color = new Array();
var num = 30;
var smallest = 10;
var largest = 30;
var dx = new Array();
var x_pos = new Array();
var y_pos = new Array();
var x_amplitude = new Array();
var x_step = new Array();
var y_step = new Array();
var win_width;
var win_height;
var scroll_x;
var scroll_y;
var interval = 20;
var isOver = new Array();

// 随机产生大小
function make_size() {
	return smallest + Math.random() * largest;
}
// 白色雪花
function make_color1() {
	for (i = 0; i < num; i++) {
		snow_color[i] = '#ffffff';
	}

}
// 彩色雪花
function make_color2() {
	for (i = 0; i < num; i++) {
		A = Math.ceil(Math.random() * 255);
		B = Math.ceil(Math.random() * 255);
		C = Math.ceil(Math.random() * 255);
		snow_color[i] = 'rgb(' + A + ',' + B + ',' + C + ')';
		isOver[i] = 0;
	}
}
// 初始化参数
function init() {
	win_width = window.innerWidth ? window.innerWidth : id_body.clientWidth;
	win_height = window.innerHeight ? window.innerHeight : id_body.clientHeight;
	scroll_x = id_body.scrollLeft;
	scroll_y = id_body.scrollTop;
	make_color2();
	for (i = 0; i < num; i++) {
		dx[i] = 0;
		x_pos[i] = Math.random() * (win_width + scroll_x - 40);
		y_pos[i] = Math.random() * (win_height + scroll_y);
		x_amplitude[i] = Math.random() * 20;
		snow_size[i] = make_size();
		x_step[i] = 0.02 + Math.random() / 10;
		y_step[i] = 0.7 + Math().random();
	}
}

function add_div() {
	win_width = window.innerWidth ? window.innerWidth : id_body.clientWidth;
	win_height = window.innerHeight ? window.innerHeight : id_body.clientHeight;
	scroll_x = id_body.scrollLeft;
	scroll_y = id_body.scrollTop;
	make_color2();
	for (i = 0; i < num; i++) {
		dx[i] = 0;
		x_pos[i] = Math.random() * (win_width + scroll_x - 40);
		y_pos[i] = Math.random() * (win_height + scroll_y);
		x_amplitude[i] = Math.random() * 20;
		snow_size[i] = make_size();
		x_step[i] = 0.02 + Math.random() / 10;
		y_step[i] = 0.6 + Math.random();
		document.write("<div id='snow_" + i
				+ "' style='position:absolute;z-index:30" + i
				+ ";visibility:visible;top:15px;left:15px;font-size:"
				+ snow_size[i] + ";color:" + snow_color[i] + "'>*</div>");
	}

}

function mousehaveon(event) {
	event = event ? event : window.event;
	var obj = event.srcElement ? event.srcElement : event.target;
	var name = new String(obj.id);
	var index = name.substring(5);
	if (isOver[index] == 1)
		isOver[index] = 0;
	else
		isOver[index] = 1;
	mouse_x = event.clinetX;
	mouse_y = event.clinetY;
}

// 飘荡雪花
function snow() {
	win_width = window.innerWidth ? window.innerWidth : id_body.clientWidth;
	win_height = window.innerHeight ? window.innerHeight : id_body.clientHeight;
	scroll_x = document.body.scrollLeft ? document.body.scrollLeft
			: document.documentElement.scrollLeft;
	scroll_y = document.body.scrollTop ? document.body.scrollTop
			: document.documentElement.scrollTop;
	for (i = 0; i < num; i++) {
		if (isOver[i] == 0) {
			y_pos[i] += y_step[i];
			if (y_pos[i] > win_height + scroll_y) {
				x_pos[i] = Math.random()
						* (win_width + scroll_x - x_amplitude[i] - 20);
				y_pos[i] = 0;
				x_step[i] = 0.02 + Math.random() / 10;
				y_step[i] = 0.7 + Math.random();
			}
			dx[i] += x_step[i];
			document.getElementById("snow_" + i).style.top = y_pos[i] + "px";
			document.getElementById("snow_" + i).style.left = x_pos[i]
					+ x_amplitude[i] * Math.sin(dx[i]) + "px";
		}else{
			document.getElementById("snow_" + i).style.top = mouse_y + "px";
			document.getElementById("snow_" + i).style.left = mouse_x + "px";
		}
		document.getElementById("snow_" + i).onclick = mousehaveon;
		// alert(y_pos[i]);
	}
	setTimeout("snow()", interval);
}
window.onresize = init;