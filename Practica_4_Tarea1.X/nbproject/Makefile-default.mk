#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/system/src/traps.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/pins.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/system/src/traps.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/pins.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CH512MP508
MP_LINKER_FILE_OPTION=,--script=p33CH512MP508.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/default/53145c6671189e4e3cae57b20eec39a9b656e299 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/afa1aafd4fa853296130917b4a3f2a71640ae035 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/default/e9a090914d046ce4918edbcbf32eb8fa76597d42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/default/96fbd07e4797fd823dea16ccefafaa62fdd0ac44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/b37a095e56d6c0a120c8116e3cdf66c543fd9d9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/ca58f5ecb02f1359ec8a966f3eb5421bd632a1db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/d223eef7c374627179d096616109b553023b91b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/f83676ffa2daf3e471e52e846da92384b9b0dfd9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4e2ed9c850cf4af8a04d48a65425912fdc46c35e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/default/b059a01ff304f97626ac17d65ba002daafa55ed0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/940ca825c80f79ca9b9f402966dfa24ece251d6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/default/27fe65eb96a110120f833d026f6969f3b3e7b435 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/default/6d51fdb2c0ffe1d09147237dca293ae008b58e0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/174405a890de717f881b4f0d20f3414076d64792 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/c001b8b1d14f5f9b6b7f845e59774f1017ca8106 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/a2f2f0e97031b8d8dc6d22d497b79decbc46d421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/4823310a8cb66046776d1ec133e6747cadea21eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/8c267a57b161bbce61e75b69e7a023c1dcd1e959 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/default/534ee1c945e22ee4eb84398d1c031c91cfd0bd21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/default/31fb80dcb0433a2803c541372f2fb8893f016d97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/Practica_4_Tarea1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
