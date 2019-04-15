#include <verilatedos.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>
#include <signal.h>
#include "verilated.h"
#include "Vblinky.h"
#include "testb.h"

int	main(int argc, char **argv) {
	Verilated::commandArgs(argc, argv);
	TESTB<Vblinky>	*tb = new TESTB<Vblinky>;

	// See if we have a +vcd=something command-line option.
	// If so, create the trace.vcd file
	const char *vcd = Verilated::commandArgsPlusMatch("vcd=");
	if (vcd[0]) {
	  printf("Creating trace.vcd\n");
	  tb->opentrace("trace.vcd");
	}

	// Run the simulation for 100_000 ticks
	int old_q=0;
	for (int i=0; i < 100000; i++) {
	  tb->tick();

	  // Print out if the q output has changed
	  if (tb->m_core->q != old_q) {
	    printf("LED: %d\n", tb->m_core->q);

	    // and save the old q value for later comparison
	    old_q= tb->m_core->q;
	  }
	}

	printf("Simulation complete\n");
}
