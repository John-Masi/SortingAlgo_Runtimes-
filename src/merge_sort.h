#include <vector> 
#ifndef MERGE_SORT_H
#define MERGE_SORT_H


// TODO USE SPAN INSTEAD OF VEC 
void merge(std::vector<int>& a,int l,int m,int r) {
	int nL = m - l + 1;
	int nR = r - m;

	std::vector<int> LArr(nL);
	std::vector<int> RArr(nR);

	for(int i = 0; i < nL; i++) {
		LArr[i] = a[l + i];
	}

	for(int j = 0; j < nR; j++) {
		RArr[j] = a[m + 1 + j];
	}

	int i = 0;
	int j = 0;
	int k{l};

	while(i < nL && j < nR) {
		if(LArr[i] <= RArr[j]){
			a[k] = LArr[i];
			i++;
		}
		else {
			a[k] = RArr[j];
			j++;
		}

		k++;

	}

	while(i < nL) {
		a[k] = LArr[i];
		i++;
		k++;
	}
	while(j < nR) {
		a[k] = RArr[j];
		j++;
		k++;
	}

}

extern void merge_sort(std::vector<int>& v,int l, int h) {
	if(l >= h) { return; }
	int mid = l + (h - l) / 2;

	merge_sort(v,l,mid);
	merge_sort(v,mid+1,h);
	merge(v,l,mid,h);

}

#endif 
