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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/carioca/Desktop/comp_arch_help/HPY302_LAB/CONTROL.vhd";
extern char *IEEE_P_3620187407;



static void work_a_3222946569_1351276808_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t10 = (t0 + 1352U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB5;

LAB6:
LAB2:    t20 = (t0 + 7064);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 7288);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    t10 = (t0 + 11202);
    t15 = (t0 + 7288);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

}

static void work_a_3222946569_1351276808_p_1(char *t0)
{
    char t8[16];
    char t14[16];
    char t23[16];
    char t29[16];
    char t41[16];
    char t47[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t15;
    char *t16;
    int t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    unsigned char t35;
    unsigned char t36;
    unsigned char t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    char *t48;
    char *t49;
    int t50;
    unsigned char t51;
    char *t52;
    unsigned char t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;

LAB0:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 31;
    t10 = (t9 + 4U);
    *((int *)t10) = 26;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (26 - 31);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 11234);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 5;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (5 - 0);
    t12 = (t17 * 1);
    t12 = (t12 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t12;
    t18 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t8, t10, t14);
    if (t18 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 3112U);
    t20 = *((char **)t16);
    t12 = (31 - 31);
    t21 = (t12 * 1U);
    t22 = (0 + t21);
    t16 = (t20 + t22);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 31;
    t25 = (t24 + 4U);
    *((int *)t25) = 26;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (26 - 31);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t0 + 11240);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 0;
    t31 = (t30 + 4U);
    *((int *)t31) = 5;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (5 - 0);
    t27 = (t32 * 1);
    t27 = (t27 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t27;
    t33 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t16, t23, t25, t29);
    if (t33 == 1)
        goto LAB11;

LAB12:    t19 = (unsigned char)0;

LAB13:    t2 = t19;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t31 = (t0 + 3112U);
    t38 = *((char **)t31);
    t27 = (31 - 31);
    t39 = (t27 * 1U);
    t40 = (0 + t39);
    t31 = (t38 + t40);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 31;
    t43 = (t42 + 4U);
    *((int *)t43) = 26;
    t43 = (t42 + 8U);
    *((int *)t43) = -1;
    t44 = (26 - 31);
    t45 = (t44 * -1);
    t45 = (t45 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t45;
    t43 = (t0 + 11246);
    t48 = (t47 + 0U);
    t49 = (t48 + 0U);
    *((int *)t49) = 0;
    t49 = (t48 + 4U);
    *((int *)t49) = 5;
    t49 = (t48 + 8U);
    *((int *)t49) = 1;
    t50 = (5 - 0);
    t45 = (t50 * 1);
    t45 = (t45 + 1);
    t49 = (t48 + 12U);
    *((unsigned int *)t49) = t45;
    t51 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t41, t43, t47);
    if (t51 == 1)
        goto LAB14;

LAB15:    t37 = (unsigned char)0;

LAB16:    t1 = t37;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t59 = (t0 + 7352);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    *((unsigned char *)t63) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t59);

LAB2:    t64 = (t0 + 7080);
    *((int *)t64) = 1;

LAB1:    return;
LAB3:    t49 = (t0 + 7352);
    t55 = (t49 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    *((unsigned char *)t58) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t49);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t31 = (t0 + 1192U);
    t34 = *((char **)t31);
    t35 = *((unsigned char *)t34);
    t36 = (t35 == (unsigned char)3);
    t19 = t36;
    goto LAB13;

LAB14:    t49 = (t0 + 1192U);
    t52 = *((char **)t49);
    t53 = *((unsigned char *)t52);
    t54 = (t53 == (unsigned char)2);
    t37 = t54;
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 7416);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_3(char *t0)
{
    char t7[16];
    char t13[16];
    char t21[16];
    char t27[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t14;
    char *t15;
    int t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 26;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (26 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 11252);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (5 - 0);
    t11 = (t16 * 1);
    t11 = (t11 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t11;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t7, t9, t13);
    if (t17 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 3112U);
    t18 = *((char **)t15);
    t11 = (31 - 31);
    t19 = (t11 * 1U);
    t20 = (0 + t19);
    t15 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 30;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (30 - 31);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t0 + 11258);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 1;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (1 - 0);
    t25 = (t30 * 1);
    t25 = (t25 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t25;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t15, t21, t23, t27);
    t1 = t31;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t36 = (t0 + 7480);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t36);

LAB2:    t41 = (t0 + 7096);
    *((int *)t41) = 1;

LAB1:    return;
LAB3:    t29 = (t0 + 7480);
    t32 = (t29 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t29);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_4(char *t0)
{
    char t9[16];
    char t15[16];
    char t23[16];
    char t29[16];
    char t37[16];
    char t43[16];
    char t51[16];
    char t57[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t38;
    char *t39;
    int t40;
    unsigned int t41;
    char *t44;
    char *t45;
    int t46;
    unsigned char t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t52;
    char *t53;
    int t54;
    unsigned int t55;
    char *t58;
    char *t59;
    int t60;
    unsigned char t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;

LAB0:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 3112U);
    t5 = *((char **)t4);
    t6 = (31 - 31);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 31;
    t11 = (t10 + 4U);
    *((int *)t11) = 26;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (26 - 31);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t0 + 11260);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 5;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (5 - 0);
    t13 = (t18 * 1);
    t13 = (t13 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t13;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t9, t11, t15);
    if (t19 == 1)
        goto LAB11;

LAB12:    t17 = (t0 + 3112U);
    t20 = *((char **)t17);
    t13 = (31 - 31);
    t21 = (t13 * 1U);
    t22 = (0 + t21);
    t17 = (t20 + t22);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 31;
    t25 = (t24 + 4U);
    *((int *)t25) = 26;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (26 - 31);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t0 + 11266);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 0;
    t31 = (t30 + 4U);
    *((int *)t31) = 5;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (5 - 0);
    t27 = (t32 * 1);
    t27 = (t27 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t27;
    t33 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t23, t25, t29);
    t3 = t33;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t31 = (t0 + 3112U);
    t34 = *((char **)t31);
    t27 = (31 - 31);
    t35 = (t27 * 1U);
    t36 = (0 + t35);
    t31 = (t34 + t36);
    t38 = (t37 + 0U);
    t39 = (t38 + 0U);
    *((int *)t39) = 31;
    t39 = (t38 + 4U);
    *((int *)t39) = 26;
    t39 = (t38 + 8U);
    *((int *)t39) = -1;
    t40 = (26 - 31);
    t41 = (t40 * -1);
    t41 = (t41 + 1);
    t39 = (t38 + 12U);
    *((unsigned int *)t39) = t41;
    t39 = (t0 + 11272);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 0;
    t45 = (t44 + 4U);
    *((int *)t45) = 5;
    t45 = (t44 + 8U);
    *((int *)t45) = 1;
    t46 = (5 - 0);
    t41 = (t46 * 1);
    t41 = (t41 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t41;
    t47 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t37, t39, t43);
    t2 = t47;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t45 = (t0 + 3112U);
    t48 = *((char **)t45);
    t41 = (31 - 31);
    t49 = (t41 * 1U);
    t50 = (0 + t49);
    t45 = (t48 + t50);
    t52 = (t51 + 0U);
    t53 = (t52 + 0U);
    *((int *)t53) = 31;
    t53 = (t52 + 4U);
    *((int *)t53) = 26;
    t53 = (t52 + 8U);
    *((int *)t53) = -1;
    t54 = (26 - 31);
    t55 = (t54 * -1);
    t55 = (t55 + 1);
    t53 = (t52 + 12U);
    *((unsigned int *)t53) = t55;
    t53 = (t0 + 11278);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 0;
    t59 = (t58 + 4U);
    *((int *)t59) = 5;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t60 = (5 - 0);
    t55 = (t60 * 1);
    t55 = (t55 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t55;
    t61 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t45, t51, t53, t57);
    t1 = t61;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t66 = (t0 + 7544);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    *((unsigned char *)t70) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t66);

LAB2:    t71 = (t0 + 7112);
    *((int *)t71) = 1;

LAB1:    return;
LAB3:    t59 = (t0 + 7544);
    t62 = (t59 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t59);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_5(char *t0)
{
    char t10[16];
    char t16[16];
    char t24[16];
    char t30[16];
    char t38[16];
    char t44[16];
    char t52[16];
    char t58[16];
    char t66[16];
    char t72[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t17;
    char *t18;
    int t19;
    unsigned char t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t31;
    char *t32;
    int t33;
    unsigned char t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    char *t45;
    char *t46;
    int t47;
    unsigned char t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t53;
    char *t54;
    int t55;
    unsigned int t56;
    char *t59;
    char *t60;
    int t61;
    unsigned char t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    char *t67;
    char *t68;
    int t69;
    unsigned int t70;
    char *t73;
    char *t74;
    int t75;
    unsigned char t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;

LAB0:    xsi_set_current_line(82, ng0);
    t5 = (t0 + 3112U);
    t6 = *((char **)t5);
    t7 = (31 - 31);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t5 = (t6 + t9);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 31;
    t12 = (t11 + 4U);
    *((int *)t12) = 26;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (26 - 31);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 11284);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 5;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (5 - 0);
    t14 = (t19 * 1);
    t14 = (t14 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t14;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t10, t12, t16);
    if (t20 == 1)
        goto LAB14;

LAB15:    t18 = (t0 + 3112U);
    t21 = *((char **)t18);
    t14 = (31 - 31);
    t22 = (t14 * 1U);
    t23 = (0 + t22);
    t18 = (t21 + t23);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 31;
    t26 = (t25 + 4U);
    *((int *)t26) = 26;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (26 - 31);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t26 = (t0 + 11290);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 0;
    t32 = (t31 + 4U);
    *((int *)t32) = 5;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t33 = (5 - 0);
    t28 = (t33 * 1);
    t28 = (t28 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t28;
    t34 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t24, t26, t30);
    t4 = t34;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t32 = (t0 + 3112U);
    t35 = *((char **)t32);
    t28 = (31 - 31);
    t36 = (t28 * 1U);
    t37 = (0 + t36);
    t32 = (t35 + t37);
    t39 = (t38 + 0U);
    t40 = (t39 + 0U);
    *((int *)t40) = 31;
    t40 = (t39 + 4U);
    *((int *)t40) = 26;
    t40 = (t39 + 8U);
    *((int *)t40) = -1;
    t41 = (26 - 31);
    t42 = (t41 * -1);
    t42 = (t42 + 1);
    t40 = (t39 + 12U);
    *((unsigned int *)t40) = t42;
    t40 = (t0 + 11296);
    t45 = (t44 + 0U);
    t46 = (t45 + 0U);
    *((int *)t46) = 0;
    t46 = (t45 + 4U);
    *((int *)t46) = 5;
    t46 = (t45 + 8U);
    *((int *)t46) = 1;
    t47 = (5 - 0);
    t42 = (t47 * 1);
    t42 = (t42 + 1);
    t46 = (t45 + 12U);
    *((unsigned int *)t46) = t42;
    t48 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t32, t38, t40, t44);
    t3 = t48;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t46 = (t0 + 3112U);
    t49 = *((char **)t46);
    t42 = (31 - 31);
    t50 = (t42 * 1U);
    t51 = (0 + t50);
    t46 = (t49 + t51);
    t53 = (t52 + 0U);
    t54 = (t53 + 0U);
    *((int *)t54) = 31;
    t54 = (t53 + 4U);
    *((int *)t54) = 26;
    t54 = (t53 + 8U);
    *((int *)t54) = -1;
    t55 = (26 - 31);
    t56 = (t55 * -1);
    t56 = (t56 + 1);
    t54 = (t53 + 12U);
    *((unsigned int *)t54) = t56;
    t54 = (t0 + 11302);
    t59 = (t58 + 0U);
    t60 = (t59 + 0U);
    *((int *)t60) = 0;
    t60 = (t59 + 4U);
    *((int *)t60) = 5;
    t60 = (t59 + 8U);
    *((int *)t60) = 1;
    t61 = (5 - 0);
    t56 = (t61 * 1);
    t56 = (t56 + 1);
    t60 = (t59 + 12U);
    *((unsigned int *)t60) = t56;
    t62 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t46, t52, t54, t58);
    t2 = t62;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t60 = (t0 + 3112U);
    t63 = *((char **)t60);
    t56 = (31 - 31);
    t64 = (t56 * 1U);
    t65 = (0 + t64);
    t60 = (t63 + t65);
    t67 = (t66 + 0U);
    t68 = (t67 + 0U);
    *((int *)t68) = 31;
    t68 = (t67 + 4U);
    *((int *)t68) = 26;
    t68 = (t67 + 8U);
    *((int *)t68) = -1;
    t69 = (26 - 31);
    t70 = (t69 * -1);
    t70 = (t70 + 1);
    t68 = (t67 + 12U);
    *((unsigned int *)t68) = t70;
    t68 = (t0 + 11308);
    t73 = (t72 + 0U);
    t74 = (t73 + 0U);
    *((int *)t74) = 0;
    t74 = (t73 + 4U);
    *((int *)t74) = 5;
    t74 = (t73 + 8U);
    *((int *)t74) = 1;
    t75 = (5 - 0);
    t70 = (t75 * 1);
    t70 = (t70 + 1);
    t74 = (t73 + 12U);
    *((unsigned int *)t74) = t70;
    t76 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t60, t66, t68, t72);
    t1 = t76;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t81 = (t0 + 7608);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    *((unsigned char *)t85) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t81);

LAB2:    t86 = (t0 + 7128);
    *((int *)t86) = 1;

LAB1:    return;
LAB3:    t74 = (t0 + 7608);
    t77 = (t74 + 56U);
    t78 = *((char **)t77);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    *((unsigned char *)t80) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t74);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_6(char *t0)
{
    char t7[16];
    char t13[16];
    char t21[16];
    char t27[16];
    char t47[16];
    char t53[16];
    char t61[16];
    char t67[16];
    char t75[16];
    char t81[16];
    char t89[16];
    char t95[16];
    char t103[16];
    char t109[16];
    char t117[16];
    char t123[16];
    char t138[16];
    char t144[16];
    char t161[16];
    char t167[16];
    char t175[16];
    char t181[16];
    char t189[16];
    char t195[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t14;
    char *t15;
    int t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    unsigned char t39;
    unsigned char t40;
    unsigned char t41;
    unsigned char t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    char *t48;
    char *t49;
    int t50;
    unsigned int t51;
    char *t54;
    char *t55;
    int t56;
    unsigned char t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t62;
    char *t63;
    int t64;
    unsigned int t65;
    char *t68;
    char *t69;
    int t70;
    unsigned char t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    char *t76;
    char *t77;
    int t78;
    unsigned int t79;
    char *t82;
    char *t83;
    int t84;
    unsigned char t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    char *t90;
    char *t91;
    int t92;
    unsigned int t93;
    char *t96;
    char *t97;
    int t98;
    unsigned char t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    char *t104;
    char *t105;
    int t106;
    unsigned int t107;
    char *t110;
    char *t111;
    int t112;
    unsigned char t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    char *t118;
    char *t119;
    int t120;
    unsigned int t121;
    char *t124;
    char *t125;
    int t126;
    unsigned char t127;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    char *t139;
    char *t140;
    int t141;
    unsigned int t142;
    char *t145;
    char *t146;
    int t147;
    unsigned char t148;
    char *t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    unsigned char t155;
    unsigned char t156;
    char *t157;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    char *t162;
    char *t163;
    int t164;
    unsigned int t165;
    char *t168;
    char *t169;
    int t170;
    unsigned char t171;
    char *t172;
    unsigned int t173;
    unsigned int t174;
    char *t176;
    char *t177;
    int t178;
    unsigned int t179;
    char *t182;
    char *t183;
    int t184;
    unsigned char t185;
    char *t186;
    unsigned int t187;
    unsigned int t188;
    char *t190;
    char *t191;
    int t192;
    unsigned int t193;
    char *t196;
    char *t197;
    int t198;
    unsigned char t199;
    char *t201;
    char *t202;
    char *t203;
    char *t204;
    char *t205;
    char *t206;

LAB0:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 26;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (26 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 11314);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (5 - 0);
    t11 = (t16 * 1);
    t11 = (t11 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t11;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t7, t9, t13);
    if (t17 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 3112U);
    t18 = *((char **)t15);
    t11 = (31 - 31);
    t19 = (t11 * 1U);
    t20 = (0 + t19);
    t15 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 26;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (26 - 31);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t0 + 11320);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 5;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (5 - 0);
    t25 = (t30 * 1);
    t25 = (t25 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t25;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t15, t21, t23, t27);
    t1 = t31;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t43 = (t0 + 3112U);
    t44 = *((char **)t43);
    t25 = (31 - 31);
    t45 = (t25 * 1U);
    t46 = (0 + t45);
    t43 = (t44 + t46);
    t48 = (t47 + 0U);
    t49 = (t48 + 0U);
    *((int *)t49) = 31;
    t49 = (t48 + 4U);
    *((int *)t49) = 26;
    t49 = (t48 + 8U);
    *((int *)t49) = -1;
    t50 = (26 - 31);
    t51 = (t50 * -1);
    t51 = (t51 + 1);
    t49 = (t48 + 12U);
    *((unsigned int *)t49) = t51;
    t49 = (t0 + 11328);
    t54 = (t53 + 0U);
    t55 = (t54 + 0U);
    *((int *)t55) = 0;
    t55 = (t54 + 4U);
    *((int *)t55) = 5;
    t55 = (t54 + 8U);
    *((int *)t55) = 1;
    t56 = (5 - 0);
    t51 = (t56 * 1);
    t51 = (t51 + 1);
    t55 = (t54 + 12U);
    *((unsigned int *)t55) = t51;
    t57 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t43, t47, t49, t53);
    if (t57 == 1)
        goto LAB22;

LAB23:    t55 = (t0 + 3112U);
    t58 = *((char **)t55);
    t51 = (31 - 31);
    t59 = (t51 * 1U);
    t60 = (0 + t59);
    t55 = (t58 + t60);
    t62 = (t61 + 0U);
    t63 = (t62 + 0U);
    *((int *)t63) = 31;
    t63 = (t62 + 4U);
    *((int *)t63) = 26;
    t63 = (t62 + 8U);
    *((int *)t63) = -1;
    t64 = (26 - 31);
    t65 = (t64 * -1);
    t65 = (t65 + 1);
    t63 = (t62 + 12U);
    *((unsigned int *)t63) = t65;
    t63 = (t0 + 11334);
    t68 = (t67 + 0U);
    t69 = (t68 + 0U);
    *((int *)t69) = 0;
    t69 = (t68 + 4U);
    *((int *)t69) = 5;
    t69 = (t68 + 8U);
    *((int *)t69) = 1;
    t70 = (5 - 0);
    t65 = (t70 * 1);
    t65 = (t65 + 1);
    t69 = (t68 + 12U);
    *((unsigned int *)t69) = t65;
    t71 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t55, t61, t63, t67);
    t42 = t71;

LAB24:    if (t42 == 1)
        goto LAB19;

LAB20:    t69 = (t0 + 3112U);
    t72 = *((char **)t69);
    t65 = (31 - 31);
    t73 = (t65 * 1U);
    t74 = (0 + t73);
    t69 = (t72 + t74);
    t76 = (t75 + 0U);
    t77 = (t76 + 0U);
    *((int *)t77) = 31;
    t77 = (t76 + 4U);
    *((int *)t77) = 26;
    t77 = (t76 + 8U);
    *((int *)t77) = -1;
    t78 = (26 - 31);
    t79 = (t78 * -1);
    t79 = (t79 + 1);
    t77 = (t76 + 12U);
    *((unsigned int *)t77) = t79;
    t77 = (t0 + 11340);
    t82 = (t81 + 0U);
    t83 = (t82 + 0U);
    *((int *)t83) = 0;
    t83 = (t82 + 4U);
    *((int *)t83) = 5;
    t83 = (t82 + 8U);
    *((int *)t83) = 1;
    t84 = (5 - 0);
    t79 = (t84 * 1);
    t79 = (t79 + 1);
    t83 = (t82 + 12U);
    *((unsigned int *)t83) = t79;
    t85 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t69, t75, t77, t81);
    t41 = t85;

LAB21:    if (t41 == 1)
        goto LAB16;

LAB17:    t83 = (t0 + 3112U);
    t86 = *((char **)t83);
    t79 = (31 - 31);
    t87 = (t79 * 1U);
    t88 = (0 + t87);
    t83 = (t86 + t88);
    t90 = (t89 + 0U);
    t91 = (t90 + 0U);
    *((int *)t91) = 31;
    t91 = (t90 + 4U);
    *((int *)t91) = 26;
    t91 = (t90 + 8U);
    *((int *)t91) = -1;
    t92 = (26 - 31);
    t93 = (t92 * -1);
    t93 = (t93 + 1);
    t91 = (t90 + 12U);
    *((unsigned int *)t91) = t93;
    t91 = (t0 + 11346);
    t96 = (t95 + 0U);
    t97 = (t96 + 0U);
    *((int *)t97) = 0;
    t97 = (t96 + 4U);
    *((int *)t97) = 5;
    t97 = (t96 + 8U);
    *((int *)t97) = 1;
    t98 = (5 - 0);
    t93 = (t98 * 1);
    t93 = (t93 + 1);
    t97 = (t96 + 12U);
    *((unsigned int *)t97) = t93;
    t99 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t83, t89, t91, t95);
    t40 = t99;

LAB18:    if (t40 == 1)
        goto LAB13;

LAB14:    t97 = (t0 + 3112U);
    t100 = *((char **)t97);
    t93 = (31 - 31);
    t101 = (t93 * 1U);
    t102 = (0 + t101);
    t97 = (t100 + t102);
    t104 = (t103 + 0U);
    t105 = (t104 + 0U);
    *((int *)t105) = 31;
    t105 = (t104 + 4U);
    *((int *)t105) = 26;
    t105 = (t104 + 8U);
    *((int *)t105) = -1;
    t106 = (26 - 31);
    t107 = (t106 * -1);
    t107 = (t107 + 1);
    t105 = (t104 + 12U);
    *((unsigned int *)t105) = t107;
    t105 = (t0 + 11352);
    t110 = (t109 + 0U);
    t111 = (t110 + 0U);
    *((int *)t111) = 0;
    t111 = (t110 + 4U);
    *((int *)t111) = 5;
    t111 = (t110 + 8U);
    *((int *)t111) = 1;
    t112 = (5 - 0);
    t107 = (t112 * 1);
    t107 = (t107 + 1);
    t111 = (t110 + 12U);
    *((unsigned int *)t111) = t107;
    t113 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t97, t103, t105, t109);
    t39 = t113;

LAB15:    if (t39 == 1)
        goto LAB10;

LAB11:    t111 = (t0 + 3112U);
    t114 = *((char **)t111);
    t107 = (31 - 31);
    t115 = (t107 * 1U);
    t116 = (0 + t115);
    t111 = (t114 + t116);
    t118 = (t117 + 0U);
    t119 = (t118 + 0U);
    *((int *)t119) = 31;
    t119 = (t118 + 4U);
    *((int *)t119) = 26;
    t119 = (t118 + 8U);
    *((int *)t119) = -1;
    t120 = (26 - 31);
    t121 = (t120 * -1);
    t121 = (t121 + 1);
    t119 = (t118 + 12U);
    *((unsigned int *)t119) = t121;
    t119 = (t0 + 11358);
    t124 = (t123 + 0U);
    t125 = (t124 + 0U);
    *((int *)t125) = 0;
    t125 = (t124 + 4U);
    *((int *)t125) = 5;
    t125 = (t124 + 8U);
    *((int *)t125) = 1;
    t126 = (5 - 0);
    t121 = (t126 * 1);
    t121 = (t121 + 1);
    t125 = (t124 + 12U);
    *((unsigned int *)t125) = t121;
    t127 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t111, t117, t119, t123);
    t38 = t127;

LAB12:    if (t38 != 0)
        goto LAB8;

LAB9:    t134 = (t0 + 3112U);
    t135 = *((char **)t134);
    t121 = (31 - 31);
    t136 = (t121 * 1U);
    t137 = (0 + t136);
    t134 = (t135 + t137);
    t139 = (t138 + 0U);
    t140 = (t139 + 0U);
    *((int *)t140) = 31;
    t140 = (t139 + 4U);
    *((int *)t140) = 26;
    t140 = (t139 + 8U);
    *((int *)t140) = -1;
    t141 = (26 - 31);
    t142 = (t141 * -1);
    t142 = (t142 + 1);
    t140 = (t139 + 12U);
    *((unsigned int *)t140) = t142;
    t140 = (t0 + 11366);
    t145 = (t144 + 0U);
    t146 = (t145 + 0U);
    *((int *)t146) = 0;
    t146 = (t145 + 4U);
    *((int *)t146) = 5;
    t146 = (t145 + 8U);
    *((int *)t146) = 1;
    t147 = (5 - 0);
    t142 = (t147 * 1);
    t142 = (t142 + 1);
    t146 = (t145 + 12U);
    *((unsigned int *)t146) = t142;
    t148 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t134, t138, t140, t144);
    if (t148 != 0)
        goto LAB25;

LAB26:    t157 = (t0 + 3112U);
    t158 = *((char **)t157);
    t142 = (31 - 31);
    t159 = (t142 * 1U);
    t160 = (0 + t159);
    t157 = (t158 + t160);
    t162 = (t161 + 0U);
    t163 = (t162 + 0U);
    *((int *)t163) = 31;
    t163 = (t162 + 4U);
    *((int *)t163) = 26;
    t163 = (t162 + 8U);
    *((int *)t163) = -1;
    t164 = (26 - 31);
    t165 = (t164 * -1);
    t165 = (t165 + 1);
    t163 = (t162 + 12U);
    *((unsigned int *)t163) = t165;
    t163 = (t0 + 11374);
    t168 = (t167 + 0U);
    t169 = (t168 + 0U);
    *((int *)t169) = 0;
    t169 = (t168 + 4U);
    *((int *)t169) = 5;
    t169 = (t168 + 8U);
    *((int *)t169) = 1;
    t170 = (5 - 0);
    t165 = (t170 * 1);
    t165 = (t165 + 1);
    t169 = (t168 + 12U);
    *((unsigned int *)t169) = t165;
    t171 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t157, t161, t163, t167);
    if (t171 == 1)
        goto LAB32;

LAB33:    t169 = (t0 + 3112U);
    t172 = *((char **)t169);
    t165 = (31 - 31);
    t173 = (t165 * 1U);
    t174 = (0 + t173);
    t169 = (t172 + t174);
    t176 = (t175 + 0U);
    t177 = (t176 + 0U);
    *((int *)t177) = 31;
    t177 = (t176 + 4U);
    *((int *)t177) = 26;
    t177 = (t176 + 8U);
    *((int *)t177) = -1;
    t178 = (26 - 31);
    t179 = (t178 * -1);
    t179 = (t179 + 1);
    t177 = (t176 + 12U);
    *((unsigned int *)t177) = t179;
    t177 = (t0 + 11380);
    t182 = (t181 + 0U);
    t183 = (t182 + 0U);
    *((int *)t183) = 0;
    t183 = (t182 + 4U);
    *((int *)t183) = 5;
    t183 = (t182 + 8U);
    *((int *)t183) = 1;
    t184 = (5 - 0);
    t179 = (t184 * 1);
    t179 = (t179 + 1);
    t183 = (t182 + 12U);
    *((unsigned int *)t183) = t179;
    t185 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t169, t175, t177, t181);
    t156 = t185;

LAB34:    if (t156 == 1)
        goto LAB29;

LAB30:    t183 = (t0 + 3112U);
    t186 = *((char **)t183);
    t179 = (31 - 31);
    t187 = (t179 * 1U);
    t188 = (0 + t187);
    t183 = (t186 + t188);
    t190 = (t189 + 0U);
    t191 = (t190 + 0U);
    *((int *)t191) = 31;
    t191 = (t190 + 4U);
    *((int *)t191) = 26;
    t191 = (t190 + 8U);
    *((int *)t191) = -1;
    t192 = (26 - 31);
    t193 = (t192 * -1);
    t193 = (t193 + 1);
    t191 = (t190 + 12U);
    *((unsigned int *)t191) = t193;
    t191 = (t0 + 11386);
    t196 = (t195 + 0U);
    t197 = (t196 + 0U);
    *((int *)t197) = 0;
    t197 = (t196 + 4U);
    *((int *)t197) = 5;
    t197 = (t196 + 8U);
    *((int *)t197) = 1;
    t198 = (5 - 0);
    t193 = (t198 * 1);
    t193 = (t193 + 1);
    t197 = (t196 + 12U);
    *((unsigned int *)t197) = t193;
    t199 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t183, t189, t191, t195);
    t155 = t199;

LAB31:    if (t155 != 0)
        goto LAB27;

LAB28:
LAB2:    t206 = (t0 + 7144);
    *((int *)t206) = 1;

LAB1:    return;
LAB3:    t29 = (t0 + 11326);
    t33 = (t0 + 7672);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t29, 2U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t125 = (t0 + 11364);
    t129 = (t0 + 7672);
    t130 = (t129 + 56U);
    t131 = *((char **)t130);
    t132 = (t131 + 56U);
    t133 = *((char **)t132);
    memcpy(t133, t125, 2U);
    xsi_driver_first_trans_fast_port(t129);
    goto LAB2;

LAB10:    t38 = (unsigned char)1;
    goto LAB12;

LAB13:    t39 = (unsigned char)1;
    goto LAB15;

LAB16:    t40 = (unsigned char)1;
    goto LAB18;

LAB19:    t41 = (unsigned char)1;
    goto LAB21;

LAB22:    t42 = (unsigned char)1;
    goto LAB24;

LAB25:    t146 = (t0 + 11372);
    t150 = (t0 + 7672);
    t151 = (t150 + 56U);
    t152 = *((char **)t151);
    t153 = (t152 + 56U);
    t154 = *((char **)t153);
    memcpy(t154, t146, 2U);
    xsi_driver_first_trans_fast_port(t150);
    goto LAB2;

LAB27:    t197 = (t0 + 11392);
    t201 = (t0 + 7672);
    t202 = (t201 + 56U);
    t203 = *((char **)t202);
    t204 = (t203 + 56U);
    t205 = *((char **)t204);
    memcpy(t205, t197, 2U);
    xsi_driver_first_trans_fast_port(t201);
    goto LAB2;

LAB29:    t155 = (unsigned char)1;
    goto LAB31;

LAB32:    t156 = (unsigned char)1;
    goto LAB34;

}

static void work_a_3222946569_1351276808_p_7(char *t0)
{
    char t8[16];
    char t14[16];
    char t22[16];
    char t28[16];
    char t36[16];
    char t42[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t15;
    char *t16;
    int t17;
    unsigned char t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    char *t29;
    char *t30;
    int t31;
    unsigned char t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    char *t43;
    char *t44;
    int t45;
    unsigned char t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    xsi_set_current_line(106, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 31;
    t10 = (t9 + 4U);
    *((int *)t10) = 26;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t11 = (26 - 31);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 11394);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 5;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (5 - 0);
    t12 = (t17 * 1);
    t12 = (t12 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t12;
    t18 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t8, t10, t14);
    if (t18 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 3112U);
    t19 = *((char **)t16);
    t12 = (31 - 31);
    t20 = (t12 * 1U);
    t21 = (0 + t20);
    t16 = (t19 + t21);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 31;
    t24 = (t23 + 4U);
    *((int *)t24) = 26;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (26 - 31);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 11400);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 5;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (5 - 0);
    t26 = (t31 * 1);
    t26 = (t26 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t26;
    t32 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t16, t22, t24, t28);
    t2 = t32;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t30 = (t0 + 3112U);
    t33 = *((char **)t30);
    t26 = (31 - 31);
    t34 = (t26 * 1U);
    t35 = (0 + t34);
    t30 = (t33 + t35);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 31;
    t38 = (t37 + 4U);
    *((int *)t38) = 26;
    t38 = (t37 + 8U);
    *((int *)t38) = -1;
    t39 = (26 - 31);
    t40 = (t39 * -1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t38 = (t0 + 11406);
    t43 = (t42 + 0U);
    t44 = (t43 + 0U);
    *((int *)t44) = 0;
    t44 = (t43 + 4U);
    *((int *)t44) = 5;
    t44 = (t43 + 8U);
    *((int *)t44) = 1;
    t45 = (5 - 0);
    t40 = (t45 * 1);
    t40 = (t40 + 1);
    t44 = (t43 + 12U);
    *((unsigned int *)t44) = t40;
    t46 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t30, t36, t38, t42);
    t1 = t46;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t51 = (t0 + 7736);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    *((unsigned char *)t55) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t51);

LAB2:    t56 = (t0 + 7160);
    *((int *)t56) = 1;

LAB1:    return;
LAB3:    t44 = (t0 + 7736);
    t47 = (t44 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    *((unsigned char *)t50) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t44);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_8(char *t0)
{
    char t6[16];
    char t12[16];
    char t34[16];
    char t40[16];
    char t48[16];
    char t54[16];
    char t62[16];
    char t68[16];
    char t76[16];
    char t82[16];
    char t99[16];
    char t105[16];
    char t121[16];
    char t127[16];
    char t135[16];
    char t141[16];
    char t156[16];
    char t162[16];
    char t177[16];
    char t183[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    char *t41;
    char *t42;
    int t43;
    unsigned char t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t50;
    int t51;
    unsigned int t52;
    char *t55;
    char *t56;
    int t57;
    unsigned char t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t63;
    char *t64;
    int t65;
    unsigned int t66;
    char *t69;
    char *t70;
    int t71;
    unsigned char t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    char *t77;
    char *t78;
    int t79;
    unsigned int t80;
    char *t83;
    char *t84;
    int t85;
    unsigned char t86;
    unsigned char t87;
    char *t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned char t92;
    unsigned char t93;
    char *t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t100;
    char *t101;
    int t102;
    unsigned int t103;
    char *t106;
    char *t107;
    int t108;
    unsigned char t109;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    unsigned char t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    char *t122;
    char *t123;
    int t124;
    unsigned int t125;
    char *t128;
    char *t129;
    int t130;
    unsigned char t131;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    char *t136;
    char *t137;
    int t138;
    unsigned int t139;
    char *t142;
    char *t143;
    int t144;
    unsigned char t145;
    char *t147;
    char *t148;
    char *t149;
    char *t150;
    char *t151;
    char *t152;
    char *t153;
    unsigned int t154;
    unsigned int t155;
    char *t157;
    char *t158;
    int t159;
    unsigned int t160;
    char *t163;
    char *t164;
    int t165;
    unsigned char t166;
    char *t168;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    char *t178;
    char *t179;
    int t180;
    unsigned int t181;
    char *t184;
    char *t185;
    int t186;
    unsigned char t187;
    char *t189;
    char *t190;
    char *t191;
    char *t192;
    char *t193;
    char *t194;

LAB0:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 31;
    t8 = (t7 + 4U);
    *((int *)t8) = 26;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (26 - 31);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 11412);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 5;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (5 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:    t29 = (t0 + 3112U);
    t30 = *((char **)t29);
    t31 = (31 - 31);
    t32 = (t31 * 1U);
    t33 = (0 + t32);
    t29 = (t30 + t33);
    t35 = (t34 + 0U);
    t36 = (t35 + 0U);
    *((int *)t36) = 31;
    t36 = (t35 + 4U);
    *((int *)t36) = 26;
    t36 = (t35 + 8U);
    *((int *)t36) = -1;
    t37 = (26 - 31);
    t38 = (t37 * -1);
    t38 = (t38 + 1);
    t36 = (t35 + 12U);
    *((unsigned int *)t36) = t38;
    t36 = (t0 + 11418);
    t41 = (t40 + 0U);
    t42 = (t41 + 0U);
    *((int *)t42) = 0;
    t42 = (t41 + 4U);
    *((int *)t42) = 5;
    t42 = (t41 + 8U);
    *((int *)t42) = 1;
    t43 = (5 - 0);
    t38 = (t43 * 1);
    t38 = (t38 + 1);
    t42 = (t41 + 12U);
    *((unsigned int *)t42) = t38;
    t44 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t29, t34, t36, t40);
    if (t44 == 1)
        goto LAB16;

LAB17:    t42 = (t0 + 3112U);
    t45 = *((char **)t42);
    t38 = (31 - 31);
    t46 = (t38 * 1U);
    t47 = (0 + t46);
    t42 = (t45 + t47);
    t49 = (t48 + 0U);
    t50 = (t49 + 0U);
    *((int *)t50) = 31;
    t50 = (t49 + 4U);
    *((int *)t50) = 26;
    t50 = (t49 + 8U);
    *((int *)t50) = -1;
    t51 = (26 - 31);
    t52 = (t51 * -1);
    t52 = (t52 + 1);
    t50 = (t49 + 12U);
    *((unsigned int *)t50) = t52;
    t50 = (t0 + 11424);
    t55 = (t54 + 0U);
    t56 = (t55 + 0U);
    *((int *)t56) = 0;
    t56 = (t55 + 4U);
    *((int *)t56) = 5;
    t56 = (t55 + 8U);
    *((int *)t56) = 1;
    t57 = (5 - 0);
    t52 = (t57 * 1);
    t52 = (t52 + 1);
    t56 = (t55 + 12U);
    *((unsigned int *)t56) = t52;
    t58 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t42, t48, t50, t54);
    t28 = t58;

LAB18:    if (t28 == 1)
        goto LAB13;

LAB14:    t56 = (t0 + 3112U);
    t59 = *((char **)t56);
    t52 = (31 - 31);
    t60 = (t52 * 1U);
    t61 = (0 + t60);
    t56 = (t59 + t61);
    t63 = (t62 + 0U);
    t64 = (t63 + 0U);
    *((int *)t64) = 31;
    t64 = (t63 + 4U);
    *((int *)t64) = 26;
    t64 = (t63 + 8U);
    *((int *)t64) = -1;
    t65 = (26 - 31);
    t66 = (t65 * -1);
    t66 = (t66 + 1);
    t64 = (t63 + 12U);
    *((unsigned int *)t64) = t66;
    t64 = (t0 + 11430);
    t69 = (t68 + 0U);
    t70 = (t69 + 0U);
    *((int *)t70) = 0;
    t70 = (t69 + 4U);
    *((int *)t70) = 5;
    t70 = (t69 + 8U);
    *((int *)t70) = 1;
    t71 = (5 - 0);
    t66 = (t71 * 1);
    t66 = (t66 + 1);
    t70 = (t69 + 12U);
    *((unsigned int *)t70) = t66;
    t72 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t56, t62, t64, t68);
    t27 = t72;

LAB15:    if (t27 == 1)
        goto LAB10;

LAB11:    t70 = (t0 + 3112U);
    t73 = *((char **)t70);
    t66 = (31 - 31);
    t74 = (t66 * 1U);
    t75 = (0 + t74);
    t70 = (t73 + t75);
    t77 = (t76 + 0U);
    t78 = (t77 + 0U);
    *((int *)t78) = 31;
    t78 = (t77 + 4U);
    *((int *)t78) = 26;
    t78 = (t77 + 8U);
    *((int *)t78) = -1;
    t79 = (26 - 31);
    t80 = (t79 * -1);
    t80 = (t80 + 1);
    t78 = (t77 + 12U);
    *((unsigned int *)t78) = t80;
    t78 = (t0 + 11436);
    t83 = (t82 + 0U);
    t84 = (t83 + 0U);
    *((int *)t84) = 0;
    t84 = (t83 + 4U);
    *((int *)t84) = 5;
    t84 = (t83 + 8U);
    *((int *)t84) = 1;
    t85 = (5 - 0);
    t80 = (t85 * 1);
    t80 = (t80 + 1);
    t84 = (t83 + 12U);
    *((unsigned int *)t84) = t80;
    t86 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t70, t76, t78, t82);
    t26 = t86;

LAB12:    if (t26 == 1)
        goto LAB7;

LAB8:    t84 = (t0 + 3112U);
    t88 = *((char **)t84);
    t89 = (31 - 31);
    t80 = (t89 * -1);
    t90 = (1U * t80);
    t91 = (0 + t90);
    t84 = (t88 + t91);
    t92 = *((unsigned char *)t84);
    t93 = (t92 == (unsigned char)2);
    if (t93 == 1)
        goto LAB19;

LAB20:    t87 = (unsigned char)0;

LAB21:    t25 = t87;

LAB9:    if (t25 != 0)
        goto LAB5;

LAB6:    t117 = (t0 + 3112U);
    t118 = *((char **)t117);
    t103 = (31 - 31);
    t119 = (t103 * 1U);
    t120 = (0 + t119);
    t117 = (t118 + t120);
    t122 = (t121 + 0U);
    t123 = (t122 + 0U);
    *((int *)t123) = 31;
    t123 = (t122 + 4U);
    *((int *)t123) = 26;
    t123 = (t122 + 8U);
    *((int *)t123) = -1;
    t124 = (26 - 31);
    t125 = (t124 * -1);
    t125 = (t125 + 1);
    t123 = (t122 + 12U);
    *((unsigned int *)t123) = t125;
    t123 = (t0 + 11448);
    t128 = (t127 + 0U);
    t129 = (t128 + 0U);
    *((int *)t129) = 0;
    t129 = (t128 + 4U);
    *((int *)t129) = 5;
    t129 = (t128 + 8U);
    *((int *)t129) = 1;
    t130 = (5 - 0);
    t125 = (t130 * 1);
    t125 = (t125 + 1);
    t129 = (t128 + 12U);
    *((unsigned int *)t129) = t125;
    t131 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t117, t121, t123, t127);
    if (t131 == 1)
        goto LAB24;

LAB25:    t129 = (t0 + 3112U);
    t132 = *((char **)t129);
    t125 = (31 - 31);
    t133 = (t125 * 1U);
    t134 = (0 + t133);
    t129 = (t132 + t134);
    t136 = (t135 + 0U);
    t137 = (t136 + 0U);
    *((int *)t137) = 31;
    t137 = (t136 + 4U);
    *((int *)t137) = 26;
    t137 = (t136 + 8U);
    *((int *)t137) = -1;
    t138 = (26 - 31);
    t139 = (t138 * -1);
    t139 = (t139 + 1);
    t137 = (t136 + 12U);
    *((unsigned int *)t137) = t139;
    t137 = (t0 + 11454);
    t142 = (t141 + 0U);
    t143 = (t142 + 0U);
    *((int *)t143) = 0;
    t143 = (t142 + 4U);
    *((int *)t143) = 5;
    t143 = (t142 + 8U);
    *((int *)t143) = 1;
    t144 = (5 - 0);
    t139 = (t144 * 1);
    t139 = (t139 + 1);
    t143 = (t142 + 12U);
    *((unsigned int *)t143) = t139;
    t145 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t129, t135, t137, t141);
    t116 = t145;

LAB26:    if (t116 != 0)
        goto LAB22;

LAB23:    t152 = (t0 + 3112U);
    t153 = *((char **)t152);
    t139 = (31 - 31);
    t154 = (t139 * 1U);
    t155 = (0 + t154);
    t152 = (t153 + t155);
    t157 = (t156 + 0U);
    t158 = (t157 + 0U);
    *((int *)t158) = 31;
    t158 = (t157 + 4U);
    *((int *)t158) = 26;
    t158 = (t157 + 8U);
    *((int *)t158) = -1;
    t159 = (26 - 31);
    t160 = (t159 * -1);
    t160 = (t160 + 1);
    t158 = (t157 + 12U);
    *((unsigned int *)t158) = t160;
    t158 = (t0 + 11464);
    t163 = (t162 + 0U);
    t164 = (t163 + 0U);
    *((int *)t164) = 0;
    t164 = (t163 + 4U);
    *((int *)t164) = 5;
    t164 = (t163 + 8U);
    *((int *)t164) = 1;
    t165 = (5 - 0);
    t160 = (t165 * 1);
    t160 = (t160 + 1);
    t164 = (t163 + 12U);
    *((unsigned int *)t164) = t160;
    t166 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t152, t156, t158, t162);
    if (t166 != 0)
        goto LAB27;

LAB28:    t173 = (t0 + 3112U);
    t174 = *((char **)t173);
    t160 = (31 - 31);
    t175 = (t160 * 1U);
    t176 = (0 + t175);
    t173 = (t174 + t176);
    t178 = (t177 + 0U);
    t179 = (t178 + 0U);
    *((int *)t179) = 31;
    t179 = (t178 + 4U);
    *((int *)t179) = 26;
    t179 = (t178 + 8U);
    *((int *)t179) = -1;
    t180 = (26 - 31);
    t181 = (t180 * -1);
    t181 = (t181 + 1);
    t179 = (t178 + 12U);
    *((unsigned int *)t179) = t181;
    t179 = (t0 + 11474);
    t184 = (t183 + 0U);
    t185 = (t184 + 0U);
    *((int *)t185) = 0;
    t185 = (t184 + 4U);
    *((int *)t185) = 5;
    t185 = (t184 + 8U);
    *((int *)t185) = 1;
    t186 = (5 - 0);
    t181 = (t186 * 1);
    t181 = (t181 + 1);
    t185 = (t184 + 12U);
    *((unsigned int *)t185) = t181;
    t187 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t173, t177, t179, t183);
    if (t187 != 0)
        goto LAB29;

LAB30:
LAB2:    t194 = (t0 + 7176);
    *((int *)t194) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 3112U);
    t17 = *((char **)t14);
    t10 = (31 - 3);
    t18 = (t10 * 1U);
    t19 = (0 + t18);
    t14 = (t17 + t19);
    t20 = (t0 + 7800);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 4U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB5:    t107 = (t0 + 11444);
    t111 = (t0 + 7800);
    t112 = (t111 + 56U);
    t113 = *((char **)t112);
    t114 = (t113 + 56U);
    t115 = *((char **)t114);
    memcpy(t115, t107, 4U);
    xsi_driver_first_trans_fast_port(t111);
    goto LAB2;

LAB7:    t25 = (unsigned char)1;
    goto LAB9;

LAB10:    t26 = (unsigned char)1;
    goto LAB12;

LAB13:    t27 = (unsigned char)1;
    goto LAB15;

LAB16:    t28 = (unsigned char)1;
    goto LAB18;

LAB19:    t94 = (t0 + 3112U);
    t95 = *((char **)t94);
    t96 = (31 - 27);
    t97 = (t96 * 1U);
    t98 = (0 + t97);
    t94 = (t95 + t98);
    t100 = (t99 + 0U);
    t101 = (t100 + 0U);
    *((int *)t101) = 27;
    t101 = (t100 + 4U);
    *((int *)t101) = 26;
    t101 = (t100 + 8U);
    *((int *)t101) = -1;
    t102 = (26 - 27);
    t103 = (t102 * -1);
    t103 = (t103 + 1);
    t101 = (t100 + 12U);
    *((unsigned int *)t101) = t103;
    t101 = (t0 + 11442);
    t106 = (t105 + 0U);
    t107 = (t106 + 0U);
    *((int *)t107) = 0;
    t107 = (t106 + 4U);
    *((int *)t107) = 1;
    t107 = (t106 + 8U);
    *((int *)t107) = 1;
    t108 = (1 - 0);
    t103 = (t108 * 1);
    t103 = (t103 + 1);
    t107 = (t106 + 12U);
    *((unsigned int *)t107) = t103;
    t109 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t94, t99, t101, t105);
    t87 = t109;
    goto LAB21;

LAB22:    t143 = (t0 + 11460);
    t147 = (t0 + 7800);
    t148 = (t147 + 56U);
    t149 = *((char **)t148);
    t150 = (t149 + 56U);
    t151 = *((char **)t150);
    memcpy(t151, t143, 4U);
    xsi_driver_first_trans_fast_port(t147);
    goto LAB2;

LAB24:    t116 = (unsigned char)1;
    goto LAB26;

LAB27:    t164 = (t0 + 11470);
    t168 = (t0 + 7800);
    t169 = (t168 + 56U);
    t170 = *((char **)t169);
    t171 = (t170 + 56U);
    t172 = *((char **)t171);
    memcpy(t172, t164, 4U);
    xsi_driver_first_trans_fast_port(t168);
    goto LAB2;

LAB29:    t185 = (t0 + 11480);
    t189 = (t0 + 7800);
    t190 = (t189 + 56U);
    t191 = *((char **)t190);
    t192 = (t191 + 56U);
    t193 = *((char **)t192);
    memcpy(t193, t185, 4U);
    xsi_driver_first_trans_fast_port(t189);
    goto LAB2;

}

static void work_a_3222946569_1351276808_p_9(char *t0)
{
    char t7[16];
    char t13[16];
    char t21[16];
    char t27[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t14;
    char *t15;
    int t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 26;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (26 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 11484);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (5 - 0);
    t11 = (t16 * 1);
    t11 = (t11 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t11;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t7, t9, t13);
    if (t17 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 3112U);
    t18 = *((char **)t15);
    t11 = (31 - 31);
    t19 = (t11 * 1U);
    t20 = (0 + t19);
    t15 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 26;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (26 - 31);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t0 + 11490);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 5;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (5 - 0);
    t25 = (t30 * 1);
    t25 = (t25 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t25;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t15, t21, t23, t27);
    t1 = t31;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t36 = (t0 + 7864);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t36);

LAB2:    t41 = (t0 + 7192);
    *((int *)t41) = 1;

LAB1:    return;
LAB3:    t29 = (t0 + 7864);
    t32 = (t29 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t29);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3222946569_1351276808_p_10(char *t0)
{
    char t7[16];
    char t13[16];
    char t21[16];
    char t27[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t14;
    char *t15;
    int t16;
    unsigned char t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 26;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (26 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 11496);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (5 - 0);
    t11 = (t16 * 1);
    t11 = (t11 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t11;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t7, t9, t13);
    if (t17 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 3112U);
    t18 = *((char **)t15);
    t11 = (31 - 31);
    t19 = (t11 * 1U);
    t20 = (0 + t19);
    t15 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 26;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (26 - 31);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t0 + 11502);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 5;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (5 - 0);
    t25 = (t30 * 1);
    t25 = (t25 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t25;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t15, t21, t23, t27);
    t1 = t31;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t36 = (t0 + 7928);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t36);

LAB2:    t41 = (t0 + 7208);
    *((int *)t41) = 1;

LAB1:    return;
LAB3:    t29 = (t0 + 7928);
    t32 = (t29 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((unsigned char *)t35) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t29);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_3222946569_1351276808_init()
{
	static char *pe[] = {(void *)work_a_3222946569_1351276808_p_0,(void *)work_a_3222946569_1351276808_p_1,(void *)work_a_3222946569_1351276808_p_2,(void *)work_a_3222946569_1351276808_p_3,(void *)work_a_3222946569_1351276808_p_4,(void *)work_a_3222946569_1351276808_p_5,(void *)work_a_3222946569_1351276808_p_6,(void *)work_a_3222946569_1351276808_p_7,(void *)work_a_3222946569_1351276808_p_8,(void *)work_a_3222946569_1351276808_p_9,(void *)work_a_3222946569_1351276808_p_10};
	xsi_register_didat("work_a_3222946569_1351276808", "isim/PROC_SC_tb_isim_beh.exe.sim/work/a_3222946569_1351276808.didat");
	xsi_register_executes(pe);
}
