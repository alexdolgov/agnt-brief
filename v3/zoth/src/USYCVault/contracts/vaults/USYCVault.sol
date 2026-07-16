// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '../interfaces/vaults/IVault.sol';
import '../interfaces/helpers/ITeller.sol';
import '../interfaces/priceOracles/IPriceOracle.sol';
import './BaseVault.sol';

/**
 * @title USYCVault
 * @author ZeUSD Protocol Team
 * @notice Specialized vault for managing USYC token and additional supported assets
 * @dev Extends BaseVault with USYC-specific operations and ERC7201 storage pattern
 *
 * The USYCVault contract manages deposits and withdrawals of USYC (primary asset) and secondary
 * assets through teller integration. It implements comprehensive security measures and
 * optimized conversion strategies to minimize slippage and maximize capital efficiency.
 *
 * Core Functionality:
 * - USYC token deposit/withdrawal handling
 * - Secondary asset conversion via teller integration
 * - Price oracle integration for slippage calculations
 * - Withdrawal processing for the ZeUSD protocol
 *
 * Asset Flow:
 * - Primary asset (USYC): Direct deposit/withdrawal with no conversion
 * - Secondary assets: Conversion through teller with slippage protection
 * - All operations validated against price oracle data
 *
 * ⚠️ CRITICAL PRECISION LOSS WARNING:
 * Secondary asset operations through the external YieldTokenTellerV2 contract experience
 * precision loss due to rounding to 2 decimal places. Stablecoins with 6 decimal places
 * (like USDC) will lose up to 4 decimal places of precision (0.0001 tokens max loss).
 * This affects both deposits and withdrawals of secondary assets.
 * Users and integrators must account for this precision loss in their calculations.
 *
 * Storage Architecture:
 * - Inherits BaseVault storage pattern
 * - Additional USYCVault-specific storage with ERC7201 pattern
 * - Separate storage slot from base implementation
 *
 * Integration Points:
 * - Teller: For asset conversion operations
 * - Price Oracle: For accurate price data and slippage calculations
 * - Router: Entry point for deposit operations
 * - Withdrawal System: For processing withdrawal requests
 *
 * @custom:roles-and-capabilities
 * ORCHESTRATOR_ROLE:
 * - All capabilities inherited from BaseVault
 *
 * GUARDIAN_ROLE:
 * - All capabilities inherited from BaseVault
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Reentrancy protection on all state-modifying functions
 * - Multi-layered slippage protection with oracle verification
 * - Precise approval management for external contracts
 * - Fallback mechanisms for failed teller operations
 * - Comprehensive error handling and validation
 * - Emergency mode inheritance from BaseVault
 *
 * @custom:security-contact tech@zoth.io
 */
contract USYCVault is
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessManagedUpgradeable,
    BaseVault,
    IVault
{
    using SafeERC20 for IERC20;

    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.usyc.vault.storage")) - 1)) & ~bytes32(uint256(0xff))
     */
    bytes32 private constant USYC_STORAGE_SLOT =
        0x3356ae7688c6122af99b30a37557fc31372216e346988228029cf116d8341f00;

    /**
     * @notice USYC specific storage structure
     */
    struct USYCVaultStorage {
        address teller;
        address vaultMultiSig;
    }

    /**
     * @notice Retrieves storage pointer for USYC storage
     * @return $ Storage pointer to USYCVaultStorage struct
     */
    function _usycStorage() private pure returns (USYCVaultStorage storage $) {
        bytes32 slot = USYC_STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }

    /// @notice Emitted when teller address is updated
    event TellerUpdated(address indexed oldTeller, address indexed newTeller);

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the vault
     * @param registry Address of registry contract
     * @param _usyc Address of USYC token
     * @param _teller Address of teller contract
     * @param _maxSlippageBps Maximum allowed slippage in basis points
     * @param _accessManager Address of the AccessManager contract
     * @param _vaultMultiSig Address of the vault multi-sig contract
     */
    function initialize(
        address registry,
        address _usyc,
        address _teller,
        uint256 _maxSlippageBps,
        address _accessManager,
        address _vaultMultiSig
    )
        external
        initializer
        validAddress(_usyc)
        validAddress(_teller)
        validAddress(_accessManager)
        validAddress(_vaultMultiSig)
    {
        __BaseVault_init(_usyc, registry, _maxSlippageBps);
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);

        USYCVaultStorage storage $ = _usycStorage();
        $.teller = _teller;
        $.vaultMultiSig = _vaultMultiSig;
    }

    /**
     * @notice Returns the access manager contract
     * @return IAccessManager interface of the access manager
     */
    function accessManager() external view override returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Handles deposit of supported assets
     * @dev Routes to USYC or secondary asset handling
     * @param user Address of depositing user
     * @param asset Address of asset being deposited
     * @param amount Amount to deposit
     * @return success Whether deposit was successful
     * @return processedAmount Amount actually processed
     */
    function handleDeposit(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant whenNotPaused returns (bool success, uint256 processedAmount) {
        if (msg.sender != _baseStorage().registry.getContract(Constants.CONTRACT_ROUTER))
            revert Vault_Unauthorized(msg.sender);
        if (!this.isAssetSupported(asset)) revert Vault_AssetNotSupported(asset);
        if (amount == 0) revert Vault_InvalidAmount();
        if (_baseStorage().emergencyMode)
            revert Vault_EmergencyModeActive(_baseStorage().lastEmergencyAction);

        address primaryAsset = this.getPrimaryAsset();
        if (asset == primaryAsset) {
            revert Vault_AssetNotSupported(asset); // Disable primary asset deposits
        } else {
            return _handleSecondaryAssetDeposit(user, asset, amount);
        }
    }

    /**
     * @notice Internal handler for USYC deposits
     * @dev This function is disabled and will revert if called
     */
    function _handleUSYCDeposit(address, uint256) internal view returns (bool, uint256) {
        revert Vault_AssetNotSupported(this.getPrimaryAsset());
    }

    /**
     * @notice Internal handler for secondary asset deposits
     * @dev Converts secondary assets to USYC through the teller contract
     *
     * ⚠️ IMPORTANT PRECISION LOSS WARNING:
     * The external YieldTokenTellerV2 contract rounds down stablecoin amounts to 2 decimal places
     * in its buyFor() function. Since stablecoins like USDC have 6 decimal places, this results
     * in precision loss of up to 4 decimal places (0.0001 tokens).
     *
     * Example precision loss:
     * - Input: 1000.123456 USDC (6 decimals)
     * - Teller processes: 1000.12 USDC (rounded to 2 decimals)
     * - Loss: 0.003456 USDC (~$0.003456 at $1 rate)
     *
     * This precision loss is inherent to the external teller contract and cannot be avoided.
     * Users should be aware that sending assets with full precision may result in small losses.
     *
     * @param user User making the deposit
     * @param asset Asset being deposited
     * @param amount Amount being deposited
     * @return success Whether operation succeeded
     * @return processedAmount Amount actually processed
     */
    function _handleSecondaryAssetDeposit(
        address user,
        address asset,
        uint256 amount
    ) internal returns (bool success, uint256 processedAmount) {
        USYCVaultStorage storage $ = _usycStorage();
        BaseVaultStorage storage base = _baseStorage();
        address primaryAsset = this.getPrimaryAsset();

        // Calculate minimum expected output based on price oracle and slippage
        uint256 minExpectedOutput;
        (uint256 assetPrice, bool assetSuccess) = IPriceOracle(
            address(base.registry.getContract(Constants.CONTRACT_PRICE_ORACLE))
        ).getOraclePrice(asset);
        if (!assetSuccess || assetPrice == 0) revert('Asset Oracle price fetch failed');

        (uint256 primaryPrice, bool primarySuccess) = IPriceOracle(
            address(base.registry.getContract(Constants.CONTRACT_PRICE_ORACLE))
        ).getOraclePrice(primaryAsset);
        if (!primarySuccess || primaryPrice == 0) revert('Primary Asset Oracle price fetch failed');

        // Calculate conversion rate and apply slippage - delay division to maintain precision
        minExpectedOutput =
            (amount * assetPrice * (10000 - base.maxSlippageBps)) /
            (primaryPrice * 10000);

        try ITeller($.teller).buyPreview(amount) returns (uint256 payout, uint256, int256) {
            // Only update expectedOutput if payout is greater than our minimum
            if (payout > minExpectedOutput) {
                minExpectedOutput = payout;
            }
        } catch {
            // If buyPreview fails, we already have minExpectedOutput
        }

        _revokeApproval(asset, $.teller);
        _grantApproval(asset, $.teller, amount);

        try ITeller($.teller).buyFor(amount, $.vaultMultiSig) returns (uint256 boughtAmount) {
            // Validate that received amount meets minimum expected output
            if (boughtAmount < minExpectedOutput) {
                revert Vault_SlippageExceeded(minExpectedOutput, boughtAmount, base.maxSlippageBps);
            }

            emit VaultSecondaryAssetOperation(asset, user, amount, true);
            return (true, boughtAmount);
        } catch Error(string memory reason) {
            revert Vault_SecondaryAssetOperationFailed(reason);
        }
    }

    /**
     * @notice Handles withdrawal of supported assets
     * @dev Routes to USYC or secondary asset handling
     * @param user Address of withdrawing user
     * @param asset Address of asset being withdrawn
     * @param amount Amount to withdraw
     * @return isInitiated Whether withdrawal was initiated
     * @return isCompleted Whether withdrawal was completed (assets transferred)
     * @return processedAmount Amount actually processed
     */
    function handleWithdraw(
        address user,
        address asset,
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        returns (bool isInitiated, bool isCompleted, uint256 processedAmount)
    {
        if (msg.sender != _baseStorage().registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM))
            revert Vault_Unauthorized(msg.sender);
        if (!this.isAssetSupported(asset)) revert Vault_AssetNotSupported(asset);
        if (amount == 0) revert Vault_InvalidAmount();
        if (_baseStorage().emergencyMode)
            revert Vault_EmergencyModeActive(_baseStorage().lastEmergencyAction);

        // Mark withdrawal as initiated
        isInitiated = true;

        address primaryAsset = this.getPrimaryAsset();
        if (asset == primaryAsset) {
            processedAmount = amount;
            isCompleted = _handleUSYCWithdraw(user, amount);
        } else {
            (isCompleted, processedAmount) = _handleSecondaryAssetWithdraw(user, asset, amount);
        }

        return (isInitiated, isCompleted, processedAmount);
    }

    /**
     * @notice Internal handler for USYC withdrawals
     * @param user User receiving withdrawal
     * @param amount Amount being withdrawn
     * @return isCompleted Whether withdrawal was completed
     */
    function _handleUSYCWithdraw(address user, uint256 amount) internal returns (bool isCompleted) {
        address primaryAsset = this.getPrimaryAsset();
        IERC20(primaryAsset).safeTransfer(user, amount);
        emit VaultPrimaryAssetOperation(user, amount, false);
        return true;
    }

    /**
     * @notice Internal handler for secondary asset withdrawals
     * @dev Converts USYC to secondary assets through the teller contract
     *
     * ⚠️ IMPORTANT PRECISION LOSS WARNING:
     * The external YieldTokenTellerV2 contract rounds down stablecoin amounts to 2 decimal places
     * in its sellFor() function. Since stablecoins like USDC have 6 decimal places, this results
     * in precision loss of up to 4 decimal places (0.0001 tokens).
     *
     * Example precision loss:
     * - Expected output: 1000.123456 USDC (6 decimals)
     * - Teller returns: 1000.12 USDC (rounded to 2 decimals)
     * - Loss: 0.003456 USDC (~$0.003456 at $1 rate)
     *
     * This precision loss is inherent to the external teller contract and cannot be avoided.
     * The actual amount received may be slightly less than calculated estimates.
     *
     * @param user User receiving withdrawal
     * @param asset Asset being withdrawn
     * @param amount Amount being withdrawn
     * @return isCompleted Whether withdrawal was completed
     * @return processedAmount Amount actually processed
     */
    function _handleSecondaryAssetWithdraw(
        address user,
        address asset,
        uint256 amount
    ) internal returns (bool isCompleted, uint256 processedAmount) {
        USYCVaultStorage storage $ = _usycStorage();
        BaseVaultStorage storage base = _baseStorage();
        address primaryAsset = this.getPrimaryAsset();

        // Calculate minimum expected output based on price oracle and slippage
        uint256 minExpectedOutput;
        (uint256 primaryPrice, bool primarySuccess) = IPriceOracle(
            base.registry.getContract(Constants.CONTRACT_PRICE_ORACLE)
        ).getOraclePrice(primaryAsset);
        if (!primarySuccess || primaryPrice == 0) revert('Primary Asset Oracle price fetch failed');

        (uint256 assetPrice, bool assetSuccess) = IPriceOracle(
            address(base.registry.getContract(Constants.CONTRACT_PRICE_ORACLE))
        ).getOraclePrice(asset);
        if (!assetSuccess || assetPrice == 0) revert('Asset Oracle price fetch failed');

        // Calculate conversion rate and apply slippage
        minExpectedOutput =
            (amount * primaryPrice * (10000 - base.maxSlippageBps)) /
            (assetPrice * 10000);

        try ITeller($.teller).sellPreview(amount) returns (uint256 payout, uint256, int256) {
            // Only update expectedOutput if payout is greater than our minimum
            if (payout > minExpectedOutput) {
                minExpectedOutput = payout;
            }
        } catch {
            // If sellPreview fails, we already have minExpectedOutput
        }

        _revokeApproval(primaryAsset, $.teller);
        _grantApproval(primaryAsset, $.teller, amount);
        try ITeller($.teller).sellFor(amount, address(this)) returns (uint256 receivedAmount) {
            // Validate that received amount meets minimum expected output
            if (receivedAmount < minExpectedOutput) {
                revert Vault_SlippageExceeded(
                    minExpectedOutput,
                    receivedAmount,
                    base.maxSlippageBps
                );
            }

            IERC20(asset).safeTransfer(user, receivedAmount);

            emit VaultSecondaryAssetOperation(asset, user, amount, false);
            return (true, receivedAmount);
        } catch Error(string memory reason) {
            revert Vault_SecondaryAssetOperationFailed(reason);
        }
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}
}
