#include <pspkernel.h>
#include <pspdebug.h>

// ข้อมูลโมดูล PSP (ชื่อ, attribute, major version, minor version)
PSP_MODULE_INFO("OnizonePSP", 0, 1, 0);
PSP_MAIN_THREAD_ATTR(THREAD_ATTR_USER | THREAD_ATTR_VFPU);

// entry point ของโปรแกรม
int main(int argc, char *argv[]) {
    // เริ่มหน้าจอ debug
    pspDebugScreenInit();
    pspDebugScreenPrintf("Hello PSP World! :)\n");

    // ทำให้ thread หลับ (รันค้างไว้)
    sceKernelSleepThread();

    return 0;
}
