LIBS= -lGL -lGLU -lglut -lm -lpthread -lcairo

BIN=simple.bin bitmap.bin zoom.bin cairo.bin circle.bin texture.bin\
	cairo_tex.bin

default: $(BIN)

%.bin: %.c
	$(CC) $(LIBS) $^ -o $@

clean:
	rm -rf $(BIN)
