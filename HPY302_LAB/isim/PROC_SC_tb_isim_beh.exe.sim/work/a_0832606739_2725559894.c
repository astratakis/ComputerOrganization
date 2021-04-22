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
static const char *ng0 = "/home/carioca/Desktop/comp_arch_help/HPY302_LAB/ALU.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833316239837_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16447329934917513135_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_0832606739_2725559894_p_0(char *t0)
{
    char t9[16];
    char t12[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 3464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 8053);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 8057);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 8061);
    t4 = (t0 + 5184);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 33U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(51, ng0);

LAB13:    t2 = (t0 + 5024);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t13 = ((IEEE_P_2592010699) + 4000);
    t14 = (t0 + 7816U);
    t10 = xsi_base_array_concat(t10, t12, t13, (char)99, (unsigned char)2, (char)97, t11, t14, (char)101);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t18 = ((IEEE_P_2592010699) + 4000);
    t19 = (t0 + 7832U);
    t15 = xsi_base_array_concat(t15, t17, t18, (char)99, (unsigned char)2, (char)97, t16, t19, (char)101);
    t20 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t9, t10, t12, t15, t17);
    t21 = (t0 + 5184);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 33U);
    xsi_driver_first_trans_fast(t21);
    goto LAB4;

LAB6:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 7816U);
    t2 = xsi_base_array_concat(t2, t12, t4, (char)99, (unsigned char)2, (char)97, t3, t6, (char)101);
    t7 = (t0 + 1192U);
    t10 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4000);
    t13 = (t0 + 7832U);
    t7 = xsi_base_array_concat(t7, t17, t11, (char)99, (unsigned char)2, (char)97, t10, t13, (char)101);
    t14 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t9, t2, t12, t7, t17);
    t15 = (t0 + 5184);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 33U);
    xsi_driver_first_trans_fast(t15);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 5024);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_0832606739_2725559894_p_1(char *t0)
{
    char t36[16];
    char t54[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned char t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t55;
    unsigned char t56;

LAB0:    t1 = (t0 + 3712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 8094);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB17:    t6 = (t0 + 8098);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB18:    t9 = (t0 + 8102);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB19:    t12 = (t0 + 8106);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB20:    t15 = (t0 + 8110);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB21:    t18 = (t0 + 8114);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB22:    t21 = (t0 + 8118);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB23:    t24 = (t0 + 8122);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB24:    t27 = (t0 + 8126);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB25:    t30 = (t0 + 8130);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB26:    t33 = (t0 + 8134);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB27:
LAB16:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (0 - 31);
    t47 = (t5 * -1);
    t48 = (1U * t47);
    t50 = (0 + t48);
    t2 = (t3 + t50);
    t49 = *((unsigned char *)t2);
    t4 = (t0 + 1032U);
    t6 = *((char **)t4);
    t51 = (31 - 31);
    t52 = (t51 * 1U);
    t53 = (0 + t52);
    t4 = (t6 + t53);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t54 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 31;
    t12 = (t10 + 4U);
    *((int *)t12) = 1;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t8 = (1 - 31);
    t55 = (t8 * -1);
    t55 = (t55 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t55;
    t7 = xsi_base_array_concat(t7, t36, t9, (char)99, t49, (char)97, t4, t54, (char)101);
    t55 = (1U + 31U);
    t56 = (32U != t55);
    if (t56 == 1)
        goto LAB47;

LAB48:    t12 = (t0 + 5248);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_fast(t12);

LAB4:    xsi_set_current_line(61, ng0);

LAB51:    t2 = (t0 + 5040);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB52;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t37 = (t0 + 1032U);
    t38 = *((char **)t37);
    t37 = (t0 + 7816U);
    t39 = (t0 + 1192U);
    t40 = *((char **)t39);
    t39 = (t0 + 7832U);
    t41 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t36, t38, t37, t40, t39);
    t42 = (t0 + 5248);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t41, 32U);
    xsi_driver_first_trans_fast(t42);
    goto LAB4;

LAB6:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7832U);
    t7 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t36, t3, t2, t6, t4);
    t9 = (t0 + 5248);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t7, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB7:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7832U);
    t7 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t36, t3, t2, t6, t4);
    t9 = (t36 + 12U);
    t47 = *((unsigned int *)t9);
    t48 = (1U * t47);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB29;

LAB30:    t10 = (t0 + 5248);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB8:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7832U);
    t7 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t36, t3, t2, t6, t4);
    t9 = (t36 + 12U);
    t47 = *((unsigned int *)t9);
    t48 = (1U * t47);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB31;

LAB32:    t10 = (t0 + 5248);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB9:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t36, t3, t2);
    t6 = (t36 + 12U);
    t47 = *((unsigned int *)t6);
    t48 = (1U * t47);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB33;

LAB34:    t7 = (t0 + 5248);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 32U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7832U);
    t7 = ieee_p_2592010699_sub_16447329934917513135_503743352(IEEE_P_2592010699, t36, t3, t2, t6, t4);
    t9 = (t36 + 12U);
    t47 = *((unsigned int *)t9);
    t48 = (1U * t47);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB35;

LAB36:    t10 = (t0 + 5248);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB11:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7816U);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 7832U);
    t7 = ieee_p_2592010699_sub_16439989833316239837_503743352(IEEE_P_2592010699, t36, t3, t2, t6, t4);
    t9 = (t36 + 12U);
    t47 = *((unsigned int *)t9);
    t48 = (1U * t47);
    t49 = (32U != t48);
    if (t49 == 1)
        goto LAB37;

LAB38:    t10 = (t0 + 5248);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB12:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (31 - 31);
    t47 = (t5 * -1);
    t48 = (1U * t47);
    t50 = (0 + t48);
    t2 = (t3 + t50);
    t49 = *((unsigned char *)t2);
    t4 = (t0 + 1032U);
    t6 = *((char **)t4);
    t51 = (31 - 31);
    t52 = (t51 * 1U);
    t53 = (0 + t52);
    t4 = (t6 + t53);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t54 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 31;
    t12 = (t10 + 4U);
    *((int *)t12) = 1;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t8 = (1 - 31);
    t55 = (t8 * -1);
    t55 = (t55 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t55;
    t7 = xsi_base_array_concat(t7, t36, t9, (char)99, t49, (char)97, t4, t54, (char)101);
    t55 = (1U + 31U);
    t56 = (32U != t55);
    if (t56 == 1)
        goto LAB39;

LAB40:    t12 = (t0 + 5248);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB13:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t47 = (31 - 31);
    t48 = (t47 * 1U);
    t50 = (0 + t48);
    t2 = (t3 + t50);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t54 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 31;
    t9 = (t7 + 4U);
    *((int *)t9) = 1;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (1 - 31);
    t51 = (t5 * -1);
    t51 = (t51 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t51;
    t4 = xsi_base_array_concat(t4, t36, t6, (char)99, (unsigned char)2, (char)97, t2, t54, (char)101);
    t51 = (1U + 31U);
    t49 = (32U != t51);
    if (t49 == 1)
        goto LAB41;

LAB42:    t9 = (t0 + 5248);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB14:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t47 = (31 - 30);
    t48 = (t47 * 1U);
    t50 = (0 + t48);
    t2 = (t3 + t50);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t54 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 30;
    t9 = (t7 + 4U);
    *((int *)t9) = 0;
    t9 = (t7 + 8U);
    *((int *)t9) = -1;
    t5 = (0 - 30);
    t51 = (t5 * -1);
    t51 = (t51 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t51;
    t4 = xsi_base_array_concat(t4, t36, t6, (char)97, t2, t54, (char)99, (unsigned char)2, (char)101);
    t51 = (31U + 1U);
    t49 = (32U != t51);
    if (t49 == 1)
        goto LAB43;

LAB44:    t9 = (t0 + 5248);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB15:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t47 = (31 - 30);
    t48 = (t47 * 1U);
    t50 = (0 + t48);
    t2 = (t3 + t50);
    t4 = (t0 + 1032U);
    t6 = *((char **)t4);
    t5 = (31 - 31);
    t51 = (t5 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t4 = (t6 + t53);
    t49 = *((unsigned char *)t4);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t54 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 30;
    t12 = (t10 + 4U);
    *((int *)t12) = 0;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t8 = (0 - 30);
    t55 = (t8 * -1);
    t55 = (t55 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t55;
    t7 = xsi_base_array_concat(t7, t36, t9, (char)97, t2, t54, (char)99, t49, (char)101);
    t55 = (31U + 1U);
    t56 = (32U != t55);
    if (t56 == 1)
        goto LAB45;

LAB46:    t12 = (t0 + 5248);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB28:;
LAB29:    xsi_size_not_matching(32U, t48, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(32U, t48, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(32U, t48, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(32U, t48, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(32U, t48, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(32U, t55, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(32U, t51, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(32U, t51, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(32U, t55, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(32U, t55, 0);
    goto LAB48;

LAB49:    t3 = (t0 + 5040);
    *((int *)t3) = 0;
    goto LAB2;

LAB50:    goto LAB49;

LAB52:    goto LAB50;

}

static void work_a_0832606739_2725559894_p_2(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 5312);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_delta(t2, 0U, 32U, t1);
    t8 = (t0 + 5312);
    xsi_driver_intertial_reject(t8, t1, t1);

LAB2:    t9 = (t0 + 5056);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_2725559894_p_3(char *t0)
{
    char t8[16];
    char t48[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    unsigned char t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t46;
    char *t49;
    char *t50;
    int t51;
    unsigned int t52;
    unsigned char t53;
    char *t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned char t58;
    char *t59;
    char *t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned char t65;
    unsigned char t66;
    char *t67;
    char *t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned char t73;
    char *t74;
    char *t75;
    int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned char t80;
    unsigned char t81;
    int64 t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    int64 t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;

LAB0:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7848U);
    t6 = (t0 + 8138);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (3 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t13 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t4, t6, t8);
    if (t13 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t44 = (t0 + 1352U);
    t45 = *((char **)t44);
    t44 = (t0 + 7848U);
    t46 = (t0 + 8142);
    t49 = (t48 + 0U);
    t50 = (t49 + 0U);
    *((int *)t50) = 0;
    t50 = (t49 + 4U);
    *((int *)t50) = 3;
    t50 = (t49 + 8U);
    *((int *)t50) = 1;
    t51 = (3 - 0);
    t52 = (t51 * 1);
    t52 = (t52 + 1);
    t50 = (t49 + 12U);
    *((unsigned int *)t50) = t52;
    t53 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t45, t44, t46, t48);
    if (t53 == 1)
        goto LAB17;

LAB18:    t43 = (unsigned char)0;

LAB19:    if (t43 == 1)
        goto LAB14;

LAB15:    t42 = (unsigned char)0;

LAB16:    t1 = t42;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t89 = (10 * 1000LL);
    t90 = (t0 + 5376);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    t93 = (t92 + 56U);
    t94 = *((char **)t93);
    *((unsigned char *)t94) = (unsigned char)2;
    xsi_driver_first_trans_delta(t90, 0U, 1, t89);
    t95 = (t0 + 5376);
    xsi_driver_intertial_reject(t95, t89, t89);

LAB2:    t96 = (t0 + 5072);
    *((int *)t96) = 1;

LAB1:    return;
LAB3:    t82 = (10 * 1000LL);
    t83 = (t0 + 5376);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    t86 = (t85 + 56U);
    t87 = *((char **)t86);
    *((unsigned char *)t87) = (unsigned char)3;
    xsi_driver_first_trans_delta(t83, 0U, 1, t82);
    t88 = (t0 + 5376);
    xsi_driver_intertial_reject(t88, t82, t82);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t27 = (t0 + 2312U);
    t28 = *((char **)t27);
    t29 = (31 - 32);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t27 = (t28 + t32);
    t33 = *((unsigned char *)t27);
    t34 = (t0 + 1032U);
    t35 = *((char **)t34);
    t36 = (31 - 31);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t34 = (t35 + t39);
    t40 = *((unsigned char *)t34);
    t41 = (t33 != t40);
    t2 = t41;
    goto LAB10;

LAB11:    t10 = (t0 + 1032U);
    t14 = *((char **)t10);
    t15 = (31 - 31);
    t12 = (t15 * -1);
    t16 = (1U * t12);
    t17 = (0 + t16);
    t10 = (t14 + t17);
    t18 = *((unsigned char *)t10);
    t19 = (t0 + 1192U);
    t20 = *((char **)t19);
    t21 = (31 - 31);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t26 = (t18 == t25);
    t3 = t26;
    goto LAB13;

LAB14:    t67 = (t0 + 2312U);
    t68 = *((char **)t67);
    t69 = (31 - 32);
    t70 = (t69 * -1);
    t71 = (1U * t70);
    t72 = (0 + t71);
    t67 = (t68 + t72);
    t73 = *((unsigned char *)t67);
    t74 = (t0 + 1032U);
    t75 = *((char **)t74);
    t76 = (31 - 31);
    t77 = (t76 * -1);
    t78 = (1U * t77);
    t79 = (0 + t78);
    t74 = (t75 + t79);
    t80 = *((unsigned char *)t74);
    t81 = (t73 != t80);
    t42 = t81;
    goto LAB16;

LAB17:    t50 = (t0 + 1032U);
    t54 = *((char **)t50);
    t55 = (31 - 31);
    t52 = (t55 * -1);
    t56 = (1U * t52);
    t57 = (0 + t56);
    t50 = (t54 + t57);
    t58 = *((unsigned char *)t50);
    t59 = (t0 + 1192U);
    t60 = *((char **)t59);
    t61 = (31 - 31);
    t62 = (t61 * -1);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t59 = (t60 + t64);
    t65 = *((unsigned char *)t59);
    t66 = (t58 != t65);
    t43 = t66;
    goto LAB19;

LAB21:    goto LAB2;

}

static void work_a_0832606739_2725559894_p_4(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    int64 t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7880U);
    t3 = (t0 + 8146);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = (10 * 1000LL);
    t18 = (t0 + 5440);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_delta(t18, 0U, 1, t17);
    t23 = (t0 + 5440);
    xsi_driver_intertial_reject(t23, t17, t17);

LAB2:    t24 = (t0 + 5088);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t11 = (10 * 1000LL);
    t7 = (t0 + 5440);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 0U, 1, t11);
    t16 = (t0 + 5440);
    xsi_driver_intertial_reject(t16, t11, t11);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_2725559894_p_5(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = (32 - 32);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 5504);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_delta(t9, 0U, 1, t1);
    t14 = (t0 + 5504);
    xsi_driver_intertial_reject(t14, t1, t1);

LAB2:    t15 = (t0 + 5104);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_2725559894_init()
{
	static char *pe[] = {(void *)work_a_0832606739_2725559894_p_0,(void *)work_a_0832606739_2725559894_p_1,(void *)work_a_0832606739_2725559894_p_2,(void *)work_a_0832606739_2725559894_p_3,(void *)work_a_0832606739_2725559894_p_4,(void *)work_a_0832606739_2725559894_p_5};
	xsi_register_didat("work_a_0832606739_2725559894", "isim/PROC_SC_tb_isim_beh.exe.sim/work/a_0832606739_2725559894.didat");
	xsi_register_executes(pe);
}
