#!/bin/bash
# CS 279 Week 09 Lab
# Alex Childers 

start_time=`date +%s`

trap hup_trap HUP

trap int_trap INT

trap quit_trap QUIT

trap ill_trap ILL

trap trap_trap TRAP 

trap bus_trap BUS

trap segv_trap SEGV

trap alrm_trap ALRM

trap term_trap TERM 

hup_trap()
{
	date +%R
}

int_trap()
{
	date +%A
}

quit_trap()
{
	date +%d
}

ill_trap()
{
	date +%j
}

trap_trap()
{
	date +%Y
}

bus_trap()
{
	date +%s
}

segv_trap()
{
	date +%Z
}

alrm_trap()
{
	echo $start_time
}

term_trap()
{
	now=`date +%s`
	echo `expr $now - $start_time`
}

while true; do
	sleep 1
done 