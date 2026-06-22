// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface IAARKLeverageVault {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    //                                             EVENTS                                                   //
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// @notice Emitted when strategy addresses are updated
    /// @param vault New reward farm address
    /// @param masterRouter New router address
    event SetStrategyAddress(address indexed vault, address indexed masterRouter, address indexed lpManager, address tierStorage);

    /// @notice Emitted when asset is enabled/disabled
    /// @param asset asset address
    /// @param waterVault Water vault address  
    /// @param enabled Enabled or disabled
    event EnabledAsset(address asset, address waterVault, bool enabled);

    /// @notice Emitted when user open a position
    /// @param user User address
    /// @param amount amount user deposited
    /// @param time Time of the transaction
    /// @param leverage Leverage of the position
    /// @param positionId Position id
    event OpenPosition(address indexed user, uint256 amount, uint256 time, uint256 leverage, uint256 positionId);

    /// @notice Emitted when user close a position
    /// @param user User address
    /// @param amount amount user deposited
    /// @param time Time of the transaction
    /// @param returnedUSDC Amount of USDC returned to user
    /// @param waterProfit Water profit
    /// @param leverageUserProfit Leverage user profit
    /// @param aarkPriceClosed AARK price at the time of closing
    /// @param positionID Position id
    event ClosePosition(
        address indexed user,
        uint256 amount,
        uint256 time,
        uint256 returnedUSDC,
        uint256 waterProfit,
        uint256 leverageUserProfit,
        uint256 aarkPriceClosed,
        uint256 positionID
    );

    /// @notice Emitted when user liquidate a position
    /// @param user User address
    /// @param positionID Position id
    /// @param liquidator Liquidator address
    /// @param closePositionValue Close position value
    /// @param liquidatorReward Liquidator reward
    event Liquidated(
        address indexed user,
        uint256 positionID,
        address liquidator,
        uint256 closePositionValue,
        uint256 liquidatorReward
    );

    /// @notice Emitted when protocol fees changes
    /// @param newFeeReceiver New fee receiver address
    /// @param newWithdrawalFee New withdrawal fee
    /// @param newWaterFeeReceiver New water fee receiver address
    /// @param liquidatorsRewardPercentage Liquidators reward percentage
    /// @param fixedFeeSplit Fixed fee split
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newWaterFeeReceiver,
        uint256 liquidatorsRewardPercentage,
        uint256 fixedFeeSplit
    );

    /// @notice Emitted when masterchef and pid is updated
    /// @param newMC New masterchef address
    /// @param mcpPid New mcp pid
    event UpdateMCAndPID(address indexed newMC, uint256 mcpPid);

    /// @notice Emitted when chainlink oracle is updated
    /// @param token Token address
    /// @param chainlinkOracle Chainlink oracle address
    event ChainlinkOracleSet(address indexed token, address indexed chainlinkOracle);

    /// @notice Emitted when arbitrum sequencer is updated
    /// @param newArbitrumSequencer New arbitrum sequencer address
    event ArbitrumSequencerSet(address indexed newArbitrumSequencer);

    /// @notice Emitted when burner and keeper is updated
    /// @param burner Burner address
    /// @param isAllowed Allowed or not
    /// @param keeper Keeper address
    event SetBurnerAndKeeper(address burner, bool isAllowed, address keeper);

    /// @notice Emitted when dtv limit is updated
    /// @param dtvLimit DTV limit
    /// @param slippage Slippage
    event DTVLimitSet(uint256 dtvLimit, uint256 slippage);

    /// @notice Emitted when allowed sender is updated
    /// @param sender Sender address
    /// @param allowed Allowed or not
    event AllowedSender(address sender, bool allowed);

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    //                                             STRUCTS                                                  //
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    struct CloseData {
        uint256 totalPositionValue;
        uint256 totalPosition;
        uint256 profits;
        uint256 waterProfits;
        uint256 mFee;
        uint256 userShares;
        uint256 toLeverageUser;
        uint256 currentDTV;
    }

    struct StrategyAddresses{
        address Vault; // vault address
        address MasterRouter; // Master router address, serves as the main entry contract for opening/closing liquidity positions
        address LPManager; // LP manager address, LP provider storage contracts
        address TierStorage; // Tier storage address, stores tier configurations
        address MasterChef; // MasterChef address
    }

    struct FeeConfiguration {
        address feeReceiver;
        uint256 withdrawalFee;
        address waterFeeReceiver;
        uint256 liquidatorsRewardPercentage;
        uint256 fixedFeeSplit;
        address mFeeReceiver;
        uint256 mFeePercent;
    }

    struct UserInfo {
        address user;
        uint256 price;
        uint128 deposit; 
        uint128 leverage;
        uint256 position;
        uint128 closedPositionValue;
        uint128 closePNL;
        uint128 leverageAmount;
        uint128 positionId;
        address liquidator;
        bool liquidated; 
        bool closed;
    }

    struct UserAssetAndVault {
        address asset;
        address waterVault;
    }

    struct DebtAdjustmentValues {
        uint256 debtAdjustment;
        uint256 time;
        uint256 debtValueRatio;
    }
}