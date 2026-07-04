// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

import { Common } from "./Common.sol";
import { Constants } from "./Constants.sol";

struct BridgeSendPayload {
    uint64 dstId;
    address to;
    address token;
    uint256 amount;
    bytes32 trxnType;
}

error WrongDataLength();
error WrongAddressEncoding();
error WrongData();

library Codec {
    uint256 internal constant DATA_LENGTH = 32 * 5;
    
    /**
     * @notice Decode a bridge send payload from bytes
     * @param _data encoded payload data
     * @return Decoded BridgeSendPayload struct
     */
    function decodeBridgeSendPayload(bytes memory _data) internal view returns (BridgeSendPayload memory) {
        if (_data.length != DATA_LENGTH) {
            revert WrongDataLength();
        }

        (uint64 dstId, address to, address token, uint256 amount, bytes32 trxnType) = abi.decode(_data, (uint64, address, address, uint256, bytes32));

        if (trxnType != Constants.BRIDGE_SEND_HASH) {
            revert WrongData();
        }
        if (dstId == 0) {
            revert WrongData();
        }
        if (to == address(0)) {
            revert WrongAddressEncoding();
        }
        if (token == address(0) || !Common.isContract(token)) {
            revert WrongAddressEncoding();
        }
        if (amount == 0) {
            revert WrongData();
        }

        return BridgeSendPayload(dstId, to, token, amount, trxnType);
    }
}
