// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IPositionsManager} from "./interfaces/IPositionsManager.sol";

/// @title  PMWrapper
/// @notice Sits in front of PositionsManager as its `admin`. Exposes all PM
///         admin-gated functions and adds two privileged-but-non-admin roles:
///
///         • epochSettler — may call `settleEpoch` to distribute FT rewards.
///         • collector     — may call `withdrawReserves` to sweep protocol profit.
///
///         All other PM admin functions are only accessible to this contract's
///         own `admin`.
///
/// @dev    PMWrapper is itself UUPS-upgradeable, so the admin can upgrade both
///         PMWrapper and (via `upgradePM`) the underlying PositionsManager.
contract PMWrapper is Initializable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                              STORAGE
    //////////////////////////////////////////////////////////////*/

    address public admin;
    IPositionsManager public pm;
    address public epochSettler;
    address public collector;

    /*//////////////////////////////////////////////////////////////
                               EVENTS
    //////////////////////////////////////////////////////////////*/

    event AdminTransferred(address indexed prev, address indexed next);
    event EpochSettlerUpdated(address indexed prev, address indexed next);
    event CollectorUpdated(address indexed prev, address indexed next);

    /*//////////////////////////////////////////////////////////////
                               ERRORS
    //////////////////////////////////////////////////////////////*/

    error PMWrapperOnlyAdmin();
    error PMWrapperOnlyAdminOrEpochSettler(address caller);
    error PMWrapperOnlyAdminOrCollector(address caller);
    error PMWrapperZeroAddress();

    /*//////////////////////////////////////////////////////////////
                             CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /*//////////////////////////////////////////////////////////////
                            INITIALIZER
    //////////////////////////////////////////////////////////////*/

    function initialize(address _pm, address _admin) external initializer {
        __UUPSUpgradeable_init();
        if (_pm == address(0) || _admin == address(0)) revert PMWrapperZeroAddress();
        pm = IPositionsManager(_pm);
        admin = _admin;
        emit AdminTransferred(address(0), _admin);
    }

    /*//////////////////////////////////////////////////////////////
                             MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyAdmin() {
        if (msg.sender != admin) revert PMWrapperOnlyAdmin();
        _;
    }

    modifier onlyAdminOrEpochSettler() {
        if (msg.sender != admin && msg.sender != epochSettler) {
            revert PMWrapperOnlyAdminOrEpochSettler(msg.sender);
        }
        _;
    }

    modifier onlyAdminOrCollector() {
        if (msg.sender != admin && msg.sender != collector) {
            revert PMWrapperOnlyAdminOrCollector(msg.sender);
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                          ROLE MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert PMWrapperZeroAddress();
        emit AdminTransferred(admin, newAdmin);
        admin = newAdmin;
    }

    function setEpochSettler(address newEpochSettler) external onlyAdmin {
        emit EpochSettlerUpdated(epochSettler, newEpochSettler);
        epochSettler = newEpochSettler;
    }

    function setCollector(address newCollector) external onlyAdmin {
        emit CollectorUpdated(collector, newCollector);
        collector = newCollector;
    }

    /*//////////////////////////////////////////////////////////////
                    ROLE-GATED PM ACTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Settle an epoch for `asset`, distributing `interest` FT to suppliers.
    /// @dev    Pulls FT from the caller, approves PM, then delegates. PM will
    ///         pull the FT from this wrapper (msg.sender inside PM).
    function settleEpoch(address asset, uint256 interest) external onlyAdminOrEpochSettler {
        IERC20 ft = IERC20(pm.FT());
        ft.safeTransferFrom(msg.sender, address(this), interest);
        ft.forceApprove(address(pm), interest);
        pm.settleEpoch(asset, interest);
        ft.forceApprove(address(pm), 0);
    }

    /// @notice Withdraw accrued reserves (protocol profit) to `to`.
    function withdrawReserves(
        address asset,
        address to,
        uint256 amount
    )
        external
        onlyAdminOrCollector
    {
        pm.withdrawReserves(asset, to, amount);
    }

    /*//////////////////////////////////////////////////////////////
                    ADMIN-ONLY PM PASS-THROUGHS
    //////////////////////////////////////////////////////////////*/

    function setValuesLens(address lens) external onlyAdmin {
        pm.setValuesLens(lens);
    }

    function initializeAsset(address asset) external onlyAdmin {
        pm.initializeAsset(asset);
    }

    function setCaps(address asset, uint256 supplyCap, uint256 borrowCap) external onlyAdmin {
        pm.setCaps(asset, supplyCap, borrowCap);
    }

    function setEngine(address m, bool ok) external onlyAdmin {
        pm.setEngine(m, ok);
    }

    function setMetaModule(address module, bool ok) external onlyAdmin {
        pm.setMetaModule(module, ok);
    }

    function setLiquidationModule(address module, bool ok) external onlyAdmin {
        pm.setLiquidationModule(module, ok);
    }

    function setTokenizer(address asset, address tokenizer) external onlyAdmin {
        pm.setTokenizer(asset, tokenizer);
    }

    function setBorrowPaused(address asset, bool paused) external onlyAdmin {
        pm.setBorrowPaused(asset, paused);
    }

    function setDepositPaused(address asset, bool paused) external onlyAdmin {
        pm.setDepositPaused(asset, paused);
    }

    function setWithdrawPaused(address asset, bool paused) external onlyAdmin {
        pm.setWithdrawPaused(asset, paused);
    }

    function skim(address asset) external onlyAdmin {
        pm.skim(asset);
    }

    /// @notice Transfer the PositionsManager's `admin` role away from this wrapper.
    ///         After this call PMWrapper can no longer act as PM admin.
    function transferPMAdmin(address newAdmin) external onlyAdmin {
        pm.setAdmin(newAdmin);
    }

    /// @notice Upgrade the PositionsManager implementation (UUPS).
    ///         This wrapper must be PM's current admin for the call to succeed.
    function upgradePM(address newImpl, bytes calldata data) external onlyAdmin {
        (bool ok, bytes memory ret) = address(pm)
            .call(abi.encodeWithSignature("upgradeToAndCall(address,bytes)", newImpl, data));
        if (!ok) assembly ("memory-safe") { revert(add(ret, 0x20), mload(ret)) }
    }

    /*//////////////////////////////////////////////////////////////
                        PMWRAPPER UPGRADE
    //////////////////////////////////////////////////////////////*/

    function _authorizeUpgrade(address) internal override onlyAdmin {}
}
