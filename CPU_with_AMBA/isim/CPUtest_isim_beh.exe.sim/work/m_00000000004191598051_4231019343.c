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
static const char *ng0 = "D:/cpu_verilog/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba/superPOWEROVER9000/ALUControl.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {8U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {32U, 0U};
static unsigned int ng6[] = {36U, 0U};
static unsigned int ng7[] = {12U, 0U};
static unsigned int ng8[] = {37U, 0U};
static unsigned int ng9[] = {13U, 0U};
static unsigned int ng10[] = {40U, 0U};
static unsigned int ng11[] = {24U, 0U};
static unsigned int ng12[] = {44U, 0U};
static unsigned int ng13[] = {28U, 0U};
static unsigned int ng14[] = {4U, 0U};
static unsigned int ng15[] = {20U, 0U};
static unsigned int ng16[] = {42U, 0U};
static unsigned int ng17[] = {26U, 0U};
static unsigned int ng18[] = {41U, 0U};
static unsigned int ng19[] = {25U, 0U};
static unsigned int ng20[] = {7U, 0U};
static unsigned int ng21[] = {23U, 0U};
static unsigned int ng22[] = {6U, 0U};
static unsigned int ng23[] = {22U, 0U};
static unsigned int ng24[] = {34U, 0U};
static unsigned int ng25[] = {10U, 0U};
static unsigned int ng26[] = {14U, 0U};



static void Always_56_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 3536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3732);
    *((int *)t2) = 1;
    t3 = (t0 + 3564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 2600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(61, ng0);

LAB14:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB18;

LAB15:    if (t19 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t9) = 1;

LAB18:    t22 = (t9 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t9);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(80, ng0);

LAB49:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    t2 = (t0 + 3012);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 6);

LAB21:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 3012);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 6);
    goto LAB13;

LAB9:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB13;

LAB17:    t8 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(63, ng0);

LAB22:    xsi_set_current_line(65, ng0);
    t28 = (t0 + 2692U);
    t29 = *((char **)t28);

LAB23:    t28 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t28, 6);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t6 == 1)
        goto LAB44;

LAB45:
LAB47:
LAB46:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 3012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);

LAB48:    goto LAB21;

LAB24:    xsi_set_current_line(66, ng0);
    t30 = ((char*)((ng2)));
    t31 = (t0 + 3012);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 6);
    goto LAB48;

LAB26:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB28:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB30:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB32:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB34:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB36:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB38:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB40:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB42:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

LAB44:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng25)));
    t4 = (t0 + 3012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB48;

}


extern void work_m_00000000004191598051_4231019343_init()
{
	static char *pe[] = {(void *)Always_56_0};
	xsi_register_didat("work_m_00000000004191598051_4231019343", "isim/CPUtest_isim_beh.exe.sim/work/m_00000000004191598051_4231019343.didat");
	xsi_register_executes(pe);
}
