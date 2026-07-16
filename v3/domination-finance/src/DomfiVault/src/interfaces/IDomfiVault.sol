// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiVault {
    struct LockedDeposit {
        address owner;
        uint256 shares;
        uint256 assetsDeposited;
        uint256 assetsDiscount;
        uint32 atTimestamp;
        uint32 lockDuration;
    }

    enum Bound {
        LOWER,
        UPPER
    }

    enum LockTier {
        LONG,
        MEDIUM,
        SHORT
    }

    // Events
    event MaxDailyAccPnlDeltaPerTokenUpdated(uint256 newMaxDailyAccPnlDeltaPerToken);
    event MaxAccOpenPnlDeltaPerTokenUpdated(uint256 newMaxAccOpenPnlDeltaPerToken);
    event MaxSupplyIncreaseDailyPUpdated(uint256 newMaxSupplyIncreaseDailyP);
    event MaxDiscountPUpdated(uint256 newMaxDiscountP);
    event MaxDiscountThresholdPUpdated(uint256 newMaxDiscountThresholdP);

    event WithdrawLockThresholdsPUpdated(uint16[2] value);
    event CurrentMaxSupplyUpdated(uint256 value);
    event DailyAccPnlDeltaReset(int256 prevDailyAccPnlDeltaPerToken);
    event ShareToAssetsPriceUpdated(uint256 value);
    event OpenPnlCallFailed();

    event WithdrawRequested(
        address indexed sender,
        address indexed owner,
        uint256 shares,
        uint16 currEpoch,
        uint16 indexed unlockEpoch
    );

    event WithdrawCanceled(
        address indexed sender,
        address indexed owner,
        uint256 shares,
        uint16 currEpoch,
        uint16 indexed unlockEpoch
    );

    event DepositLocked(
        address indexed sender, address indexed owner, uint256 depositId, LockedDeposit d
    );

    event DepositUnlocked(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 depositId,
        LockedDeposit d
    );

    event RewardDistributed(address indexed sender, uint256 assets, uint256 accRewardsPerToken);
    event AssetsSent(address indexed sender, address indexed receiver, uint256 assets);
    event AssetsReceived(address indexed sender, address indexed user, uint256 assets);

    event AccPnlPerTokenUsedUpdated(
        address indexed sender,
        uint256 indexed newEpoch,
        int256 prevOpenPnl,
        int256 newOpenPnl,
        int256 newEpochOpenPnl,
        int256 newAccPnlPerTokenUsed
    );

    error NullPrice();
    error NullAmount();
    error NoDiscount();
    error WrongParams();
    error AboveBalance();
    error AboveMaxMint();
    error AboveMaxDeposit();
    error NotEnoughAssets();
    error NoActiveDiscount();
    error MaxDailyPnlReached();
    error WaitNextEpochStart();
    error AboveWithdrawAmount();
    error NotGov(address caller);
    error NotOpenPnl(address caller);
    error NotAllowed(address caller);
    error NotCallbacks(address caller);
    error DepositNotUnlocked(uint256 id);
    error PendingWithdrawal(address from, uint256 amount);
    error WrongLockDuration(uint256 duration, uint256 minLock, uint256 maxLock);

    function tvl() external view returns (uint256);
    function currentEpoch() external view returns (uint16);
    function currentEpochStart() external view returns (uint32);
    function currentEpochOpenPnl() external view returns (int256);
    function availableAssets() external view returns (uint256);
    function marketCap() external view returns (uint256);
    function getLockedDeposit(uint256 depositId) external view returns (LockedDeposit memory);
    function distributeReward(uint256 assets) external;
    function currentBalance() external view returns (uint256);
    function maxAccPnlPerToken() external view returns (uint256);
    function collateralizationP() external view returns (uint256);
    function withdrawEpochsTimelock() external view returns (uint8);
    function lockDiscountP(uint256 collatP, uint32 lockDuration) external view returns (uint256);
    function totalSharesBeingWithdrawn(address owner) external view returns (uint256 shares);
    function tryUpdateCurrentMaxSupply() external;
    function makeWithdrawRequest(uint256 shares, address owner) external;
    function cancelWithdrawRequest(uint256 shares, address owner, uint16 unlockEpoch) external;
    function shareToAssetsPrice() external view returns (uint256);

    function depositWithSlippage(uint256 assets, address receiver, uint256 minShares)
        external
        returns (uint256 shares);

    function mintWithSlippage(uint256 shares, address receiver, uint256 maxAssets)
        external
        returns (uint256 assets);

    function withdrawWithSlippage(
        uint256 assets,
        address receiver,
        address owner,
        uint256 maxShares
    ) external returns (uint256 shares);

    function redeemWithSlippage(uint256 shares, address receiver, address owner, uint256 minAssets)
        external
        returns (uint256 assets);

    function depositWithDiscountAndLock(
        uint256 assets,
        uint32 lockDuration,
        address receiver,
        uint256 maxSlippage
    ) external returns (uint256);

    function mintWithDiscountAndLock(
        uint256 shares,
        uint32 lockDuration,
        address receiver,
        uint256 maxSlippage
    ) external returns (uint256);

    function unlockDeposit(uint256 depositId, address receiver) external;

    // onlyGov
    function updateMaxAccOpenPnlDeltaPerToken(uint256 newMaxAccOpenPnlDeltaPerToken) external;
    function updateMaxDailyAccPnlDeltaPerToken(uint256 newMaxDailyAccPnlDeltaPerToken) external;
    function updateWithdrawLockThresholdsP(uint16[2] calldata newValue) external;
    function updateMaxSupplyIncreaseDailyP(uint256 newWithdrawLockThresholdsP) external;
    function updateMaxDiscountP(uint256 newMaxDiscountP) external;
    function updateMaxDiscountThresholdP(uint256 newMaxDiscountThresholdP) external;
    function tryResetDailyAccPnlDelta() external;
    function tryNewOpenPnlRequestOrEpoch() external;

    // onlyCallbacks
    function sendAssets(uint256 assets, address receiver) external;
    function receiveAssets(uint256 assets, address user) external;

    // onlyOpenPnl
    function updateAccPnlPerTokenUsed(int256 prevOpenPnl, int256 newOpenPnl)
        external
        returns (int256);
}
