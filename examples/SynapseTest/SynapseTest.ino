#include <Synapse.h>

using namespace sl;

bool gate{false};
unsigned val{0};

void setup() {
  SynapseShield.begin();
  SynapseShield.writeCV(Synapse::CVChannel::A,0);
  SynapseShield.writeCV(Synapse::CVChannel::B,0);
  SynapseShield.writeGate(Synapse::GateChannel::A,false);
  SynapseShield.writeGate(Synapse::GateChannel::B,false);
}

void loop() {
  SynapseShield.writeCV(Synapse::CVChannel::A, val  );
  SynapseShield.writeCV(Synapse::CVChannel::B, val++);
  if(val>4000)
  {
    val=0;
    gate = !gate;
    SynapseShield.writeGate(Synapse::GateChannel::A, gate);
    SynapseShield.writeGate(Synapse::GateChannel::B, gate);
  }
}
