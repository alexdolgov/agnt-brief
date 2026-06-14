// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

library AddressLib {
    function toAddress(bytes32 _bytes) internal pure returns (address) {
        return address(uint160(uint256(_bytes)));
    }

    function toBytes32(address _addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }
}
