// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @title ILeverageRfqEngine
/// @notice Minimal interface for flash fill entrypoints (matches ftDNMM LeverageRfqEngine shapes).
interface ILeverageRfqEngine {
    enum LeverageAction {
        OPEN,
        CLOSE,
        SWAP
    }

    struct LeveragedOrder {
        LeverageAction action;
        address user;
        address sellToken;
        address buyToken;
        uint256 sellAmount;
        uint256 buyAmount;
        uint32 validTo;
        uint256 feeAmount;
    }

    function openLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external;

    function closeLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external;

    function swapCollateralFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external;

    function broadcastOrder(LeveragedOrder calldata order) external returns (bytes32 digest);
    function orderDigest(LeveragedOrder calldata order) external view returns (bytes32);
    function pm() external view returns (address);
}
