#include "common.h"
#include "tools.h"

MODULE = Devel::LeakTrace::Fast PACKAGE = Devel::LeakTrace::Fast

PROTOTYPES: ENABLE

void
hook_runops()
PPCODE:
{
    tools_hook_runops();
}

void
reset_counters()
PPCODE:
{
    tools_reset_counters();
}

void
show_used()
CODE:
{
    tools_show_used();
}
