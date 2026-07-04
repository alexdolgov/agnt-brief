// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC4626} from "openzeppelin/interfaces/IERC4626.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "openzeppelin/utils/ReentrancyGuard.sol";

import {IERC7540} from "contracts/interfaces/IERC7540.sol";
import {ILiquidStrategy} from "contracts/interfaces/ILiquidStrategy.sol";
import {ILendingVault} from "contracts/interfaces/ILendingVault.sol";

/**
 * @title  - StrategyBase
 * @author - Credit Cooperative
 * @notice - Base contract for all liquid strategies. Contains common functions and state variables.
 * @dev    - State changing functions are only callable by owner or CreditStrategy contract.
 */
abstract contract StrategyBase is Ownable, ILiquidStrategy, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address[] public vaults;
    mapping(address => bool) public isVaultApproved;

    IERC20 public immutable asset;
    address public lendingVault;
    uint16 public maxSlippage = 9950;

    uint16 public constant DENOM = 10000;

    /**
     * @notice - Checks the `msg.sender` is `lendingVault` or `owner`.
     */
    function _onlyLendingVaultOrOwner() internal view {
        if (msg.sender != lendingVault && msg.sender != owner()) {
            revert OnlyLendingVaultOrOwner();
        }
    }

    /**
     * @notice - Checks each of the array inputs has the same length.
     */
    function _arrayLengthsMustMatch(address[] memory targets, uint256[] memory amounts, bool[] memory isDeposit)
        internal
        pure
    {
        if (targets.length != amounts.length || targets.length != isDeposit.length) {
            revert ArrayLengthsMustMatch();
        }
    }

    /**
     * @notice - Checks `_vault` is a 4626 vault with the same native asset as the Strategy contract.
     */
    function _onlyNativeAsset(address _vault) internal view {
        if (address(asset) != address(IERC4626(_vault).asset())) {
            revert VaultNotSupported();
        }
    }

    /**
     * @notice - Checks `target` is not zero address.
     */
    function _cannotBeZeroAddress(address target) internal pure {
        if (target == address(0)) {
            revert CannotBeZeroAddress();
        }
    }

    /**
     * @notice  - Sets the LendingVault for the strategy
     * @dev     - Can only be called once by the owner of the liquidStrategy. The LendingVault must have the same native asset as the liquidStrategy.
     * @param _lendingVault - Address of the LendingVault to set
     */
    function setLendingVault(address _lendingVault) external onlyOwner {
        if (lendingVault != address(0)) revert LendingVaultAlreadySet();
        _onlyNativeAsset(_lendingVault);

        lendingVault = _lendingVault;
        emit LendingVaultSet(msg.sender, _lendingVault);
    }

    /**
     * @notice - Sets the maximum slippage allowed for swaps
     * @param _maxSlippage - Maximum slippage allowed for swaps
     */
    function setMaxSlippage(uint16 _maxSlippage) external onlyOwner {
        maxSlippage = _maxSlippage;
        emit MaxSlippageSet(msg.sender, _maxSlippage);
    }

    /**
     * @notice  - Approves a vault for use with the strategy
     * @param _vault    - Address of the vault to approve
     */
    function approveVault(address _vault) external virtual onlyOwner {
        _approveVault(_vault);
    }

    /**
     * @notice  - Removes a vault from the strategy
     * @param _vault - Address of the vault to remove
     */
    function removeVault(address _vault) external onlyOwner {
        _removeVault(_vault);
    }

    // See approveVault
    function _approveVault(address _vault) internal virtual {
        uint256 len = vaults.length;
        for (uint256 x = 0; x < len; x++) {
            if (vaults[x] == _vault) return;
        }

        vaults.push(_vault);
        isVaultApproved[_vault] = true;
        address underlying = IERC4626(_vault).asset();
        emit VaultAdded(_vault, underlying);
    }

    // See removeVault
    function _removeVault(address _vault) internal {
        /* Remove vault from array by swapping with last element and then popping off the last position
        If the vault is not in the array, this will do nothing, and if is last in the array,
        it will be swapped with itself and then popped off the array */
        uint256 len = vaults.length;
        for (uint256 i = 0; i < len; i++) {
            if (vaults[i] == _vault) {
                vaults[i] = vaults[len - 1];
                vaults.pop();
                isVaultApproved[_vault] = false;
                address underlying = IERC4626(_vault).asset();
                emit VaultRemoved(_vault, underlying);
                break;
            }
        }
        asset.forceApprove(_vault, 0); // revoke any residual approvals for safety
    }

    /**
     * @notice  - Deposits assets into the Strategy contract.
     * @dev     - Only callable by `lendingVault` or `owner`.
     * @param _amount - Amount to deposit (denominated in asset of the Strategy).
     */
    function deposit(uint256 _amount) external {
        _onlyLendingVaultOrOwner();
        asset.safeTransferFrom(msg.sender, address(this), _amount);
        emit StrategyDeposit(msg.sender, address(asset), _amount);
    }

    /**
     * @notice  - Withdraws assets from Strategy contract and transfers them to the LendingVault.
     * @dev     - Only callable by `lendingVault` or `owner`.
     * @param _amount - Amount to withdraw (denominated in asset of the Strategy).
     */
    function withdraw(uint256 _amount) external {
        _onlyLendingVaultOrOwner();
        asset.safeTransfer(msg.sender, _amount);
        emit StrategyWithdraw(msg.sender, address(asset), _amount);
    }

    /**
     * @notice  - Virtual function to be overriden. Enables swapping from one asset to another.
     * @param _from     - Address of the asset to swap from.
     * @param _to       - Address of the asset to swap to.
     * @param _amount   - Amount of _from asset to swap.
     * @return uint256  - Amount of _to asset received.
     */
    function _exchange(address _from, address _to, uint256 _amount) internal virtual returns (uint256) {
        return 0;
    }

    /**
     * @notice  - Transfers ERC20 tokens from the contract to arbitrary `to` destination. Can be used to recover tokens not in the underlying asset or in emergency situations.
     * @dev     - Only callable by the owner of the liquidStrategy.
     * @param token     - Address of the ERC20 token to recover.
     * @param to        - Address to send the recovered tokens to.
     * @param amount    - Amount of tokens to recover.
     */
    function recoverTokens(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
        emit TokensRecovered(msg.sender, to, token, amount);
    }
}
