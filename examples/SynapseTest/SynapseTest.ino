#include <Synapse.h>

using namespace sl;

bool gate{false};
unsigned val{0};

void setup() {
  SynapseShield.begin();
}

void loop() {
  SynapseShield.writeCV(Synapse::CVChannel::A, val  );
  SynapseShield.writeCV(Synapse::CVChannel::B, val++);
  if(val>4095)
  {
    val=0;
    gate = !gate;
    SynapseShield.writeGate(Synapse::GateChannel::A, gate);
    SynapseShield.writeGate(Synapse::GateChannel::B, gate);
  }
}
