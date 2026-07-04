// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

import "./IFeeManager.sol";

/// @notice The manager contract to control fees.
/// Management functions are omitted.
interface IFeeManagerV2 is IFeeManager {
    struct FeeData {
        uint64 gamma;
        uint24 minFee;
        uint24 maxFee;
    }

    function getSwapFeeData(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (FeeData memory);

    function getSwapFeeHook() external view returns (address);
}