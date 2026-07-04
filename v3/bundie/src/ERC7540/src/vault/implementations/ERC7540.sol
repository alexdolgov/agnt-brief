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

import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {Vault} from "../base/Vault.sol";
import {IVault} from "../../interface/IVault.sol";
import {IERC7540Vault} from "../../interface/IERC7540Vault.sol";
import {Errors} from "../../lib/Errors.sol";
import {Events} from "../../lib/Events.sol";

/// @title ERC7540
/// @author Bundie Team
/// @notice Vault module for ERC-7540 asynchronous vaults (async deposit + async withdrawal)
/// @dev Both deposit() and withdraw() initiate asynchronous requests, returning (operationId, 0).
///      The claim step is handled by the Account contract (as controller):
///      1. Module calls requestDeposit() / requestRedeem() on the ERC-7540 vault
///      2. Returns the requestId as operationId (non-zero) with 0 shares/assets
///      3. Account stores this as a pending operation
///      4. Validator monitors the vault for request fulfillment
///      5. Validator calls settleERC7540Deposit() on the Account, which claims shares
///         by calling deposit(assets, receiver, controller) on the vault
///
///      ## Slippage
///      For async operations, slippage is encoded in params and extracted via extractMinAmountOut().
///      The actual slippage enforcement happens at confirmation time (in Deposit.sol / Withdraw.sol).
///
///      ## Token Flow
///      1. Router approves this module to spend tokens
///      2. This module pulls tokens from Router via transferFrom
///      3. This module approves the ERC7540 vault to spend tokens
///      4. This module calls vault.requestDeposit() / vault.requestRedeem()
///      5. Shares/assets arrive later and are confirmed by the validator
contract ERC7540 is Vault {
    using SafeERC20 for IERC20;

    // ========================== State Variables ==========================

    /// @notice Mapping from hashed operationId to original ERC-7540 requestId
    /// @dev operationId = keccak256(vault, nonce, requestId) is not reversible.
    ///      The Account's settle/cancel functions need the original requestId to call the vault.
    mapping(bytes32 => uint256) public override originalRequestId;

    /// @notice Reverse mapping from (account, requestId) to deposit operationIds that share it
    /// @dev Scoped per account (controller) to prevent cross-account pollution.
    ///      Populated at deposit request time. Used by cancel functions to efficiently find
    ///      all pending deposit operations affected by a vault cancel on a shared requestId.
    mapping(address => mapping(uint256 => bytes32[])) private _operationIdsByDepositRequestId;

    /// @notice Reverse mapping from (account, requestId) to withdrawal operationIds that share it
    /// @dev Scoped per account (controller) to prevent cross-account pollution.
    ///      Populated at redeem request time. Used by cancel functions to efficiently find
    ///      all pending withdrawal operations affected by a vault cancel on a shared requestId.
    mapping(address => mapping(uint256 => bytes32[])) private _operationIdsByWithdrawalRequestId;

    /// @notice Monotonic nonce to ensure operationId uniqueness even when a vault
    ///         returns the same requestId for multiple requests (e.g., Centrifuge returns 0).
    uint256 private _operationNonce;

    // ========================== Initialization ==========================

    /// @notice Initialize the ERC7540 vault module
    /// @dev Called by VaultManager during beacon proxy deployment.
    /// @param name_ Module name (e.g., "ERC7540")
    /// @param owner_ Owner address for admin functions
    function initialize(string calldata name_, address owner_) external initializer {
        __Vault_init(name_, owner_);
    }

    // ========================== IVault Implementation ==========================

    /// @inheritdoc IVault
    /// @dev Asynchronous ERC-7540 deposit request. Pulls asset tokens from caller (Router),
    ///      calls requestDeposit() on the vault. Returns (operationId, 0) indicating async operation.
    ///      The requestId is converted to bytes32 for use as the operationId/msgGuid.
    function deposit(
        address vault,
        address asset,
        uint256 amount,
        address receiver,
        bytes calldata /* params */
    )
        external
        override
        nonReentrant
        returns (bytes32 operationId, uint256 sharesReceived)
    {
        // Module must be active
        require(!paused(), Errors.VaultModuleInactive());

        // Pull tokens from the Router
        // Use balance delta to handle fee-on-transfer tokens correctly
        uint256 balanceBefore = IERC20(asset).balanceOf(address(this));
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        uint256 actualAmount = IERC20(asset).balanceOf(address(this)) - balanceBefore;
        require(actualAmount > 0, Errors.NoFundsReceived());

        // Approve the ERC7540 vault to spend actual received tokens
        IERC20(asset).forceApprove(vault, actualAmount);

        // Request asynchronous deposit
        // controller = receiver (Account), owner = address(this) (module holds the tokens)
        try IERC7540Vault(vault).requestDeposit(actualAmount, receiver, address(this)) returns (uint256 requestId) {
            // Namespace ERC-7540 operationIds to prevent collision with LayerZero GUIDs
            // and to ensure uniqueness even when a vault returns the same requestId for
            // multiple requests (e.g., Centrifuge always returns 0 per ERC-7540 spec).
            // A monotonic nonce guarantees each operationId is unique.
            uint256 nonce = ++_operationNonce;
            operationId = keccak256(abi.encodePacked(vault, nonce, requestId));
            originalRequestId[operationId] = requestId;
            _operationIdsByDepositRequestId[receiver][requestId].push(operationId);
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Async operation: no shares received yet
        sharesReceived = 0;
    }

    /// @inheritdoc IVault
    /// @dev Asynchronous ERC-7540 redemption request. Pulls share tokens from caller (Router),
    ///      calls requestRedeem() on the vault. Returns (operationId, 0) indicating async operation.
    function withdraw(
        address vault,
        address share,
        uint256 amount,
        address receiver,
        address, /* owner */
        bytes calldata /* params */
    )
        external
        override
        nonReentrant
        returns (bytes32 operationId, uint256 assetsReceived)
    {
        // Module must be active
        require(!paused(), Errors.VaultModuleInactive());

        // Pull share tokens from the Router
        // Use balance delta to handle fee-on-transfer tokens correctly
        uint256 shareBalanceBefore = IERC20(share).balanceOf(address(this));
        IERC20(share).safeTransferFrom(msg.sender, address(this), amount);
        uint256 actualShares = IERC20(share).balanceOf(address(this)) - shareBalanceBefore;
        require(actualShares > 0, Errors.NoFundsReceived());

        // Approve the ERC7540 vault to spend actual received share tokens
        IERC20(share).forceApprove(vault, actualShares);

        // Request asynchronous redemption
        // controller = receiver (Account), owner = address(this) (module holds the shares)
        try IERC7540Vault(vault).requestRedeem(actualShares, receiver, address(this)) returns (uint256 requestId) {
            // Namespace ERC-7540 operationIds to prevent collision with LayerZero GUIDs
            // and ensure uniqueness even when requestId repeats.
            uint256 nonce = ++_operationNonce;
            operationId = keccak256(abi.encodePacked(vault, nonce, requestId));
            originalRequestId[operationId] = requestId;
            _operationIdsByWithdrawalRequestId[receiver][requestId].push(operationId);
        } catch (bytes memory lowLevelData) {
            emit Events.ErrorLogBytes(lowLevelData);
            revert Errors.ExternalCallFailed();
        }

        // Async operation: no assets received yet
        assetsReceived = 0;
    }

    // ========================== View Functions ==========================

    /// @inheritdoc IVault
    function getDepositOperationIds(address account, uint256 requestId)
        external
        view
        override
        returns (bytes32[] memory)
    {
        return _operationIdsByDepositRequestId[account][requestId];
    }

    /// @inheritdoc IVault
    function getWithdrawalOperationIds(address account, uint256 requestId)
        external
        view
        override
        returns (bytes32[] memory)
    {
        return _operationIdsByWithdrawalRequestId[account][requestId];
    }

    // ========================== Cleanup Functions ==========================

    /// @inheritdoc IVault
    function removeDepositOperationId(uint256 requestId, bytes32 operationId)
        external
        override
    {
        bytes32[] storage ids = _operationIdsByDepositRequestId[msg.sender][requestId];
        uint256 len = ids.length;
        for (uint256 i = 0; i < len; i++) {
            if (ids[i] == operationId) {
                ids[i] = ids[len - 1];
                ids.pop();
                break;
            }
        }
    }

    /// @inheritdoc IVault
    function removeWithdrawalOperationId(uint256 requestId, bytes32 operationId)
        external
        override
    {
        bytes32[] storage ids = _operationIdsByWithdrawalRequestId[msg.sender][requestId];
        uint256 len = ids.length;
        for (uint256 i = 0; i < len; i++) {
            if (ids[i] == operationId) {
                ids[i] = ids[len - 1];
                ids.pop();
                break;
            }
        }
    }

    /// @inheritdoc IVault
    function clearDepositOperationIds(uint256 requestId) external override {
        delete _operationIdsByDepositRequestId[msg.sender][requestId];
    }

    /// @inheritdoc IVault
    function clearWithdrawalOperationIds(uint256 requestId) external override {
        delete _operationIdsByWithdrawalRequestId[msg.sender][requestId];
    }
}
