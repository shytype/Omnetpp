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

//
// TODO auto-generated type
//
import core4inet.nodes.ethernet.AS6802.TTEEtherHost;
import core4inet.incoming.AS6802.TTIncoming;
import core4inet.buffer.AS6802.TTDoubleBuffer;

network Switch1
{
        @display("bgb=351,311");
    submodules:
        vl_100_ctc: TTIncoming {
            parameters:
                @display("p=170,130");
        }
        vl_100: TTDoubleBuffer {
            parameters:
                @display("p=240,130");
        }
        vl_102_ctc: TTIncoming {
            parameters:
                @display("p=170,270");
        }
        vl_102: TTDoubleBuffer {
            parameters:
                @display("p=240,270");
        }
    connections:
        vl_100_ctc.out --> vl_100.in;
        vl_102_ctc.out --> vl_102.in;
}
