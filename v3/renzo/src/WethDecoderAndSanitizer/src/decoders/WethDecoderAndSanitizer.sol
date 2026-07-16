// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IDecoderAndSanitizer} from "../interfaces/IDecoderAndSanitizer.sol";

/// @title WethDecoderAndSanitizer
/// @notice Decodes and sanitizes calldata for WETH9 deposit (wrap) and withdraw (unwrap).
/// @dev Both functions have no address parameters to validate:
///      - deposit() is payable with no args — ETH sent becomes WETH for msg.sender
///      - withdraw(uint256) burns WETH and sends ETH back to msg.sender
contract WethDecoderAndSanitizer is IDecoderAndSanitizer {
    error UnsupportedSelector(bytes4 selector);

    // deposit()
    bytes4 internal constant DEPOSIT_SELECTOR = 0xd0e30db0;
    // withdraw(uint256)
    bytes4 internal constant WITHDRAW_SELECTOR = 0x2e1a7d4d;

    /// @inheritdoc IDecoderAndSanitizer
    function decode(bytes calldata calldata_, address) external pure returns (bytes memory) {
        bytes4 selector = bytes4(calldata_[:4]);

        if (selector == DEPOSIT_SELECTOR || selector == WITHDRAW_SELECTOR) {
            return "";
        }

        revert UnsupportedSelector(selector);
    }
}
