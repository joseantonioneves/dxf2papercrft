APPNAME = dxf2papercraft
OBJECTS = dxf2papercraft.o utilities.o turtle.o paperface.o

INCLUDES = -I/usr/include/SDL -D_REENTRANT -I/usr/local/include

LIBS = -ldime -L./dime/src/.libs
# LIBS = -lpthread -ldl -L/usr/lib -L/usr/lib -Wl,-rpath,/usr/lib -lSDL -lpthread  -L/usr/X11R6/lib -lX11 -lXext
# DEBUG = -g

$(APPNAME) : $(OBJECTS)
	c++ -g -o $(APPNAME) $(OBJECTS) $(LIBS)

utilities.o : utilities.cxx utilities.h
	c++ -g -O99 -c $(DEBUG) $(INCLUDES) utilities.cxx

paperface.o : paperface.cxx paperface.h utilities.h turtle.h
	c++ -g -O99 -c $(DEBUG) $(INCLUDES) paperface.cxx

turtle.o : turtle.cxx turtle.h utilities.h
	c++ -g -O99 -c $(DEBUG) $(INCLUDES) turtle.cxx

dxf2papercraft.o : dxf2papercraft.cxx  paperface.h utilities.h turtle.h
	c++ -g -O99 -c $(DEBUG) $(INCLUDES) dxf2papercraft.cxx

clean :
	rm -f $(OBJECTS)
	rm -f $(APPNAME)
	rm -f *~
