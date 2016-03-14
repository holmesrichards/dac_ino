#include <Synapse.h>

using namespace sl;

Synapse synapse;

bool gate{false};
unsigned val{0};

void setup() {
  synapse.writeCV(Synapse::CVChannel::A,0);
  synapse.writeCV(Synapse::CVChannel::B,0);
  synapse.writeGate(Synapse::GateChannel::A,false);
  synapse.writeGate(Synapse::GateChannel::B,false);
}

void loop() {
  synapse.writeCV(Synapse::CVChannel::A, val  );
  synapse.writeCV(Synapse::CVChannel::B, val++);
  if(val>4000)
  {
    val=0;
    gate = !gate;
    synapse.writeGate(Synapse::GateChannel::A, gate);
    synapse.writeGate(Synapse::GateChannel::B, gate);
  }
}
