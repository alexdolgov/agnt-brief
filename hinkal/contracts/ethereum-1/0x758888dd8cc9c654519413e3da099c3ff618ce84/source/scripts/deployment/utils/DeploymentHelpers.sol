// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;

library DeploymentHelpers {
    function bytesToHexString(bytes memory data) public pure returns (string memory) {
        bytes memory hexChars = "0123456789abcdef";
        bytes memory hexString = new bytes(2 + data.length * 2);

        hexString[0] = "0";
        hexString[1] = "x";
        for (uint256 i = 0; i < data.length; i++) {
            hexString[2 + 2 * i] = hexChars[uint8(data[i] >> 4)];
            hexString[3 + 2 * i] = hexChars[uint8(data[i] & 0x0f)];
        }

        return string(hexString);
    }
}
