// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "openzeppelin-contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {Ownable2Step} from "openzeppelin-contracts/access/Ownable2Step.sol";
import {EIP712} from "openzeppelin-contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "openzeppelin-contracts/utils/cryptography/ECDSA.sol";

import {SafeERC20Permit2Lib} from "../libraries/SafeERC20Permit2Lib.sol";
import {IAmpleEarnFactory} from "./interfaces/IAmpleEarnFactory.sol";
import {IAmpleEarnScheduler, Schedule, ExecutionResult} from "./interfaces/IAmpleEarnScheduler.sol";

/*
                                   /$$
                                  | $$
  /$$$$$$  /$$$$$$/$$$$   /$$$$$$ | $$  /$$$$$$
 |____  $$| $$_  $$_  $$ /$$__  $$| $$ /$$__  $$
  /$$$$$$$| $$ \ $$ \ $$| $$  \ $$| $$| $$$$$$$$
 /$$__  $$| $$ | $$ | $$| $$  | $$| $$| $$_____/
|  $$$$$$$| $$ | $$ | $$| $$$$$$$/| $$|  $$$$$$$
 \_______/|__/ |__/ |__/| $$____/ |__/ \_______/
                        | $$
                        | $$
                        |__/
*/

/// @title AmpleEarnScheduler
/// @author Ample Money
/// @custom:contact security@ample.money
/// @notice Stateless contract that lets users register recurring deposit schedules for AmpleEarn
///         vaults. Execution is driven by a permissioned executor set managed by the owner; the
///         contract intentionally enforces no timing constraints so the backend retains full
///         flexibility to delay, retry, or reorder runs when something upstream breaks.
/// @dev Each user may own any number of independent schedules, each identified by a globally
///      unique id assigned from a monotonically increasing counter. The set of ids owned by
///      a given user is tracked in `_userScheduleIds` for enumeration.
///      Multiple schedules against the same vault are allowed (e.g. different amounts or frequencies).
///      `execute` is gated to the `executor` role. It pulls the user's assets via Permit2 (with ERC20
///      fallback) and deposits into the vault, crediting shares directly to the user. The contract
///      never holds user funds between calls.
contract AmpleEarnScheduler is IAmpleEarnScheduler, Ownable2Step, EIP712 {
    using SafeERC20 for IERC20;
    using SafeERC20Permit2Lib for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice EIP-712 type hash for `createSchedule` payloads.
    bytes32 public constant CREATE_SCHEDULE_TYPEHASH = keccak256(
        "CreateScheduleParams(address user,address vault,uint128 amount,uint32 frequency,uint128 fee,bytes32 nonce,uint256 deadline)"
    );

    /// @notice EIP-712 type hash for `modifySchedule` payloads.
    bytes32 public constant MODIFY_SCHEDULE_TYPEHASH = keccak256(
        "ModifyScheduleParams(uint256 id,uint128 newAmount,uint32 newFrequency,uint128 newFee,bytes32 nonce,uint256 deadline)"
    );

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         IMMUTABLES                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IAmpleEarnScheduler
    IAmpleEarnFactory public immutable factory;

    /// @inheritdoc IAmpleEarnScheduler
    address public immutable permit2Address;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           STORAGE                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IAmpleEarnScheduler
    uint256 public nextScheduleId;

    /// @notice mapping to store user schedules
    mapping(address user => uint256[]) internal _userScheduleIds;

    /// @inheritdoc IAmpleEarnScheduler
    mapping(uint256 id => Schedule) public schedules;

    /// @inheritdoc IAmpleEarnScheduler
    mapping(address account => bool) public isExecutor;

    /// @inheritdoc IAmpleEarnScheduler
    mapping(address account => bool) public isSigner;

    /// @inheritdoc IAmpleEarnScheduler
    mapping(bytes32 nonce => bool) public usedNonces;

    /// @inheritdoc IAmpleEarnScheduler
    address public feeRecipient;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTRUCTOR                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Constructs the AmpleEarnScheduler contract.
    /// @param _factory The address of the AmpleEarnFactory contract.
    /// @param _initialOwner The address that will receive ownership and the right to manage executors.
    constructor(address _factory, address _initialOwner) Ownable(_initialOwner) EIP712("AmpleEarnScheduler", "1") {
        if (_factory == address(0)) revert ZeroAddress();
        factory = IAmpleEarnFactory(_factory);
        permit2Address = factory.permit2Address();
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*.                         MODIFIERS                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:°•.°+.*•´.*:˚.°*/

    modifier onlyScheduleOwner(uint256 id) {
        Schedule memory s = schedules[id];
        if (s.vault == address(0)) revert ScheduleNotFound(id);
        if (s.user != msg.sender) revert CallerNotScheduleOwner(s.user, msg.sender);
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      EXTERNAL FUNCTIONS                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:°•.°+.*•´.*:˚.°.*/

    /// @inheritdoc IAmpleEarnScheduler
    function createSchedule(
        address vault,
        uint128 amount,
        uint32 frequency,
        uint128 fee,
        bytes32 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external returns (uint256 id) {
        if (amount == 0) revert ZeroAmount();
        if (frequency == 0) revert ZeroFrequency();
        if (!IAmpleEarnFactory(factory).isVault(vault)) revert InvalidVault(vault);

        bytes32 structHash =
            keccak256(abi.encode(CREATE_SCHEDULE_TYPEHASH, msg.sender, vault, amount, frequency, fee, nonce, deadline));
        _consumeSignature(structHash, nonce, deadline, signature);

        id = nextScheduleId++;
        schedules[id] = Schedule({user: msg.sender, vault: vault, frequency: frequency, amount: amount, fee: fee});
        _userScheduleIds[msg.sender].push(id);

        emit ScheduleCreated(msg.sender, id, vault, amount, frequency, fee);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function cancelSchedule(uint256 id) external onlyScheduleOwner(id) {
        delete schedules[id];

        uint256[] storage userIds = _userScheduleIds[msg.sender];
        uint256 length = userIds.length;

        for (uint256 i; i < length; i++) {
            if (userIds[i] == id) {
                userIds[i] = userIds[length - 1];
                userIds.pop();
                break;
            }
        }

        emit ScheduleCancelled(msg.sender, id);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function modifySchedule(
        uint256 id,
        uint128 newAmount,
        uint32 newFrequency,
        uint128 newFee,
        bytes32 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external onlyScheduleOwner(id) {
        if (newAmount == 0) revert ZeroAmount();
        if (newFrequency == 0) revert ZeroFrequency();

        bytes32 structHash =
            keccak256(abi.encode(MODIFY_SCHEDULE_TYPEHASH, id, newAmount, newFrequency, newFee, nonce, deadline));
        _consumeSignature(structHash, nonce, deadline, signature);

        Schedule storage s = schedules[id];
        s.amount = newAmount;
        s.frequency = newFrequency;
        s.fee = newFee;

        emit ScheduleModified(msg.sender, id, newAmount, newFrequency, newFee);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function execute(uint256[] calldata ids) external returns (ExecutionResult[] memory results, uint256 successCount) {
        if (!isExecutor[msg.sender] && msg.sender != owner()) revert NotExecutor(msg.sender);

        uint256 length = ids.length;
        results = new ExecutionResult[](length);

        for (uint256 i; i < length; i++) {
            uint256 id = ids[i];
            try this.executeInternal(id) returns (ExecutionResult memory r) {
                Schedule memory s = schedules[id];
                results[i] = r;
                unchecked {
                    ++successCount;
                }
                emit Executed(s.user, id, msg.sender, s.vault, s.amount, r.returnData);
            } catch (bytes memory error) {
                results[i] = ExecutionResult({success: false, returnData: 0, errorData: error});
                emit ExecutionFailed(id, msg.sender, error);
            }
        }
    }

    /// @notice Inner execution step for a single schedule id, callable only by this contract.
    /// @dev Declared `external` so that `execute` can invoke it through a low-level self-call
    ///      wrapped in `try/catch`. The self-call creates a nested call frame whose state
    ///      changes are reverted by the EVM if the inner call fails, leaving the schedule
    ///      eligible for retry. Direct invocation by any other account is rejected via the
    ///      `NotSelf` guard.
    /// @param id The schedule id to execute.
    /// @return result The execution result with `success = true` and `returnData` set to the
    ///         shares minted to the user. On revert, the caller's `try/catch` in `execute`
    ///         populates the failure result instead.
    function executeInternal(uint256 id) external returns (ExecutionResult memory result) {
        if (msg.sender != address(this)) revert NotSelf();

        Schedule memory s = schedules[id];
        if (s.vault == address(0)) revert ScheduleNotFound(id);
        if (!IAmpleEarnFactory(factory).isVault(s.vault)) revert InvalidVault(s.vault);

        IERC20 asset = IERC20(IERC4626(s.vault).asset());

        address recipient = feeRecipient;
        if (s.fee > 0 && recipient == address(0)) revert FeeRecipientNotSet();

        uint256 totalPull = uint256(s.amount) + uint256(s.fee);
        asset.safeTransferFromWithPermit2(s.user, address(this), totalPull, permit2Address);

        if (s.fee > 0) {
            asset.safeTransfer(recipient, s.fee);
            emit FeeCollected(s.user, id, recipient, s.fee);
        }

        if (asset.allowance(address(this), s.vault) < s.amount) {
            SafeERC20.forceApprove(asset, s.vault, type(uint256).max);
        }

        uint256 shares = IERC4626(s.vault).deposit(s.amount, s.user);

        result = ExecutionResult({success: true, returnData: shares, errorData: ""});
    }

    /// @inheritdoc IAmpleEarnScheduler
    function setExecutor(address executor, bool allowed) external onlyOwner {
        if (executor == address(0)) revert ZeroAddress();
        isExecutor[executor] = allowed;
        emit ExecutorSet(executor, allowed);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function setSigner(address signer, bool allowed) external onlyOwner {
        if (signer == address(0)) revert ZeroAddress();
        isSigner[signer] = allowed;
        emit SignerSet(signer, allowed);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function setFeeRecipient(address recipient) external onlyOwner {
        feeRecipient = recipient;
        emit FeeRecipientSet(recipient);
    }

    /// @inheritdoc IAmpleEarnScheduler
    function getUserScheduleIds(address user) external view returns (uint256[] memory) {
        return _userScheduleIds[user];
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INTERNAL FUNCTIONS                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:°•.°+.*•´.*:˚.°.*/

    /// @notice Verifies an EIP-712 signature against the configured backend signer set, enforces the
    ///         deadline, and burns the nonce.
    /// @param structHash The EIP-712 struct hash of the payload being authorized.
    /// @param nonce Backend-issued unique nonce; must not have been used previously.
    /// @param deadline Unix timestamp after which the signature is rejected.
    /// @param signature ECDSA signature (r,s,v packed) from a current signer.
    function _consumeSignature(bytes32 structHash, bytes32 nonce, uint256 deadline, bytes calldata signature) internal {
        if (block.timestamp > deadline) revert SignatureExpired(deadline);
        if (usedNonces[nonce]) revert NonceAlreadyUsed(nonce);

        bytes32 digest = _hashTypedDataV4(structHash);
        address recovered = ECDSA.recover(digest, signature);
        if (!isSigner[recovered]) revert InvalidSigner(recovered);

        usedNonces[nonce] = true;
        emit NonceUsed(nonce);
    }
}
