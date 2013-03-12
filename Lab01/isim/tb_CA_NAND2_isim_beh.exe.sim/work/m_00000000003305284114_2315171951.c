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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Windows/System32/Lab01/src/CA_NAND2.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_27_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1640);
    *((int *)t2) = 1;
    t3 = (t0 + 1472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    t5 = (t0 + 600U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 920);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    goto LAB15;

LAB9:    xsi_set_current_line(31, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 920);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB15;

LAB11:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 920);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB15;

LAB13:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 920);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB15;

}


extern void work_m_00000000003305284114_2315171951_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000003305284114_2315171951", "isim/tb_CA_NAND2_isim_beh.exe.sim/work/m_00000000003305284114_2315171951.didat");
	xsi_register_executes(pe);
}
