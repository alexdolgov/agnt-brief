// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "./IVaultStorage.sol";
import "./extensions/farmmode/IFarmModeVault.sol";
import "./extensions/groomable/IGroomableVault.sol";
import "./extensions/snapshotable/ISnapshotableVault.sol";
import "./extensions/liquidatable/ILiquidatableVault.sol";
import "./extensions/configurable/IConfigurableVault.sol";

interface IVaultCoreV1 is
    IVaultStorage,
    IConfigurableVaultV1,
    IFarmModeVaultV1,
    IGroomableVaultV1,
    ILiquidatableVaultV1,
    ISnapshotableVaultV1
{
    event Deposit(
        address indexed depositor,
        address indexed onBehalfOf,
        uint256 amount
    );
    event Borrow(
        address indexed borrower,
        address indexed onBehalfOf,
        uint256 amount
    );
    event Withdraw(
        address indexed withdrawer,
        address indexed recepient,
        uint256 amount,
        uint256 fee
    );
    event Repay(
        address indexed repayer,
        address indexed onBehalfOf,
        uint256 amount
    );
    event RepayBadDebt(
        address indexed repayer,
        address indexed onBehalfOf,
        uint256 amount
    );

    // Vault Core V1 Errors
    error VC_V1_USER_HAS_SUPPLY();
    error VC_V1_NOT_ENOUGH_SUPPLY();
    error VC_V1_FARM_MODE_DISABLED();
    error VC_V1_INVALID_REPAY_AMOUNT();
    error VC_V1_INVALID_BORROW_AMOUNT();
    error VC_V1_INVALID_DEPOSIT_AMOUNT();
    error VC_V1_INVALID_WITHDRAW_AMOUNT();
    error VC_V1_ETH_INSUFFICIENT_AMOUNT();
    error VC_V1_FARM_WITHDRAW_INSUFFICIENT();
    error VC_V1_NOT_ALLOWED_TO_ACT_ON_BEHALF();
    error VC_V1_NOT_AUTHORIZED_TO_CALL_FARM_MODE();
    error VC_V1_NOT_AUTHORIZED_TO_DEAL_WITH_TRANSFERS();

    function preTransfer(
        address from,
        address to,
        uint256 amount,
        bytes4 transferSelector
    ) external;

    function postTransfer(address from, address to) external;

    function deposit(uint256 amount, address onBehalfOf) external payable;

    function borrow(uint256 amount) external;

    function borrowOnBehalfOf(
        uint256 amount,
        address onBehalfOf,
        uint256 deadline,
        bytes calldata signature
    ) external;

    function withdraw(uint256 amount, address to) external returns (uint256);

    function repay(
        uint256 amount,
        address onBehalfOf
    ) external returns (uint256);

    function repayBadDebt(
        uint256 amount,
        address onBehalfOf
    ) external returns (uint256);

    function injectSupply(uint256 amount) external payable;

    function depositAndBorrow(
        uint256 depositAmount,
        uint256 borrowAmount
    ) external payable;

    function repayAndWithdraw(
        uint256 repayAmount,
        uint256 withdrawAmount,
        address to
    ) external returns (uint256, uint256);
}
