// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {BasedVault} from "./BasedVault.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

/// @title Meta Vault managing allocations across Market vaults
/// @notice ERC4626-based vault that allocates its underlying asset into approved Market vaults behind a timelock.
/// @dev
/// - Inherits BasedVault for ERC4626 accounting and role-based access control:
///   - onlyAdmin, onlyCurator, onlyCuratorOrAdmin, onlyGuardian modifiers.
/// - Allocation increases/decreases are executed by depositing into or withdrawing from Market vaults.
/// - If a Market exposes a non-zero hook(), approvals are granted to the hook instead of the Market.
/// - Units for allocation amounts are in the underlying asset's decimals (asset()).
/// @custom:security External calls are performed against Market vaults and their hooks; use trusted Markets only.
/// @custom:security Be mindful of ERC20 approval race conditions; some tokens require setting allowance to 0 before updating.
contract Vault is BasedVault {
    /// @notice Desired allocation for a Market vault.
    /// @dev amount is the target total allocation after this call (not a delta).
    struct Allocation {
        /// @notice Target Market (a BasedVault-compatible vault).
        address market;
        /// @notice Target amount of the underlying asset to be allocated to `market`, in asset() units.
        uint256 amount;
    }

    /// @notice Tracks whether an address is an accepted Market.
    mapping(address => bool) public isMarket;

    /// @notice Current amount of the underlying asset allocated to each Market, in asset() units.
    mapping(address => uint256) public marketAllocations;

    /// @notice Timestamp when a Market was queued for acceptance; zero means not pending.
    /// @dev A Market can be accepted after pendingMarket[market] + timelock has elapsed.
    mapping(address => uint256) public pendingMarket;

    /// @notice Registry of all accepted Markets.
    /// @dev Removal is O(n) by swapping with the last element.
    address[] public markets;

    /// @notice Initialize the meta vault.
    /// @param _name ERC20 name of the vault share token.
    /// @param _symbol ERC20 symbol of the vault share token.
    /// @param _asset Underlying ERC20 asset for ERC4626 operations.
    /// @param _treasury Address that receives fees (as defined in BasedVault).
    constructor(
        string memory _name,
        string memory _symbol,
        address _asset,
        address _treasury
    ) BasedVault(_name, _symbol, _asset, _treasury) {}

    /// @notice Emitted when a Market is queued for acceptance.
    /// @param market Address of the queued Market.
    /// @param timestamp Block timestamp when the Market was queued.
    event MarketQueued(address indexed market, uint256 timestamp);

    /// @notice Emitted when a Market is accepted.
    /// @param market Address of the accepted Market.
    /// @param timestamp Block timestamp when the Market was accepted.
    event MarketAdded(address indexed market, uint256 timestamp);

    /// @notice Emitted when a Market is removed or a pending Market is vetoed.
    /// @param market Address of the removed Market.
    /// @param timestamp Block timestamp when the Market was removed.
    event MarketRemoved(address indexed market, uint256 timestamp);

    /// @notice Thrown when attempting to add a Market that already exists.
    /// @param market Address of the existing Market.
    error MarketAlreadyExists(address market);

    /// @notice Thrown when a Market is not found (neither pending nor accepted as applicable).
    /// @param market Address of the non-existent Market.
    error MarketDoesNotExist(address market);

    /// @notice Update target allocations across Markets by depositing to or withdrawing from them.
    /// @dev
    /// - For each Allocation:
    ///   - If target < current, the Vault decreases allocation:
    ///       1) Determine `diff = current - target`.
    ///       2) Approve the Market's hook() if set, otherwise approve the Market, for `diff` Vault shares or as required by the hook.
    ///       3) Call Market.withdraw(diff, address(this), address(this)).
    ///   - If target > current, the Vault increases allocation:
    ///       1) Determine `diff = target - current`.
    ///       2) Approve the Market's hook() if set, otherwise approve the Market, for `diff` of the underlying asset.
    ///       3) Call Market.deposit(diff, address(this)).
    /// - Updates marketAllocations to reflect the new target amounts.
    /// - Reverts if a referenced Market has not been accepted.
    /// - Access: onlyCurator.
    /// @param alloc Array of target allocations per Market (absolute targets, not deltas).
    function allocate(Allocation[] memory alloc) external onlyCurator {
        for (uint256 i = 0; i < alloc.length; i++) {
            Allocation memory allocation = alloc[i];
            if (!isMarket[allocation.market])
                revert MarketDoesNotExist(allocation.market);

            if (marketAllocations[allocation.market] > allocation.amount) {
                uint256 diff = marketAllocations[allocation.market] -
                    allocation.amount;
                // If the Market uses a hook, approve the hook; otherwise approve the Market itself.
                address marketHook = address(
                    BasedVault(allocation.market).hook()
                );
                if (marketHook == address(0)) {
                    // Approve as required by the Market/hook to facilitate the withdrawal.
                    BasedVault(allocation.market).approve(
                        allocation.market,
                        diff
                    );
                } else {
                    BasedVault(allocation.market).approve(marketHook, diff);
                }

                // Withdraw `diff` of underlying back to this Vault.
                BasedVault(allocation.market).withdraw(
                    diff,
                    address(this),
                    address(this)
                );
                marketAllocations[allocation.market] -= diff;
                continue;
            }

            if (marketAllocations[allocation.market] < allocation.amount) {
                uint256 diff = allocation.amount -
                    marketAllocations[allocation.market];
                // If the Market uses a hook, approve the hook to pull the underlying; otherwise approve the Market.
                address marketHook = address(
                    BasedVault(allocation.market).hook()
                );
                if (marketHook == address(0)) {
                    IERC20(asset()).approve(allocation.market, diff);
                } else {
                    IERC20(asset()).approve(marketHook, diff);
                }
                // Deposit `diff` of underlying into the Market for this Vault.
                BasedVault(allocation.market).deposit(diff, address(this));

                marketAllocations[allocation.market] += diff;
                continue;
            }
        }
    }

    /// @notice Queue a Market for acceptance subject to timelock.
    /// @dev
    /// - Records the current block timestamp in pendingMarket[market].
    /// - Reverts if the Market is already accepted.
    /// - Access: onlyCuratorOrAdmin.
    /// @param market Address of the Market to queue.
    function addMarket(address market) external onlyCuratorOrAdmin {
        if (isMarket[market]) revert MarketAlreadyExists(market);
        pendingMarket[market] = block.timestamp;
        emit MarketQueued(market, block.timestamp);
    }

    /// @notice Veto a queued Market before acceptance.
    /// @dev
    /// - Only affects Markets that are pending (queued). It does not remove accepted Markets.
    /// - Reverts if the Market is neither accepted nor pending.
    /// - Access: onlyGuardian.
    /// @param market Address of the pending Market to veto.
    function vetoMarket(address market) external onlyGuardian {
        if (!isMarket[market] && pendingMarket[market] == 0)
            revert MarketDoesNotExist(market);
        delete pendingMarket[market];
        emit MarketRemoved(market, block.timestamp);
    }

    /// @notice Accept a queued Market after the timelock has expired.
    /// @dev
    /// - Reverts if the Market is already accepted.
    /// - Reverts with TimelockNotExpired (defined in BasedVault) if timelock has not elapsed.
    /// - Access: onlyCuratorOrAdmin.
    /// @param market Address of the queued Market to accept.
    function acceptMarket(address market) external onlyCuratorOrAdmin {
        if (isMarket[market]) revert MarketAlreadyExists(market);
        if (pendingMarket[market] + timelock >= block.timestamp)
            revert TimelockNotExpired();
        isMarket[market] = true;
        markets.push(market);
        delete pendingMarket[market];
        emit MarketAdded(market, block.timestamp);
    }

    /// @notice Remove an accepted Market.
    /// @dev
    /// - Marks the Market as not accepted and removes it from the `markets` array (swap-and-pop).
    /// - Does not withdraw funds automatically; call allocate to reduce allocations first if desired.
    /// - Access: onlyAdmin.
    /// @param market Address of the Market to remove.
    function removeMarket(address market) external onlyAdmin {
        if (!isMarket[market]) revert MarketDoesNotExist(market);
        isMarket[market] = false;
        for (uint256 i = 0; i < markets.length; i++) {
            if (markets[i] == market) {
                markets[i] = markets[markets.length - 1];
                markets.pop();
                break;
            }
        }
        emit MarketRemoved(market, block.timestamp);
    }
}
