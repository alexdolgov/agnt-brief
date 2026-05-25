// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

interface IPool {
    struct ReserveData {
        uint256 totalReserve;
        uint256 lockedReserve;
        uint256 exchangeRate;
        uint64 revision;
        bool isAllowed;
        uint256 minimumCollateral;
    }

    struct Share {
        uint256 amount;
        uint256 withdrawAfter;
    }

    function changeTokenStatus(address token, bool isAllowed) external;

    function changeIndexStatus(uint256 indexId, bool isAllowed) external;

    function changeLockupPeriod(uint256 newLockupPeriod) external;

    function changeMinimumFreeReserveShare(uint64 newMinimumFreeReserveShare) external;

    function addLiquidity(address token, uint256 amount) external;

    function withdrawLiquidity(address token, uint256 amount) external;

    function adjustReserve(
        address collateralToken,
        int256 deltaReserve,
        int256 deltaLocked
    ) external;

    function validateOrder(
        uint256 indexId,
        address collateralToken,
        uint256 collateralAmount
    ) external view;

    function balanceOf(address token, address account) external view returns (uint256);

    event IndexDataUpdated(uint256 indexed indexId, bytes data);
    event IndexManagerChanged(address newIndexManager);
    event IndexStatusChanged(uint256 indexed indexId, bool isAllowed);
    event LiquidityAdded(
        address indexed token,
        address indexed account,
        uint256 amount,
        uint256 weightedAmount,
        uint256 withdrawAfter
    );
    event LiquidityWithdrawn(address indexed token, address indexed account, uint256 amount);
    event LockedReserveAdjusted(address collateralToken, int256 deltaLocked);
    event LockupPeriodChanged(uint256 newLockupPeriod);
    event MinimumCollateralChanged(address indexed token, uint256 minimumCollateral);
    event MinimumFreeReserveShareChanged(uint256 newMinimumFreeReserveShare);
    event ReserveAdjusted(address indexed token, int256 deltaReserve);
    event TokenStatusChanged(address indexed token, bool isAllowed);

    error InsufficientLiquidity();
    error InsufficientLockedLiquidity();
    error InsufficientFreeLiquidity();
    error LockupPeriod(uint256 remaining);
    error NoChanges();
    error OnlyIndexManager(address expectedManager);
    error OnlyPositionsManager(address expectedManager);
    error IndexNotAllowed(uint256 indexId);
    error InsufficientCollateral(address collateralToken, uint256 minimumCollateral);
    error TokenNotAllowed(address token);
    error ZeroAmount();
    error ZeroBalance(address token, address account);
}
