#include <vector> 
#ifndef QUICKSORT_H
#define QUICKSORT_H

int partition(std::vector<int>& a,int p,int r) {
	
	int piv{a[r]};
	int i{p-1};
	for(int j = p; j <= r - 1; j++) {
		if(a[j]  <= piv) {
			i++;
			std::swap(a[j],a[i]);
		}
	}
	std::swap(a[i+1],a[r]);
	return i + 1;
}

void quick_sort(std::vector<int>& a,int p,int r) {
	if(p < r) {
		int q = partition(a,p,r);
		quick_sort(a,p,q-1);
		quick_sort(a,q+1,r);
		
	}
	
} 

#endif 
