// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

/// @title IERC20
/// @author Radiant Capital
/// @dev Empty because we only call library functions. It prevents calling transfer (transferFrom)
/// instead of
/// safeTransfer (safeTransferFrom).
interface IERC20 {
    function decimals() external view returns (uint8);
}
