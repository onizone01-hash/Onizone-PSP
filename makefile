TARGET = EBOOT.PBP
OBJS = $(patsubst %.c, %.o, $(wildcard Onizone_PSP_Demo_Source/*.c)) \
       $(patsubst %.cpp, %.o, $(wildcard Onizone_PSP_Demo_Source/*.cpp))

INCDIR =
CFLAGS = -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBS = -lpspdebug -lpspdisplay -lpspctrl -lpspkernel

BUILD_PRX = 1

PSP_EBOOT_TITLE = Onizone PSP Demo
# ถ้าไม่มีไอคอนพวกนี้ ลบทิ้งได้
# PSP_EBOOT_ICON = ICON0.PNG
# PSP_EBOOT_PIC1 = PIC1.PNG

PSPSDK = $(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
