#include <vector>
#include <random> 
#ifndef RANDOM_H
#define RANDOM_H

std::vector<int> randomize_array(std::size_t c_size) {
	std::vector<int> a(c_size);
	std::random_device r_device;
	std::mt19937 generator(r_device());

	std::uniform_int_distribution<> dist(1,1000);

	for(int i = 0; i < c_size; i++) {
		a[i] = static_cast<int>(dist(generator));
	}

	return a;
}

#endif 
