// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { ITopazCLStrategyFactory } from "./interfaces/ITopazCLStrategyFactory.sol";

/// @title TopazCLStrategyFactory
/// @notice Shared access-control + config registry for every Topaz CL strategy.
///         One deployment owns the keeper, the rebalancer whitelist, the global
///         pause circuit-breaker, the native token (WBNB), and the protocol fee
///         recipient — so a keeper rotation or a pause flips every vault at once.
/// @dev Mirrors Beefy's `IStrategyFactory` shape (`keeper`/`rebalancers`/
///      `globalPause`/`native`) that the ported strategy reads.
contract TopazCLStrategyFactory is Ownable, ITopazCLStrategyFactory {
    /// @notice Wrapped native (WBNB)
    address public immutable native;

    /// @notice Keeper authorized for manager-gated actions (panic/unpause)
    address public keeper;

    /// @notice Protocol performance-fee recipient
    address public feeRecipient;

    /// @notice Emergency circuit breaker across all strategies
    bool public globalPause;

    /// @notice Addresses allowed to call `moveTicks()` / `harvest()`
    mapping(address => bool) public rebalancers;

    event KeeperUpdated(address indexed keeper);
    event FeeRecipientUpdated(address indexed feeRecipient);
    event RebalancerUpdated(address indexed account, bool allowed);
    event GlobalPauseUpdated(bool paused);

    error ZeroAddress();
    error NotManager();

    constructor(address _native, address _keeper, address _feeRecipient, address _owner) Ownable(_owner) {
        if (_native == address(0) || _keeper == address(0) || _feeRecipient == address(0)) revert ZeroAddress();
        native = _native;
        keeper = _keeper;
        feeRecipient = _feeRecipient;
        rebalancers[_keeper] = true;
        emit KeeperUpdated(_keeper);
        emit FeeRecipientUpdated(_feeRecipient);
        emit RebalancerUpdated(_keeper, true);
    }

    /// @dev Owner or keeper.
    modifier onlyManager() {
        if (msg.sender != owner() && msg.sender != keeper) revert NotManager();
        _;
    }

    function setKeeper(address _keeper) external onlyOwner {
        if (_keeper == address(0)) revert ZeroAddress();
        keeper = _keeper;
        emit KeeperUpdated(_keeper);
    }

    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        if (_feeRecipient == address(0)) revert ZeroAddress();
        feeRecipient = _feeRecipient;
        emit FeeRecipientUpdated(_feeRecipient);
    }

    function setRebalancer(address _account, bool _allowed) external onlyOwner {
        rebalancers[_account] = _allowed;
        emit RebalancerUpdated(_account, _allowed);
    }

    /// @notice Trip or clear the global circuit breaker (owner or keeper).
    function setGlobalPause(bool _paused) external onlyManager {
        globalPause = _paused;
        emit GlobalPauseUpdated(_paused);
    }
}
