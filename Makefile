CXXFLAGS =	-O2 -g -Wall -fmessage-length=0

OBJS =		speaker_pir.o

LIBS =		-L/usr/local/lib -lwiringPi

TARGET =	speaker_pir

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
