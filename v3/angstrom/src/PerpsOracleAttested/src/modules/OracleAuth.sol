// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { Ownable } from "solady/auth/Ownable.sol";
import { IAuth } from "../interfaces/IAuth.sol";
import { Errors } from "../Errors.sol";
import { Events } from "../Events.sol";
import { Timelocked } from "./Timelocked.sol";

abstract contract OracleAuth is Timelocked {
    address public immutable VAULT;

    /// @notice Mapping: address => whether the account has the OracleUpdater role or not.
    mapping(address => bool) public isOracleUpdater;

    constructor(
        address _vault
    ) {
        VAULT = _vault;
    }

    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    modifier onlyTimelockCancelerOrOwner() {
        _checkTimelockCancelerOrOwner();
        _;
    }

    modifier onlyOracleUpdater() {
        _checkOracleUpdater();
        _;
    }

    function owner() public view returns (address) {
        return Ownable(VAULT).owner();
    }

    /// @notice Queues an `action` to be executed after the timelock delay.
    /// @dev Callable only by the contract owner.
    function queueTimelockedAction(
        bytes calldata action
    ) external onlyOwner {
        _queueTimelockedAction(action);
    }

    /// @notice Cancels an `action` that was previously queued via `_queueTimelockedAction()`.
    /// @dev An `action` can be canceled whether or not its timelock delay has elapsed.
    /// @dev Callable only by the contract owner.
    function cancelTimelockedAction(
        bytes calldata action
    ) external onlyTimelockCancelerOrOwner {
        _cancelTimelockedAction(action);
    }

    /// @notice Decreases the timelock delay for the function corresponding to `functionSelector`, setting it to
    /// `newDelay`.
    /// @dev Callable only by the contract owner.
    /// @dev This will revert if the `newDelay` is not less than the existing delay.
    function decreaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external onlyOwner timelocked {
        _decreaseTimelockDelay(functionSelector, newDelay);
    }

    /// @notice Increases the timelock delay for the function corresponding to `functionSelector`, setting it to
    /// `newDelay`.
    /// @dev Callable only by the contract owner.
    /// @dev This will revert if the `newDelay` is not greater than the existing delay.
    function increaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external onlyOwner timelocked {
        _increaseTimelockDelay(functionSelector, newDelay);
    }

    function _checkOwner() internal {
        require(msg.sender == owner(), Errors.OnlyOwner());
    }

    function _checkTimelockCancelerOrOwner() internal {
        require(
            IAuth(VAULT).isTimelockCanceler(msg.sender) || msg.sender == owner(), Errors.OnlyTimelockCancelerOrOwner()
        );
    }

    function _checkOracleUpdater() internal {
        require(isOracleUpdater[msg.sender], Errors.OnlyOracleUpdater());
    }

    function _setOracleUpdater(
        address account,
        bool newStatus
    ) internal {
        if (newStatus != isOracleUpdater[account]) {
            emit Events.OracleUpdaterStatusModified(account, newStatus);
            isOracleUpdater[account] = newStatus;
        }
    }
}
