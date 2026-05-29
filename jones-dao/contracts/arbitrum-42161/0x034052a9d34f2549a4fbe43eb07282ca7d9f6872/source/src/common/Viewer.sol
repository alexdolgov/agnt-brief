// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {IRouter} from "src/interfaces/IRouter.sol";
import {IWhitelistController} from "src/interfaces/IWhitelistController.sol";
import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Viewer is OwnableUpgradeable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    address private constant gov = 0xc8ce0aC725f914dBf1D743D51B6e222b79F479f1;

    /// @notice Whitelist and roles contract.
    IWhitelistController public roles;
    /// @notice Router contract.
    IRouter public router;
    /// @notice Underlying Vault contract. (USDC/jUSDC)
    IUnderlyingVault public underlyingVault;
    /// @notice USDC asset
    IERC20 private USDC;

    uint256 public constant BASIS_POINTS = 1e12;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(address _roles, address _router, address _underlyingVault) external initializer {
        if (msg.sender != gov) {
            revert NotRightCaller();
        }

        __Ownable_init(msg.sender);

        roles = IWhitelistController(_roles);
        router = IRouter(_router);
        underlyingVault = IUnderlyingVault(_underlyingVault);

        USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  ONLY OWNER                                */
    /* -------------------------------------------------------------------------- */

    ///@notice Set Contracts

    function setRoles(address _roles) external onlyOwner {
        roles = IWhitelistController(_roles);
    }

    function setRouter(address _router) external onlyOwner {
        router = IRouter(_router);
    }

    function setUnderlyingVault(address _vault) external onlyOwner {
        underlyingVault = IUnderlyingVault(_vault);
    }

    function setUSDC(address _usdc) external onlyOwner {
        USDC = IERC20(_usdc);
    }

    /* -------------------------------------------------------------------------- */
    /*                                     VIEW                                   */
    /* -------------------------------------------------------------------------- */

    ///@notice Get User Info

    function getWithdrawRequest(address _user) public view returns (uint256, uint256, uint256, uint256) {
        return router.withdrawRequests(_user);
    }

    function getUserInfo(address _user) public view returns (IWhitelistController.RoleInfo memory) {
        return roles.getUserInfo(_user);
    }

    function isWhitelistedContract(address _user) public view returns (bool) {
        return roles.isWhitelistedContract(_user);
    }

    function getUserjUSDC(address user) public view returns (uint256) {
        return underlyingVault.balanceOf(user);
    }

    function getUserUSDC(address user) public view returns (uint256) {
        uint256 jUSDC = underlyingVault.balanceOf(user);
        return getPreviewWithdrawWithoutRetention(jUSDC);
    }

    ///@notice Get IO Info

    function getPreviewDeposit(uint256 _assets) public view returns (uint256) {
        return underlyingVault.previewDeposit(_assets);
    }

    ///@notice Includes withdraw retention
    function getPreviewWithdraw(address _user, uint256 _shares, bytes calldata _enforceData)
        public
        view
        returns (uint256, uint256)
    {
        uint256 assets = underlyingVault.previewRedeem(_shares);

        /// @notice get USDC
        uint256 usdcBalance = USDC.balanceOf(address(underlyingVault));

        uint256 strategyRetention;

        /// @notice if not enough USDC in vault, force payback.
        if (assets > usdcBalance) {
            strategyRetention = underlyingVault.retentionRefund(assets - usdcBalance, _enforceData);
        }

        uint256 toWithdraw = assets - strategyRetention;

        uint256 withdrawalRetention;

        uint256 retentionPercentage = getWithdrawRetention(_user);
        if (retentionPercentage > 0 && router.incentiveReceiver() != address(0)) {
            withdrawalRetention = assets.mulDivDown(retentionPercentage, BASIS_POINTS);
        }

        return (toWithdraw - withdrawalRetention, withdrawalRetention + strategyRetention);
    }

    ///@notice Not include retention
    function getPreviewWithdrawWithoutRetention(uint256 _shares) public view returns (uint256) {
        return underlyingVault.previewRedeem(_shares);
    }

    ///@notice Get System Info

    function getTotalWithdrawRequests() public view returns (uint256) {
        return router.totalWithdrawRequests();
    }

    function getTotalAssets() public view returns (uint256) {
        return underlyingVault.totalAssets();
    }

    function getTVL() public view returns (uint256) {
        return underlyingVault.tvl();
    }

    function getCap(address strategy) public view returns (uint256) {
        return underlyingVault.cap(strategy);
    }

    function isCapSet(address strategy) public view returns (bool) {
        return underlyingVault.borrowableAmount(strategy) == 0;
    }

    function isPaused() public view returns (bool) {
        return router.isPaused();
    }

    function getBorrowableAmount(address strategy) public view returns (uint256) {
        return underlyingVault.borrowableAmount(strategy);
    }

    function getWithdrawRetention(address _user) public view returns (uint256) {
        IWhitelistController.RoleInfo memory roleInfo = roles.getUserInfo(_user);
        return roleInfo.INCENTIVE_RETENTION;
    }

    function getWithdrawCooldown() public view returns (uint256) {
        return router.withdrawCooldown();
    }

    error NotRightCaller();
}
