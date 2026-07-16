// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { IPerpPositionManagerEvent } from "./IPerpPositionManagerEvent.sol";

interface IPerpPositionManager is IPerpPositionManagerEvent {
    struct OpenPositionParams {
        bool isBaseToQuote;
        bool isExactInput;
        uint256 amount;
    }

    /// @param sqrtPriceLimitX96 square root price limit scaled by 2^96 of Perp, not Uni spot
    struct OpenPositionFullParams {
        bool isBaseToQuote;
        bool isExactInput;
        uint256 amount;
        uint256 oppositeAmountBound;
        uint256 deadline;
        uint160 sqrtPriceLimitX96;
    }

    function deposit(address token, uint256 amount) external;

    function withdraw(address token, uint256 amount) external;

    function openPosition(OpenPositionParams memory) external returns (uint256 base, uint256 quote);

    function openPosition(OpenPositionFullParams memory) external returns (uint256 base, uint256 quote);

    function getCaller() external view returns (address);

    function getBaseToken() external view returns (address);

    function getSettlementToken() external view returns (address);

    function getTakerPositionSize() external view returns (int256 takerPositionSize);

    /// @dev there's a `Safe` suffix means the value is required to be >= 0
    function getAccountValueSafe_6() external view returns (int256);

    function getMarkPrice() external view returns (uint256);

    function isMarginSufficientByRatio(uint24 ratio) external view returns (bool);

    function getDeleveragedPositionSize(uint24 targetMarginRatio) external view returns (uint256);
}
