// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title HubSpokeStructs
 * @notice A set of structs and enums used in the Hub and Spoke contracts
 */
contract HubSpokeStructs {
    /**
     * @param wormhole: Address of the Wormhole contract
     * @param tokenBridge: Address of the TokenBridge contract
     * @param wormholeRelayer: Address of the WormholeRelayer contract
     * @param consistencyLevel: Desired level of finality the Wormhole guardians will reach before signing the messages
     * NOTE: consistencyLevel = 200 will result in an instant message, while all other values will wait for finality
     * Recommended finality levels can be found here: https://book.wormhole.com/reference/contracts.html
     * @param pythAddress: Address of the Pyth oracle on the Hub chain
     * @param priceStandardDeviations: priceStandardDeviations = (psd * priceStandardDeviationsPrecision), where psd is
     * the number of standard deviations that we use for our price intervals in calculations relating to allowing
     * withdraws, borrows, or liquidations
     * @param priceStandardDeviationsPrecision: A precision number that allows us to represent our desired noninteger
     * price standard deviation as an integer (psd = priceStandardDeviations/priceStandardDeviationsPrecision)
     * @param maxLiquidationPortionPrecision: A precision number that allows us to represent our desired noninteger
     * max liquidation portion mlp as an integer (mlp = maxLiquidationPortion/maxLiquidationPortionPrecision)
     * @param interestAccrualIndexPrecision: A precision number that allows us to represent our noninteger interest
     * accrual indices as integers; we store each index as its true value multiplied by interestAccrualIndexPrecision
     * @param collateralizationRatioPrecision: A precision number that allows us to represent our noninteger
     * collateralization ratios as integers; we store each ratio as its true value multiplied by
     * collateralizationRatioPrecision
     * @param liquidationFee: The fee taken by the protocol on liquidation
     * @param _circleMessageTransmitter: Cicle Message Transmitter contract (cctp)
     * @param _circleTokenMessenger: Cicle Token Messenger contract (cctp)
     * @param _USDC: USDC token contract (cctp)
     */
    struct ConstructorArgs {
        /* Wormhole Information */
        address wormhole;
        address tokenBridge;
        address wormholeRelayer;
        uint8 consistencyLevel;
        /* Liquidation Information */
        uint256 interestAccrualIndexPrecision;
        uint256 liquidationFee;
        uint256 liquidationFeePrecision;
        /* CCTP Information */
        address circleMessageTransmitter;
        address circleTokenMessenger;
        address USDC;
    }

    struct StoredVaultAmount {
        DenormalizedVaultAmount amounts;
        AccrualIndices accrualIndices;
    }

    struct DenormalizedVaultAmount {
        uint256 deposited;
        uint256 borrowed;
    }

    struct NotionalVaultAmount {
        uint256 deposited;
        uint256 borrowed;
    }

    struct AccrualIndices {
        uint256 deposited;
        uint256 borrowed;
    }

    struct AssetInfo {
        uint256 collateralizationRatioDeposit;
        uint256 collateralizationRatioBorrow;
        uint8 decimals;
        address interestRateCalculator;
        bool exists;
        uint256 borrowLimit;
        uint256 supplyLimit;
        uint256 maxLiquidationPortion;
        uint256 maxLiquidationBonus; // 1e6 precision; 130e4 = 130% = 1.3; the liquidator gets 30% over what he repays
    }

    /**
     * @dev Struct to hold the decoded data from a Wormhole payload
     * @param action The action to be performed (e.g., Deposit, Borrow, Withdraw, Repay)
     * @param sender The address of the sender initiating the action
     * @param wrappedAsset The address of the wrapped asset involved in the action
     * @param amount The amount of the wrapped asset involved in the action
     * @param unwrap A boolean indicating whether to unwrap the asset or not for native withdraws and borrows
     */
    struct PayloadData {
        Action action;
        address sender;
        address wrappedAsset;
        uint256 amount;
        bool unwrap;
    }

    enum Action {
        Deposit,
        Borrow,
        Withdraw,
        Repay,
        DepositNative,
        RepayNative
    }

    enum Round {
        UP,
        DOWN
    }
}
