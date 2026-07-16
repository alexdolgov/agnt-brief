// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "../interfaces/IAccountManager.sol";
import "../interfaces/IProtocolGovernor.sol";
import "../interfaces/IStrategyVault.sol";
import "../system/ProtocolModuleUpgradeable.sol";
import "../libraries/Errors.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "contracts/libraries/types/Vault.sol";
import { UNIT } from "@prb/math/src/UD60x18.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./StrategyVaultStorage.sol";

/// @dev Token precision is fixed to be 18 decimals.
abstract contract StrategyVaultUpgradeable is
    IStrategyVault,
    StrategyVaultStorage,
    StrategyVaultEvents,
    ProtocolModuleUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    error LiquidationInvalidAmountReceived(uint256 expected, uint256 actual);
    error InvalidLiquidationSlippageModel();

    function __StrategyVaultUpgradeable_init(
        address vaultAdmin,
        Vault.BaseInitProps memory params,
        Vault.Parameters memory config
    )
        internal
        onlyInitializing
    {
        if (vaultAdmin == address(0)) {
            revert Errors.ZeroAddress();
        }
        _grantRole(DEFAULT_ADMIN_ROLE, vaultAdmin);

        __ProtocolModule_init(params.protocolGovernor);
        __StrategyVaultStorage_init(params, config);
    }

    function _authorizeUpgrade(address) internal override onlyOwner { }

    /// @notice Let the owner pause the vault
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Let the owner pause the vault
    function unpause() external onlyOwner {
        _unpause();
    }

    function grantVaultAdmin(address vaultAdmin) external onlyOwner {
        _grantRole(DEFAULT_ADMIN_ROLE, vaultAdmin);
    }

    function revokeVaultAdmin(address vaultAdmin) external onlyOwner {
        _revokeRole(DEFAULT_ADMIN_ROLE, vaultAdmin);
    }

    function setTotalDepositCap(uint256 newDepositCap) external onlyOwner {
        BaseStorage storage $ = _getStrategyVaultStorage();
        $.vaultParams.totalDepositCap = newDepositCap;
        emit DepositCapUpdated(newDepositCap);
    }

    function setMaxDepositPerAccount(uint256 newMaxDeposit) external onlyOwner {
        BaseStorage storage $ = _getStrategyVaultStorage();
        $.vaultParams.maxDepositPerAccount = newMaxDeposit;
        emit MaxDepositPerAccountUpdated(newMaxDeposit);
    }

    function setDepositFee(UD60x18 newDepositFee) external onlyOwner {
        BaseStorage storage $ = _getStrategyVaultStorage();
        if (newDepositFee >= UNIT) {
            revert Errors.InvalidParams();
        }

        $.vaultParams.depositFee = newDepositFee;
        emit DepositCapUpdated(newDepositFee.unwrap());
    }

    function setWithdrawalFee(UD60x18 newWithdrawalFee) external onlyOwner {
        BaseStorage storage $ = _getStrategyVaultStorage();
        if (newWithdrawalFee >= UNIT) {
            revert Errors.InvalidParams();
        }

        $.vaultParams.withdrawalFee = newWithdrawalFee;
        emit WithdrawalFeeUpdated(newWithdrawalFee.unwrap());
    }

    function setLiquidationSlippageModel(address model) external nonZeroAddress(model) onlyOwner {
        BaseStorage storage $ = _getStrategyVaultStorage();
        $.vaultParams.liquidationSlippageModel = IStrategySlippageModel(model);

        try $.vaultParams.liquidationSlippageModel.calculateSlippage(0) { }
        catch {
            revert InvalidLiquidationSlippageModel();
        }

        emit LiquidationSlippageModelUpdated(model);
    }

    function getVaultParams() public view returns (Vault.Parameters memory) {
        BaseStorage storage $ = _getStrategyVaultStorage();
        return $.vaultParams;
    }

    function getBaseAsset() public view returns (IERC20) {
        BaseStorage storage $ = _getStrategyVaultStorage();
        return $.baseAsset;
    }

    function getTotalBaseDeposit() public view returns (uint256) {
        BaseStorage storage $ = _getStrategyVaultStorage();
        return $.totalBaseDeposit;
    }

    /// @dev BaseAsset is transferred out of the recipient.
    /// `msg.sender` should always be an AccountManager.
    function deposit(
        uint256 assets,
        bytes memory data,
        address recipient
    )
        external
        payable
        virtual
        whenProtocolNotDeprecated
        whenNotPaused
        onlyAccountManager
        returns (uint256 receivedShares)
    {
        address feeCollector = _getFeeCollector();
        (uint256 depositAmount, uint256 depositFee) = _processDeposit(assets, recipient, feeCollector);

        if (depositFee > 0) {
            emit DepositFeeTaken(depositFee);
        }

        _beforeAmountChange(recipient, assets - depositFee);
        receivedShares = _deposit(depositAmount, data, recipient);
    }

    function withdraw(uint256 shares, bytes memory data) external payable virtual returns (uint256 receivedAmount) {
        receivedAmount = _withdraw(msg.sender, shares, data, msg.sender);
        _afterAmountChange(msg.sender, receivedAmount);
    }

    /// Second parameter is disregarded and kept to be backwards compatible with mainnet.
    /// @notice Used by our liquidation engine. Performs a full withdrawal for the `msg.sender`.
    function liquidate(
        address receiver,
        uint256,
        bytes memory data
    )
        external
        payable
        virtual
        returns (uint256 receivedAssets)
    {
        BaseStorage storage $ = _getStrategyVaultStorage();
        // We assume `msg.sender` is an IAccount because only AccountManagers can deposit into Strategies
        // on behalf of Accounts.

        uint256 totalShares = balanceOf(msg.sender);

        // Get the Manager that created the Account to check the Account's liquidation status
        IAccountManager manager = IAccount(msg.sender).getManager();
        AccountLib.LiquidationStatus memory status = manager.getAccountLiquidationStatus(msg.sender);

        if (!status.isLiquidating) {
            revert Errors.AccountNotBeingLiquidated();
        }

        // Calculate minimum amount to receive from full withdrawal based off:
        // - Slippage based off a model that increases as duration of liquidation time increases.
        // - Current position value of the Account via getPositionValue. This value MUST be derived from an manipulation
        // resistant method.
        // Slippage model increases as liquidation time increases to hedge against mispricing.

        // For example, if position is ETH and actual price on AMM is $1900 with oracle price being $2000, it will
        // expect $2000 * (1 - slippage %).
        // If this fails, time will pass and the slippage % will increase, reducing the expected amount and ensuring
        // liquidation happens at some point.

        // This is necessary to protect against liquidators sandwiching user positions.

        // In the future, an auction based liquidation mechanism should be used instead (i.e. selling position at a
        // discount based off oracle price, ensuring debt is paid upfront).

        uint256 timeSinceLiquidation = FixedPointMathLib.zeroFloorSub(block.timestamp, status.liquidationStartTime);
        UD60x18 slippage = $.vaultParams.liquidationSlippageModel.calculateSlippage(timeSinceLiquidation);
        uint256 currentValue = getPositionValue(msg.sender);
        uint256 minAmountAfterSlippage = currentValue - ((ud(currentValue) * slippage).unwrap());

        // Encode 0 as minAmount because slippage is enforced after withdrawal and ignore data if it is empty.
        // Simple strategies will expect a minAmount value to use somewhere in the withdrawal step.
        if (keccak256(data) == keccak256("")) {
            receivedAssets = _withdraw(msg.sender, totalShares, abi.encode(0), receiver);
        } else {
            receivedAssets = _withdraw(msg.sender, totalShares, data, receiver);
        }

        if (receivedAssets < minAmountAfterSlippage) {
            revert LiquidationInvalidAmountReceived(minAmountAfterSlippage, receivedAssets);
        }

        _afterAmountChange(msg.sender, receivedAssets);
    }

    function estimateExecuteDepositGasLimit() external view virtual returns (uint256) {
        return 0;
    }

    function estimateExecuteWithdrawalGasLimit() external view virtual returns (uint256) {
        return 0;
    }

    function _deposit(uint256 assets, bytes memory data, address recipient) internal virtual returns (uint256);

    function _withdraw(
        address caller,
        uint256 shares,
        bytes memory data,
        address recipient
    )
        internal
        virtual
        returns (uint256);

    /// @notice Gets the value of a user's position denominated in baseAsset.
    /// Similar to previewWithdraw, but it uses manipulation resistant pricing and may return a risk adjusted value
    /// instead of the actual value.
    function getPositionValue(address account) public view virtual returns (uint256);

    //////////////////
    // PERIPHERY
    //////////////////

    /// @notice This function allows users to simulate the effects of their withdrawal at the current block.
    /// @dev Use this to calculate the minAmount of lend token to withdraw during withdrawal
    /// Some strategies may not support this functionality.
    function previewWithdraw(uint256) public view virtual returns (uint256) {
        revert Errors.FunctionalityNotSupported();
    }

    /// @notice This function allows users to simulate the effects of their deposit at the current block.
    /// @dev Use this to calculate the minAmount to pass to the strategy during deposit
    /// Some strategies may not support this functionality.
    function previewDeposit(uint256) public view virtual returns (uint256) {
        revert Errors.FunctionalityNotSupported();
    }

    /// Version of previewDeposit that is expensive to call onchain.
    function previewDepositOffchain(uint256) public virtual returns (uint256) {
        revert Errors.FunctionalityNotSupported();
    }

    /// Version of previewWithdraw that is expensive or impractical to call onchain (like ones that rely on Uniswap's
    /// IQuoterV2).
    function previewWithdrawOffchain(uint256) public virtual returns (uint256) {
        revert Errors.FunctionalityNotSupported();
    }

    /// @notice Disables transfers other than mint and burn
    /// @dev Done explicitly because solady transfers do not prevent transferring to zero address.
    function transfer(address, uint256) public pure override returns (bool) {
        revert Errors.TransferDisabled();
    }

    function transferFrom(address, address, uint256) public pure override returns (bool) {
        revert Errors.TransferDisabled();
    }
}
