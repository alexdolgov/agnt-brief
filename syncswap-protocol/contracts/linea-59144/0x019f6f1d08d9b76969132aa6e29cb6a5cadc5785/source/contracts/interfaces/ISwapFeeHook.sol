// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
pragma abicoder v2;

import "./IFeeManagerV3.sol";

interface ISwapFeeHook {
    function getSwapFeeData(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data,
        IFeeManagerV3.FeeData calldata feeData
    ) external view returns (IFeeManagerV3.FeeData memory);
}