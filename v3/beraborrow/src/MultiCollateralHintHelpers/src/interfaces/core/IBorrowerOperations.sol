// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ICore} from "./ICore.sol";

interface IBorrowerOperations {
    struct Balances {
        uint256[] collaterals;
        uint256[] debts;
        uint256[] prices;
    }

    event BorrowingFeePaid(address indexed borrower, uint256 amount);
    event CollateralConfigured(address positionManager, address collateralToken);
    event PositionCreated(address indexed _borrower, uint256 arrayIndex);
    event PositionManagerRemoved(address positionManager);
    event PositionUpdated(address indexed _borrower, uint256 _debt, uint256 _coll, uint256 stake, uint8 operation);

    function addColl(
        address positionManager,
        address account,
        uint256 _collateralAmount,
        address _upperHint,
        address _lowerHint
    ) external;

    function adjustPosition(
        address positionManager,
        address account,
        uint256 _maxFeePercentage,
        uint256 _collDeposit,
        uint256 _collWithdrawal,
        uint256 _debtChange,
        bool _isDebtIncrease,
        address _upperHint,
        address _lowerHint
    ) external;

    function closePosition(address positionManager, address account) external;

    function configureCollateral(address positionManager, address collateralToken) external;

    function fetchBalances() external view returns (Balances memory balances);

    function getGlobalSystemBalances() external view returns (uint256 totalPricedCollateral, uint256 totalDebt);

    function getTCR() external view returns (uint256 globalTotalCollateralRatio);

    function openPosition(
        address positionManager,
        address account,
        uint256 _maxFeePercentage,
        uint256 _collateralAmount,
        uint256 _debtAmount,
        address _upperHint,
        address _lowerHint
    ) external;

    function removePositionManager(address positionManager) external;

    function repayDebt(
        address positionManager,
        address account,
        uint256 _debtAmount,
        address _upperHint,
        address _lowerHint
    ) external;

    function setDelegateApproval(address _delegate, bool _isApproved) external;

    function setMinNetDebt(uint256 _minNetDebt) external;

    function withdrawColl(
        address positionManager,
        address account,
        uint256 _collWithdrawal,
        address _upperHint,
        address _lowerHint
    ) external;

    function withdrawDebt(
        address positionManager,
        address account,
        uint256 _maxFeePercentage,
        uint256 _debtAmount,
        address _upperHint,
        address _lowerHint
    ) external;

    function positionManagers(uint256) external view returns (address);

    function checkRecoveryMode(uint256 TCR) external view returns (bool);

    function DEBT_GAS_COMPENSATION() external view returns (uint256);

    function DECIMAL_PRECISION() external view returns (uint256);

    function PERCENT_DIVISOR() external view returns (uint256);

    function CORE() external view returns (ICore);

    function debtToken() external view returns (address);

    function factory() external view returns (address);

    function getCompositeDebt(uint256 _debt) external view returns (uint256);

    function guardian() external view returns (address);

    function isApprovedDelegate(address owner, address caller) external view returns (bool isApproved);

    function minNetDebt() external view returns (uint256);

    function owner() external view returns (address);

    function positionManagersData(address) external view returns (address collateralToken, uint16 index);
}
