/*
	This file is part of cpp-ethereum.

	cpp-ethereum is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	cpp-ethereum is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with cpp-ethereum.  If not, see <http://www.gnu.org/licenses/>.
*/
/** @file Instruction.h
 * @author Gav Wood <i@gavwood.com>
 * @date 2014
 */

#pragma once

#include "Common.h"

namespace eth
{

// TODO: Update comments.

/// Virtual machine bytecode instruction.
enum class Instruction: uint8_t
{
	STOP = 0x00,		///< halts execution
	ADD,
	MUL,
	SUB,
	DIV,
	SDIV,
	MOD,
	SMOD,
	EXP,
	NEG,
	LT,
	LE,
	GT,
	GE,
	EQ,
	NOT,
	MYADDRESS,			///< pushes the transaction sender
	TXSENDER,			///< pushes the transaction sender
	TXVALUE	,			///< pushes the transaction value
	TXDATAN,			///< pushes the number of data items
	TXDATA,				///< pops one item and pushes data item S[-1], or zero if index out of range
	BLK_PREVHASH,		///< pushes the hash of the previous block (NOT the current one since that's impossible!)
	BLK_COINBASE,		///< pushes the coinbase of the current block
	BLK_TIMESTAMP,		///< pushes the timestamp of the current block
	BLK_NUMBER,			///< pushes the current block number
	BLK_DIFFICULTY,		///< pushes the difficulty of the current block
	BLK_NONCE,
	BASEFEE,
	SHA256 = 0x20,
	RIPEMD160,
	ECMUL,
	ECADD,
	ECSIGN,
	ECRECOVER,
	ECVALID,
	SHA3,
	PUSH = 0x30,
	POP,
	DUP,
	SWAP,
	MLOAD,
	MSTORE,
	SLOAD,
	SSTORE,
	JMP,
	JMPI,
	IND,
	EXTRO,
	BALANCE,
	MKTX,
	SUICIDE = 0x3f
};

struct InstructionInfo
{
	char const* name;
	int additional;
	int args;
	int ret;
};

extern const std::map<Instruction, InstructionInfo> c_instructionInfo;
extern const std::map<std::string, Instruction> c_instructions;

u256s assemble(std::string const& _code, bool _quiet = false);
std::string disassemble(u256s const& _mem);
u256s compileLisp(std::string const& _code, bool _quiet = false);

}
