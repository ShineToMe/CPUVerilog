/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/cpu_verilog/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba/superPOWEROVER9000/ambatest.v";



static void Always_65_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4596);
    *((int *)t2) = 1;
    t3 = (t0 + 4140);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 2992U);
    t5 = *((char **)t4);
    t4 = (t0 + 3404);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    goto LAB2;

}

static void Always_69_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4604);
    *((int *)t2) = 1;
    t3 = (t0 + 4284);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(69, ng0);

LAB5:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 3084U);
    t5 = *((char **)t4);
    t4 = (t0 + 3496);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 1);
    goto LAB2;

}

static void Always_73_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 4400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4612);
    *((int *)t2) = 1;
    t3 = (t0 + 4428);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);

LAB5:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 3176U);
    t5 = *((char **)t4);
    t4 = (t0 + 3588);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    goto LAB2;

}


extern void work_m_00000000003159913999_1032898313_init()
{
	static char *pe[] = {(void *)Always_65_0,(void *)Always_69_1,(void *)Always_73_2};
	xsi_register_didat("work_m_00000000003159913999_1032898313", "isim/CPUtest_isim_beh.exe.sim/work/m_00000000003159913999_1032898313.didat");
	xsi_register_executes(pe);
}
