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

/// @title IRouter
/// @author Bundie Team
/// @notice Interface for Bundie protocol routers that manage yield strategy operations
/// @dev Bridge-agnostic router interface enabling unified access to both local and cross-chain
///      yield strategies.
///
///      ## Architecture
///      - Each protocol has a dedicated Router implementation
///      - Routers register strategies via `setStrategy()` and execute operations via `executeStrategy()`
///      - Cross-chain operations are delegated to IBridge implementations
///      - Local operations delegate to a vault module (IVault) on the same chain
///
///      ## Strategy Configuration
///      Strategies define the complete configuration for a yield opportunity:
///      - `bridgeModule == address(0)` indicates a local strategy (same chain)
///      - `bridgeModule != address(0)` indicates a cross-chain strategy
///
///      ## Security Considerations
///      - Only registered vaults can call `executeStrategy()`
///      - Only the router owner (RouterManager) can register strategies
///      - Slippage protection is handled via `bridgeExecutionParams`
interface IRouter {
    /// @notice Yield strategy configuration for a protocol
    /// @dev Defines all parameters needed to execute deposits/withdrawals to a yield source.
    ///      The `bridgeModule` field determines if this is a local or cross-chain strategy.
    ///
    ///      For local strategies (bridgeModule == address(0)):
    ///      - `vaultModule` specifies the vault standard module (ERC4626, ERC7540, etc.)
    ///      - `assetToken` is the ERC20 deposit token
    ///      - `shareToken` is the vault's receipt token
    ///      - `vaultAddress` is the vault on the same chain
    ///
    ///      For cross-chain strategies (bridgeModule != address(0)):
    ///      - `vaultModule` is ignored (address(0) is acceptable)
    ///      - `assetToken` is the bridgeable token for deposits
    ///      - `shareToken` is the receipt token bridged back
    ///      - `vaultAddress` is the OVaultComposer on the destination chain
    ///
    /// @param name Human-readable strategy name
    /// @param vaultAddress Vault/pool address on target chain
    /// @param assetToken Token on this chain for deposits (OFT if cross-chain, ERC20 if local)
    /// @param shareToken Receipt token on this chain (ShareOFT if cross-chain, vault shares if local)
    /// @param bridgeModule Bridge module address (address(0) = local chain, no bridging required)
    /// @param vaultModule Vault standard module address (required for local strategies, address(0) for cross-chain)
    /// @param chainId Target chain ID (bridge endpoint ID for cross-chain, local chain ID otherwise)
    /// @param enabled Whether strategy is currently active and accepting deposits
    /// @param minDeposit Minimum deposit amount in asset token decimals
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
    /// @dev Used to distinguish between deposit and withdrawal flows
    enum Operation {
        DEPOSIT,
        WITHDRAWAL
    }

    /// @notice Execute a strategy operation (deposit or withdrawal)
    /// @dev Bridge-agnostic entry point for all yield operations. The router determines
    ///      whether to use local vault module operations or delegate to a bridge module.
    ///
    ///      For local strategies:
    ///      - Deposits delegate to `IVault(vaultModule).deposit(...)`
    ///      - Withdrawals delegate to `IVault(vaultModule).withdraw(...)`
    ///      - Returns `bytes32(0)` as messageId
    ///
    ///      For cross-chain strategies:
    ///      - Validates bridge module is active
    ///      - Delegates to `IBridge.bridge()`
    ///      - Returns message GUID for tracking
    ///
    ///      Caller must:
    ///      1. Approve router to spend asset/share tokens
    ///      2. Send sufficient native token (msg.value) for bridge fees (cross-chain only)
    ///
    /// @param strategyId Strategy identifier (keccak256 of protocol + name + chainId)
    /// @param amount Amount to deposit/withdraw in token decimals
    /// @param bridgeExecutionParams Bridge-specific parameters (ABI-encoded, empty for local)
    /// @param operation DEPOSIT or WITHDRAWAL operation type
    /// @return messageId Unique message identifier (bytes32(0) for local operations)
    function executeStrategy(
        bytes32 strategyId,
        uint256 amount,
        bytes calldata bridgeExecutionParams,
        Operation operation
    ) external payable returns (bytes32 messageId);

    /// @notice Get strategy configuration by ID
    /// @dev Returns the strategy struct from storage
    /// @param id Strategy identifier
    /// @return strategy Strategy configuration struct
    function getStrategy(bytes32 id) external view returns (Strategy memory strategy);

    /// @notice Get strategy configuration by ID (raw mapping access)
    /// @dev Returns the raw storage mapping value.
    /// @param id Strategy identifier
    /// @return Strategy configuration struct
    function strategies(bytes32 id) external view returns (Strategy memory);

    /// @notice Register or update a strategy configuration
    /// @dev Only callable by router owner (RouterManager). Generates strategy ID from
    ///      protocol name, strategy name, and chain ID for deterministic addressing.
    ///
    ///      Validation requirements:
    ///      - `vaultAddress` must not be zero
    ///      - `assetToken` must not be zero
    ///      - `shareToken` must not be zero
    ///      - `name` must not be empty
    ///      - `chainId` must be greater than zero
    ///      - `minDeposit` must be greater than zero
    ///
    /// @param strategy Strategy configuration to register
    /// @return id Generated strategy identifier
    function setStrategy(Strategy calldata strategy) external returns (bytes32 id);

    /// @notice Enable or disable a strategy
    /// @dev Only callable by router owner (RouterManager)
    /// @param id Strategy identifier to modify
    /// @param enabled New enabled state
    function enableStrategy(bytes32 id, bool enabled) external;

    /// @notice Generate strategy ID from name only (legacy helper)
    /// @dev Simple hash of name string. Prefer generateStrategyId for full ID.
    /// @param name Strategy name to hash
    /// @return id Keccak256 hash of the name
    function idOf(string memory name) external pure returns (bytes32 id);

    /// @notice Generate deterministic strategy ID
    /// @dev Combines protocol name, strategy name, and chain ID for uniqueness
    /// @param strategyName Strategy name component
    /// @param chainId Target chain ID component
    /// @return id Strategy identifier
    function generateStrategyId(string calldata strategyName, uint32 chainId) external view returns (bytes32 id);

    /// @notice RouterManager contract address (also the owner)
    /// @dev Used for vault registration verification
    /// @return routerManager Address of the RouterManager contract
    function ROUTER_MANAGER() external view returns (address routerManager);

    /// @notice Human-readable protocol name
    /// @dev Set during initialization, used for strategy ID generation
    /// @return name Protocol name string
    function protocolName() external view returns (string memory name);
}
