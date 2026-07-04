// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IPoolManager {
    function ADMIN_ROLE() external view returns (bytes32);
    function BASE_INTEREST_RATE() external view returns (uint256);
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);
    function DEFAULT_BUFFER() external view returns (uint256);
    function DEFAULT_LIQUIDATION_THRESHOLD() external view returns (uint256);
    function DEFAULT_LTV() external view returns (uint256);
    function DEFAULT_RECOVERY_LTV() external view returns (uint256);
    function DENOMINATOR() external view returns (uint256);
    function EMERGENCY_CONTROLLER_ROLE() external view returns (bytes32);
    function FBTC0() external view returns (address);
    function FBTC1() external view returns (address);
    function FBTCOracle() external view returns (address);
    function KEEPER_ROLE() external view returns (bytes32);
    function LIQUIDATE_ROLE() external view returns (bytes32);
    function LiquidationBonus() external view returns (uint256);
    function LiquidationBonusRate() external view returns (uint256);
    function MAX_INTEREST_RATE() external view returns (uint256);
    function PRIEMIUM_INTEREST_RATE() external view returns (uint256);
    function USDA() external view returns (address);
    function amountInFBTC0() external view returns (uint256);
    function amountOutFBTC0() external view returns (uint256);
    function batchJob() external;
    function borrow(uint256 amount) external;
    function calculateAccumulatedDebt(
        uint256 debt,
        uint256 baseInterestRate,
        uint256 priemiumInterestRate,
        uint256 timeStampIndex,
        uint256 untilTimeStamp
    ) external view returns (uint256 fee);
    function calculateLiquidationAmount(
        uint256 recoveryLoanToValue,
        uint256 buffer,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDADecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (uint256, uint256);
    function calculateMaxBorrowAmount(
        uint256 loanToValue,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDADecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (uint256);
    function calculateMaxWithdrawAmount(
        uint256 loanToValue,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDADecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (uint256);
    function checkLiquidateCondition(
        uint256 liquidationThreshold,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDADecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (bool);
    function claimBTC(uint256 amount) external;
    function claimLiquidationBonus() external;
    function claimProtocolEarnings() external;
    function createPool(address user) external;
    function emergencyController() external view returns (address);
    function getAccumulateUserDebtByPage(uint256 startIndex, uint256 endIndex)
        external
        view
        returns (uint256 accumulateDebt);
    // function getAllUsersReserveAndLiquidationStatus()
    //     external
    //     view
    //     returns (
    //         address[] users,
    //         tuple[] reserveInfos,
    //         tuple[] userConfigs,
    //         bool[] liquidationStatuses,
    //         uint256[] liquidateUSDA,
    //         uint256[] liquidatePrice,
    //         uint256[] oracleDecimal
    //     );
    // function getInterestUpdateInformation() external view returns (tuple[]);
    // function getLiquidateInformation(uint256 targetUID) external view returns (tuple);
    // function getPoolManagerConfig() external view returns (tuple poolManagerConfig);
    // function getPoolManagerReserveInformation() external view returns (tuple poolManagerReserveInfor);
    // function getRoleAdmin(bytes32 role) external view returns (bytes32);
    // function getUserPoolConfig(address user) external view returns (tuple);
    function getUserPoolReserveInformation(address user)
        external
        view
        returns (
            uint256 timeStampIndex,
            uint256 collateral,
            uint256 debt,
            uint256 accumulatedInterest,
            uint256 claimableBTC
        );
    // function getUserReserveAndLiquidationStatus(address user)
    //     external
    //     view
    //     returns (
    //         tuple reserveInfo,
    //         tuple userConfig,
    //         bool canLiquidate,
    //         uint256 liquidateUSDA,
    //         uint256 liquidatePrice,
    //         uint256 oracleDecimal
    //     );
    function grantRole(bytes32 role, address account) external;
    function hasRole(bytes32 role, address account) external view returns (bool);
    function initialize(address owner) external;
    function liquidate(address user) external;
    function liquidateLegacy(address user, uint256 collateralDecrease, uint256 debtDecrease) external;
    function liquidationUID() external view returns (uint256);
    function pause() external;
    function paused() external view returns (bool);
    function protocolProfitAccumulate() external view returns (uint256);
    function protocolProfitUnclaimed() external view returns (uint256);
    function renounceRole(bytes32 role, address callerConfirmation) external;
    function repay(uint256 amount) external;
    function revokeRole(bytes32 role, address account) external;
    function setBaseInterestRate(uint256 newRate) external;
    function setDefaultBuffer(uint256 newBuffer) external;
    function setDefaultLTV(uint256 newLTV) external;
    function setDefaultLiquidationThreshold(uint256 newThreshold) external;
    function setDefaultRecoveryLTV(uint256 newRecoveryLTV) external;
    function setFBTC0(address newFBTC0) external;
    function setFBTC1(address newFBTC1) external;
    function setFBTCOracle(address newOracle) external;
    function setLiquidationBonusRate(uint256 newBonusRate) external;
    function setNewRoleAdmin(bytes32 role, bytes32 adminRole) external;
    function setPremiumInterestRate(uint256 newRate) external;
    function setUSDA(address newUSDA) external;
    function setUserPoolConfig(
        address user,
        uint256 priemiumInterestRate,
        uint256 loanToValue,
        uint256 liquidationThreshold,
        uint256 recoveryLoanToValue
    ) external;
    function supply(uint256 amount) external;
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function totalClaimableBTC() external view returns (uint256);
    function totalCollateral() external view returns (uint256);
    function totalDebt() external view returns (uint256);
    function unpause() external;
    function updateLiquidateResult(uint256 targetUID, uint256 liquidatePrice) external;
    function userAmount() external view returns (uint256);
    function withdraw(uint256 amount) external;
}
