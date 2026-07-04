// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

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
        uint256 mFeePercent;
        address mFeeReceiver;
        uint256 liquidatorFee;
    }

    struct LeverageBounds {
        uint256 minLeverage;
        uint256 maxLeverage;
        uint256 minDeposit;
    }

    struct StrategyAddresses {
        address LRTAsset;
        address USDC;
        address API3Oracle;
        address AirPuffHandler;
        address borrowAsset;
    }

    struct SwapData {
        uint256 amountOut;
        uint256 repayAmount;
        uint256 toLeverageUserOut;
        uint256 liquidationLeftovers;
    }

    struct CloseData {
        uint256 currentDTV;
        uint256 fulldebtValue;
        uint256 totalInterests;
        uint256 mFee;
        uint256 toLeverageUser;
        uint256 totalLRTAssetPosition;
        uint256 lendingRepayment;
    }

    struct PositionTimestamps {
        uint256 openTimestamp;
        uint256 closeTimestamp;
        uint256 vaultSnapshotID;
    }

}