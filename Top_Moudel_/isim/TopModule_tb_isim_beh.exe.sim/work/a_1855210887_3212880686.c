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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/sa/ise/CA_pro/jump/jump.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1855210887_3212880686_p_0(char *t0)
{
    char t21[16];
    char t29[16];
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
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    int t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t30;
    char *t31;
    int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 3392);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = (15 - 15);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t5 + t13);
    t6 = (t0 + 5160);
    t14 = xsi_mem_cmp(t6, t2, 4U);
    if (t14 == 1)
        goto LAB8;

LAB13:    t8 = (t0 + 5164);
    t15 = xsi_mem_cmp(t8, t2, 4U);
    if (t15 == 1)
        goto LAB9;

LAB14:    t10 = (t0 + 5168);
    t17 = xsi_mem_cmp(t10, t2, 4U);
    if (t17 == 1)
        goto LAB10;

LAB15:    t18 = (t0 + 5172);
    t20 = xsi_mem_cmp(t18, t2, 4U);
    if (t20 == 1)
        goto LAB11;

LAB16:
LAB12:    xsi_set_current_line(67, ng0);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(52, ng0);
    t22 = (t0 + 1832U);
    t23 = *((char **)t22);
    t22 = (t0 + 5116U);
    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t26 = (15 - 7);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t24 = (t25 + t28);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 7;
    t31 = (t30 + 4U);
    *((int *)t31) = 0;
    t31 = (t30 + 8U);
    *((int *)t31) = -1;
    t32 = (0 - 7);
    t33 = (t32 * -1);
    t33 = (t33 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t33;
    t31 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t21, t23, t22, t24, t29);
    t34 = (t21 + 12U);
    t33 = *((unsigned int *)t34);
    t35 = (1U * t33);
    t4 = (8U != t35);
    if (t4 == 1)
        goto LAB18;

LAB19:    t36 = (t0 + 3392);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t31, 8U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB7;

LAB9:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB7;

LAB10:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB7;

LAB11:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB30;

LAB32:
LAB31:    goto LAB7;

LAB17:;
LAB18:    xsi_size_not_matching(8U, t35, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 5116U);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t11 = (15 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t6 = (t7 + t13);
    t8 = (t29 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t14 = (0 - 7);
    t26 = (t14 * -1);
    t26 = (t26 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t26;
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t21, t5, t1, t6, t29);
    t10 = (t21 + 12U);
    t26 = *((unsigned int *)t10);
    t27 = (1U * t26);
    t41 = (8U != t27);
    if (t41 == 1)
        goto LAB23;

LAB24:    t16 = (t0 + 3392);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB21;

LAB23:    xsi_size_not_matching(8U, t27, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 5116U);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t11 = (15 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t6 = (t7 + t13);
    t8 = (t29 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t14 = (0 - 7);
    t26 = (t14 * -1);
    t26 = (t26 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t26;
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t21, t5, t1, t6, t29);
    t10 = (t21 + 12U);
    t26 = *((unsigned int *)t10);
    t27 = (1U * t26);
    t41 = (8U != t27);
    if (t41 == 1)
        goto LAB28;

LAB29:    t16 = (t0 + 3392);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB26;

LAB28:    xsi_size_not_matching(8U, t27, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 5116U);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t11 = (15 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t6 = (t7 + t13);
    t8 = (t29 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t14 = (0 - 7);
    t26 = (t14 * -1);
    t26 = (t26 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t26;
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t21, t5, t1, t6, t29);
    t10 = (t21 + 12U);
    t26 = *((unsigned int *)t10);
    t27 = (1U * t26);
    t41 = (8U != t27);
    if (t41 == 1)
        goto LAB33;

LAB34:    t16 = (t0 + 3392);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB31;

LAB33:    xsi_size_not_matching(8U, t27, 0);
    goto LAB34;

}


extern void work_a_1855210887_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1855210887_3212880686_p_0};
	xsi_register_didat("work_a_1855210887_3212880686", "isim/TopModule_tb_isim_beh.exe.sim/work/a_1855210887_3212880686.didat");
	xsi_register_executes(pe);
}
