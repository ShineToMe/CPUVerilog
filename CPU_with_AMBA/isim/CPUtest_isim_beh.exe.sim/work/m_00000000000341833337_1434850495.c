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
static const char *ng0 = "D:/cpu_verilog/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba/superPOWEROVER9000/ambaMemoryMaster.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {0U, 0U};



static void Always_91_0(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 5764U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6248);
    *((int *)t2) = 1;
    t3 = (t0 + 5792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng0);

LAB5:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1700U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(107, ng0);

LAB10:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4044);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4136);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2940);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4228);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3032);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3124);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4412);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3216);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4504);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3308);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4596);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4688);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3860);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4780);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3492);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4872);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3584);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3676);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 5056);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3768);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 5148);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3952);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 5240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2756);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(94, ng0);

LAB9:    xsi_set_current_line(95, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3032);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3308);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_unary_minus(t13, 32, t2, 32);
    t3 = (t0 + 2848);
    xsi_vlogvar_wait_assign_value(t3, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 264);
    t3 = *((char **)t2);
    t2 = (t0 + 3860);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3676);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_unary_minus(t13, 32, t2, 32);
    t3 = (t0 + 3492);
    xsi_vlogvar_wait_assign_value(t3, t13, 0, 0, 32, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 264);
    t3 = *((char **)t2);
    t2 = (t0 + 3952);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2756);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

}

static void Always_127_1(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
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
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 5908U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 6256);
    *((int *)t2) = 1;
    t3 = (t0 + 5936);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(128, ng0);

LAB5:    xsi_set_current_line(129, ng0);
    t4 = (t0 + 2848);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 4044);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2940);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 3032);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4228);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 3124);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3216);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4412);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3308);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4504);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3400);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4596);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 3860);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4688);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 2756);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5240);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 3860);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = (t0 + 264);
    t6 = *((char **)t5);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t6, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 344);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(141, ng0);
    t5 = (t0 + 1516U);
    t7 = *((char **)t5);
    t5 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB16;

LAB17:
LAB18:    goto LAB15;

LAB9:    xsi_set_current_line(146, ng0);

LAB20:    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 4228);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1240U);
    t3 = *((char **)t2);
    t2 = (t0 + 4044);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4504);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1332U);
    t3 = *((char **)t2);
    t2 = (t0 + 4320);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4412);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4596);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t2 = (t0 + 4688);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB15;

LAB11:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 1884U);
    t5 = *((char **)t2);
    t2 = (t0 + 1976U);
    t6 = *((char **)t2);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 & t10);
    *((unsigned int *)t16) = t11;
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t14 = (t16 + 4);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t7);
    t17 = (t12 | t13);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB21;

LAB22:
LAB23:    t39 = (t16 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (~(t40));
    t42 = *((unsigned int *)t16);
    t43 = (t42 & t41);
    t44 = (t43 != 0);
    if (t44 > 0)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB13:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 1792U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB28;

LAB29:
LAB30:    goto LAB15;

LAB16:    xsi_set_current_line(142, ng0);

LAB19:    xsi_set_current_line(143, ng0);
    t14 = (t0 + 344);
    t15 = *((char **)t14);
    t14 = (t0 + 4688);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 3);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB18;

LAB21:    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t20 | t21);
    t15 = (t5 + 4);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t15);
    t26 = (~(t25));
    t27 = *((unsigned int *)t6);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t35 & t33);
    t36 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t36 & t34);
    t37 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t37 & t33);
    t38 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t38 & t34);
    goto LAB23;

LAB24:    xsi_set_current_line(160, ng0);

LAB27:    xsi_set_current_line(161, ng0);
    t45 = ((char*)((ng1)));
    t46 = (t0 + 4504);
    xsi_vlogvar_assign_value(t46, t45, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4228);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t2 = (t0 + 4688);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB26;

LAB28:    xsi_set_current_line(166, ng0);

LAB31:    xsi_set_current_line(167, ng0);
    t6 = ((char*)((ng1)));
    t7 = (t0 + 4596);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 264);
    t3 = *((char **)t2);
    t2 = (t0 + 4688);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB30;

}

static void Always_178_2(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 6052U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(178, ng0);
    t2 = (t0 + 6264);
    *((int *)t2) = 1;
    t3 = (t0 + 6080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(179, ng0);

LAB5:    xsi_set_current_line(180, ng0);
    t4 = (t0 + 3492);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 4780);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(181, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4872);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 3676);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4964);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 3768);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5056);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 3952);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = (t0 + 264);
    t6 = *((char **)t5);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t6, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 344);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t3, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(187, ng0);
    t5 = (t0 + 1424U);
    t7 = *((char **)t5);
    t5 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB16;

LAB17:
LAB18:    goto LAB15;

LAB9:    xsi_set_current_line(191, ng0);

LAB20:    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 4964);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 1240U);
    t3 = *((char **)t2);
    t2 = (t0 + 4780);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5056);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t2 = (t0 + 5148);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB15;

LAB11:    xsi_set_current_line(198, ng0);
    t2 = (t0 + 2160U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB21;

LAB22:
LAB23:    goto LAB15;

LAB13:    xsi_set_current_line(203, ng0);
    t2 = (t0 + 2252U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB25;

LAB26:
LAB27:    goto LAB15;

LAB16:    xsi_set_current_line(187, ng0);

LAB19:    xsi_set_current_line(188, ng0);
    t14 = (t0 + 344);
    t15 = *((char **)t14);
    t14 = (t0 + 5148);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 3);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB18;

LAB21:    xsi_set_current_line(199, ng0);

LAB24:    xsi_set_current_line(200, ng0);
    t6 = ((char*)((ng1)));
    t7 = (t0 + 4964);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t2 = (t0 + 5148);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB23;

LAB25:    xsi_set_current_line(204, ng0);

LAB28:    xsi_set_current_line(205, ng0);
    t6 = (t0 + 2344U);
    t7 = *((char **)t6);
    t6 = (t0 + 664);
    t14 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t7 + 4);
    t15 = (t14 + 4);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t14);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t15);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t6);
    t25 = *((unsigned int *)t15);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB32;

LAB29:    if (t26 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t16) = 1;

LAB32:    t30 = (t16 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t16);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB33;

LAB34:
LAB35:    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5056);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(209, ng0);
    t2 = (t0 + 264);
    t3 = *((char **)t2);
    t2 = (t0 + 5148);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    goto LAB27;

LAB31:    t29 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(206, ng0);
    t36 = (t0 + 2436U);
    t37 = *((char **)t36);
    t36 = (t0 + 2664);
    xsi_vlogvar_assign_value(t36, t37, 0, 0, 32);
    goto LAB35;

}


extern void work_m_00000000000341833337_1434850495_init()
{
	static char *pe[] = {(void *)Always_91_0,(void *)Always_127_1,(void *)Always_178_2};
	xsi_register_didat("work_m_00000000000341833337_1434850495", "isim/CPUtest_isim_beh.exe.sim/work/m_00000000000341833337_1434850495.didat");
	xsi_register_executes(pe);
}
