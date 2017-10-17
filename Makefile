TARGET = $(OBJDIR)/hello_pi

CC = /opt/pi-toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc
SRCDIR = src
OBJDIR = bin
CFLAGS = -c -Wall -I./
LDFLAGS =
RM = rm -rf
SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SRCS))

.PHONY: all clean

all: clean $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJDIR)/*.o -o $@

$(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $< -o $@

clean:
	$(RM) $(OBJDIR)/*.o $(TARGET)
