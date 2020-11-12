//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

import core4inet.examples.AS6802.small_network.Node1;
import core4inet.examples.AS6802.small_network.Node2;
import core4inet.examples.AS6802.small_network.Switch1;
//
// TODO auto-generated type
//
import core4inet.nodes.ethernet.AS6802.TTEEtherHost;
import core4inet.incoming.AS6802.TTIncoming;
import core4inet.buffer.AS6802.TTDoubleBuffer;
import core4inet.nodes.ethernet.AS6802.TTEEtherSwitch;
import core4inet.nodes.ethernet.tsn.TSNEtherHost;
import inet.node.ethernet.Eth1G;


network Test
{
    submodules:
        switch1: Switch1 {
            @display("p=147,92");
        }
        node1: Node1 {
            @display("p=50,92");
        }
        node2: Node2 {
            @display("p=233,92");
        }
    connections:
        node2.ethg <--> Eth1G <--> switch1.ethg++;
        node1.ethg <--> Eth1G <--> switch1.ethg++;
}
