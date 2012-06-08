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
static const char *ng0 = "D:/superPOWEROVER9000/superPOWEROVER9000/ambaMemoryMaster.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_77_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(77, ng0);

LAB2:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 264);
    t2 = *((char **)t1);
    t1 = (t0 + 3516);
    xsi_vlogvar_assign_value(t1, t2, 0, 0, 4);
    xsi_set_current_line(79, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(80, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3700);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3792);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(82, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3884);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3976);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4068);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(85, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4160);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(86, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4252);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4344);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(88, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4436);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4528);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_92_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5196U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5680);
    *((int *)t2) = 1;
    t3 = (t0 + 5224);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);

LAB5:    xsi_set_current_line(94, ng0);
    t4 = (t0 + 1080U);
    t5 = *((char **)t4);
    t4 = (t0 + 2504);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 1);
    goto LAB2;

}

static void Always_97_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5340U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5688);
    *((int *)t2) = 1;
    t3 = (t0 + 5368);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 3516);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 3424);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 4);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3608);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3700);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2412);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3792);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2596);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3884);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2688);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2780);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4068);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2872);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2964);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4252);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3056);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4344);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3148);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4436);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3240);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3332);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB2;

}

static void Always_113_3(char *t0)
{
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
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 5484U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5696);
    *((int *)t2) = 1;
    t3 = (t0 + 5512);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);

LAB5:    xsi_set_current_line(115, ng0);
    t4 = (t0 + 3424);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 3516);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 4);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2320);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3700);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2596);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3792);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2688);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3884);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2780);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3976);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 2872);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4068);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4160);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 3056);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4252);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3148);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4344);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4436);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 3332);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4528);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 3424);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = (t0 + 264);
    t6 = *((char **)t5);
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t6, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 344);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 504);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 584);
    t3 = *((char **)t2);
    t8 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(190, ng0);

LAB53:    xsi_set_current_line(191, ng0);
    t2 = (t0 + 264);
    t3 = *((char **)t2);
    t2 = (t0 + 3516);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(193, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3700);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3884);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4068);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4252);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4344);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4436);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(130, ng0);

LAB20:    xsi_set_current_line(131, ng0);
    t5 = (t0 + 1356U);
    t7 = *((char **)t5);
    t5 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 1448U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB29;

LAB30:
LAB31:
LAB23:    goto LAB19;

LAB9:    xsi_set_current_line(151, ng0);

LAB37:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1724U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB19;

LAB11:    xsi_set_current_line(161, ng0);

LAB42:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 264);
    t5 = *((char **)t2);
    t2 = (t0 + 3516);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 4);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3700);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB19;

LAB13:    xsi_set_current_line(167, ng0);

LAB43:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 1908U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB19;

LAB15:    xsi_set_current_line(179, ng0);

LAB48:    xsi_set_current_line(180, ng0);
    t2 = (t0 + 2092U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB49;

LAB50:
LAB51:    goto LAB19;

LAB21:    xsi_set_current_line(131, ng0);

LAB24:    xsi_set_current_line(132, ng0);
    t14 = (t0 + 1540U);
    t15 = *((char **)t14);
    t14 = (t15 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (~(t16));
    t18 = *((unsigned int *)t15);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB25;

LAB26:
LAB27:    goto LAB23;

LAB25:    xsi_set_current_line(132, ng0);

LAB28:    xsi_set_current_line(133, ng0);
    t21 = (t0 + 344);
    t22 = *((char **)t21);
    t21 = (t0 + 3516);
    xsi_vlogvar_assign_value(t21, t22, 0, 0, 4);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1172U);
    t3 = *((char **)t2);
    t2 = (t0 + 3792);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3884);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4068);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3700);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB27;

LAB29:    xsi_set_current_line(141, ng0);

LAB32:    xsi_set_current_line(142, ng0);
    t5 = (t0 + 1816U);
    t6 = *((char **)t5);
    t5 = (t6 + 4);
    t16 = *((unsigned int *)t5);
    t17 = (~(t16));
    t18 = *((unsigned int *)t6);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB33;

LAB34:
LAB35:    goto LAB31;

LAB33:    xsi_set_current_line(142, ng0);

LAB36:    xsi_set_current_line(143, ng0);
    t7 = (t0 + 504);
    t14 = *((char **)t7);
    t7 = (t0 + 3516);
    xsi_vlogvar_assign_value(t7, t14, 0, 0, 4);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1172U);
    t3 = *((char **)t2);
    t2 = (t0 + 4160);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4252);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3700);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB35;

LAB38:    xsi_set_current_line(152, ng0);

LAB41:    xsi_set_current_line(153, ng0);
    t6 = (t0 + 424);
    t7 = *((char **)t6);
    t6 = (t0 + 3516);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 4);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 1632U);
    t3 = *((char **)t2);
    t2 = (t0 + 3608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3884);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4068);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB40;

LAB44:    xsi_set_current_line(168, ng0);

LAB47:    xsi_set_current_line(169, ng0);
    t6 = (t0 + 584);
    t7 = *((char **)t6);
    t6 = (t0 + 3516);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 4);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4252);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 1264U);
    t3 = *((char **)t2);
    t2 = (t0 + 4344);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4436);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB46;

LAB49:    xsi_set_current_line(180, ng0);

LAB52:    xsi_set_current_line(181, ng0);
    t6 = (t0 + 264);
    t7 = *((char **)t6);
    t6 = (t0 + 3516);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 4);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4436);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3700);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB51;

}


extern void work_m_00000000003727186581_1434850495_init()
{
	static char *pe[] = {(void *)Initial_77_0,(void *)Always_92_1,(void *)Always_97_2,(void *)Always_113_3};
	xsi_register_didat("work_m_00000000003727186581_1434850495", "isim/CPUtest_isim_beh.exe.sim/work/m_00000000003727186581_1434850495.didat");
	xsi_register_executes(pe);
}
