#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-MacOSX
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/1915261946/vardata.o \
	${OBJECTDIR}/_ext/1915261946/utils.o \
	${OBJECTDIR}/_ext/1915261946/ncdump-json_copy.o \
	${OBJECTDIR}/_ext/1915261946/indent.o \
	${OBJECTDIR}/_ext/1915261946/nctime.o \
	${OBJECTDIR}/_ext/1915261946/dumplib.o \
	${OBJECTDIR}/ncdump-json.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ncdump-json

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ncdump-json: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ncdump-json ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/1915261946/vardata.o: /Volumes/home/jllodra/workspace/ncdump-json/vardata.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/vardata.o /Volumes/home/jllodra/workspace/ncdump-json/vardata.c

${OBJECTDIR}/_ext/1915261946/utils.o: /Volumes/home/jllodra/workspace/ncdump-json/utils.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/utils.o /Volumes/home/jllodra/workspace/ncdump-json/utils.c

${OBJECTDIR}/_ext/1915261946/ncdump-json_copy.o: /Volumes/home/jllodra/workspace/ncdump-json/ncdump-json_copy.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/ncdump-json_copy.o /Volumes/home/jllodra/workspace/ncdump-json/ncdump-json_copy.c

${OBJECTDIR}/_ext/1915261946/indent.o: /Volumes/home/jllodra/workspace/ncdump-json/indent.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/indent.o /Volumes/home/jllodra/workspace/ncdump-json/indent.c

${OBJECTDIR}/_ext/1915261946/nctime.o: /Volumes/home/jllodra/workspace/ncdump-json/nctime.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/nctime.o /Volumes/home/jllodra/workspace/ncdump-json/nctime.c

${OBJECTDIR}/_ext/1915261946/dumplib.o: /Volumes/home/jllodra/workspace/ncdump-json/dumplib.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/1915261946
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1915261946/dumplib.o /Volumes/home/jllodra/workspace/ncdump-json/dumplib.c

${OBJECTDIR}/ncdump-json.o: ncdump-json.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.c) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/ncdump-json.o ncdump-json.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ncdump-json

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
