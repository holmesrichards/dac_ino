/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

#include <Synapse.h>

using namespace sl;

bool gate{false};
unsigned val{0};

void setup()
{
  SynapseShield.begin();
}

void loop()
{
  SynapseShield.writeCV(Synapse::CVChannel::A, val);
  SynapseShield.writeCV(Synapse::CVChannel::B, val++);
  if (val > 4095)
  {
    val = 0;
    gate = !gate;
    SynapseShield.writeGate(Synapse::GateChannel::A, gate);
    SynapseShield.writeGate(Synapse::GateChannel::B, gate);
  }
}
