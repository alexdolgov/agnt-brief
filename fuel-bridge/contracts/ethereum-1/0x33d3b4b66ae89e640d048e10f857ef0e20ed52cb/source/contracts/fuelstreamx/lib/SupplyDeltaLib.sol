// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

import { BytesLib } from "./BytesLib.sol";
import { ProtobufLib } from "./ProtobufLib.sol";

struct SupplyDeltaData {
	string nonce;
	string delta;
}

library SupplyDeltaLib {
	function decode(
		uint64 start,
		bytes memory buffer
	) internal pure returns (SupplyDeltaData memory) {
		SupplyDeltaData memory data;
		ProtobufLib.Value[] memory values = ProtobufLib.decodeFields(
			start,
			buffer
		);

		for (uint i = 0; i < values.length; i++) {
			// nonce
			if (values[i].number == 1) {
				data.nonce = ProtobufLib.decode_string(values[i].dataBytes);
			}

			// delta
			if (values[i].number == 2) {
				data.delta = ProtobufLib.decode_string(values[i].dataBytes);
			}
		}

		return data;
	}
}
