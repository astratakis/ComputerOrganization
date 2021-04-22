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
static const char *ng0 = "/home/carioca/Desktop/comp_arch_help/HPY302_LAB/register_file.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2615964831_0278921292_p_0(char *t0)
{
    char t5[16];
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 16168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 9376U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(123, ng0);

LAB14:    t2 = (t0 + 16488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_set_current_line(124, ng0);
    t6 = (t0 + 10816U);
    t7 = *((char **)t6);
    t6 = (t0 + 30080U);
    t8 = (t0 + 31432);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 31;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (31 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t5, t7, t6, t8, t10);
    t15 = (t5 + 12U);
    t14 = *((unsigned int *)t15);
    t16 = (1U * t14);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB8;

LAB9:    t18 = (t0 + 16568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 32U);
    xsi_driver_first_trans_fast(t18);
    goto LAB4;

LAB6:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 10816U);
    t3 = *((char **)t2);
    t2 = (t0 + 30080U);
    t6 = (t0 + 31464);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 31;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t13 = (31 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t14;
    t9 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t5, t3, t2, t6, t10);
    t11 = (t5 + 12U);
    t14 = *((unsigned int *)t11);
    t16 = (1U * t14);
    t4 = (32U != t16);
    if (t4 == 1)
        goto LAB10;

LAB11:    t12 = (t0 + 16568);
    t15 = (t12 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB4;

LAB7:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 31496);
    t6 = (t0 + 16568);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB8:    xsi_size_not_matching(32U, t16, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, t16, 0);
    goto LAB11;

LAB12:    t3 = (t0 + 16488);
    *((int *)t3) = 0;
    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2615964831_0278921292_init()
{
	static char *pe[] = {(void *)work_a_2615964831_0278921292_p_0};
	xsi_register_didat("work_a_2615964831_0278921292", "isim/register_file_tb_isim_beh.exe.sim/work/a_2615964831_0278921292.didat");
	xsi_register_executes(pe);
}
