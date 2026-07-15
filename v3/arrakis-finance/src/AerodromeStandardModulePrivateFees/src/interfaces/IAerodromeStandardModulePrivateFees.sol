// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {IOracleWrapper} from "./IOracleWrapper.sol";
import {Rebalance, Range, PositionLiquidity} from "../structs/SUniswapV3.sol";

interface IAerodromeStandardModulePrivateFees {
    // #region errors.

    error OnlyMetaVaultOwner();
    error MaxSlippageGtTenPercent();
    error AmountZero();
    error InsufficientFunds();
    error LengthsNotEqual();
    error SamePool();
    error MintToken0();
    error MintToken1();
    error BurnToken0();
    error BurnToken1();
    error OverMaxDeviation();
    error NativeCoinNotSupported();
    error PoolNotFound();
    error ExpectedMinReturnTooLow();
    error WrongRouter();
    error SlippageTooHigh();
    error OnlyPool();
    error OnlyManagerOwner();
    error OraclePriceZero();
    error NotInitsValue();

    // #endregion errors.

    // #region events.

    event LogApproval(
        address indexed spender, address[] tokens, uint256[] amounts
    );
    event LogRebalance(
        PositionLiquidity[] burns,
        PositionLiquidity[] mints,
        uint256 amount0Minted,
        uint256 amount1Minted,
        uint256 amount0Burned,
        uint256 amount1Burned
    );
    event LogSetPool(
        address oldPool,
        address pool,
        Rebalance rebalance
    );

    // #endregion events.

    function initialize(
        int24 tickSpacing_,
        IOracleWrapper oracle_,
        uint24 maxSlippage_,
        address metaVault_
    ) external;

    function approve(
        address spender_,
        address[] calldata tokens_,
        uint256[] calldata amounts
    ) external;

    function setPool(
        int24 tickSpacing_,
        Rebalance calldata rebalance_
    ) external;

    function rebalance(
        Rebalance calldata rebalance_
    ) external;

    function uniswapV3MintCallback(
        uint256 amount0Owed,
        uint256 amount1Owed,
        bytes calldata data
    ) external;

    // #region view functions.

    function pool() external view returns (address);

    function oracle() external view returns (IOracleWrapper);

    function maxSlippage() external view returns (uint24);

    /// @notice function used to get the list of active ranges.
    /// @return ranges active ranges
    function getRanges()
        external
        view
        returns (Range[] memory ranges);

    // #endregion view functions.
}
