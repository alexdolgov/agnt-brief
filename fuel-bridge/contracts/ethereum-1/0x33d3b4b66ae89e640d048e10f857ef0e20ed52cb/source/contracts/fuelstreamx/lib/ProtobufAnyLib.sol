// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

import { BytesLib } from "./BytesLib.sol";
import { ProtobufLib } from "./ProtobufLib.sol";
import { WithdrawalLib } from "./WithdrawalLib.sol";
import { SupplyDeltaLib, SupplyDeltaData } from "./SupplyDeltaLib.sol";

struct WithdrawalAny {
	string typeUrl;
	WithdrawalLib.Data value;
}

struct SupplyDeltaAny {
	string typeUrl;
	SupplyDeltaData value;
}

library ProtobufAnyLib {
	error InvalidWithdrawalTypeUrl(string);
	error InvalidSupplyDeltaTypeUrl(string);

	bytes32 internal constant WITHDRAWAL_TYPE_URL =
		keccak256("/fuelsequencer.bridge.v1.MsgWithdrawToEthereumResponse");
	bytes32 internal constant SUPPLYDELTA_TYPE_URL =
		keccak256("/fuelsequencer.bridge.v1.MsgSupplyDeltaResponse");

	function decodeWithdrawal(
		uint64 start,
		bytes memory buffer
	) public pure returns (WithdrawalAny memory) {
		WithdrawalAny memory withdrawalAny;
		ProtobufLib.Value[] memory values = ProtobufLib.decodeFields(
			start,
			buffer
		);

		for (uint i = 0; i < values.length; i++) {
			// Skip
			if (values[i].number == 1) {}

			if (values[i].number == 2) {
				ProtobufLib.Value[] memory values2 = ProtobufLib.decodeFields(
					0,
					values[i].dataBytes
				);
				for (uint j = 0; j < values2.length; j++) {
					// Type Url
					if (values2[j].number == 1) {
						withdrawalAny.typeUrl = ProtobufLib.decode_string(
							values2[j].dataBytes
						);
					}

					// Value
					if (values2[j].number == 2) {
						withdrawalAny.value = WithdrawalLib.decode(
							0,
							values2[j].dataBytes
						);
					}
				}
			}
		}

		if (keccak256(bytes(withdrawalAny.typeUrl)) != WITHDRAWAL_TYPE_URL) {
			revert InvalidWithdrawalTypeUrl(withdrawalAny.typeUrl);
		}

		return withdrawalAny;
	}

	function decodeSupplyDelta(
		uint64 start,
		bytes memory buffer
	) public pure returns (SupplyDeltaAny memory supplyDeltaAny) {
		ProtobufLib.Value[] memory values = ProtobufLib.decodeFields(
			start,
			buffer
		);

		for (uint i = 0; i < values.length; i++) {
			// Skip
			if (values[i].number == 1) {}

			if (values[i].number == 2) {
				ProtobufLib.Value[] memory values2 = ProtobufLib.decodeFields(
					0,
					values[i].dataBytes
				);
				for (uint j = 0; j < values2.length; j++) {
					// Type Url
					if (values2[j].number == 1) {
						supplyDeltaAny.typeUrl = ProtobufLib.decode_string(
							values2[j].dataBytes
						);
					}

					// Value
					if (values2[j].number == 2) {
						supplyDeltaAny.value = SupplyDeltaLib.decode(
							0,
							values2[j].dataBytes
						);
					}
				}
			}
		}

		if (keccak256(bytes(supplyDeltaAny.typeUrl)) != SUPPLYDELTA_TYPE_URL) {
			revert InvalidSupplyDeltaTypeUrl(supplyDeltaAny.typeUrl);
		}

		return supplyDeltaAny;
	}
}
