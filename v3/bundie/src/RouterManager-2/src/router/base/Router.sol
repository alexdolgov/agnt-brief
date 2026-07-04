// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

import {IBridge} from "../../interface/IBridge.sol";
import {IVault} from "../../interface/IVault.sol";

import {Errors} from "../../lib/Errors.sol";
import {Events} from "../../lib/Events.sol";
import {Types} from "../../lib/Types.sol";
import {TokenHelpers} from "../../lib/TokenHelpers.sol";
import {BridgeHelpers} from "../../lib/BridgeHelpers.sol";

/// @title Router
/// @author Bundie Team
/// @notice Bridge-agnostic base contract for protocol-specific yield strategy routers
/// @dev Abstract router implementation that handles both local and cross-chain yield operations.
///      Each protocol (Aave, Morpho, Yearn) deploys a concrete router inheriting from this base.
///      Only registered vaults can call executeStrategy. Uses ReentrancyGuard and SafeERC20.
///
///      ## Design notes
///      - Routers operate as “strategy executors”: vaults hold funds, routers move them into/out of strategies.
///      - Local strategies delegate to vault modules (sync returns `bytes32(0)`, async returns operationId).
///      - Cross-chain strategies delegate to a bridge module and return a message GUID for tracking.
///      - Token transfers use balance-delta accounting to safely support fee-on-transfer tokens.
///
///      ## Access control model
///      - Only RouterManager (owner) can register/update strategies.
///      - Only registered vaults can call `executeStrategy(...)`.
///      This prevents arbitrary accounts from forcing the router to interact with strategies/bridges.
///
///      ## Slippage semantics
///      - Local operations: slippage is enforced by the VaultModule (each module handles its own standard).
///      - Cross-chain operations: slippage bounds are encoded in bridge execution params and enforced downstream.
///
/// @custom:invariant Disabled strategies block deposits but always allow withdrawals
/// @custom:invariant Cross-chain bridge transfers verified via balance-delta check (fee-on-transfer safe)
/// @custom:invariant Strategy IDs are deterministic: keccak256(protocolName + "_" + name + "_" + chainId)
/// @custom:trust Only registered vaults can call executeStrategy (enforced by onlyRegisteredAccount)
/// @custom:trust Bridge modules are trusted to transfer tokens and return valid GUIDs
/// @custom:trust Vault modules are trusted to handle deposit/withdraw mechanics and enforce slippage
abstract contract Router is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using TokenHelpers for IERC20;

    // ========================== State Variables ==========================
    //
    // ## Router Architecture
    // Routers act as "strategy executors" that sit between user vaults and yield protocols.
    // - Vaults hold funds and make high-level decisions (deposit X to strategy Y).
    // - Routers handle the mechanics: token transfers, vault module delegation, or bridge delegation.
    //
    // ## Local vs Cross-Chain
    // - LOCAL (bridgeModule == address(0)): Delegate to vault module (sync or async) on this chain.
    //   Returns bytes32(0) as the operation is complete synchronously.
    // - CROSS-CHAIN: Delegate to a bridge module that sends tokens to destination chain.
    //   Returns a message GUID for async tracking via validator confirmations.
    //
    // ## Security: Only Registered Vaults
    // The `onlyRegisteredAccount` modifier ensures only vaults deployed by our factory
    // can call executeStrategy(). This prevents:
    // - Arbitrary EOAs draining tokens approved to the router
    // - External contracts exploiting router logic
    //

    /// @notice RouterManager contract address (also the owner)
    /// @dev Used for vault registration verification. Immutable after deployment.
    address public immutable ROUTER_MANAGER;

    /// @notice Human-readable protocol name
    /// @dev Set during initialization, used for strategy ID generation
    string public protocolName;

    /// @notice Mapping of strategy ID to strategy configuration
    /// @dev Strategy IDs are generated from protocol name, strategy name, and chain ID
    mapping(bytes32 => Strategy) public strategies;

    // ========================== Structs & Enums ==========================

    /// @notice Yield strategy configuration
    /// @dev Mirrors IRouter.Strategy for internal storage
    ///      Storage layout (7 slots - optimized):
    ///      - string name: dynamic (stored separately)
    ///      - slot 0: vaultAddress (20 bytes) - 12 bytes padding
    ///      - slot 1: assetToken (20 bytes) - 12 bytes padding
    ///      - slot 2: shareToken (20 bytes) - 12 bytes padding
    ///      - slot 3: bridgeModule (20 bytes) - 12 bytes padding
    ///      - slot 4: vaultModule (20 bytes) - 12 bytes padding
    ///      - slot 5: chainId (4 bytes) + enabled (1 byte) = 5 bytes, 27 bytes padding
    ///      - slot 6: minDeposit (32 bytes)
    /// @param name Human-readable strategy name
    /// @param vaultAddress Vault/pool address on target chain
    /// @param assetToken Token on this chain for deposits
    /// @param shareToken Receipt token on this chain
    /// @param bridgeModule Bridge module address (address(0) = local, no bridging)
    /// @param vaultModule Vault standard module address (required for local, address(0) for cross-chain)
    /// @param chainId Target chain ID
    /// @param enabled Whether strategy is active
    /// @param minDeposit Minimum deposit amount
    struct Strategy {
        string name;
        address vaultAddress;
        address assetToken;
        address shareToken;
        address bridgeModule;
        address vaultModule;
        uint32 chainId;
        bool enabled;
        uint256 minDeposit;
    }

    /// @notice Operation type for strategy execution
    enum Operation {
        DEPOSIT,
        WITHDRAWAL
    }

    // ========================== Constructor ==========================

    /// @notice Initialize the router with manager configuration
    /// @param _routerManager RouterManager contract address (becomes owner)
    constructor(address _routerManager) Ownable(_routerManager) {
        ROUTER_MANAGER = _routerManager;
    }

    // ========================== Modifiers ==========================

    /// @notice Restricts function to registered vaults only
    /// @dev RouterManager is the source of truth for vault registration (delegates to AccountManager).
    ///      This prevents arbitrary EOAs/contracts from calling `executeStrategy()` directly.
    ///      Logic extracted to private function to avoid duplicating bytecode in modifier inlining.
    modifier onlyRegisteredAccount() {
        _checkRegisteredAccount();
        _;
    }

    // ========================== External View Functions ==========================

    /// @notice Get strategy configuration by ID
    /// @param id Strategy identifier
    /// @return strategy Strategy configuration struct
    function getStrategy(bytes32 id) external view returns (Strategy memory strategy) {
        return strategies[id];
    }

    /// @notice Generate strategy ID from name only (legacy helper)
    /// @param name Strategy name to hash
    /// @return id Keccak256 hash of the name
    function idOf(string memory name) external pure returns (bytes32 id) {
        return keccak256(abi.encodePacked(name));
    }

    // ========================== External State-Changing Functions ==========================

    /// @notice Enable or disable a strategy
    /// @dev Toggling a strategy's enabled state controls whether new deposits are allowed.
    ///      DISABLED strategies can still be withdrawn from (users can always exit).
    ///      This is useful for deprecating strategies or pausing risky ones.
    /// @param id Strategy identifier to modify
    /// @param enabled New enabled state (true = accepting deposits, false = deposits blocked)
    function enableStrategy(bytes32 id, bool enabled) external onlyOwner {
        // Verify the strategy exists before attempting to toggle
        // A zero vaultAddress means the strategy was never registered
        require(strategies[id].vaultAddress != address(0), Errors.StrategyNotFound(id));
        // Update the enabled flag in storage
        strategies[id].enabled = enabled;
        // Emit event for off-chain indexing and monitoring
        emit Events.StrategyEnabled(id, strategies[id].assetToken, enabled);
    }

    /// @notice Register or update a strategy configuration
    /// @dev Generates strategy ID from protocol name, strategy name, and chain ID.
    ///      All required fields are validated. Cross-chain strategies have additional bridge validation.
    ///      Existing strategies can be updated by calling this again with the same name/chainId.
    /// @param strategy Strategy configuration struct to register
    /// @return id Generated strategy identifier (deterministic hash)
    function setStrategy(Strategy calldata strategy) external onlyOwner returns (bytes32 id) {
        // === BASIC VALIDATION ===
        // All address fields must be non-zero
        // vaultAddress: the vault (ERC4626/ERC7540/etc.) or destination pool on target chain
        require(strategy.vaultAddress != address(0), Errors.InvalidAddress());
        // assetToken: the underlying token deposited by users (e.g., USDC)
        require(strategy.assetToken != address(0), Errors.InvalidAddress());
        // shareToken: the receipt token received after deposit (e.g., aUSDC)
        require(strategy.shareToken != address(0), Errors.InvalidAddress());
        // Strategy name is required for ID generation
        require(bytes(strategy.name).length > 0, Errors.InvalidStrategyName());
        // Chain ID 0 is invalid (would confuse local vs cross-chain detection)
        require(strategy.chainId > 0, Errors.InvalidChainId());
        // Minimum deposit prevents dust deposits that waste gas
        require(strategy.minDeposit > 0, Errors.InvalidMinDeposit());

        // === CROSS-CHAIN BRIDGE VALIDATION ===
        // If bridgeModule is set (non-zero), this is a cross-chain strategy
        // We validate the bridge module up-front to prevent misconfiguration
        if (strategy.bridgeModule != address(0)) {
            // Verify bridge module has deployed code (not an EOA)
            require(strategy.bridgeModule.code.length > 0, Errors.InvalidBridge());
            // Check that the bridge module is currently active
            // Inactive bridges should not be used for new strategies
            try IBridge(strategy.bridgeModule).isActive() returns (bool active) {
                require(active, Errors.BridgeInactive());
            } catch {
                // If isActive() call fails, the bridge is misconfigured
                revert Errors.InvalidBridge();
            }
            // Verify the target chain is supported by this bridge module
            // This prevents configuring strategies for chains the bridge can't reach
            try IBridge(strategy.bridgeModule).supportedDestinationChains() returns (uint32[] memory chainIds) {
                bool supported = false;
                // Linear search through supported chains
                for (uint256 i = 0; i < chainIds.length; i++) {
                    if (chainIds[i] == strategy.chainId) {
                        supported = true;
                        break;
                    }
                }
                // Revert if destination chain is not in the supported list
                require(supported, Errors.UnsupportedDestinationChain(strategy.chainId));
            } catch {
                // If supportedDestinationChains() fails, bridge is misconfigured
                revert Errors.InvalidBridge();
            }
        }

        // === LOCAL VAULT MODULE VALIDATION ===
        // If bridgeModule is address(0), this is a local strategy.
        // Local strategies MUST specify a vault module (no legacy fallback).
        if (strategy.bridgeModule == address(0)) {
            // Vault module is required for all local strategies
            require(strategy.vaultModule != address(0), Errors.InvalidVaultModule());
            // Verify vault module has deployed code (not an EOA)
            require(strategy.vaultModule.code.length > 0, Errors.InvalidVaultModule());
            // Check that the vault module is currently active
            try IVault(strategy.vaultModule).isActive() returns (bool active) {
                require(active, Errors.VaultModuleInactive());
            } catch {
                // If isActive() call fails, the vault module is misconfigured
                revert Errors.InvalidVaultModule();
            }
        }

        // === GENERATE STRATEGY ID AND STORE ===
        // Strategy ID is deterministically generated from: protocolName + strategyName + chainId
        // This ensures the same strategy always has the same ID
        id = generateStrategyId(strategy.name, strategy.chainId);
        // Store the strategy configuration in the mapping
        strategies[id] = strategy;

        // Emit event for off-chain indexing
        emit Events.StrategySet(id, strategy.name, strategy.chainId, strategy.vaultAddress, strategy.enabled);
    }

    /// @notice Execute a strategy operation (deposit or withdrawal)
    /// @dev Bridge-agnostic entry point. Routes to local vault module or bridge module.
    ///      For local: returns bytes32(0). For cross-chain: returns bridge message GUID.
    ///
    /// ## Access Control
    /// Only registered vaults can call this function via onlyRegisteredAccount modifier.
    /// This prevents arbitrary contracts from triggering strategy operations.
    ///
    /// ## Operation Flow
    /// 1. Validate operation type and strategy state
    /// 2. Check if ETH was sent (only allowed for cross-chain)
    /// 3. Apply operation-specific validation (deposits: enabled + minDeposit; withdrawals: always allowed)
    /// 4. Route to _executeDeposit or _executeWithdrawal
    ///
    /// @param strategyId Strategy identifier (bytes32 hash)
    /// @param amount Amount to deposit/withdraw (in asset token decimals for deposit, share decimals for withdrawal)
    /// @param bridgeExecutionParams Bridge-specific parameters (empty for local strategies)
    /// @param operation DEPOSIT or WITHDRAWAL enum value
    /// @return messageId Message identifier (bytes32(0) for local operations, GUID for cross-chain)
    function executeStrategy(
        bytes32 strategyId,
        uint256 amount,
        bytes calldata bridgeExecutionParams,
        Operation operation
    ) external payable nonReentrant onlyRegisteredAccount returns (bytes32 messageId) {
        // Validate operation is a known type (DEPOSIT or WITHDRAWAL)
        // This prevents passing invalid enum values
        require(operation == Operation.DEPOSIT || operation == Operation.WITHDRAWAL, Errors.InvalidOperation());

        // Load strategy configuration from storage into memory
        // Using memory copy reduces repeated storage reads in subsequent logic
        Strategy memory strategy = strategies[strategyId];

        // ETH VALUE CHECK: Local operations must not send ETH
        // If bridgeModule is address(0), this is a local strategy
        // ETH sent to local operations would be trapped in the Router forever
        if (strategy.bridgeModule == address(0) && msg.value != 0) {
            revert Errors.NativeValueNotAllowed();
        }

        // === OPERATION-SPECIFIC VALIDATION AND EXECUTION ===
        if (operation == Operation.DEPOSIT) {
            // DEPOSIT VALIDATION:
            // 1. Strategy must be enabled - prevents deposits to deprecated/risky strategies
            require(strategy.enabled, Errors.StrategyDisabled(strategyId));
            // 2. Amount must meet minimum - prevents dust deposits that waste gas
            require(amount >= strategy.minDeposit, Errors.BelowMinimumDeposit(amount, strategy.minDeposit));
            // Execute the deposit operation (local or cross-chain)
            messageId = _executeDeposit(strategy, strategyId, amount, bridgeExecutionParams);
        } else {
            // operation == Operation.WITHDRAWAL (guaranteed by require at line 279)
            // CRITICAL: Withdrawals are ALWAYS allowed, even from disabled strategies
            // Users must always be able to exit their positions
            // We do NOT check strategy.enabled here - that's intentional
            messageId = _executeWithdrawal(strategy, strategyId, amount, bridgeExecutionParams);
        }
    }

    /// @notice Recover stuck assets (ETH or ERC20 tokens) from the Router contract
    /// @dev Used to recover funds stuck due to failed bridge operations or misconfigurations.
    /// @param recoveryType Type of asset to recover (NATIVE or ERC20)
    /// @param token ERC20 token address (ignored for NATIVE recovery)
    /// @param recipient Address to receive the recovered assets
    function recover(Types.RecoveryType recoveryType, address token, address recipient) external onlyOwner {
        require(recipient != address(0), Errors.InvalidAddress());
        require(
            recoveryType == Types.RecoveryType.NATIVE || recoveryType == Types.RecoveryType.ERC20,
            Errors.InvalidRecoveryType()
        );

        if (recoveryType == Types.RecoveryType.NATIVE) {
            uint256 balance = address(this).balance;
            require(balance > 0, Errors.ZeroAmount());

            (bool success,) = recipient.call{value: balance}("");
            require(success, Errors.ETHTransferFailed());

            emit Events.ETHRecovered(recipient, balance);
        } else if (recoveryType == Types.RecoveryType.ERC20) {
            require(token != address(0), Errors.InvalidAddress());

            uint256 balance = IERC20(token).balanceOf(address(this));
            require(balance > 0, Errors.ZeroAmount());

            IERC20(token).safeTransfer(recipient, balance);

            emit Events.TokenRecovered(token, recipient, balance);
        }
    }

    // ========================== Public View Functions ==========================

    /// @notice Generate deterministic strategy ID
    /// @param strategyName Strategy name component
    /// @param chainId Target chain ID component
    /// @return id Strategy identifier
    function generateStrategyId(string calldata strategyName, uint32 chainId) public view returns (bytes32 id) {
        return keccak256(abi.encodePacked(_getProtocolName(), "_", strategyName, "_", chainId));
    }

    // ========================== Internal View Functions ==========================

    /// @notice Get the protocol name for this router
    /// @return name Protocol name string
    function _getProtocolName() internal view returns (string memory name) {
        return protocolName;
    }

    // ========================== Internal State-Changing Functions ==========================

    /// @notice Execute a deposit operation
    /// @dev Handles both local vault module deposits and cross-chain bridge deposits. Uses CEI pattern.
    ///
    /// ## Token Transfer Pattern
    /// We use `safeTransferFromWithBalanceCheck()` which:
    /// 1. Records balance before transfer
    /// 2. Executes transferFrom
    /// 3. Returns actual amount received (balance delta)
    /// This correctly handles fee-on-transfer tokens where `amount` != actual received.
    ///
    /// ## Local Deposit Flow
    /// 1. Pull tokens from vault to router
    /// 2. Approve vault module to spend tokens
    /// 3. Delegate to IVault.deposit() which handles vault interaction + slippage
    /// 4. Module returns (operationId, sharesReceived) signaling sync or async completion
    ///
    /// ## Cross-Chain Deposit Flow
    /// 1. Pull tokens from vault to router
    /// 2. Approve bridge module to spend tokens
    /// 3. Call bridge.bridge() which sends tokens cross-chain
    /// 4. Verify tokens actually left router (balance check)
    /// 5. Return GUID for async confirmation tracking
    ///
    /// @param strategy Strategy configuration
    /// @param strategyId Strategy identifier for events
    /// @param amount Amount to deposit
    /// @param bridgeExecutionParams Bridge/module-specific parameters
    /// @return messageId Message identifier (bytes32(0) for sync local, operationId for async, GUID for cross-chain)
    function _executeDeposit(
        Strategy memory strategy,
        bytes32 strategyId,
        uint256 amount,
        bytes calldata bridgeExecutionParams
    ) internal returns (bytes32 messageId) {
        bool isLocal = (strategy.bridgeModule == address(0));

        if (isLocal) {
            // ===== LOCAL DEPOSIT: Delegate to VaultModule =====
            // Transfer tokens from calling vault to this router
            // Uses balance-delta to handle fee-on-transfer tokens correctly
            uint256 actualAmount =
                IERC20(strategy.assetToken).safeTransferFromWithBalanceCheck(msg.sender, address(this), amount);

            // Approve the vault module to pull tokens
            IERC20(strategy.assetToken).forceApprove(strategy.vaultModule, actualAmount);

            // Delegate to the vault module. Module handles:
            // - Vault interaction (deposit, requestDeposit, etc.)
            // - Slippage enforcement
            // - Returns (bytes32(0), shares) for sync or (operationId, 0) for async
            try IVault(strategy.vaultModule)
                .deposit(
                    strategy.vaultAddress, strategy.assetToken, actualAmount, msg.sender, bridgeExecutionParams
                ) returns (
                bytes32 _operationId,
                uint256 /* sharesReceived */
            ) {
                messageId = _operationId;
            } catch (bytes memory lowLevelData) {
                emit Events.ErrorLogBytes(lowLevelData);
                revert Errors.ExternalCallFailed();
            }

            emit Events.Deposited(strategyId, msg.sender, strategy.assetToken, actualAmount);
        } else {
            // ===== CROSS-CHAIN DEPOSIT: Delegate to Bridge Module =====

            // Verify bridge is operational before proceeding
            require(IBridge(strategy.bridgeModule).isActive(), Errors.BridgeInactive());

            // Transfer tokens from vault to router (balance-delta for fee-on-transfer)
            uint256 actualAmount =
                IERC20(strategy.assetToken).safeTransferFromWithBalanceCheck(msg.sender, address(this), amount);

            // Snapshot balance BEFORE bridge call - used to verify tokens left
            uint256 balanceBefore = IERC20(strategy.assetToken).balanceOf(address(this));

            // Approve bridge module (not vault) to pull tokens
            IERC20(strategy.assetToken).forceApprove(strategy.bridgeModule, actualAmount);

            // Delegate bridging to the module. Bridge is responsible for:
            // - Sending tokens to destination chain
            // - Returning a unique GUID for tracking
            // msg.value covers cross-chain gas fees (LayerZero native fee)
            try IBridge(strategy.bridgeModule).bridge{value: msg.value}(
                strategy.assetToken, actualAmount, strategy.chainId, strategy.vaultAddress, bridgeExecutionParams
            ) returns (
                bytes32 _messageId
            ) {
                // Bridge MUST return a valid GUID for cross-chain ops
                require(_messageId != bytes32(0), Errors.InvalidMessageId());
                messageId = _messageId;
            } catch (bytes memory lowLevelData) {
                // Log the actual error for debugging, then revert with our error
                emit Events.ErrorLogBytes(lowLevelData);
                revert Errors.ExternalCallFailed();
            }

            // CRITICAL SAFETY CHECK: Verify tokens actually left the router.
            // A malicious or buggy bridge could return success without moving tokens.
            // This would leave tokens stranded in the router.
            BridgeHelpers.verifyBridgeTransfer(IERC20(strategy.assetToken), balanceBefore, actualAmount);

            emit Events.Deposited(strategyId, msg.sender, strategy.assetToken, actualAmount);
        }
    }

    /// @notice Execute a withdrawal operation
    /// @dev Handles both local vault module withdrawals and cross-chain bridge withdrawals. Uses CEI pattern.
    ///
    /// ## Local Withdrawal Flow
    /// 1. Pull SHARE tokens from vault to router
    /// 2. Approve vault module to spend shares
    /// 3. Delegate to IVault.withdraw() which handles vault interaction + slippage
    /// 4. Module returns (operationId, assetsReceived) signaling sync or async completion
    ///
    /// ## Cross-Chain Withdrawal Flow
    /// For cross-chain, we're bridging SHARE tokens to the destination chain where they'll
    /// be redeemed from the yield protocol, and ASSET tokens will be bridged back.
    /// 1. Pull share tokens from vault to router
    /// 2. Approve bridge module to spend shares
    /// 3. Bridge sends shares to destination
    /// 4. Return GUID for async confirmation
    ///
    /// @param strategy Strategy configuration
    /// @param strategyId Strategy identifier for events
    /// @param amount Amount of shares to withdraw
    /// @param bridgeExecutionParams Bridge/module-specific parameters
    /// @return messageId Message identifier (bytes32(0) for sync local, operationId for async, GUID for cross-chain)
    function _executeWithdrawal(
        Strategy memory strategy,
        bytes32 strategyId,
        uint256 amount,
        bytes calldata bridgeExecutionParams
    ) internal returns (bytes32 messageId) {
        bool isLocal = (strategy.bridgeModule == address(0));

        if (isLocal) {
            // ===== LOCAL WITHDRAWAL: Delegate to VaultModule =====
            // Transfer SHARE tokens from vault to router
            uint256 actualAmount =
                IERC20(strategy.shareToken).safeTransferFromWithBalanceCheck(msg.sender, address(this), amount);

            // Approve the vault module to spend share tokens
            IERC20(strategy.shareToken).forceApprove(strategy.vaultModule, actualAmount);

            // Delegate to the vault module. Module handles:
            // - Vault interaction (redeem, requestRedeem, etc.)
            // - Slippage enforcement
            // - Returns (bytes32(0), assets) for sync or (operationId, 0) for async
            try IVault(strategy.vaultModule)
                .withdraw(
                    strategy.vaultAddress,
                    strategy.shareToken,
                    actualAmount,
                    msg.sender,
                    address(this),
                    bridgeExecutionParams
                ) returns (
                bytes32 _operationId,
                uint256 /* assetsReceived */
            ) {
                messageId = _operationId;
            } catch (bytes memory lowLevelData) {
                emit Events.ErrorLogBytes(lowLevelData);
                revert Errors.ExternalCallFailed();
            }

            emit Events.Withdrawn(strategyId, msg.sender, strategy.shareToken, actualAmount);
        } else {
            // ===== CROSS-CHAIN WITHDRAWAL: Bridge Share Tokens =====
            require(IBridge(strategy.bridgeModule).isActive(), Errors.BridgeInactive());

            // Transfer SHARE tokens from vault to router
            uint256 actualAmount =
                IERC20(strategy.shareToken).safeTransferFromWithBalanceCheck(msg.sender, address(this), amount);

            // Snapshot for verification
            uint256 balanceBefore = IERC20(strategy.shareToken).balanceOf(address(this));

            // Approve bridge to pull share tokens
            IERC20(strategy.shareToken).forceApprove(strategy.bridgeModule, actualAmount);

            // Bridge shares to destination chain.
            // On destination: shares will be redeemed from the protocol,
            // and resulting assets will be bridged back to user's vault.
            try IBridge(strategy.bridgeModule).bridge{value: msg.value}(
                strategy.shareToken, actualAmount, strategy.chainId, strategy.vaultAddress, bridgeExecutionParams
            ) returns (
                bytes32 _messageId
            ) {
                require(_messageId != bytes32(0), Errors.InvalidMessageId());
                messageId = _messageId;
            } catch (bytes memory lowLevelData) {
                emit Events.ErrorLogBytes(lowLevelData);
                revert Errors.ExternalCallFailed();
            }

            // Verify shares actually left the router
            BridgeHelpers.verifyBridgeTransfer(IERC20(strategy.shareToken), balanceBefore, actualAmount);

            emit Events.Withdrawn(strategyId, msg.sender, strategy.shareToken, actualAmount);
        }
    }

    // ========================== Storage Gap ==========================

    // ========================== Private Functions ==========================

    /// @notice Verify caller is a registered account
    /// @dev Extracted from modifier to avoid bytecode duplication when modifier is applied to multiple functions.
    function _checkRegisteredAccount() private view {
        (bool success, bytes memory data) =
            ROUTER_MANAGER.staticcall(abi.encodeWithSignature("isRegisteredAccount(address)", msg.sender));
        require(success && abi.decode(data, (bool)), Errors.UnauthorizedCaller(msg.sender));
    }

    // ========================== Storage Gap ==========================

    /// @dev Reserved storage slots for future upgrades via beacon proxy.
    ///      ProtocolRouter instances share a single beacon implementation; upgrading the beacon
    ///      changes code for ALL proxies simultaneously while their storage persists.
    ///      When adding new state variables, reduce this gap by the number of new slots consumed.
    ///
    ///      Current layout (Ownable._owner = slot 0, protocolName = slot 1, strategies = slot 2):
    ///      3 used + 47 gap = 50 total reserved.
    uint256[47] private __gap;
}
