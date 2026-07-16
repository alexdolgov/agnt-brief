// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

library UtilsLib {

    error DexCalldataTooShort();

    function getSelector(bytes memory data) internal pure returns (bytes4 selector) {
        if (data.length < 4) {
            revert DexCalldataTooShort();
        }
        selector = bytes4(data);
    }

    function bubbleUpRevert(bytes memory reason) internal pure {
        assembly {
            revert(add(reason, 0x20), mload(reason))
        }
    }
}