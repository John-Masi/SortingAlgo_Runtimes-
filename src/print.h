#include "timer.h"
#include "randomize.h"

namespace C_Size {
	constexpr int c_0{1000};
	constexpr int c_1{5000};
	constexpr int c_2{10000};
	constexpr int c_3{50000};
	constexpr int c_4{100000};
};

void print_i() {

	auto r0 = randomize_array(C_Size::c_0);
	auto r1 = randomize_array(C_Size::c_1);
	auto r2 = randomize_array(C_Size::c_2);
	auto r3 = randomize_array(C_Size::c_3);
	auto r4 = randomize_array(C_Size::c_4);

	
	is_time(r0);
	is_time(r1);
	is_time(r2);
	is_time(r3);
	is_time(r4);

} 

void print_m() {

	auto r0 = randomize_array(C_Size::c_0);
	auto r1 = randomize_array(C_Size::c_1);
	auto r2 = randomize_array(C_Size::c_2);
	auto r3 = randomize_array(C_Size::c_3);
	auto r4 = randomize_array(C_Size::c_4);

	
	ms_time(r0);
	ms_time(r1);
	ms_time(r2);
	ms_time(r3);
	ms_time(r4);

} 

void print_q() {

	auto r0 = randomize_array(C_Size::c_0);
	auto r1 = randomize_array(C_Size::c_1);
	auto r2 = randomize_array(C_Size::c_2);
	auto r3 = randomize_array(C_Size::c_3);
	auto r4 = randomize_array(C_Size::c_4);

	
	qs_time(r0);
	qs_time(r1);
	qs_time(r2);
	qs_time(r3);
	qs_time(r4);

} 
