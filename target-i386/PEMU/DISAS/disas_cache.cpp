#include<unordered_map>
using namespace std;

unordered_map<unsigned long, int> trace_map;
extern "C" {
	void update_mem_usage(int len);
	void PEMU_add_trace(unsigned long pc)
	{
		if(trace_map.find(pc) == trace_map.end())
		{
			trace_map[pc] = 0;
			update_mem_usage(sizeof(unsigned long) *2);
		}
	}

	int PEMU_trace_need_disas(unsigned long pc)
	{
		if(trace_map.find(pc) != trace_map.end())
			return trace_map[pc] == 0;
		return 0;
	}

	void PEMU_set_trace(unsigned long pc)
	{
		if(trace_map.find(pc) != trace_map.end())
			trace_map[pc] = 1;
	}
}
