// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {IRouter} from "src/interfaces/IRouter.sol";
import {IRoleController} from "src/interfaces/IRoleController.sol";
import {ICompoundVault} from "src/interfaces/vaults/ICompoundVault.sol";
import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Viewer is OwnableUpgradeable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    IRoleController public roles;
    IRouter public router;
    IUnderlyingVault public underlyingVault;
    ICompoundVault public compoundingVault;
    IRewardTracker public tracker;

    IERC20 private USDC;

    uint256 public constant BASIS_POINTS = 1e12;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(
        address _roles,
        address _router,
        address _underlyingVault,
        address _compoundingVault,
        address _tracker
    ) external initializer {
        __Ownable_init(msg.sender);

        roles = IRoleController(_roles);
        router = IRouter(_router);
        underlyingVault = IUnderlyingVault(_underlyingVault);
        compoundingVault = ICompoundVault(_compoundingVault);
        tracker = IRewardTracker(_tracker);

        USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  ONLY OWNER                                */
    /* -------------------------------------------------------------------------- */

    ///@notice Set Contracts

    function setRoles(address _roles) external onlyOwner {
        roles = IRoleController(_roles);
    }

    function setRouter(address _router) external onlyOwner {
        router = IRouter(_router);
    }

    function setUnderlyingVault(address _vault) external onlyOwner {
        underlyingVault = IUnderlyingVault(_vault);
    }

    function setCompoundVault(address _vault) external onlyOwner {
        compoundingVault = ICompoundVault(_vault);
    }

    function setTracker(address _tracker) external onlyOwner {
        tracker = IRewardTracker(_tracker);
    }

    function setUSDC(address _usdc) external onlyOwner {
        USDC = IERC20(_usdc);
    }

    /* -------------------------------------------------------------------------- */
    /*                                     VIEW                                   */
    /* -------------------------------------------------------------------------- */

    ///@notice Get User Info

    function getStakedPosition(address _user) public view returns (uint256) {
        return tracker.stakedAmount(_user);
    }

    function getPendingRewards(address _user) public view returns (uint256) {
        return tracker.claimable(_user);
    }

    function getWithdrawRequest(address _user) public view returns (uint256, uint256) {
        return router.withdrawRequests(_user);
    }

    function getUserInfo(address _user) public view returns (IRoleController.RoleInfo memory) {
        return roles.getUserInfo(_user);
    }

    function getDelegates(address _user) public view returns (address, address) {
        return router.delegates(_user);
    }

    ///@notice Get IO Info

    function getPreviewDeposit(uint256 _assets, bool _compound) public view returns (uint256) {
        if (_compound) {
            return compoundingVault.previewDeposit(_assets);
        }

        return underlyingVault.previewDeposit(_assets);
    }

    // Includes withdraw retention
    function getPreviewWithdraw(address _user, uint256 _assetsOrShares, bool _compound, bytes calldata _enforceData)
        public
        view
        returns (uint256, uint256)
    {
        if (_compound) {
            /// @notice burn jUSDC
            _assetsOrShares = compoundingVault.previewRedeem(_assetsOrShares);
        }

        /// @notice get USDC
        uint256 usdcBalance = USDC.balanceOf(address(underlyingVault));

        uint256 strategyRetention;

        /// @notice if not enough USDC in vault, force payback.
        if (_assetsOrShares > usdcBalance) {
            strategyRetention = underlyingVault.retentionRefund(_assetsOrShares - usdcBalance, _enforceData);
        }

        uint256 withdrawalRetention;
        uint256 retentionPercentage = getWithdrawRetention(_user);
        if (retentionPercentage > 0 && router.incentiveReceiver() != address(0)) {
            withdrawalRetention = _assetsOrShares.mulDivDown(retentionPercentage, BASIS_POINTS);
        }
        return (_assetsOrShares - withdrawalRetention - strategyRetention, withdrawalRetention + strategyRetention);
    }

    ///@notice Get System Info

    function getTotalWithdrawRequests() public view returns (uint256) {
        return router.totalWithdrawRequests();
    }

    function getCompoundTotalAssets() public view returns (uint256) {
        return tracker.stakedAmount(address(compoundingVault));
    }

    function getUnderlyingTotalAssets() public view returns (uint256) {
        return underlyingVault.totalAssets();
    }

    function getWithdrawRetention(address _user) public view returns (uint256) {
        IRoleController.RoleInfo memory roleInfo = roles.getUserInfo(_user);
        return roleInfo.INCENTIVE_RETENTION;
    }
}
