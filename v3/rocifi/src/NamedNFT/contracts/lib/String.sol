// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

library String {
    /**
     * @notice Utils function that transcode string to lowercase
     * @param _str string that needs to be lowered
     * @return string in lower case
     */
    function toLower(string memory _str) internal pure returns (string memory) {
        bytes memory bStr = bytes(_str);
        bytes memory bLower = new bytes(bStr.length);

        for (uint256 i = 0; i < bStr.length; i++) {
            // Uppercase character...
            if ((bStr[i] >= 0x41) && (bStr[i] <= 0x5A)) {
                // So we add 0x20 to make it lowercase
                bLower[i] = bytes1(uint8(bStr[i]) + 0x20);
            } else {
                bLower[i] = bStr[i];
            }
        }
        return string(bLower);
    }

    /**
     * @notice Utils function that concatenates two strings
     * @param s1 first string
     * @param s2 second string
     * @return concatinated string
     */
    function concat(string memory s1, string memory s2) internal pure returns (string memory) {
        return string(bytes.concat(bytes(s1), bytes(s2)));
    }

    /**
     * @notice Utils function that compare strings
     * @param s1 first string
     * @param s2 second string
     * @return equality flag
     */
    function compare(string memory s1, string memory s2) internal pure returns (bool) {
        return keccak256(bytes(s1)) == keccak256(bytes(s2));
    }
}
