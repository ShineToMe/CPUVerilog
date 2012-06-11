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
static const char *ng0 = "D:/cpu_verilog/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba/superPOWEROVER9000/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {8U, 0U};
static unsigned int ng4[] = {12U, 0U};
static unsigned int ng5[] = {13U, 0U};
static unsigned int ng6[] = {24U, 0U};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {28U, 0U};
static unsigned int ng9[] = {20U, 0U};
static unsigned int ng10[] = {26U, 0U};
static unsigned int ng11[] = {25U, 0U};
static unsigned int ng12[] = {23U, 0U};
static unsigned int ng13[] = {22U, 0U};
static unsigned int ng14[] = {10U, 0U};
static unsigned int ng15[] = {14U, 0U};



static void Cont_43_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
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
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 2668U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2144);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    t22 = (t0 + 3060);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 1U;
    t28 = t27;
    t29 = (t6 + 4);
    t30 = *((unsigned int *)t6);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t22, 0, 0);
    t35 = (t0 + 3008);
    *((int *)t35) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

}

static void Always_45_1(char *t0)
{
    char t9[8];
    char t40[8];
    char t41[8];
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
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
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
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 2812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3016);
    *((int *)t2) = 1;
    t3 = (t0 + 2840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1824U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB31;

LAB32:
LAB34:
LAB33:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB35:    goto LAB2;

LAB7:    xsi_set_current_line(48, ng0);
    t7 = (t0 + 1640U);
    t8 = *((char **)t7);
    t7 = (t0 + 2144);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB35;

LAB9:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 2144);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB35;

LAB11:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 & t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB36;

LAB37:
LAB38:    t39 = (t0 + 2144);
    xsi_vlogvar_assign_value(t39, t9, 0, 0, 32);
    goto LAB35;

LAB13:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 | t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB39;

LAB40:
LAB41:    t39 = (t0 + 2144);
    xsi_vlogvar_assign_value(t39, t9, 0, 0, 32);
    goto LAB35;

LAB15:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t41, 0, 8);
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = (t12 | t16);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    t23 = (~(t20));
    t24 = (t17 & t23);
    if (t24 != 0)
        goto LAB45;

LAB42:    if (t20 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t41) = 1;

LAB45:    memset(t40, 0, 8);
    t21 = (t41 + 4);
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t41);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t21) != 0)
        goto LAB48;

LAB49:    t39 = (t40 + 4);
    t30 = *((unsigned int *)t40);
    t33 = *((unsigned int *)t39);
    t34 = (t30 || t33);
    if (t34 > 0)
        goto LAB50;

LAB51:    t35 = *((unsigned int *)t40);
    t36 = (~(t35));
    t37 = *((unsigned int *)t39);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t39) > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t40) > 0)
        goto LAB56;

LAB57:    memcpy(t9, t43, 8);

LAB58:    t44 = (t0 + 2144);
    xsi_vlogvar_assign_value(t44, t9, 0, 0, 32);
    goto LAB35;

LAB17:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t41, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB60;

LAB59:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB60;

LAB63:    if (*((unsigned int *)t4) > *((unsigned int *)t7))
        goto LAB62;

LAB61:    *((unsigned int *)t41) = 1;

LAB62:    memset(t40, 0, 8);
    t21 = (t41 + 4);
    t10 = *((unsigned int *)t21);
    t11 = (~(t10));
    t12 = *((unsigned int *)t41);
    t14 = (t12 & t11);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t21) != 0)
        goto LAB66;

LAB67:    t39 = (t40 + 4);
    t16 = *((unsigned int *)t40);
    t17 = *((unsigned int *)t39);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB68;

LAB69:    t19 = *((unsigned int *)t40);
    t20 = (~(t19));
    t23 = *((unsigned int *)t39);
    t24 = (t20 || t23);
    if (t24 > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t39) > 0)
        goto LAB72;

LAB73:    if (*((unsigned int *)t40) > 0)
        goto LAB74;

LAB75:    memcpy(t9, t43, 8);

LAB76:    t44 = (t0 + 2144);
    xsi_vlogvar_assign_value(t44, t9, 0, 0, 32);
    goto LAB35;

LAB19:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t8);
    t14 = (t12 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t15 & 7U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 7U);
    memset(t40, 0, 8);
    xsi_vlog_unsigned_lshift(t40, 32, t4, 32, t9, 3);
    t13 = (t0 + 2144);
    xsi_vlogvar_assign_value(t13, t40, 0, 0, 32);
    goto LAB35;

LAB21:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t41, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB78;

LAB77:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB78;

LAB81:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB79;

LAB80:    memset(t40, 0, 8);
    t21 = (t41 + 4);
    t10 = *((unsigned int *)t21);
    t11 = (~(t10));
    t12 = *((unsigned int *)t41);
    t14 = (t12 & t11);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t21) != 0)
        goto LAB84;

LAB85:    t39 = (t40 + 4);
    t16 = *((unsigned int *)t40);
    t17 = *((unsigned int *)t39);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB86;

LAB87:    t19 = *((unsigned int *)t40);
    t20 = (~(t19));
    t23 = *((unsigned int *)t39);
    t24 = (t20 || t23);
    if (t24 > 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t39) > 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t40) > 0)
        goto LAB92;

LAB93:    memcpy(t9, t43, 8);

LAB94:    t44 = (t0 + 2144);
    xsi_vlogvar_assign_value(t44, t9, 0, 0, 32);
    goto LAB35;

LAB23:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t41, 0, 8);
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = (t12 | t16);
    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    t23 = (~(t20));
    t24 = (t17 & t23);
    if (t24 != 0)
        goto LAB96;

LAB95:    if (t20 != 0)
        goto LAB97;

LAB98:    memset(t40, 0, 8);
    t21 = (t41 + 4);
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t41);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t21) != 0)
        goto LAB101;

LAB102:    t39 = (t40 + 4);
    t30 = *((unsigned int *)t40);
    t33 = *((unsigned int *)t39);
    t34 = (t30 || t33);
    if (t34 > 0)
        goto LAB103;

LAB104:    t35 = *((unsigned int *)t40);
    t36 = (~(t35));
    t37 = *((unsigned int *)t39);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t39) > 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t40) > 0)
        goto LAB109;

LAB110:    memcpy(t9, t43, 8);

LAB111:    t44 = (t0 + 2144);
    xsi_vlogvar_assign_value(t44, t9, 0, 0, 32);
    goto LAB35;

LAB25:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t8);
    t14 = (t12 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t15 & 7U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 7U);
    memset(t40, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t40, 32, t4, 32, t9, 3);
    t13 = (t0 + 2144);
    xsi_vlogvar_assign_value(t13, t40, 0, 0, 32);
    goto LAB35;

LAB27:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t8 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t8);
    t14 = (t12 >> 0);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t15 & 7U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 7U);
    memset(t40, 0, 8);
    xsi_vlog_unsigned_rshift(t40, 32, t4, 32, t9, 3);
    t13 = (t0 + 2144);
    xsi_vlogvar_assign_value(t13, t40, 0, 0, 32);
    goto LAB35;

LAB29:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 2144);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB35;

LAB31:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1640U);
    t4 = *((char **)t3);
    t3 = (t0 + 1732U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB112;

LAB113:
LAB114:    t21 = (t0 + 2144);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 32);
    goto LAB35;

LAB36:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t9) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & t33);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & t34);
    t37 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t37 & t33);
    t38 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t38 & t34);
    goto LAB38;

LAB39:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t9) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB41;

LAB44:    t13 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t40) = 1;
    goto LAB49;

LAB48:    t22 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB49;

LAB50:    t42 = ((char*)((ng7)));
    goto LAB51;

LAB52:    t43 = ((char*)((ng2)));
    goto LAB53;

LAB54:    xsi_vlog_unsigned_bit_combine(t9, 32, t42, 32, t43, 32);
    goto LAB58;

LAB56:    memcpy(t9, t42, 8);
    goto LAB58;

LAB60:    t13 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB62;

LAB64:    *((unsigned int *)t40) = 1;
    goto LAB67;

LAB66:    t22 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB67;

LAB68:    t42 = ((char*)((ng7)));
    goto LAB69;

LAB70:    t43 = ((char*)((ng2)));
    goto LAB71;

LAB72:    xsi_vlog_unsigned_bit_combine(t9, 32, t42, 32, t43, 32);
    goto LAB76;

LAB74:    memcpy(t9, t42, 8);
    goto LAB76;

LAB78:    t13 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB80;

LAB79:    *((unsigned int *)t41) = 1;
    goto LAB80;

LAB82:    *((unsigned int *)t40) = 1;
    goto LAB85;

LAB84:    t22 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB85;

LAB86:    t42 = ((char*)((ng7)));
    goto LAB87;

LAB88:    t43 = ((char*)((ng2)));
    goto LAB89;

LAB90:    xsi_vlog_unsigned_bit_combine(t9, 32, t42, 32, t43, 32);
    goto LAB94;

LAB92:    memcpy(t9, t42, 8);
    goto LAB94;

LAB96:    *((unsigned int *)t41) = 1;
    goto LAB98;

LAB97:    t13 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB98;

LAB99:    *((unsigned int *)t40) = 1;
    goto LAB102;

LAB101:    t22 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB102;

LAB103:    t42 = ((char*)((ng7)));
    goto LAB104;

LAB105:    t43 = ((char*)((ng2)));
    goto LAB106;

LAB107:    xsi_vlog_unsigned_bit_combine(t9, 32, t42, 32, t43, 32);
    goto LAB111;

LAB109:    memcpy(t9, t42, 8);
    goto LAB111;

LAB112:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t9) = (t19 | t20);
    goto LAB114;

}


extern void work_m_00000000003843684412_0886308060_init()
{
	static char *pe[] = {(void *)Cont_43_0,(void *)Always_45_1};
	xsi_register_didat("work_m_00000000003843684412_0886308060", "isim/Test_CPU_with_memory_isim_beh.exe.sim/work/m_00000000003843684412_0886308060.didat");
	xsi_register_executes(pe);
}
