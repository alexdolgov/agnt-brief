// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Subset of the deployed AcetAdaptor we call from new contracts.
/// Deployed at 0x26304442Cd46cb3cee1A83a48F400eF43a3D0b5C on BSC (Solc 0.6.12).
/// Note: original parameter spelling is "_funtion" (sic).
interface IAcetAdaptor {
    function toPool(uint256 _amount, uint256 _funtion) external;
    function toDev(uint256 _amount, address _address, uint256 _funtion) external;
    function toBurn(uint256 _amount) external;
}
