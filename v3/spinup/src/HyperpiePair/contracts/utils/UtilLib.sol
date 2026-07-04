// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

import { HyperpieConstants } from "./HyperpieConstants.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title UtilLib - Utility library
/// @notice Utility functions for Hyperpie protocol
library UtilLib {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error ZeroAddressNotAllowed();
    error TransferHYPEFailed();

    /*//////////////////////////////////////////////////////////////
                            UTILITY FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @dev zero address check modifier
    /// @param address_ address to check
    function checkNonZeroAddress(address address_) internal pure {
        if (address_ == address(0)) revert ZeroAddressNotAllowed();
    }

    /// @dev Safe transfer of HYPE (native token)
    /// @param to recipient address
    /// @param value amount to transfer
    function safeTransferHYPE(address to, uint256 value) internal {
        UtilLib.checkNonZeroAddress(to);
        (bool success,) = address(to).call{ value: value }("");
        if (!success) revert TransferHYPEFailed();
    }
}
