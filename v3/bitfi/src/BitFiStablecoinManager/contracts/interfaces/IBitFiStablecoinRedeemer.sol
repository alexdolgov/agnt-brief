// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface IBitFiStablecoinRedeemer {
    /**
     * @notice Returns the address of the underlying asset this redeemer handles.
     */
    function underlying() external view returns (address);

    function settlementDelay() external view returns (uint256);
}
