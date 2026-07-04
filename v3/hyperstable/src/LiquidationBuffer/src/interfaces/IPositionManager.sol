// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IDebtToken} from "../interfaces/IDebtToken.sol";

interface IPositionManager {
    struct VaultData {
        address addr;
        address asset;
        uint256 collateralSnapshot;
        uint256 debtSnapshot;
        uint256 MCR;
        uint256 interestIndex;
        uint256 lastInterestIndexUpdate;
        uint256 claimableInterest;
        uint256 debtCap;
        uint256 minDebt;
    }

    struct PositionData {
        address owner;
        uint256 collateralSnapshot;
        uint256 debtSnapshot;
        uint256 interestIndex;
    }

    event VaultRegistered(
        uint8 indexed index,
        address indexed vaultAddress,
        address indexed asset,
        uint256 mcr,
        uint256 minDebt,
        uint256 debtCap,
        uint256 interestIndex
    );
    event InterestClaimed(uint8 indexed vault, address indexed to, uint256 amount);
    event Deposit(uint8 indexed vault, address indexed user, uint256 amount);
    event Withdraw(uint8 indexed vault, address indexed user, uint256 amount);
    event Borrow(uint8 indexed vault, address indexed user, uint256 amount);
    event Repay(uint8 indexed vault, address indexed user, uint256 amount);
    event DebtCapUpdated(uint8 indexed vault, uint256 newDebtCap);
    event MinDebtUpdated(uint8 indexed vault, uint256 newMinDebt);
    event NewLiquidationManager(address indexed previousLiquidationManager, address indexed newLiquidationManager);
    event NewInterestRateStrategy(
        address indexed previousdInterestRateStrategy, address indexed newInterestRateStrategy
    );
    event MCRUpdated(uint8 indexed vault, uint256 oldMCR, uint256 newMCR);
    event VaultDebtAccrued(uint8 indexed vault, uint256 newDebt, uint256 newIndex, uint256 earnedInterst);
    event PositionDebtAccrued(uint8 indexed vault, address indexed positionOwner, uint256 newDebt, uint256 newIndex);
    event VaultUpdated(uint8 indexed index, uint256 collateral, uint256 debt, uint256 interestIndex);
    event PositionUpdated(
        uint8 indexed index, address indexed owner, uint256 collateral, uint256 debt, uint256 interestIndex
    );

    error InvalidVault();
    error CollateralRatioBelowMin();
    error NothingToLiquidate();
    error OnlyLiquidatorManager();
    error OnlyInterestRateStrategy();
    error DebtCapReached();
    error SlippageIsTooHigh();
    error PositionBelowMinDebt();
    error ZeroAddress();

    function DEBT_TOKEN() external view returns (IDebtToken);

    function getVault(uint8 _index) external view returns (VaultData memory);
    function getPosition(uint8 _vaultIndex, address owner) external view returns (PositionData memory);
    function vaultDebt(uint8 _vaultIndex) external view returns (uint256);

    function claimInterest(uint8 vaultIndex) external returns (uint256);
    function claimableInterest(uint8 vaultIndex) external view returns (uint256);

    function initLiquidation(uint8 vaultIndex, address positionOwner)
        external
        returns (VaultData memory, PositionData memory);
    function finishLiquidation(
        uint8 vaultIndex,
        address positionOwner,
        uint256 debtToRepay,
        uint256 collateralToLiquidate
    ) external;

    function lastVaultIndex() external returns (uint8);

    function accrueVaultDebt(uint8 vaultIndex) external;
}
