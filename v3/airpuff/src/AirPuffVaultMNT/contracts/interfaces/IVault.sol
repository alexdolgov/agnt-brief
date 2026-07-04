// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IVault {

    struct UserInfo {
        address user;
        uint256 deposit;
        uint256 leverage;
        uint256 position;
        bool liquidated;
        address liquidator;
        uint256 leverageAmount;
        uint256 positionId;
        bool closed;
    }

    struct FeeConfiguration {
        address feeReceiver;
        uint256 withdrawalFee;
        address lendingFeeReceiver;
        uint256 liquidatorRewardsPercent;
    }

    struct LeverageBounds {
        uint256 minLeverage;
        uint256 maxLeverage;
        uint256 minDeposit;
    }

    struct StrategyAddresses {
        address MNT;
        address MShards;
        address MntStakeContract;
        address AirPuffHandler;
        address MantleOracle;
    }

    struct PositionTimestamps {
        uint256 openTimestamp;
        uint256 closeTimestamp;
        uint256 vaultSnapshotID;
    }

    struct CloseData {
        uint256 currentDTV;
        uint256 userPosition;
        uint256 amountReceived;
        uint256 lendingRepayment;
        uint256 toLeverageUser;
        uint256 totalInterests;
        uint256 leverageWithInterests;
    }
    
    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage);
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 leverage, uint256 repayAmount, uint256 time, uint256 userTokensBurned);
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 reward,
        uint256 time,
        uint256 originalInterests,
        uint256 closeDataInterests
    );
    event ProtocolFeeChanged(address newFeeReceiver, uint256 newWithdrawalFee);
    event SetLendingVault(address vault);
    event SetAllowedSenders(address sender, bool allowed);
    event SetStrategyAddresses(address mnt, address mShard, address mStaking, address airPuffHandler, address mantleOracle);
    event LeverageBoundsSet(uint256 minLeverage, uint256 maxLeverage, uint256 minDeposit);
    event SetKeeper(address keeper);
    event DTVLimitChanged(uint256 newDTVLimit);
}
