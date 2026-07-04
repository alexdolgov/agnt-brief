// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IGetCCIPAdmin {
    /// @notice Returns the admin of the token.
    /// @dev This method is named to never conflict with existing methods.
    function getCCIPAdmin() external view returns (address);
}
