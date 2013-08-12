#include <iostream>
#include "rfc3339.h"

using namespace std;
using namespace date;

int main() {
	Rfc3339 rfc3339;
	// 2013-08-12T18:50:00-04:00 is same 2013-08-12T22:50:00Z
	time_t tmp = rfc3339.parse("2013-08-12T18:50:00-04:00");
	cout << ctime(&tmp) << endl;
	time_t now = time(NULL);
	cout << rfc3339.serialize(now) << endl;
	rfc3339.setLocalTime(true);
	cout << rfc3339.serialize(now) << endl;
}
