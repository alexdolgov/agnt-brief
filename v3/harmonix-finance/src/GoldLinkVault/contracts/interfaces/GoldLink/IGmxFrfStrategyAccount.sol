// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import { IStrategyAccount } from "./IStrategyAccount.sol";
import {
    IGmxV2OrderTypes
} from "./IGmxV2OrderTypes.sol";
import {
    IGmxV2PositionTypes
} from "./IGmxV2PositionTypes.sol";
import { WithdrawalLogic } from "./libraries/WithdrawalLogic.sol";

/**
 * @title IGmxFrfStrategyAccount
 * @author GoldLink
 *
 * @dev Interface for interacting with a Gmx Funding rate farming strategy account.
 */
interface IGmxFrfStrategyAccount is IStrategyAccount {
    
    // ============ Structs ============

    /// @dev The configuration for callbacks made through this strategy.
    struct CallbackConfig {
        // The address of the callback contract.
        address callback;
        // The address that the tokens should be sent to. In many cases it is more gas efficient for
        // the GoldLink Protocol to send tokens directly.
        address receiever;
        // The maximum tokens exchanged during the callback.
        uint256 tokenAmountMax;
    }

    // ============ External Functions ============

    /// @dev Create an order to increase a position's size. The account must have `collateralAmount` USDC in their account. Ensures delta neutrality on creation. Non-atomic.
    function executeCreateIncreaseOrder(
        address market,
        uint256 collateralAmount,
        uint256 executionFee
    )
        external
        payable
        returns (
            IGmxV2OrderTypes.CreateOrderParams memory order,
            bytes32 oderKey
        );

    /// @dev Create an order to decrease a position's size. Non-atomic.
    function executeCreateDecreaseOrder(
        address market,
        uint256 sizeDeltaUsd,
        uint256 executionFee
    )
        external
        payable
        returns (
            IGmxV2OrderTypes.CreateOrderParams memory order,
            bytes32 orderKey
        );

    /// @dev Cancels an order in a given market. Does not apply to liquidation orders.
    function executeCancelOrder(bytes32 orderKey) external;

    /// @dev Claim funding fees for the provided markets and assets. Fees are locked in the contract until the loan is repaid or they are used as collateral.
    function executeClaimFundingFees(
        address[] memory markets,
        address[] memory assets
    ) external;

    /// @dev Withdraw profit from a given market. Can only withdraw long tokens.
    function executeWithdrawProfit(
        WithdrawalLogic.WithdrawProfitParams memory params
    ) external;

    /// @dev Claim collateral in the event of a GMX collateral lock-up.
    function executeClaimCollateral(
        address market,
        address asset,
        uint256 timeKey
    ) external;

    /// @dev Atomically liquidate assets. can be called by anyone when an accounts `liquidationStatus` is `ACTIVE`. Caller recieves a fee for their service.
    function executeLiquidateAssets(
        address asset,
        uint256 amount,
        address callback,
        address receiever,
        bytes memory data
    ) external;

    /// @dev Liquidate a position by creating an order to reduce the position's size.  Non-atomic.
    function executeLiquidatePosition(
        address market,
        uint256 sizeDeltaUsd,
        uint256 executionFee
    )
        external
        payable
        returns (
            IGmxV2OrderTypes.CreateOrderParams memory order,
            bytes32 orderKey
        );

    /// @dev Releverage a position.
    function executeReleveragePosition(
        address market,
        uint256 sizeDeltaUSD,
        uint256 executionFee
    )
        external
        payable
        returns (
            IGmxV2OrderTypes.CreateOrderParams memory order,
            bytes32 orderKey
        );

    /// @dev Rebalanec a position with
    function executeSwapRebalance(
        address market,
        IGmxFrfStrategyAccount.CallbackConfig memory callbackConfig,
        bytes memory data
    ) external;

    /// @dev Rebalance a position that is outside of the configured delta range. Callable by anyone. The caller recieves a fee for their service.  Non-atomic.
    function executeRebalancePosition(
        address market,
        uint256 executionFee
    )
        external
        payable
        returns (
            IGmxV2OrderTypes.CreateOrderParams memory order,
            bytes32 orderKey
        );

    /// @dev Allows the account owner to sell assets for USDC in order to repay theirloan.
    function executeSwapAssets(
        address market,
        uint256 longTokenAmountOut,
        address callback,
        address receiver,
        bytes memory data
    ) external;

    /// @dev Call multiple methods in a single transaction without the need of a contract.
    function multicall(
        bytes[] calldata data
    ) external payable returns (bytes[] memory results);

    // ============ Public Functions ============

    /// @dev Get the value of the account in terms of USDC.
    function getAccountValue()
        external
        view
        returns (uint256 strategyAssetValue);
}
