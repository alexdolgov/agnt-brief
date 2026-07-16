// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {IHook} from "./interfaces/IHook.sol";
import {IWithdrawModule} from "./interfaces/modules/IWithdrawModule.sol";
import {IDepositModule} from "./interfaces/modules/IDepositModule.sol";
import {IValuationModule} from "./interfaces/modules/IValuationModule.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {BasedVault} from "./BasedVault.sol";

/// @title Hook for BasedVault operations
/// @notice Intercepts deposits, withdrawals, and transfers to support queued settlement and external valuation.
/// @dev
/// - Optional modules enable custom flows:
///   - DepositModule: queues/claims deposits
///   - WithdrawModule: queues/claims withdrawals
///   - ValuationModule: portfolio valuation and fee accrual/claim
/// - If a module address is zero, default immediate behavior is used for that flow.
/// @custom:security This contract can move assets and shares on behalf of users and the vault. Use only trusted modules and vaults.
contract Hook is IHook {
    /// @notice The vault this hook is attached to.
    BasedVault public vault;

    /// @notice Optional module handling queued deposits (zero = disabled).
    address public depositModule;

    /// @notice Optional module handling queued withdrawals (zero = disabled).
    address public withdrawModule;

    /// @notice Optional module providing portfolio valuation and fee accrual (zero = disabled).
    address public valuationModule;

    /// @notice Address that receives protocol fees when claimed.
    address public feeRecipient;

    /// @dev Restricts caller to the vault admin.
    modifier onlyAdmin() {
        require(msg.sender == vault.admin(), "Not admin");
        _;
    }

    /// @dev Restricts caller to the vault contract.
    modifier onlyVault() {
        require(msg.sender == address(vault), "Not vault");
        _;
    }

    /// @dev Restricts caller to an address recognized as a curator by the vault.
    modifier onlyCurator() {
        require(vault.isCurator(msg.sender), "Not a Curator");
        _;
    }

    /// @notice Withdraw-specific flow invoked while WithdrawModule is disabled.
    error WithdrawModuleDisabled();

    /// @notice Deposit-specific flow invoked while DepositModule is disabled.
    error DepositModuleDisabled();

    /// @notice No withdrawable assets available to claim.
    error NoAssetsClaimable();

    /// @notice No claimable shares available for the receiver.
    error NoSharesClaimable();

    /// @notice Construct the hook for a specific BasedVault and pre-approve spending.
    /// @param _vault The BasedVault that will call this hook.
    /// @dev Grants infinite approvals to the vault for the underlying asset and the share token
    ///      to enable internal deposits, redemptions, and withdrawals initiated by the hook.
    constructor(BasedVault _vault) {
        vault = _vault;
        IERC20(vault.asset()).approve(address(_vault), type(uint256).max);
        IERC20(vault).approve(address(_vault), type(uint256).max);
    }

    /// @notice Configure the optional modules for deposit, withdraw and valuation.
    /// @param _depositModule Address of the DepositModule (zero to disable).
    /// @param _withdrawModule Address of the WithdrawModule (zero to disable).
    /// @param _valuationModule Address of the ValuationModule (zero to disable).
    /// @dev Access: only vault admin.
    function setModules(
        address _depositModule,
        address _withdrawModule,
        address _valuationModule
    ) external onlyAdmin {
        depositModule = _depositModule;
        withdrawModule = _withdrawModule;
        valuationModule = _valuationModule;
    }

    /// @notice Hook called by the vault before finalizing a deposit.
    /// @param caller The original msg.sender initiating the deposit.
    /// @param receiver The address that should receive shares.
    /// @param assets The amount of underlying assets provided.
    /// @param shares The previewed/minted share amount (informational, may be unused).
    /// @dev
    /// - Pulls assets from the caller into the hook.
    /// - If DepositModule is set:
    ///   - Processes any pending claims for the receiver and queues the deposit request.
    /// - Otherwise:
    ///   - Deposits immediately into the vault for receiver and notifies valuation module if set.
    /// - Access: onlyVault (invoked by BasedVault when a hook is configured).
    function onDeposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) external override onlyVault {
        IERC20(vault.asset()).transferFrom(caller, address(this), assets);
        // Silence unused param warning when depositModule is used
        shares;
        if (depositModule != address(0)) {
            (uint256 claimableShares, ) = IDepositModule(depositModule)
                .claimable(receiver);
            if (claimableShares > 0) {
                claim(receiver);
            }
            IDepositModule(depositModule).request(caller, receiver, assets);
            return;
        }
        vault.deposit(assets, receiver);
        if (valuationModule != address(0) && depositModule == address(0)) {
            IValuationModule(valuationModule).onDeposit(assets);
        }
    }

    /// @notice Hook called by the vault before finalizing a withdrawal.
    /// @param caller The original msg.sender initiating the withdrawal.
    /// @param receiver The address that should receive assets.
    /// @param owner The address that owns the shares being burned.
    /// @param assets The amount of assets expected to withdraw (informational).
    /// @param shares The amount of shares to be burned.
    /// @dev
    /// - Pulls shares from owner into the hook.
    /// - If WithdrawModule is set:
    ///   - Processes any pending claims for the receiver and queues the withdrawal request.
    /// - Otherwise:
    ///   - Withdraws immediately from the vault to the receiver.
    /// - If valuationModule is set and WithdrawModule is not set, notifies it of the withdrawal.
    /// - Access: onlyVault (invoked by BasedVault when a hook is configured).
    function onWithdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) external override onlyVault {
        IERC20(address(vault)).transferFrom(owner, address(this), shares);
        if (valuationModule != address(0) && withdrawModule == address(0)) {
            IValuationModule(valuationModule).onWithdraw(assets);
        }
        if (withdrawModule != address(0)) {
            (uint256 claimableAssets, ) = IWithdrawModule(withdrawModule)
                .claimable(receiver);
            if (claimableAssets > 0) {
                claim(receiver);
            }
            IWithdrawModule(withdrawModule).request(
                caller,
                receiver,
                owner,
                shares
            );
            return;
        }
        vault.withdraw(assets, receiver, owner);
    }

    /// @notice Returns the current portfolio value net of accrued fees when a valuation module is present.
    /// @return value The portfolio value in units of the underlying asset.
    /// @dev Falls back to the vault’s on-chain underlying balance if no valuation module is set.
    function portfolioValue() external view override returns (uint256 value) {
        if (valuationModule != address(0)) {
            return
                IValuationModule(valuationModule).portfolioValue() -
                IValuationModule(valuationModule).feeAccrued();
        }
        return IERC20(vault.asset()).balanceOf(address(vault));
    }

    /// @notice Settles queued withdrawals at the current assets-per-share rate.
    /// @param shares The total shares being settled for withdrawal.
    /// @dev
    /// - Access: onlyCurator.
    /// - Requires WithdrawModule to be configured.
    /// - Computes rate with vault decimals, instructs the withdraw module to settle,
    ///   redeems shares from the vault into this hook, and updates the valuation module.
    /// @custom:reverts WithdrawModuleDisabled If no withdraw module is set.
    function settleWithdraw(uint256 shares) external onlyCurator {
        if (withdrawModule == address(0)) revert WithdrawModuleDisabled();
        uint256 rate = (vault.totalAssets() * (10 ** vault.decimals())) /
            vault.totalSupply();
        IWithdrawModule(withdrawModule).settle(shares, rate);

        uint256 assets = vault.redeem(shares, address(this), address(this));
        IValuationModule(valuationModule).onWithdraw(assets);
    }

    /// @notice Claims any pending assets or shares for a receiver from configured modules.
    /// @param receiver The beneficiary address to claim for.
    /// @dev
    /// - If WithdrawModule is set:
    ///   - Claims assets and transfers them to the receiver.
    /// - If DepositModule is set:
    ///   - Claims shares/assets, then transfers the assets to the receiver.
    /// @custom:reverts NoAssetsClaimable When no withdrawable assets are available from WithdrawModule.
    /// @custom:reverts NoSharesClaimable When no claimable shares are available from DepositModule.
    function claim(address receiver) public {
        if (withdrawModule != address(0)) {
            (uint256 assets, uint256 shares) = IWithdrawModule(withdrawModule)
                .claimable(receiver);
            if (assets == 0) revert NoAssetsClaimable();
            IWithdrawModule(withdrawModule).claim(receiver, shares);
            IERC20(vault.asset()).transfer(receiver, assets);
        }
        if (depositModule != address(0)) {
            (uint256 shares, uint256 assets) = IDepositModule(depositModule)
                .claimable(receiver);
            if (shares == 0) revert NoSharesClaimable();
            IDepositModule(depositModule).claim(receiver, shares);
            IERC20(vault.asset()).transfer(receiver, assets);
        }
    }

    /// @notice Manually update the portfolio value in the valuation module.
    /// @param newValue The new portfolio value to set (denominated in underlying asset).
    /// @dev Access: onlyCurator. No-op if no valuation module is configured.
    function updatePortfolioValue(uint256 newValue) external onlyCurator {
        if (valuationModule != address(0)) {
            IValuationModule(valuationModule).updatePortfolioValue(newValue);
        }
    }

    /// @notice Updates the fee recipient address.
    /// @param newRecipient The address that will receive protocol fees when claimed.
    /// @dev Access: only vault admin.
    function setFeeRecipient(address newRecipient) external onlyAdmin {
        feeRecipient = newRecipient;
    }

    /// @notice Sets the protocol fee in the valuation module.
    /// @param newFee The new fee parameter forwarded to the valuation module.
    /// @dev Access: onlyVault. No-op if no valuation module is configured.
    function setFee(uint256 newFee) external onlyVault {
        if (valuationModule != address(0)) {
            IValuationModule(valuationModule).setFee(newFee);
        }
    }

    /// @notice Claims accrued protocol fees from the valuation module.
    /// @return recipient The address to receive the claimed fees.
    /// @return amount The amount of fees to transfer to the recipient.
    /// @dev Access: onlyVault. Returns zero values when valuation module is not set.
    function claimFee()
        external
        onlyVault
        returns (address recipient, uint256 amount)
    {
        if (valuationModule != address(0)) {
            return (feeRecipient, IValuationModule(valuationModule).claimFee());
        }
        return (address(0), 0);
    }

    /// @notice Hook called by the vault on share transfers.
    /// @param _from The address sending shares.
    /// @param _to The address receiving shares.
    /// @param _shares The number of shares transferred.
    /// @dev Currently a no-op. Reserved for future logic. Access: onlyVault.
    function onTransfer(
        address _from,
        address _to,
        uint256 _shares
    ) external view override onlyVault {
        // Silence unused parameter warnings
        (_from, _to, _shares);
    }
}
