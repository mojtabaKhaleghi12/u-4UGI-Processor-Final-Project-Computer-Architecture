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
static const char *ng0 = "C:/Users/sa/ise/CA_pro/pro1/rr.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t35[16];
    char t49[16];
    char t50[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    int t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t51;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7648);
    t15 = xsi_mem_cmp(t1, t2, 4U);
    if (t15 == 1)
        goto LAB12;

LAB23:    t4 = (t0 + 7652);
    t16 = xsi_mem_cmp(t4, t2, 4U);
    if (t16 == 1)
        goto LAB13;

LAB24:    t9 = (t0 + 7656);
    t17 = xsi_mem_cmp(t9, t2, 4U);
    if (t17 == 1)
        goto LAB14;

LAB25:    t11 = (t0 + 7660);
    t18 = xsi_mem_cmp(t11, t2, 4U);
    if (t18 == 1)
        goto LAB15;

LAB26:    t13 = (t0 + 7664);
    t19 = xsi_mem_cmp(t13, t2, 4U);
    if (t19 == 1)
        goto LAB16;

LAB27:    t20 = (t0 + 7668);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB17;

LAB28:    t23 = (t0 + 7672);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB18;

LAB29:    t26 = (t0 + 7676);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB19;

LAB30:    t29 = (t0 + 7680);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB20;

LAB31:    t32 = (t0 + 7684);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB21;

LAB32:
LAB22:    xsi_set_current_line(88, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t3);

LAB11:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7564U);
    t3 = (t0 + 7696);
    t5 = (t35 + 0U);
    t9 = (t5 + 0U);
    *((int *)t9) = 0;
    t9 = (t5 + 4U);
    *((int *)t9) = 7;
    t9 = (t5 + 8U);
    *((int *)t9) = 1;
    t15 = (7 - 0);
    t42 = (t15 * 1);
    t42 = (t42 + 1);
    t9 = (t5 + 12U);
    *((unsigned int *)t9) = t42;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t35);
    if (t6 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB51:
LAB3:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (t0 + 5192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = t6;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (7 - 7);
    t42 = (t15 * -1);
    t43 = (1U * t42);
    t51 = (0 + t43);
    t1 = (t2 + t51);
    t6 = *((unsigned char *)t1);
    t3 = (t0 + 5256);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 7484U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 7500U);
    t8 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t5, t4);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t6 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 5064);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t3);

LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t9 = (t0 + 5000);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(67, ng0);
    t5 = xsi_get_transient_memory(8U);
    memset(t5, 0, 8U);
    t9 = t5;
    memset(t9, (unsigned char)3, 8U);
    t10 = (t0 + 5064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB9;

LAB12:    xsi_set_current_line(74, ng0);
    t36 = (t0 + 1032U);
    t37 = *((char **)t36);
    t36 = (t0 + 7484U);
    t38 = (t0 + 1192U);
    t39 = *((char **)t38);
    t38 = (t0 + 7500U);
    t40 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t35, t37, t36, t39, t38);
    t41 = (t35 + 12U);
    t42 = *((unsigned int *)t41);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB34;

LAB35:    t44 = (t0 + 5064);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t40, 8U);
    xsi_driver_first_trans_fast(t44);
    goto LAB11;

LAB13:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t5 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t35, t2, t1, t4, t3);
    t9 = (t35 + 12U);
    t42 = *((unsigned int *)t9);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB36;

LAB37:    t10 = (t0 + 5064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB11;

LAB14:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t5 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t35, t2, t1, t4, t3);
    t9 = (t35 + 12U);
    t42 = *((unsigned int *)t9);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB38;

LAB39:    t10 = (t0 + 5064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB11;

LAB15:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t5 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t35, t2, t1, t4, t3);
    t9 = (t35 + 12U);
    t42 = *((unsigned int *)t9);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB40;

LAB41:    t10 = (t0 + 5064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB11;

LAB16:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 7688);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t50 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t15 = (3 - 0);
    t42 = (t15 * 1);
    t42 = (t42 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t42;
    t12 = (t0 + 7532U);
    t5 = xsi_base_array_concat(t5, t49, t10, (char)97, t3, t50, (char)97, t9, t12, (char)101);
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t35, t2, t1, t5, t49);
    t14 = (t35 + 12U);
    t42 = *((unsigned int *)t14);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB42;

LAB43:    t20 = (t0 + 5064);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    t24 = (t23 + 56U);
    t26 = *((char **)t24);
    memcpy(t26, t13, 8U);
    xsi_driver_first_trans_fast(t20);
    goto LAB11;

LAB17:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 7692);
    t5 = (t0 + 1672U);
    t9 = *((char **)t5);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t50 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t15 = (3 - 0);
    t42 = (t15 * 1);
    t42 = (t42 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t42;
    t12 = (t0 + 7532U);
    t5 = xsi_base_array_concat(t5, t49, t10, (char)97, t3, t50, (char)97, t9, t12, (char)101);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t35, t2, t1, t5, t49);
    t14 = (t35 + 12U);
    t42 = *((unsigned int *)t14);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB44;

LAB45:    t20 = (t0 + 5064);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    t24 = (t23 + 56U);
    t26 = *((char **)t24);
    memcpy(t26, t13, 8U);
    xsi_driver_first_trans_fast(t20);
    goto LAB11;

LAB18:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t5 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t35, t2, t1, t4, t3);
    t9 = (t35 + 12U);
    t42 = *((unsigned int *)t9);
    t43 = (1U * t42);
    t6 = (8U != t43);
    if (t6 == 1)
        goto LAB46;

LAB47:    t10 = (t0 + 5064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB11;

LAB19:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7500U);
    t5 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t49, t2, t1, t4, t3);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t6 = *((unsigned char *)t10);
    t9 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t35, t5, t49, t6);
    t11 = (t35 + 12U);
    t42 = *((unsigned int *)t11);
    t43 = (1U * t42);
    t7 = (8U != t43);
    if (t7 == 1)
        goto LAB48;

LAB49:    t12 = (t0 + 5064);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 8U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB20:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5128);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB21:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 5128);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB33:;
LAB34:    xsi_size_not_matching(8U, t43, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(8U, t43, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(8U, t43, 0);
    goto LAB39;

LAB40:    xsi_size_not_matching(8U, t43, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(8U, t43, 0);
    goto LAB43;

LAB44:    xsi_size_not_matching(8U, t43, 0);
    goto LAB45;

LAB46:    xsi_size_not_matching(8U, t43, 0);
    goto LAB47;

LAB48:    xsi_size_not_matching(8U, t43, 0);
    goto LAB49;

LAB50:    xsi_set_current_line(92, ng0);
    t9 = (t0 + 5000);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB51;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(102, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5320);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4856);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/TopModule_tb_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
