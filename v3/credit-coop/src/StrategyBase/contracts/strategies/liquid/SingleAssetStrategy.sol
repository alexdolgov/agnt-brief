// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC4626} from "openzeppelin/interfaces/IERC4626.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "openzeppelin/utils/ReentrancyGuard.sol";

import {StrategyBase, ILendingVault} from "./StrategyBase.sol";

/**
 * @title  - SingleAssetStrategy
 * @author - Credit Cooperative
 * @notice - Liquid strategy contract for single asset LendingVault contracts. Supports depositing and withdrawing from any 4626 vault with the vault asset as its base asset.
 * @dev    - Does not support swapping between 4626 vaults with differing base assets.
 * @dev    - State changing functions are only callable by owner or CreditStrategy contract.
 */
contract SingleAssetStrategy is StrategyBase {
    using SafeERC20 for IERC20;

    constructor(IERC20 _asset, address _owner) Ownable(_owner) {
        asset = _asset;
    }

    /**
     * @notice  - Approves a vault for use with the strategy
     * @dev     - Only allows vaults that have the same native asset as the strategy
     * @param _vault    - Address of the vault to approve
     */
    function _approveVault(address _vault) internal override {
        _onlyNativeAsset(_vault);
        super._approveVault(_vault);
    }

    /**
     * @notice  - Returns the total assets held by the Strategy contract demoninated in the Strategy's native asset. This includes all assets held in the 4626 vaults and the Strategy contract itself.
     * @return total    - Total assets
     */
    function totalAssets() public view virtual returns (uint256 total) {
        uint256 len = vaults.length;
        for (uint256 i = 0; i < len; i++) {
            total += IERC4626(vaults[i]).maxWithdraw(address(this));
        }
        total += asset.balanceOf(address(this));
    }

    /**
     * @notice  - Reallocates funds between approved vaults. Deposits assets into the vaults if isDeposit is true, withdraws if false.
     * @param targets   - Array of vaults to reallocate funds to/from.
     * @param amounts   - Array of amounts to reallocate to/from each vault (denominated in asset of the vault).
     * @param isDeposit - Array of booleans indicating whether to deposit or withdraw from each vault.
     */
    function reallocateFunds(address[] memory targets, uint256[] memory amounts, bool[] memory isDeposit)
        external
        onlyOwner
        virtual
    {
        _arrayLengthsMustMatch(targets, amounts, isDeposit);

        uint256 len = targets.length;
        for (uint256 i = 0; i < len; i++) {
            if (isDeposit[i]) {
                asset.forceApprove(targets[i], amounts[i]);
                uint256 sharesMinted = IERC4626(targets[i]).deposit(amounts[i], address(this));
                emit VaultDeposit(targets[i], address(asset), amounts[i], sharesMinted);
                asset.forceApprove(targets[i], 0);
            } else {
                // Check for 1 rounding errors/slippage/fees on the 4626 vaults
                uint256 withdrawable = IERC4626(targets[i]).maxWithdraw(address(this));
                if (withdrawable < amounts[i]) amounts[i] = withdrawable;

                uint256 sharesBurned = IERC4626(targets[i]).withdraw(amounts[i], address(this), address(this));
                emit VaultWithdraw(targets[i], address(asset), amounts[i], sharesBurned);
            }
        }
    }

    /**
     * @notice  - Migrates assets from one 4626 vault to another.
     * @param _currentVault - Address of the current 4626 vault to migrate from.
     * @param _newVault     - Address of the new 4626 vault to migrate to.
     */
    function migrateFrom4626(address _currentVault, address _newVault) public onlyOwner virtual {
        _approveVault(_newVault);

        uint256 currBalance = asset.balanceOf(address(this));
        uint256 maxWithdrawable = IERC4626(_currentVault).maxWithdraw(address(this));
        uint256 sharesBurned = IERC4626(_currentVault).withdraw(maxWithdrawable, address(this), address(this));
        emit VaultWithdraw(_currentVault, IERC4626(_currentVault).asset(), maxWithdrawable, sharesBurned);

        // Deposit The actual tokens into the vault
        uint256 depositAmount = asset.balanceOf(address(this)) - currBalance;
        asset.forceApprove(_newVault, depositAmount);
        uint256 sharesMinted = IERC4626(_newVault).deposit(depositAmount, address(this));
        emit VaultDeposit(_newVault, address(this), depositAmount, sharesMinted);
        asset.forceApprove(_newVault, 0);
    }

    /**
     * @notice  - Withdraws maximum amount of assets from all vaults, transfers all assets to the lending vault contract, and claims performance fee for Vault manager.
     * @dev     - only callable by `lendingVault` or `owner`.
     */
    function withdrawAll() public nonReentrant onlyOwner virtual {

        // Withdraw all assets from vaults
        uint256 len = vaults.length;
        for (uint256 i = 0; i < len; i++) {
            address asset = IERC4626(vaults[i]).asset();
            uint256 maxWithdrawable = IERC4626(vaults[i]).maxWithdraw(address(this));
            if (maxWithdrawable > 0) {
                uint256 sharesBurned = IERC4626(vaults[i]).withdraw(maxWithdrawable, lendingVault, address(this));
                emit VaultWithdraw(vaults[i], asset, maxWithdrawable, sharesBurned);
            }
        }

        // Transfer Strategy assets to LendingVault
        uint256 withdrawableAssets = asset.balanceOf(address(this));
        asset.forceApprove(lendingVault, withdrawableAssets);
        asset.safeTransfer(lendingVault, withdrawableAssets);
        emit StrategyWithdraw(msg.sender, address(asset), withdrawableAssets);
        asset.forceApprove(lendingVault, 0);
    }

    fallback() external payable {}
    receive() external payable {}
}
