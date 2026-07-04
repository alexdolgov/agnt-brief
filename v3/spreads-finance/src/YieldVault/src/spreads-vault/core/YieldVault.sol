// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {BaseContract} from "common-contracts/base-contracts/BaseContract.sol";
import {DEPOSIT_SCOPE, WITHDRAWAL_SCOPE} from "@src/common/constants/Scopes.sol";
import {OPERATOR_ROLE, EMERGENCY_ROLE} from "@src/common/access-management/Roles.sol";
import {ISPRVault} from "@src/spreads-vault/core/ISPRVault.sol";
import {
    Staked,
    Unstaked,
    RewardsDistributed,
    EmergencyPaused,
    EmergencyUnpaused,
    EmergencyWithdraw
} from "@src/spreads-vault/events/EventsV2.sol";
import "@src/common/constants/Contracts.sol";
import {IVaultManagerRepository} from "@src/spreads-vault/repositories/IVaultManagerRepository.sol";

contract YieldVault is ERC20, BaseContract, ReentrancyGuard {
    using SafeERC20 for IERC20;

    modifier nonZero(uint256 _amount) {
        require(_amount > 0, "Amount must be greater than zero");
        _;
    }


    bool public emergencyPaused;



    constructor(address _beaconAddress) ERC20("Yield Vault Shares", "yv-SPR") BaseContract(_beaconAddress) {}


    function _getRepo() internal view returns (IVaultManagerRepository) {
        return IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
    }

    function _getSPRToken() internal view returns (IERC20) {
        return IERC20(_getRepo().getSPRToken());
    }

    function _getRewardDistributor() internal view returns (address) {
        return _getRepo().getFarmVaultRewardDistributor();
    }


    function emergencyPause() external onlyRole(EMERGENCY_ROLE) {
        emergencyPaused = true;
        emit EmergencyPaused();
    }

    function emergencyUnpause() external onlyRole(EMERGENCY_ROLE) {
        emergencyPaused = false;
        emit EmergencyUnpaused();
    }

    function emergencyWithdraw(address token, address recipient) external onlyRole(EMERGENCY_ROLE) {
        require(recipient != address(0), "Invalid recipient");
        uint256 balance = IERC20(token).balanceOf(address(this));
        require(balance > 0, "No balance to withdraw");
        IERC20(token).safeTransfer(recipient, balance);
        emit EmergencyWithdraw(token, recipient, balance);
    }


    function stake(uint256 sprAmount)
        external
        nonReentrant
        whenScopeNotPaused(DEPOSIT_SCOPE)
        returns (uint256 shares)
    {
        require(sprAmount > 0, "Zero amount");
        require(!emergencyPaused, "Paused");

        shares = _convertToShares(sprAmount);

        IERC20 sprToken = _getSPRToken();
        sprToken.safeTransferFrom(msg.sender, address(this), sprAmount);

        _mint(msg.sender, shares);

        emit Staked(msg.sender, sprAmount, shares);
    }

    function unstake(uint256 shares)
        external
        nonReentrant
        whenScopeNotPaused(WITHDRAWAL_SCOPE)
        returns (uint256 sprAmount)
    {
        require(shares > 0, "Zero shares");
        require(balanceOf(msg.sender) >= shares, "Insufficient shares");
        require(!emergencyPaused, "Paused");

        sprAmount = _convertToAssets(shares);

        _burn(msg.sender, shares);

        IERC20 sprToken = _getSPRToken();
        sprToken.safeTransfer(msg.sender, sprAmount);

        emit Unstaked(msg.sender, shares, sprAmount);
    }


    function distributeRewards(uint256 rewardAmount) external {
        require(msg.sender == _getRewardDistributor(), "Not distributor");
        require(rewardAmount > 0, "Zero reward");

        IERC20 sprToken = _getSPRToken();
        sprToken.safeTransferFrom(msg.sender, address(this), rewardAmount);

        emit RewardsDistributed(msg.sender, rewardAmount);
    }


    function totalAssets() public view returns (uint256) {
        return _getSPRToken().balanceOf(address(this));
    }

    function pricePerShare() public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) return 1e18;
        return (totalAssets() * 1e18) / supply;
    }

    function convertToShares(uint256 sprAmount) public view returns (uint256) {
        return _convertToShares(sprAmount);
    }

    function convertToAssets(uint256 shares) public view returns (uint256) {
        return _convertToAssets(shares);
    }


    function _convertToShares(uint256 sprAmount) internal view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) return sprAmount;
        return (sprAmount * supply) / totalAssets();
    }

    function _convertToAssets(uint256 shares) internal view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) return shares;
        return (shares * totalAssets()) / supply;
    }

    function collateralRewardToSPR(uint256 _amount)
        external
        whenNotPaused
        nonReentrant
        onlyRole(OPERATOR_ROLE)
        nonZero(_amount)
    {
        IVaultManagerRepository repo = _getRepo();

        address collateralToken = repo.getCollateralToken(); 
        address sprVault = _getContractAddress(SPR_VAULT_CONTRACT); 

        IERC20(collateralToken).safeTransferFrom(msg.sender, address(this), _amount);

        IERC20(collateralToken).approve(sprVault, _amount);

        ISPRVault(sprVault).deposit(_amount);
    }


    function getTotalFarmSPR() external view returns (uint256) {
        return totalSupply();
    }

    function receiveRebalance(uint256 amount, address token) external nonReentrant onlySystem {
        require(amount > 0, "Zero amount");
        require(token == address(_getSPRToken()), "Invalid token");

        emit RewardsDistributed(msg.sender, amount);
    }
}
