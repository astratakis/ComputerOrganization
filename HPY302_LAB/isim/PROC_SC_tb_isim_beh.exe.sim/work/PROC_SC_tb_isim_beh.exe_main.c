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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *STD_TEXTIO;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_3222946569_1351276808_init();
    work_a_3822061112_0833183191_init();
    work_a_1153420228_0833183191_init();
    work_a_1228989981_2199507181_init();
    work_a_3859870870_1944852463_init();
    work_a_1913148318_0228657068_init();
    work_a_3841860692_2199507181_init();
    work_a_0015886314_1739518194_init();
    work_a_2034693151_3069169239_init();
    work_a_0185670849_2199507181_init();
    work_a_2615964831_0278921292_init();
    work_a_3967920148_1996439554_init();
    work_a_0832606739_2725559894_init();
    work_a_2597622678_1844442480_init();
    work_a_4200723274_2321779972_init();
    work_a_2399776393_4205961752_init();
    work_a_3830602496_0450250084_init();
    work_a_1316506521_2753782451_init();
    work_a_1771943862_2372691052_init();


    xsi_register_tops("work_a_1771943862_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
