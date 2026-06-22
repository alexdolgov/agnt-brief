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
import {Pausable} from "lib/openzeppelin-contracts/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";

import {IVault} from "../../interface/IVault.sol";
import {Errors} from "../../lib/Errors.sol";

/// @title Vault
/// @author Bundie Team
/// @notice Abstract base contract for all vault module implementations in the Bundie protocol
/// @dev Provides common functionality shared across vault standard modules.
///      Concrete implementations inherit this and implement the deposit/withdraw functions.
///      Uses OZ Pausable for lifecycle controls with standard Paused/Unpaused events.
///      Upgradeability is provided externally via beacon proxies (VaultManager).
abstract contract Vault is Initializable, Ownable, Pausable, ReentrancyGuard, IVault {
    // ========================== State Variables ==========================

    /// @notice Human-readable module name (set during initialization)
    /// @dev Immutable after initialization. Used for identification and logging.
    ///      Examples: "ERC4626", "ERC7540"
    string internal _moduleName;

    // ========================== Constructor ==========================

    /// @notice Initialize implementation contract
    /// @dev Disables initializers on the implementation to prevent direct initialization.
    constructor() Ownable(msg.sender) {
        _disableInitializers();
    }

    // ========================== Initialization ==========================

    /// @notice Internal initializer for vault module base functionality
    /// @dev Called by concrete implementations in their initialize() function.
    ///      Starts unpaused (active). Must be called within onlyInitializing context.
    /// @param name_ Human-readable module name (e.g., "ERC4626")
    /// @param owner_ Owner address for admin functions (pause, unpause)
    function __Vault_init(string calldata name_, address owner_) internal onlyInitializing {
        require(bytes(name_).length > 0, Errors.EmptyProtocolName());
        require(owner_ != address(0), Errors.InvalidAddress());

        _moduleName = name_;
        // OZ Pausable starts unpaused by default — no explicit activation needed
        _transferOwnership(owner_);
    }

    // ========================== External View Functions (IVault) ==========================

    /// @inheritdoc IVault
    function moduleName() external view override returns (string memory name) {
        return _moduleName;
    }

    /// @inheritdoc IVault
    /// @dev Returns !paused() for interface compatibility
    function isActive() external view override returns (bool active) {
        return !paused();
    }

    /// @inheritdoc IVault
    /// @dev Default returns 0. Overridden by ERC7540 which stores the mapping.
    function originalRequestId(bytes32) external view virtual override returns (uint256) {
        return 0;
    }

    /// @inheritdoc IVault
    /// @dev Default returns empty array. Overridden by ERC7540 which stores the deposit reverse mapping.
    function getDepositOperationIds(address, uint256) external view virtual override returns (bytes32[] memory) {
        return new bytes32[](0);
    }

    /// @inheritdoc IVault
    /// @dev Default returns empty array. Overridden by ERC7540 which stores the withdrawal reverse mapping.
    function getWithdrawalOperationIds(address, uint256) external view virtual override returns (bytes32[] memory) {
        return new bytes32[](0);
    }

    /// @inheritdoc IVault
    /// @dev Default no-op. Overridden by ERC7540 which manages the deposit reverse mapping.
    function removeDepositOperationId(uint256, bytes32) external virtual override {}

    /// @inheritdoc IVault
    /// @dev Default no-op. Overridden by ERC7540 which manages the withdrawal reverse mapping.
    function removeWithdrawalOperationId(uint256, bytes32) external virtual override {}

    /// @inheritdoc IVault
    /// @dev Default no-op. Overridden by ERC7540 which manages the deposit reverse mapping.
    function clearDepositOperationIds(uint256) external virtual override {}

    /// @inheritdoc IVault
    /// @dev Default no-op. Overridden by ERC7540 which manages the withdrawal reverse mapping.
    function clearWithdrawalOperationIds(uint256) external virtual override {}

    /// @inheritdoc IVault
    function extractMinAmountOut(bytes calldata params) external pure virtual override returns (uint256 minAmountOut) {
        if (params.length >= 32) {
            minAmountOut = abi.decode(params, (uint256));
        }
    }

    /// @inheritdoc IVault
    /// @dev Default implementation reverts. Override in sync modules that support previews.
    function previewDeposit(
        address,
        /* vault */
        uint256 /* assets */
    )
        external
        virtual
        override
        returns (uint256)
    {
        revert Errors.ExternalCallFailed();
    }

    /// @inheritdoc IVault
    /// @dev Default implementation reverts. Override in sync modules that support previews.
    function previewRedeem(
        address,
        /* vault */
        uint256 /* shares */
    )
        external
        virtual
        override
        returns (uint256)
    {
        revert Errors.ExternalCallFailed();
    }

    // ========================== Admin Functions ==========================

    /// @notice Pause the vault module, preventing new operations
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause the vault module, re-enabling operations
    function unpause() external onlyOwner {
        _unpause();
    }
}
