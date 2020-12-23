label_0000:
	// Inputs[1] { @0007  msg.data.length }
	0000    60  PUSH1 0x80
	0002    60  PUSH1 0x40
	0004    52  MSTORE
	0005    60  PUSH1 0x04
	0007    36  CALLDATASIZE
	0008    10  LT
	0009    60  PUSH1 0x49
	000B    57  *JUMPI
	// Stack delta = +0
	// Outputs[1] { @0004  memory[0x40:0x60] = 0x80 }
	// Block ends with conditional jump to 0x0049, if msg.data.length < 0x04

label_000C:
	// Incoming jump from 0x000B, if not msg.data.length < 0x04
	// Inputs[1] { @000E  msg.data[0x00:0x20] }
	000C    60  PUSH1 0x00
	000E    35  CALLDATALOAD
	000F    7C  PUSH29 0x0100000000000000000000000000000000000000000000000000000000
	002D    90  SWAP1
	002E    04  DIV
	002F    63  PUSH4 0xffffffff
	0034    16  AND
	0035    80  DUP1
	0036    63  PUSH4 0x0dbe671f
	003B    14  EQ
	003C    60  PUSH1 0x4e
	003E    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0034  stack[0] = 0xffffffff & msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000 }
	// Block ends with conditional jump to 0x004e, if 0x0dbe671f == 0xffffffff & msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000

label_003F:
	// Incoming jump from 0x003E, if not 0x0dbe671f == 0xffffffff & msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000
	// Inputs[1] { @003F  stack[-1] }
	003F    80  DUP1
	0040    63  PUSH4 0x4df7e3d0
	0045    14  EQ
	0046    60  PUSH1 0x76
	0048    57  *JUMPI
	// Stack delta = +0
	// Block ends with conditional jump to 0x0076, if 0x4df7e3d0 == stack[-1]

label_0049:
	// Incoming jump from 0x000B, if msg.data.length < 0x04
	// Incoming jump from 0x0048, if not 0x4df7e3d0 == stack[-1]
	// Inputs[1] { @004D  memory[0x00:0x00] }
	0049    5B  JUMPDEST
	004A    60  PUSH1 0x00
	004C    80  DUP1
	004D    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @004D  revert(memory[0x00:0x00]); }
	// Block terminates

label_004E:
	// Incoming jump from 0x003E, if 0x0dbe671f == 0xffffffff & msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000
	// Inputs[1] { @004F  msg.value }
	004E    5B  JUMPDEST
	004F    34  CALLVALUE
	0050    80  DUP1
	0051    15  ISZERO
	0052    60  PUSH1 0x59
	0054    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @004F  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0059, if !msg.value

label_0055:
	// Incoming jump from 0x0054, if not !msg.value
	// Inputs[1] { @0058  memory[0x00:0x00] }
	0055    60  PUSH1 0x00
	0057    80  DUP1
	0058    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0058  revert(memory[0x00:0x00]); }
	// Block terminates

label_0059:
	// Incoming jump from 0x0054, if !msg.value
	0059    5B  JUMPDEST
	005A    50  POP
	005B    60  PUSH1 0x60
	005D    60  PUSH1 0x8a
	005F    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @005B  stack[-1] = 0x60 }
	// Block ends with call to 0x008a, returns to 0x0060

label_0060:
	// Incoming return from call to 0x008A at 0x005F
	// Inputs[4]
	// {
	//     @0063  memory[0x40:0x60]
	//     @0065  stack[-1]
	//     @0070  memory[0x40:0x60]
	//     @0075  memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]]
	// }
	0060    5B  JUMPDEST
	0061    60  PUSH1 0x40
	0063    51  MLOAD
	0064    80  DUP1
	0065    82  DUP3
	0066    81  DUP2
	0067    52  MSTORE
	0068    60  PUSH1 0x20
	006A    01  ADD
	006B    91  SWAP2
	006C    50  POP
	006D    50  POP
	006E    60  PUSH1 0x40
	0070    51  MLOAD
	0071    80  DUP1
	0072    91  SWAP2
	0073    03  SUB
	0074    90  SWAP1
	0075    F3  *RETURN
	// Stack delta = -1
	// Outputs[2]
	// {
	//     @0067  memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20] = stack[-1]
	//     @0075  return memory[memory[0x40:0x60]:memory[0x40:0x60] + (0x20 + memory[0x40:0x60]) - memory[0x40:0x60]];
	// }
	// Block terminates

label_0076:
	// Incoming jump from 0x0048, if 0x4df7e3d0 == stack[-1]
	// Inputs[1] { @0077  msg.value }
	0076    5B  JUMPDEST
	0077    34  CALLVALUE
	0078    80  DUP1
	0079    15  ISZERO
	007A    60  PUSH1 0x81
	007C    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @0077  stack[0] = msg.value }
	// Block ends with conditional jump to 0x0081, if !msg.value

label_007D:
	// Incoming jump from 0x007C, if not !msg.value
	// Inputs[1] { @0080  memory[0x00:0x00] }
	007D    60  PUSH1 0x00
	007F    80  DUP1
	0080    FD  *REVERT
	// Stack delta = +0
	// Outputs[1] { @0080  revert(memory[0x00:0x00]); }
	// Block terminates

label_0081:
	// Incoming jump from 0x007C, if !msg.value
	0081    5B  JUMPDEST
	0082    50  POP
	0083    60  PUSH1 0x88
	0085    60  PUSH1 0x98
	0087    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @0083  stack[-1] = 0x88 }
	// Block ends with call to 0x0098, returns to 0x0088

label_0088:
	// Incoming return from call to 0x0098 at 0x0087
	0088    5B  JUMPDEST
	0089    00  *STOP
	// Stack delta = +0
	// Outputs[1] { @0089  stop(); }
	// Block terminates

label_008A:
	// Incoming call from 0x005F, returns to 0x0060
	008A    5B  JUMPDEST
	008B    60  PUSH1 0x00
	008D    60  PUSH1 0x94
	008F    60  PUSH1 0x02
	0091    60  PUSH1 0xab
	0093    56  *JUMP
	// Stack delta = +3
	// Outputs[3]
	// {
	//     @008B  stack[0] = 0x00
	//     @008D  stack[1] = 0x94
	//     @008F  stack[2] = 0x02
	// }
	// Block ends with call to 0x00ab, returns to 0x0094

label_0094:
	// Incoming return from call to 0x00AB at 0x0093
	// Inputs[2]
	// {
	//     @0096  stack[-2]
	//     @0096  stack[-3]
	// }
	0094    5B  JUMPDEST
	0095    50  POP
	0096    90  SWAP1
	0097    56  *JUMP
	// Stack delta = -2
	// Outputs[1] { @0096  stack[-3] = stack[-2] }
	// Block ends with unconditional jump to stack[-3]

label_0098:
	// Incoming call from 0x0087, returns to 0x0088
	// Inputs[2]
	// {
	//     @009D  storage[0x00]
	//     @00AA  stack[-1]
	// }
	0098    5B  JUMPDEST
	0099    60  PUSH1 0x00
	009B    80  DUP1
	009C    81  DUP2
	009D    54  SLOAD
	009E    80  DUP1
	009F    92  SWAP3
	00A0    91  SWAP2
	00A1    90  SWAP1
	00A2    60  PUSH1 0x01
	00A4    01  ADD
	00A5    91  SWAP2
	00A6    90  SWAP1
	00A7    50  POP
	00A8    55  SSTORE
	00A9    50  POP
	00AA    56  *JUMP
	// Stack delta = -1
	// Outputs[1] { @00A8  storage[0x00] = 0x01 + storage[0x00] }
	// Block ends with unconditional jump to stack[-1]

label_00AB:
	// Incoming call from 0x0093, returns to 0x0094
	// Incoming call from 0x00C7, returns to 0x00C8
	// Inputs[1] { @00B0  stack[-1] }
	00AB    5B  JUMPDEST
	00AC    60  PUSH1 0x00
	00AE    60  PUSH1 0x01
	00B0    82  DUP3
	00B1    11  GT
	00B2    15  ISZERO
	00B3    15  ISZERO
	00B4    60  PUSH1 0xbe
	00B6    57  *JUMPI
	// Stack delta = +1
	// Outputs[1] { @00AC  stack[0] = 0x00 }
	// Block ends with conditional jump to 0x00be, if !!(stack[-1] > 0x01)

label_00B7:
	// Incoming jump from 0x00B6, if not !!(stack[-1] > 0x01)
	// Inputs[1] { @00B9  stack[-1] }
	00B7    60  PUSH1 0x01
	00B9    90  SWAP1
	00BA    50  POP
	00BB    60  PUSH1 0xcd
	00BD    56  *JUMP
	// Stack delta = +0
	// Outputs[1] { @00B9  stack[-1] = 0x01 }
	// Block ends with unconditional jump to 0x00cd

label_00BE:
	// Incoming jump from 0x00B6, if !!(stack[-1] > 0x01)
	// Inputs[1] { @00C3  stack[-2] }
	00BE    5B  JUMPDEST
	00BF    60  PUSH1 0xc8
	00C1    60  PUSH1 0x01
	00C3    83  DUP4
	00C4    03  SUB
	00C5    60  PUSH1 0xab
	00C7    56  *JUMP
	// Stack delta = +2
	// Outputs[2]
	// {
	//     @00BF  stack[0] = 0xc8
	//     @00C4  stack[1] = stack[-2] - 0x01
	// }
	// Block ends with call to 0x00ab, returns to 0x00C8

label_00C8:
	// Incoming return from call to 0x00AB at 0x00C7
	// Inputs[3]
	// {
	//     @00C9  stack[-3]
	//     @00CA  stack[-1]
	//     @00CB  stack[-2]
	// }
	00C8    5B  JUMPDEST
	00C9    82  DUP3
	00CA    02  MUL
	00CB    90  SWAP1
	00CC    50  POP
	// Stack delta = -1
	// Outputs[1] { @00CB  stack[-2] = stack[-3] * stack[-1] }
	// Block continues

label_00CD:
	// Incoming jump from 0x00BD
	// Incoming jump from 0x00CC
	// Inputs[3]
	// {
	//     @00CE  stack[-3]
	//     @00CE  stack[-1]
	//     @00CF  stack[-2]
	// }
	00CD    5B  JUMPDEST
	00CE    91  SWAP2
	00CF    90  SWAP1
	00D0    50  POP
	00D1    56  *JUMP
	// Stack delta = -2
	// Outputs[1] { @00CE  stack[-3] = stack[-1] }
	// Block ends with unconditional jump to stack[-3]

	00D2    00    *STOP
	00D3    A1    LOG1
	00D4    65    PUSH6 0x627a7a723058
	00DB    20    SHA3
	00DC    03    SUB
	00DD    F5    CREATE2
	00DE    85    DUP6
	00DF    AD    AD
	00E0    58    PC
	00E1    88    DUP9
	00E2    50    POP
	00E3    FB    FB
	00E4    FB    FB
	00E5    A4    LOG4
	00E6    E8    E8
	00E7    D9    D9
	00E8    66    PUSH7 0x84e2c3fa427daf
	00F0    01    ADD
	00F1    3D    RETURNDATASIZE
	00F2    4A    4A
	00F3    0F    0F
	00F4    8E    DUP15
	00F5    78    PUSH25 0x188d4d475ee80029