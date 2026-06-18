// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "./interfaces/IDepository.sol";
import "./interfaces/IRouter.sol";

import "hardhat/console.sol";

using SafeERC20 for IERC20;

/// @title Depository
/// @notice A condition-based token deposit and unlock system
/// @dev Users lock tokens with encoded unlock conditions. Solvers can unlock deposits by providing
/// solutions that satisfy the conditions. The contract is upgradeable via UUPS proxy pattern.
///
/// Lifecycle:
/// 1. User calls lock() with tokens and an unlock condition
/// 2. Solver monitors DepositLocked events
/// 3. Solver calls unlock() with a solution that satisfies the condition
/// 4. Unlocker validates the solution and executes the unlock operation via Router
contract Depository is IDepository, UUPSUpgradeable, Ownable2StepUpgradeable {
    /// @notice Tracks whether a deposit exists and is still locked
    /// @dev True if locked and available, deleted (false) after unlock
    mapping(DepositID => bool) public depositStatus;

    /// @notice The router contract used for token operations during unlock
    IRouter public router;

    /// @notice Initialize the contract (called once via proxy)
    /// @dev Sets up ownership and UUPS upgradeability
    function initialize() public virtual initializer {
        __Ownable_init(_msgSender());
        __UUPSUpgradeable_init();
    }

    /// @notice Set the router contract for token operations
    /// @dev Only callable by owner. Router holds tokens temporarily during unlock.
    /// @param _router The new router contract address
    function setRouter(IRouter _router) public onlyOwner {
        emit SetRouter(router, _router);
        router = _router;
    }

    /// @dev Required by UUPS pattern - restricts upgrades to owner
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    /// @dev Compute deposit ID from its components
    function _depositID(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState memory state
    ) internal pure returns (DepositID) {
        return DepositID.wrap(keccak256(abi.encode(deposit, condition, state)));
    }

    /// @inheritdoc IDepository
    function depositID(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState memory blockchainState
    ) public pure returns (DepositID) {
        return _depositID(deposit, condition, blockchainState);
    }

    /// @inheritdoc IDepository
    /// @dev Transfers tokens from caller to this contract, records deposit state,
    /// and emits DepositLocked event with current blockchain state.
    function lock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition
    ) public {
        // Transfer-in tokens.
        DepositoryTypes.BlockchainState memory state = _blockchainState();
        DepositID id = _depositID(deposit, condition, state);
        deposit.token.safeTransferFrom(
            msg.sender,
            address(this),
            deposit.amount
        );
        require(!depositStatus[id], DepositExists(id));

        // Update contract state.
        depositStatus[id] = true;
        emit DepositLocked(id, deposit, condition, state);
    }

    /// @inheritdoc IDepository
    /// @dev Validates deposit exists, transfers tokens to router, then delegates
    /// to the unlocker contract for solution validation and execution.
    function unlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata solution
    ) public {
        _startUnlock(deposit, condition, blockchainState);
        deposit.token.safeTransfer(address(router), deposit.amount);
        condition.unlocker.unlock(
            router,
            deposit,
            blockchainState,
            condition.condition,
            solution
        );
    }

    /// @dev Validates deposit state and marks it as unlocked before external calls
    /// @param deposit The deposit being unlocked
    /// @param condition The unlock condition
    /// @param blockchainState The blockchain state when deposit was locked
    function _startUnlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState
    ) internal {
        DepositID dID = _depositID(deposit, condition, blockchainState);
        // Validate deposit state and hash
        require(depositStatus[dID], DepositUnavailable(dID));
        // Change state early (checks-effects-interactions pattern)
        delete depositStatus[dID];
        emit DepositUnlocked(dID);
        console.log("Depository.unlock(amount, router, lockTimestamp)", deposit.amount, address(router), blockchainState.timestamp);
    }

    /// @dev Capture current blockchain state for deposit ID calculation
    /// @return lockState The current block number and timestamp
    function _blockchainState() internal view returns (DepositoryTypes.BlockchainState memory lockState) {
        lockState.blockNumber = block.number;
        lockState.timestamp = block.timestamp;
    }
}
