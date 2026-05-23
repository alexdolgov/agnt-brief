// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4 <0.9.0;

import { BytesLib } from "./BytesLib.sol";
import { ProtobufLib } from "./ProtobufLib.sol";

library WithdrawalLib {
	struct Coin {
		string denom;
		string amount;
	}

	struct Data {
		string nonce;
		string from;
		string to;
		Coin amount;
	}

	function decode(
		uint64 start,
		bytes memory buffer
	) internal pure returns (Data memory) {
		Data memory data;
		ProtobufLib.Value[] memory values = ProtobufLib.decodeFields(
			start,
			buffer
		);

		for (uint i = 0; i < values.length; i++) {
			// nonce
			if (values[i].number == 1) {
				data.nonce = ProtobufLib.decode_string(values[i].dataBytes);
			}

			// from
			if (values[i].number == 2) {
				data.from = ProtobufLib.decode_string(values[i].dataBytes);
			}

			// to
			if (values[i].number == 3) {
				data.to = ProtobufLib.decode_string(values[i].dataBytes);
			}

			// coin
			if (values[i].number == 4) {
				ProtobufLib.Value[] memory coin = ProtobufLib.decodeFields(
					0,
					values[i].dataBytes
				);

				for (uint c = 0; c < coin.length; c++) {
					if (coin[c].number == 1) {
						data.amount.denom = ProtobufLib.decode_string(
							coin[c].dataBytes
						);
					}

					if (coin[c].number == 2) {
						data.amount.amount = ProtobufLib.decode_string(
							coin[c].dataBytes
						);
					}
				}
			}
		}

		return data;
	}
}
