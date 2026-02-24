#include "src/timer.h"
#include "src/randomize.h"

namespace C_Size {
	constexpr int c_0{1000};
	constexpr int c_1{5000};
	constexpr int c_2{10000};
	constexpr int c_3{50000};
	constexpr int c_4{100000};
};

int main() {
	std::vector<int> r0 = randomize_array(C_Size::c_0);
	std::vector<int> r1 = randomize_array(C_Size::c_1);

	std::vector<int> r2 = randomize_array(C_Size::c_2);
	std::vector<int> r3 = randomize_array(C_Size::c_3);
	std::vector<int> r4 = randomize_array(C_Size::c_4);


		
	qs_time(r0);

}
