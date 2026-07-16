// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {Enum} from "safe-smart-account/contracts/libraries/Enum.sol";
import {ISafe} from "safe-smart-account/contracts/interfaces/ISafe.sol";
import {IAccountableStrategy} from "../interfaces/IAccountableStrategy.sol";

/// @title HypernativePauseModule
/// @notice Safe Module allowing Hypernative to pause/unpause LISTED protocol strategies
/// @dev Strategies are MANUALLY added by SafeWallet owners.
///      Hypernative keeperWallet can ONLY call pause/unpause listed strategies.
/// @custom:security-contact security@accountable.capital
contract HypernativePauseModule {
    struct StrategyInfo {
        bool exists;
        uint256 index;
    }

    /// @notice Hypernative keeper (Response Wallet)
    address public immutable keeper;

    /// @notice Safe this module is attached to
    ISafe public immutable safe;

    /// @notice Array of all Strategies to pause/unpause
    address[] public strategies;

    /// @notice Mapping for tracking strategy info "O(1) add/remove"
    mapping(address => StrategyInfo) public strategyInfo;

    // ============ Events ============
    /// @notice Emitted when emergency pause is triggered
    event EmergencyPauseTriggered(address indexed triggeredBy, uint256 strategiesPaused, uint256 strategiesFailed);

    /// @notice Emitted when emergency unpause is triggered
    event EmergencyUnpauseTriggered(address indexed triggeredBy, uint256 strategiesUnpaused, uint256 strategiesFailed);

    /// @notice Emitted when a single strategy operation fails
    event StrategyOperationFailed(address indexed strategy, string operation);

    /// @notice Emitted when a strategy is added
    event StrategyAdded(address indexed strategy);

    /// @notice Emitted when a strategy is removed
    event StrategyRemoved(address indexed strategy);

    // ============ Errors ============
    error Unauthorized();
    error ZeroAddress();
    error NoStrategiesFound();
    error StrategyAlreadyExists();
    error StrategyNotFound();
    error InvalidStrategy(address strategy);

    /// @notice Only Hypernative Security Bot
    modifier onlyKeeper() {
        if (msg.sender != keeper) revert Unauthorized();
        _;
    }

    /// @notice Only SafeWallet
    modifier onlySafe() {
        if (msg.sender != address(safe)) revert Unauthorized();
        _;
    }

    /// @param _safe SafeWallet address
    /// @param _keeper Hypernative Response Wallet address
    constructor(address payable _safe, address _keeper) {
        if (_safe == address(0) || _keeper == address(0)) revert ZeroAddress();
        safe = ISafe(_safe);
        keeper = _keeper;
    }

    // ============ Hypernative Functions (SecurityBot only) ============

    /// @notice Pause ALL registered/listed strategies
    function emergencyPauseAll() external onlyKeeper {
        (uint256 success, uint256 failed) = _executeOnAllStrategies("pause()");
        if (success == 0 && failed == 0) revert NoStrategiesFound();
        emit EmergencyPauseTriggered(msg.sender, success, failed);
    }

    /// @notice Unpause ALL registered/listed strategies
    function emergencyUnpauseAll() external onlyKeeper {
        (uint256 success, uint256 failed) = _executeOnAllStrategies("unpause()");
        if (success == 0 && failed == 0) revert NoStrategiesFound();
        emit EmergencyUnpauseTriggered(msg.sender, success, failed);
    }

    // ============ Admin Functions (SafeWallet only) ============

    /// @notice Add strategy to pause/unpause list
    function addStrategy(address strategy) external onlySafe {
        _addStrategy(strategy);
    }

    /// @notice Add multiple strategies at once
    function addMultipleStrategies(address[] calldata _strategies) external onlySafe {
        for (uint256 i = 0; i < _strategies.length; i++) {
            _addStrategy(_strategies[i]);
        }
    }

    function _addStrategy(address strategy) internal {
        if (strategy == address(0)) revert ZeroAddress();
        if (strategyInfo[strategy].exists) revert StrategyAlreadyExists();

        // Validate it's a compatible IAccountableStrategy
        try IAccountableStrategy(strategy).securityAdminEnabled() {}
        catch {
            revert InvalidStrategy(strategy);
        }

        strategyInfo[strategy] = StrategyInfo({exists: true, index: strategies.length});
        strategies.push(strategy);
        emit StrategyAdded(strategy);
    }

    /// @notice Remove strategy by address
    function removeStrategy(address strategy) external onlySafe {
        StrategyInfo memory info = strategyInfo[strategy];
        if (!info.exists) revert StrategyNotFound();

        _unlistStrategy(info.index);
        delete strategyInfo[strategy];

        emit StrategyRemoved(strategy);
    }

    /// @notice Remove element from strategies array (swap with last, then pop)
    function _unlistStrategy(uint256 indexToRemove) internal {
        uint256 lastIndex = strategies.length - 1;

        if (indexToRemove != lastIndex) {
            address lastStrategy = strategies[lastIndex];
            strategies[indexToRemove] = lastStrategy;
            strategyInfo[lastStrategy].index = indexToRemove;
        }

        strategies.pop();
    }

    // ============ View Functions ============

    /// @notice Get ALL strategies
    function getAllStrategies() external view returns (address[] memory) {
        return strategies;
    }

    /// @notice Get strategy count
    function getStrategiesCount() external view returns (uint256) {
        return strategies.length;
    }

    // ============ Internal ============

    function _executeOnAllStrategies(string memory functionSig) internal returns (uint256 success, uint256 failed) {
        bytes memory data = abi.encodeWithSignature(functionSig);
        uint256 length = strategies.length;

        for (uint256 i = 0; i < length; i++) {
            address strategy = strategies[i];

            // Skip if vault Manager has NOT opted-in (securityAdminEnabled = false)
            try IAccountableStrategy(strategy).securityAdminEnabled() returns (bool enabled) {
                if (!enabled) continue;
            } catch {
                emit StrategyOperationFailed(strategy, functionSig);
                failed++;
                continue;
            }

            bool ok = safe.execTransactionFromModule(strategy, 0, data, Enum.Operation.Call);
            if (ok) {
                success++;
            } else {
                failed++;
                emit StrategyOperationFailed(strategy, functionSig);
            }
        }
    }
}
