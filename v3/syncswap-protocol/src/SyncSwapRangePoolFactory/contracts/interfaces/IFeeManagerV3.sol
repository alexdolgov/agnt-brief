// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

/// @notice The manager contract to control fees.
/// Management functions are omitted.
interface IFeeManagerV3 {
    struct FeeData {
        uint64 gamma;
        uint24 minFee;
        uint24 maxFee;
    }

    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (uint24);

    function getProtocolFee(address pool) external view returns (uint24);
}