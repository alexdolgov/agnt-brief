// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface IKTCLeverageVault {
    struct UserInfo {
        address user; // user that created the position
        uint256 deposit; // total amount of deposit
        uint256 leverage; // leverage used
        uint256 position; // position size
        uint256 price; // klp price
        bool liquidated; // true if position was liquidated
        uint256 closedPositionValue; // value of position when closed
        address liquidator; //address of the liquidator
        uint256 closePNL;
        uint256 leverageAmount;
        uint256 positionId;
        bool closed;
    }

    struct FeeConfiguration {
        address feeReceiver;
        uint256 withdrawalFee;
        address waterFeeReceiver;
        uint256 liquidatorsRewardPercentage;
        uint256 fixedFeeSplit;
        uint256 mFeePercent;
        address mFeeReceiver;
    }

    struct ContractParameters {
        uint256 MCPID;
        uint256 MAX_BPS;
        uint256 MAX_LEVERAGE;
        uint256 MIN_LEVERAGE;
        uint256 DENOMINATOR;
        uint256 DECIMAL;
        uint256 liquidationThreshold;
    }

    struct CloseDataVars {
        uint256 withdrawableShares;
        uint256 profits;
        bool inFull;
        bool success;
        uint256 leverageUserProfits;
        uint256 toLeverageUser;
        uint256 waterProfits;
        uint256 mFee;
        uint256 waterRepayment;
    }


    struct StrategyAddresses {
        address USDC;
        address water;
        address rewardRouter;
        address klp;
        address stakedKlpTracker;
        address feeKlpTracker;
        address klpManager;
        address klpRewardHandler;
        address Vault;
        address rewardVault;
        address MasterChef;
        address VesterContract;
        address WETH;
    }

    struct SwapDescriptionV2 {
        address srcToken;
        address dstToken;
        address[] srcReceivers; // transfer src token to these addresses, default
        uint256[] srcAmounts;
        address[] feeReceivers;
        uint256[] feeAmounts;
        address dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
        bytes permit;
    }

    struct SwapExecutionParams {
        address callTarget; // call this address
        address approveTarget; // approve this address if _APPROVE_FUND set
        bytes targetData;
        SwapDescriptionV2 generic;
        bytes clientData;
    }
    
    /** --------------------- Event --------------------- */
    event RewardRouterContractChanged(address newVault, address klpRewardHandler);
    event Deposit(address indexed depositer, uint256 depositTokenAmount, uint256 positionID, uint256 leverageMultiplier, uint256 createdAt, uint256 klpAmount, uint256 klpPrice);
    event Withdraw(
        address indexed user,
        uint256 amount,
        uint256 positionId,
        uint256 leverageMultiplier,
        uint256 time,
        uint256 klpAmount,
        uint256 profits,
        uint256 klpprice
    );
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newWaterFeeReceiver,
        uint256 liquidatorsRewardPercentage,
        uint256 fixedFeeSplit,
        uint256 mFeePercent,
        address mFeeReceiver
    );

    event SetAllowedClosers(address indexed closer, bool allowed);
    event SetAllowedSenders(address indexed sender, bool allowed);
    event SetBurner(address indexed burner, bool allowed);
    event UpdateMCAndPID(address indexed newMC, uint256 mcpPid);
    event UpdateMaxAndMinLeverage(uint256 maxLeverage, uint256 minLeverage);
    event OpenRequest(address indexed user, uint256 amountAfterFee);
    event RequestFulfilled(address indexed user, uint256 openAmount, uint256 closedAmount);
    event SetAssetWhitelist(address indexed asset, bool isWhitelisted);
    event Harvested(bool gmx, bool esgmx, bool klp, bool vesting);
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 amount,
        uint256 reward
    );
    event ETHHarvested(uint256 amount);
    event SetManagementFee(uint256 indexed mFeePercent, address indexed mFeeReceiver);
}
