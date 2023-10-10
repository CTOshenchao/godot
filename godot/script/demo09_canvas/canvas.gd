extends Node2D


var whiteColor: Color = Color(1,1,1,1)

# For Draw_Circle
var circleRadius: float = 10

# For Draw_Multiline
var array: Array = [Vector2(200,300),Vector2(300,400),Vector2(300,400),Vector2(400,300)]
var multiLine: PoolVector2Array = PoolVector2Array(array)

# For Draw_Rect
var rect: Rect2 = Rect2(200.0,300.0, 200.0,200.0)

# For Draw_Primitive
var pointsArray: PoolVector2Array = PoolVector2Array([Vector2(700,100),Vector2(800,150),Vector2(900,100)])
var colorArray: PoolColorArray = PoolColorArray([Color(1,1,1,1),Color(1,1,1,1),Color(1,1,1,1)])

# For Draw_String
var dynamic_font = DynamicFont.new()

var texture: Texture = null

func _ready() -> void:
	# For Draw_String
	dynamic_font.font_data = load("res://scene/demo09_canvas/BarlowCondensed-Bold.ttf")
	dynamic_font.size = 64
	texture = load("res://icon.png")

var count = 0

func _draw() -> void:
	print("start drawing")
	draw_circle(Vector2(100,100), circleRadius, whiteColor)
	draw_line(Vector2(0,0),Vector2(100,100),whiteColor)
	draw_multiline(multiLine, whiteColor)
	draw_rect(rect, whiteColor, false) # filled is false
	draw_primitive(pointsArray,colorArray, pointsArray)
	draw_string(dynamic_font, Vector2(600,500), 'I draw good!')
	if count >= 90:
		draw_texture(texture, Vector2(400,400))
# For Draw_String


func _process(delta):
	count += 1
	if count == 90:
		# draw_texture(texture, Vector2(400,400))
		update()
