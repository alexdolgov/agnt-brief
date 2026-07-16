// SPDX-License-Identifier: Unlicense
pragma solidity 0.7.6;

import { ICHIVaultDepositGuard } from "./ICHIVaultDepositGuard.sol";
import { IICHIVaultDepositGuardExtendedForMFD } from "./interfaces/IICHIVaultDepositGuardExtendedForMFD.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IWRAPPED_NATIVE } from "./interfaces/IWRAPPED_NATIVE.sol";
import { IMultiFeeDistribution } from "./interfaces/IMultiFeeDistribution.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract ICHIVaultDepositGuardExtendedForMFD is ICHIVaultDepositGuard, IICHIVaultDepositGuardExtendedForMFD, Ownable {
    using SafeERC20 for IERC20;

    address private constant NULL_ADDRESS = address(0);

    /// @notice Constructs the extended IICHIVaultDepositGuard contract.
    /// @param _ICHIVaultFactory The address of the ICHIVaultFactory.
    /// @param _WRAPPED_NATIVE The address of the wrapped native token.
    constructor(address _ICHIVaultFactory, address _WRAPPED_NATIVE) 
        ICHIVaultDepositGuard(_ICHIVaultFactory, _WRAPPED_NATIVE) 
    {
        // Parent constructor handles all the setup
    }

    /// @inheritdoc IICHIVaultDepositGuardExtendedForMFD
    function forwardDepositAndStakeToICHIVault(
        address vault,
        address vaultDeployer,
        address token,
        uint256 amount,
        uint256 minimumProceeds,
        address to
    ) external override nonReentrant returns (uint256 vaultTokens) {
        vaultTokens = _forwardDepositAndStake(vault, vaultDeployer, token, amount, minimumProceeds, to, false);
    }

    /// @inheritdoc IICHIVaultDepositGuardExtendedForMFD
    function forwardNativeDepositAndStakeToICHIVault(
        address vault,
        address vaultDeployer,
        uint256 minimumProceeds,
        address to
    ) external payable override nonReentrant returns (uint256 vaultTokens) {
        uint256 nativeAmount = msg.value;
        IWRAPPED_NATIVE(WRAPPED_NATIVE).deposit{ value: nativeAmount }();
        
        vaultTokens = _forwardDepositAndStake(vault, vaultDeployer, WRAPPED_NATIVE, nativeAmount, minimumProceeds, to, true);
    }

    // ONLY FOR RESCUING TOKENS ACCIDENTALLY SENT TO THIS CONTRACT
    /// @inheritdoc IICHIVaultDepositGuardExtendedForMFD
    function emergencyWithdraw(
        address token,
        address to,
        uint256 amount
    ) external override onlyOwner nonReentrant {
        require(token != NULL_ADDRESS, "Invalid token");
        require(to != NULL_ADDRESS, "Invalid recipient");
        require(amount > 0, "Invalid amount");

        IERC20(token).safeTransfer(to, amount);
    }

    // ONLY FOR RESCUING NATIVE TOKENS ACCIDENTALLY SENT TO THIS CONTRACT
    /// @inheritdoc IICHIVaultDepositGuardExtendedForMFD
    function emergencyWithdrawNative(
        address to,
        uint256 amount
    ) external override onlyOwner nonReentrant {
        require(to != NULL_ADDRESS, "Invalid recipient");
        require(amount > 0, "Invalid amount");
        require(address(this).balance >= amount, "Insufficient balance");

        payable(to).transfer(amount);
    }

    function _forwardDepositAndStake(
        address vault,
        address vaultDeployer,
        address token,
        uint256 amount,
        uint256 minimumProceeds,
        address to,
        bool depositNative
    ) private returns (uint256 vaultTokens) {
        // Get farming contract first to validate it
        IICHIVault ichiVault = IICHIVault(vault);
        address farmingContract = ichiVault.farmingContract();
        _validateFarmingContract(farmingContract, vault);

        // Record balance before deposit to handle any stuck tokens
        uint256 balanceBefore = IERC20(vault).balanceOf(address(this));

        // Use inherited _forwardDeposit but deposit to this contract
        vaultTokens = _forwardDeposit(vault, vaultDeployer, token, amount, minimumProceeds, address(this), depositNative);
        
        // Stake the received tokens
        _stakeTokens(vault, farmingContract, vaultTokens, to);

        // Verify that only the deposited tokens were staked (handles stuck tokens)
        uint256 balanceAfter = IERC20(vault).balanceOf(address(this));
        require(balanceAfter == balanceBefore, "Not all tokens staked");
    }

    function _stakeTokens(
        address vault,
        address farmingContract,
        uint256 amount,
        address to
    ) private {
        IERC20(vault).safeIncreaseAllowance(farmingContract, amount);
        IMultiFeeDistribution(farmingContract).stake(amount, to);
    }

    function _validateFarmingContract(address farmingContract, address vault) private view {
        require(farmingContract != NULL_ADDRESS, "Invalid farming contract");
        
        address stakingToken = IMultiFeeDistribution(farmingContract).stakingToken();
        require(stakingToken == vault, "Farming contract staking token mismatch");
    }
}
