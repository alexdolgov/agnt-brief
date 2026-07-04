// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/// @title IAuthenticationController
/// @author Jose Mejias
/// @notice Interface for AuthenticationController
interface IAuthenticationController {
    function associatedTokenOf(address _account) external view returns (uint256);
}
