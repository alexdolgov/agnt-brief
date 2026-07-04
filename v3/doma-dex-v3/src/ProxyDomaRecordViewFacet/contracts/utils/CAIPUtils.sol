// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { ByteUtils } from "./ByteUtils.sol";

/**
 * Library for CAIP-2 and CAIP-10 support.
 * OpenZeppelin implementation cannot be used, since it requires 'cancun' evmVersion support
 * CAIP-2 source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.2.0/contracts/utils/CAIP2.sol
 * CAIP-10 source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.2.0/contracts/utils/CAIP10.sol
 */
library CAIPUtils {
    using Strings for address;
    using Strings for uint256;

    error LocalChainRequired(string caip2);

    /// @dev Return the CAIP-2 identifier for the current (local) chain.
    function caip2Local() internal view returns (string memory) {
        return format("eip155", block.chainid.toString());
    }

    /**
     * @dev Formats a CAIP identifier.
     */
    function format(
        string memory prefix,
        string memory value
    ) internal pure returns (string memory) {
        return string.concat(prefix, ":", value);
    }

    /**
     * @dev Parse CAIP 10 identifier into CAIP 2 and account address.
     */
    function parseCAIP10(
        string memory caip10
    ) internal pure returns (string memory caip2, string memory account) {
        bytes memory buffer = bytes(caip10);
        uint256 bufferLength = buffer.length;

        uint256 pos = ByteUtils.lastIndexOf(buffer, ":", type(uint256).max);
        return (
            string(ByteUtils.slice(buffer, 0, pos)),
            string(ByteUtils.slice(buffer, pos + 1, bufferLength - pos - 1))
        );
    }

    function parseLocalCAIP10(string memory caip10) internal view returns (address) {
        (string memory caip2, string memory accountString) = parseCAIP10(caip10);

        if (!Strings.equal(caip2, caip2Local())) {
            revert LocalChainRequired(caip2);
        }

        return Strings.parseAddress(accountString);
    }

    /**
     * @dev Parse CAIP-2 identifier to extract namespace.
     * For example: "eip155:1" returns "eip155", "solana:mainnet" returns "solana"
     */
    function parseCAIP2Namespace(string memory caip2) internal pure returns (string memory) {
        bytes memory buffer = bytes(caip2);

        // Find the first colon separator
        for (uint256 i = 0; i < buffer.length; i++) {
            if (buffer[i] == ":") {
                return string(ByteUtils.slice(buffer, 0, i));
            }
        }

        // If no colon found, return the entire string (shouldn't happen with valid CAIP-2)
        return caip2;
    }
}
