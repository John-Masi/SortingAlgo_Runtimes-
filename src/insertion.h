#include <vector>
#ifndef INSERTION_H
#define INSERTION_H

void insertion_sort(std::vector<int>& a) {

	int j = a.size();

	for(int i = 0; i < a.size(); i++) {
		int j{i-1};
		int key = a[i];
		while(j >= 0 && a[j] > key) {
			a[j+1] = a[j];
			j = j - 1;

		}
		a[j + 1] = key;
	}
}

#endif 
