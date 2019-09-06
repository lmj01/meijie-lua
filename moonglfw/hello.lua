
glfw = require("moonglfw")

window = glfw.create_window(640, 480, "Hello World!")

function my_callback(w, x, y)
	assert(w == window)
	print("cursor position : ", x, y)
end

glfw.set_cursor_pos_callback(window, my_callback)

while not glfw.window_should_close(window) do
	glfw.poll_events()
end


