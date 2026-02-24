#include <chrono> 
#include <iostream>
#include "insertion.h"
#include "quicksort.h"
#include "merge_sort.h"
#ifndef TIMER_H
#define TIMER_H

void qs_time(std::vector<int>& v) {

	auto start{std::chrono::steady_clock::now()};
	quick_sort(v,0,v.size());
	volatile int sink = v[0];
	auto end{std::chrono::steady_clock::now()};
	auto ms_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

	std::cout << ms_time.count() << " ms";
}

void is_time(std::vector<int>& v) {
	auto start{std::chrono::steady_clock::now()};
	insertion_sort(v);
	auto end{std::chrono::steady_clock::now()};
	auto ms_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

	std::cout << ms_time.count() << " ms\n";
}

void ms_time(std::vector<int>& v) {
	auto start{std::chrono::steady_clock::now()};
	merge_sort(v,0,v.size()-1);
	auto end{std::chrono::steady_clock::now()};
	auto ms_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);

	std::cout << ms_time.count() << " ms\n";

}

#endif 
