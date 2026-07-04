// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { ByteUtils } from "./ByteUtils.sol";

library NameUtils {
    error InvalidLabel(string label);
    error InvalidName(string name);
    error InvalidHost(string host);

    function ensureValidLabel(string memory label) internal pure {
        if (!isValidLabel(label)) {
            revert InvalidLabel(label);
        }
    }

    function ensureValidName(string memory name) internal pure {
        if (!isValidName(name)) {
            revert InvalidName(name);
        }
    }

    function ensureValidHost(string memory host) internal pure {
        if (!isValidHost(host)) {
            revert InvalidHost(host);
        }
    }

    function isValidName(string memory name) internal pure returns (bool) {
        return _validateDotSeparated(name, false);
    }

    function isValidLabel(string memory label) internal pure returns (bool) {
        return _isValidLabelInternal(label, false);
    }

    /**
     * @dev Validates a DNS host per RFC 2181 and RFC 8552.
     * Allows underscores for special DNS names like _acme-challenge, _dmarc, etc.
     * Supports multi-level hosts like "_api.hostname.example".
     */
    function isValidHost(string memory host) internal pure returns (bool) {
        return _validateDotSeparated(host, true);
    }

    /**
     * @dev Validates a single DNS host label allowing underscores.
     * Used by isValidHost to validate each dot-separated part.
     */
    function isValidHostLabel(string memory label) internal pure returns (bool) {
        return _isValidLabelInternal(label, true);
    }

    function _validateDotSeparated(
        string memory input,
        bool allowUnderscore
    ) private pure returns (bool) {
        bytes memory b = bytes(input);
        uint256 len = b.length;

        // Check length (1-253 characters, max domain name length in DNS)
        if (len == 0 || len > 253) {
            return false;
        }

        // Ensure no leading or trailing dots
        if (b[0] == 0x2E || b[len - 1] == 0x2E) {
            // ASCII '.' = 0x2E
            return false;
        }

        // Split into labels and validate each one
        string memory currentLabel;
        uint256 start = 0;

        for (uint256 i = 0; i < len; i++) {
            if (b[i] == 0x2E) {
                // If character is '.'
                if (i == start) {
                    // Empty label (double dot case like "example..com")
                    return false;
                }

                // Extract the label and validate it
                currentLabel = substring(input, start, i);
                if (!_isValidLabelInternal(currentLabel, allowUnderscore)) {
                    return false;
                }

                start = i + 1;
            }
        }

        // Validate the last label (after the last dot)
        currentLabel = substring(input, start, len);
        if (!_isValidLabelInternal(currentLabel, allowUnderscore)) {
            return false;
        }

        return true;
    }

    function _isValidLabelInternal(
        string memory label,
        bool allowUnderscore
    ) private pure returns (bool) {
        bytes memory b = bytes(label);
        uint256 len = b.length;

        // Check length (1-63 characters)
        if (len == 0 || len > 63) {
            return false;
        }

        // Check if it's a Punycode label (starts with "xn--")
        bool isPunycode = (len > 4 &&
            b[0] == 0x78 && // 'x'
            b[1] == 0x6E && // 'n'
            b[2] == 0x2D && // '-'
            b[3] == 0x2D); // '-'

        // Validate characters and hyphen placement rules
        for (uint256 i = 0; i < len; i++) {
            bytes1 char = b[i];

            bool isValidChar = (char >= 0x61 && char <= 0x7A) || // a-z
                (char >= 0x30 && char <= 0x39) || // 0-9
                (char == 0x2D) || // '-' hyphen
                (allowUnderscore && char == 0x5F); // '_' underscore (if allowed)

            if (!isValidChar) {
                return false;
            }

            // Ensure no hyphen at start or end (underscore is allowed at start)
            if ((i == 0 || i == len - 1) && char == 0x2D) {
                return false;
            }

            // Check for double hyphen (`--`) at positions 3 and 4 (unless "xn--")
            if (i == 2 && char == 0x2D && i + 1 < len && b[i + 1] == 0x2D) {
                if (!isPunycode) {
                    return false; // Double hyphen not allowed in 3rd and 4th position unless "xn--"
                }
            }
        }

        return true;
    }

    /**
     * @dev Computes a full name namehash, e.g. `example.com`
     */
    function namehash(string memory name) internal pure returns (uint256) {
        bytes memory nameBytes = bytes(name);

        uint256 nameHash = 0;
        uint256 lastDotPosition = nameBytes.length;

        while (lastDotPosition > 0) {
            uint256 labelStart = lastDotPosition - 1;

            // Find the start of the label
            while (labelStart > 0 && nameBytes[labelStart - 1] != ".") {
                labelStart--;
            }
            uint256 labelLength = lastDotPosition - labelStart;

            string memory label = string(ByteUtils.slice(nameBytes, labelStart, labelLength));

            nameHash = namehash(nameHash, label);

            if (labelStart == 0) {
                break;
            } else {
                lastDotPosition = labelStart - 1;
            }
        }

        return nameHash;
    }

    function namehash(uint256 parent, string memory label) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(parent, keccak256(abi.encodePacked(label)))));
    }

    function substring(
        string memory str,
        uint256 startIndex,
        uint256 endIndex
    ) private pure returns (string memory) {
        bytes memory strBytes = bytes(str);
        bytes memory result = new bytes(endIndex - startIndex);
        for (uint256 i = startIndex; i < endIndex; i++) {
            result[i - startIndex] = strBytes[i];
        }
        return string(result);
    }
}
