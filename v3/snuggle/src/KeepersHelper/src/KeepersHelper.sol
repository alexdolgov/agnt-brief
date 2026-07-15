// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@chainlink/contracts/src/v0.8/automation/AutomationCompatible.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./interfaces/ISnuggleVault.sol";
import "./ViewHelper.sol";
import "./TreasurySplitter.sol";
import "./libraries/TickMath.sol";

/// @title KeepersHelper
/// @notice Handles Chainlink Automation logic for SnuggleVault
/// @dev Extracted to reduce main vault contract size below EVM limit
contract KeepersHelper is AutomationCompatibleInterface, Ownable2Step {
    /// @notice Maximum positions to check per upkeep call
    uint256 public constant MAX_POSITIONS_PER_CHECK = 50;

    /// @notice Minimum interval between OOR status changes
    uint64 public constant MIN_OOR_TRACKING_INTERVAL = 5 minutes;

    /// @notice Minimum allowed check interval
    uint256 public constant MIN_CHECK_INTERVAL = 1 minutes;

    /// @notice Maximum allowed check interval
    uint256 public constant MAX_CHECK_INTERVAL = 1 hours;

    /// @notice Reference to the main vault
    ISnuggleVault public immutable vault;

    /// @notice Reference to the view helper
    ViewHelper public immutable viewHelper;

    /// @notice Reference to the treasury splitter for auto-distribution
    TreasurySplitter public immutable treasurySplitter;

    /// @notice Token addresses to auto-distribute after rebalances
    address[] public feeTokens;

    /// @notice Last checked position index for pagination
    uint256 public lastCheckedIndex;

    /// @notice Minimum time between performUpkeep calls
    uint256 public checkInterval = 10 minutes;

    /// @notice Timestamp of the last performUpkeep execution
    uint256 public lastPerformTime;

    event CheckIntervalUpdated(uint256 oldInterval, uint256 newInterval);
    event FeeTokenAdded(address indexed token);
    event FeeTokenRemoved(address indexed token);

    error NotAuthorized();
    error PositionDoesNotExist();
    error PositionInRange();
    error AlreadyTracking();
    error OutOfRangeNotTracked();
    error DelayNotMet();
    error StillOutOfRange();
    error TooSoonToResetTracking();
    error InvalidActionType();
    error IntervalOutOfRange();
    error FeeTokenAlreadyAdded();
    error FeeTokenNotFound();

    constructor(address _vault, address _viewHelper, address _treasurySplitter, address _owner) {
        vault = ISnuggleVault(_vault);
        viewHelper = ViewHelper(_viewHelper);
        treasurySplitter = TreasurySplitter(_treasurySplitter);
        if (_owner != msg.sender) {
            _transferOwnership(_owner);
        }
    }

    /// @notice Add a token to the auto-distribute list
    /// @param token ERC20 token address to distribute after rebalances
    function addFeeToken(address token) external onlyOwner {
        if (token == address(0)) revert FeeTokenNotFound();
        for (uint256 i = 0; i < feeTokens.length; i++) {
            if (feeTokens[i] == token) revert FeeTokenAlreadyAdded();
        }
        feeTokens.push(token);
        emit FeeTokenAdded(token);
    }

    /// @notice Remove a token from the auto-distribute list
    /// @param token ERC20 token address to remove
    function removeFeeToken(address token) external onlyOwner {
        for (uint256 i = 0; i < feeTokens.length; i++) {
            if (feeTokens[i] == token) {
                feeTokens[i] = feeTokens[feeTokens.length - 1];
                feeTokens.pop();
                emit FeeTokenRemoved(token);
                return;
            }
        }
        revert FeeTokenNotFound();
    }

    /// @notice Get all fee tokens configured for auto-distribution
    function getFeeTokens() external view returns (address[] memory) {
        return feeTokens;
    }

    /// @notice Update the minimum time between upkeep checks
    /// @param _interval New interval in seconds (between 1 minute and 1 hour)
    function setCheckInterval(uint256 _interval) external onlyOwner {
        if (_interval < MIN_CHECK_INTERVAL || _interval > MAX_CHECK_INTERVAL) {
            revert IntervalOutOfRange();
        }
        uint256 oldInterval = checkInterval;
        checkInterval = _interval;
        emit CheckIntervalUpdated(oldInterval, _interval);
    }

    /// @notice Check if any position needs attention (tracking or rebalancing)
    /// @dev Called by Chainlink Automation
    /// @return upkeepNeeded Whether any position needs attention
    /// @return performData Encoded token ID and action type
    function checkUpkeep(
        bytes calldata
    ) external view override returns (bool upkeepNeeded, bytes memory performData) {
        // Time gate: skip if not enough time has passed since last performUpkeep
        if (block.timestamp < lastPerformTime + checkInterval) {
            return (false, "");
        }

        uint256 totalPositions = viewHelper.getActivePositionCount();
        if (totalPositions == 0) return (false, "");

        // Start from lastCheckedIndex and wrap around
        uint256 startIndex = lastCheckedIndex % totalPositions;
        uint256 positionsChecked = 0;

        uint32 cachedTwapInterval = vault.twapInterval();

        for (uint256 i = 0; i < totalPositions && positionsChecked < MAX_POSITIONS_PER_CHECK; ) {
            uint256 currentIndex = (startIndex + i) % totalPositions;
            uint256 tokenId = vault.allPositionIds(currentIndex);

            // Read position data via interface (returns struct)
            ISnuggleVault.UserPosition memory pos = vault.positions(tokenId);

            unchecked {
                ++positionsChecked;
                ++i;
            }

            // Skip invalid or disabled positions
            if (pos.owner == address(0)) continue;
            if (!pos.autoSnuggleEnabled) continue;

            ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
            if (!poolConfig.active) continue;

            // V25-M-01: Try-catch prevents a single pool's stale TWAP from blocking all automation
            int24 currentTick;
            try poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, cachedTwapInterval) returns (int24 tick) {
                currentTick = tick;
            } catch {
                continue; // Skip positions whose pool TWAP is unavailable
            }
            bool isOutOfRange = currentTick < pos.currentTickLower || currentTick >= pos.currentTickUpper;

            if (isOutOfRange) {
                if (pos.outOfRangeSince == 0) {
                    // Needs to start tracking - action type 1
                    return (true, abi.encode(tokenId, uint8(1), currentIndex));
                } else if (block.timestamp >= pos.outOfRangeSince + pos.rebalanceDelay) {
                    bool wouldChange = TickMath.wouldSnuggleChangeRange(
                        currentTick,
                        poolConfig.tickSpacing,
                        pos.rangeWidthBps,
                        pos.currentTickLower,
                        pos.currentTickUpper
                    );
                    if (wouldChange) {
                        // Ready to rebalance - action type 2
                        return (true, abi.encode(tokenId, uint8(2), currentIndex));
                    }
                }
            } else if (pos.outOfRangeSince > 0) {
                // Position is back in range, reset tracking - action type 3
                return (true, abi.encode(tokenId, uint8(3), currentIndex));
            }
        }

        return (false, "");
    }

    /// @notice Execute tracking update or rebalance for a position
    /// @dev Called by Chainlink Automation
    /// @param performData Encoded token ID and action type from checkUpkeep
    function performUpkeep(bytes calldata performData) external override {
        // Check if caller is an authorized keeper
        if (!vault.authorizedKeepers(msg.sender)) revert NotAuthorized();

        (uint256 tokenId, uint8 actionType, uint256 checkedIndex) = abi.decode(performData, (uint256, uint8, uint256));

        // Record the time of this upkeep execution
        lastPerformTime = block.timestamp;

        // Update pagination index
        lastCheckedIndex = checkedIndex + 1;

        // Delegate the actual operation to the vault
        vault.executeKeeperAction(tokenId, actionType);

        // Auto-distribute accumulated fees after rebalances (action type 2)
        if (actionType == 2 && address(treasurySplitter) != address(0) && feeTokens.length > 0) {
            for (uint256 i = 0; i < feeTokens.length; i++) {
                try treasurySplitter.distribute(feeTokens[i]) {} catch {}
            }
        }
    }
}
