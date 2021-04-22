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
static const char *ng0 = "/home/carioca/Desktop/comp_arch_help/HPY302_LAB/mux_2to1.vhd";



static void work_a_1228989981_2199507181_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(40, ng0);

LAB10:    t2 = (t0 + 2984);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB5:    xsi_set_current_line(41, ng0);
    t5 = (10 * 1000LL);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 3064);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 32U);
    xsi_driver_first_trans_delta(t6, 0U, 32U, t5);
    t12 = (t0 + 3064);
    xsi_driver_intertial_reject(t12, t5, t5);
    goto LAB4;

LAB6:    xsi_set_current_line(41, ng0);
    t5 = (10 * 1000LL);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 3064);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_delta(t2, 0U, 32U, t5);
    t10 = (t0 + 3064);
    xsi_driver_intertial_reject(t10, t5, t5);
    goto LAB4;

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4889);
    t6 = (t0 + 3064);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB8:    t3 = (t0 + 2984);
    *((int *)t3) = 0;
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1228989981_2199507181_init()
{
	static char *pe[] = {(void *)work_a_1228989981_2199507181_p_0};
	xsi_register_didat("work_a_1228989981_2199507181", "isim/PROC_SC_tb_isim_beh.exe.sim/work/a_1228989981_2199507181.didat");
	xsi_register_executes(pe);
}
