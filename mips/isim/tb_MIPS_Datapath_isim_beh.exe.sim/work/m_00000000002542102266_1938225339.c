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
static const char *ng0 = "C:/Users/hoyajigi/Documents/GitHub/Verilog/mips/ControlUnit.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {19U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {43U, 0U};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {36U, 0U};
static unsigned int ng9[] = {3U, 0U};



static void Always_34_0(char *t0)
{
    char t9[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t0 + 2568);
    t10 = (t0 + 2568);
    t11 = (t10 + 72U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t12, 2, t13, 32, 1);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB16;

LAB17:    t17 = (t0 + 2568);
    t19 = (t0 + 2568);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t18, t21, 2, t22, 32, 1);
    t23 = (t18 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    if (t25 == 1)
        goto LAB18;

LAB19:    t26 = (t0 + 2408);
    xsi_vlogvar_assign_value(t26, t7, 2, 0, 1);
    t27 = (t0 + 2248);
    xsi_vlogvar_assign_value(t27, t7, 3, 0, 1);
    t28 = (t0 + 2088);
    xsi_vlogvar_assign_value(t28, t7, 4, 0, 1);
    t29 = (t0 + 1928);
    xsi_vlogvar_assign_value(t29, t7, 5, 0, 1);
    t30 = (t0 + 1768);
    xsi_vlogvar_assign_value(t30, t7, 6, 0, 1);
    t31 = (t0 + 1608);
    xsi_vlogvar_assign_value(t31, t7, 7, 0, 1);
    t32 = (t0 + 1448);
    xsi_vlogvar_assign_value(t32, t7, 8, 0, 1);
    goto LAB15;

LAB9:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2568);
    t7 = (t0 + 2568);
    t8 = (t7 + 72U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB20;

LAB21:    t13 = (t0 + 2568);
    t14 = (t0 + 2568);
    t17 = (t14 + 72U);
    t19 = *((char **)t17);
    t20 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t18, t19, 2, t20, 32, 1);
    t21 = (t18 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    if (t25 == 1)
        goto LAB22;

LAB23:    t22 = (t0 + 2408);
    xsi_vlogvar_assign_value(t22, t3, 2, 0, 1);
    t23 = (t0 + 2248);
    xsi_vlogvar_assign_value(t23, t3, 3, 0, 1);
    t26 = (t0 + 2088);
    xsi_vlogvar_assign_value(t26, t3, 4, 0, 1);
    t27 = (t0 + 1928);
    xsi_vlogvar_assign_value(t27, t3, 5, 0, 1);
    t28 = (t0 + 1768);
    xsi_vlogvar_assign_value(t28, t3, 6, 0, 1);
    t29 = (t0 + 1608);
    xsi_vlogvar_assign_value(t29, t3, 7, 0, 1);
    t30 = (t0 + 1448);
    xsi_vlogvar_assign_value(t30, t3, 8, 0, 1);
    goto LAB15;

LAB11:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2568);
    t7 = (t0 + 2568);
    t8 = (t7 + 72U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB24;

LAB25:    t13 = (t0 + 2568);
    t14 = (t0 + 2568);
    t17 = (t14 + 72U);
    t19 = *((char **)t17);
    t20 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t18, t19, 2, t20, 32, 1);
    t21 = (t18 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    if (t25 == 1)
        goto LAB26;

LAB27:    t22 = (t0 + 2408);
    xsi_vlogvar_assign_value(t22, t3, 2, 0, 1);
    t23 = (t0 + 2248);
    xsi_vlogvar_assign_value(t23, t3, 3, 0, 1);
    t26 = (t0 + 2088);
    xsi_vlogvar_assign_value(t26, t3, 4, 0, 1);
    t27 = (t0 + 1928);
    xsi_vlogvar_assign_value(t27, t3, 5, 0, 1);
    t28 = (t0 + 1768);
    xsi_vlogvar_assign_value(t28, t3, 6, 0, 1);
    t29 = (t0 + 1608);
    xsi_vlogvar_assign_value(t29, t3, 7, 0, 1);
    t30 = (t0 + 1448);
    xsi_vlogvar_assign_value(t30, t3, 8, 0, 1);
    goto LAB15;

LAB13:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2568);
    t7 = (t0 + 2568);
    t8 = (t7 + 72U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB28;

LAB29:    t13 = (t0 + 2568);
    t14 = (t0 + 2568);
    t17 = (t14 + 72U);
    t19 = *((char **)t17);
    t20 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t18, t19, 2, t20, 32, 1);
    t21 = (t18 + 4);
    t24 = *((unsigned int *)t21);
    t25 = (!(t24));
    if (t25 == 1)
        goto LAB30;

LAB31:    t22 = (t0 + 2408);
    xsi_vlogvar_assign_value(t22, t3, 2, 0, 1);
    t23 = (t0 + 2248);
    xsi_vlogvar_assign_value(t23, t3, 3, 0, 1);
    t26 = (t0 + 2088);
    xsi_vlogvar_assign_value(t26, t3, 4, 0, 1);
    t27 = (t0 + 1928);
    xsi_vlogvar_assign_value(t27, t3, 5, 0, 1);
    t28 = (t0 + 1768);
    xsi_vlogvar_assign_value(t28, t3, 6, 0, 1);
    t29 = (t0 + 1608);
    xsi_vlogvar_assign_value(t29, t3, 7, 0, 1);
    t30 = (t0 + 1448);
    xsi_vlogvar_assign_value(t30, t3, 8, 0, 1);
    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t8, t7, 0, *((unsigned int *)t9), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t17, t7, 1, *((unsigned int *)t18), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t4, t3, 0, *((unsigned int *)t9), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t13, t3, 1, *((unsigned int *)t18), 1);
    goto LAB23;

LAB24:    xsi_vlogvar_assign_value(t4, t3, 0, *((unsigned int *)t9), 1);
    goto LAB25;

LAB26:    xsi_vlogvar_assign_value(t13, t3, 1, *((unsigned int *)t18), 1);
    goto LAB27;

LAB28:    xsi_vlogvar_assign_value(t4, t3, 0, *((unsigned int *)t9), 1);
    goto LAB29;

LAB30:    xsi_vlogvar_assign_value(t13, t3, 1, *((unsigned int *)t18), 1);
    goto LAB31;

}


extern void work_m_00000000002542102266_1938225339_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000002542102266_1938225339", "isim/tb_MIPS_Datapath_isim_beh.exe.sim/work/m_00000000002542102266_1938225339.didat");
	xsi_register_executes(pe);
}
