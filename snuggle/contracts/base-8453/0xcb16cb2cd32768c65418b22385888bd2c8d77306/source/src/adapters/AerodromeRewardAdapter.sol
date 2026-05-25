// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../interfaces/IRewardAdapter.sol";
import "../interfaces/IAerodrome.sol";
import "../interfaces/IVaultOwner.sol";

/// @title AerodromeRewardAdapter
/// @notice Secure adapter for Aerodrome gauge staking to earn AERO rewards
/// @dev Implements IRewardAdapter with comprehensive security measures including:
///      - Read-only reentrancy protection via _withdrawing mapping
///      - Position-pool validation before staking
///      - Post-operation ownership verification
///      - Try-catch for killed gauge handling
///      - Emergency unstake function
/// @author Snuggle (snuggle.fi)
contract AerodromeRewardAdapter is IRewardAdapter, ReentrancyGuard, IERC721Receiver {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Aerodrome Voter contract
    IVoter public immutable voter;

    /// @notice Aerodrome NonfungiblePositionManager
    IAerodromeNonfungiblePositionManager public immutable positionManager;

    /// @notice Aerodrome CLFactory for pool validation
    IAerodromeCLFactory public immutable factory;

    /// @notice AERO reward token address
    address public immutable AERO;

    /// @notice The authorized vault that can call adapter functions
    address public immutable vault;

    /// @notice Treasury address for swept rewards
    address public immutable treasury;

    // ═══════════════════════════════════════════════════════════════════════════
    // CONFIGURABLE STATE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The staking manager that can also call adapter functions
    /// @dev Can be updated by vault owner to support StakingManager upgrades
    address public stakingManager;

    // ═══════════════════════════════════════════════════════════════════════════
    // STATE
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Track which gauge each position is staked in
    /// @dev tokenId => gauge address (address(0) if not staked)
    mapping(uint256 => address) public stakedIn;

    /// @notice Reentrancy guard for withdrawal operations
    /// @dev Prevents read-only reentrancy during NFT callback
    mapping(uint256 => bool) private _withdrawing;

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error OnlyAuthorized();
    error NotStaked();
    error AlreadyStaked();
    error NoGaugeForPool();
    error GaugeKilled();
    error GaugePoolMismatch();
    error PositionPoolMismatch();
    error NotNFTOwner();
    error StakeFailed();
    error UnstakeFailed();
    error WithdrawInProgress();
    error InvalidAddress();

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS (additional to IRewardAdapter events)
    // ═══════════════════════════════════════════════════════════════════════════

    event EmergencyUnstaked(uint256 indexed tokenId, address indexed gauge);
    event EmergencyUnstakeIncomplete(uint256 indexed tokenId, address indexed gauge);
    event ClaimFailed(uint256 indexed tokenId, address indexed gauge, bytes reason);
    event ClaimSkipped(uint256 indexed tokenId, string reason);
    event StakingManagerUpdated(address indexed oldManager, address indexed newManager);

    // ═══════════════════════════════════════════════════════════════════════════
    // MODIFIERS
    // ═══════════════════════════════════════════════════════════════════════════

    modifier onlyAuthorized() {
        if (msg.sender != vault && msg.sender != stakingManager) revert OnlyAuthorized();
        _;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Initialize the adapter
    /// @param _voter Aerodrome Voter contract address
    /// @param _positionManager Aerodrome NonfungiblePositionManager address
    /// @param _factory Aerodrome CLFactory address
    /// @param _aero AERO token address
    /// @param _vault The SnuggleVault address that can call this adapter
    /// @param _stakingManager The StakingManager address that can also call this adapter
    /// @param _treasury Treasury address for swept rewards
    constructor(
        address _voter,
        address _positionManager,
        address _factory,
        address _aero,
        address _vault,
        address _stakingManager,
        address _treasury
    ) {
        if (_voter == address(0)) revert InvalidAddress();
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_factory == address(0)) revert InvalidAddress();
        if (_aero == address(0)) revert InvalidAddress();
        if (_vault == address(0)) revert InvalidAddress();
        if (_stakingManager == address(0)) revert InvalidAddress();
        if (_treasury == address(0)) revert InvalidAddress();

        voter = IVoter(_voter);
        positionManager = IAerodromeNonfungiblePositionManager(_positionManager);
        factory = IAerodromeCLFactory(_factory);
        AERO = _aero;
        vault = _vault;
        stakingManager = _stakingManager;
        treasury = _treasury;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ADMIN FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Update the staking manager address
    /// @dev Only callable by vault owner to support StakingManager upgrades
    /// @param _stakingManager New staking manager address
    function setStakingManager(address _stakingManager) external {
        if (msg.sender != IVaultOwner(vault).owner()) revert OnlyAuthorized();
        if (_stakingManager == address(0)) revert InvalidAddress();
        emit StakingManagerUpdated(stakingManager, _stakingManager);
        stakingManager = _stakingManager;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // IRewardAdapter IMPLEMENTATION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @inheritdoc IRewardAdapter
    function rewardToken() external view override returns (address) {
        return AERO;
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Stakes position by deriving pool from position data
    function stake(uint256 tokenId) external override onlyAuthorized nonReentrant {
        // Get position to determine pool
        (,, address token0, address token1, int24 tickSpacing,,,,,,,) =
            positionManager.positions(tokenId);

        address pool = factory.getPool(token0, token1, tickSpacing);
        if (pool == address(0)) revert NoGaugeForPool();

        _stakeInternal(tokenId, pool);
    }

    /// @notice Stake with explicit pool (more gas efficient when pool is already known)
    /// @param tokenId The NFT position ID
    /// @param pool The pool address (from PoolConfig)
    function stakeInGauge(uint256 tokenId, address pool) external onlyAuthorized nonReentrant {
        // SECURITY: Validate position actually belongs to this pool
        (,, address token0, address token1, int24 tickSpacing,,,,,,,) =
            positionManager.positions(tokenId);

        address derivedPool = factory.getPool(token0, token1, tickSpacing);
        if (derivedPool != pool) revert PositionPoolMismatch();

        _stakeInternal(tokenId, pool);
    }

    /// @dev Internal staking logic with full validation
    /// @param tokenId The NFT position ID
    /// @param pool The validated pool address
    function _stakeInternal(uint256 tokenId, address pool) internal {
        if (stakedIn[tokenId] != address(0)) revert AlreadyStaked();

        // SECURITY: Verify vault owns the NFT before staking
        if (positionManager.ownerOf(tokenId) != vault) revert NotNFTOwner();

        // Get and validate gauge
        address gauge = voter.gauges(pool);
        if (gauge == address(0)) revert NoGaugeForPool();
        if (!voter.isAlive(gauge)) revert GaugeKilled();

        // SECURITY: Double-check gauge's pool matches
        if (ICLGauge(gauge).pool() != pool) revert GaugePoolMismatch();

        // Vault must have approved this adapter to manage NFTs
        // Transfer NFT from vault to this adapter (required because gauge.deposit transfers FROM msg.sender)
        positionManager.safeTransferFrom(vault, address(this), tokenId);

        // Approve gauge to receive the NFT from this adapter
        positionManager.approve(gauge, tokenId);

        // Deposit into gauge (gauge.deposit uses safeTransferFrom(msg.sender, ...))
        ICLGauge(gauge).deposit(tokenId);

        // SECURITY: Verify gauge now owns the NFT (post-operation check)
        if (positionManager.ownerOf(tokenId) != gauge) revert StakeFailed();

        // Update state after successful external interaction
        stakedIn[tokenId] = gauge;

        emit Staked(tokenId, gauge);
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Protected against read-only reentrancy via _withdrawing flag
    function unstake(uint256 tokenId) external override onlyAuthorized nonReentrant {
        address gauge = stakedIn[tokenId];
        if (gauge == address(0)) revert NotStaked();
        if (_withdrawing[tokenId]) revert WithdrawInProgress();

        // SECURITY: Set withdrawing flag to prevent read-only reentrancy
        // This ensures isStaked() returns false during the callback
        _withdrawing[tokenId] = true;

        // V17-L-03: Track AERO balance before unstake to capture auto-claimed rewards
        uint256 aeroBefore = IERC20(AERO).balanceOf(address(this));

        // Withdraw from gauge - NFT is transferred to THIS ADAPTER (msg.sender)
        // Aerodrome CLGauge.withdraw() does: nft.safeTransferFrom(address(this), msg.sender, tokenId)
        ICLGauge(gauge).withdraw(tokenId);

        // V17-L-03: Forward any auto-claimed AERO to vault for performance fee pipeline
        uint256 aeroAfter = IERC20(AERO).balanceOf(address(this));
        if (aeroAfter > aeroBefore) {
            IERC20(AERO).safeTransfer(vault, aeroAfter - aeroBefore);
        }

        // SECURITY: Verify adapter received the NFT
        if (positionManager.ownerOf(tokenId) != address(this)) revert UnstakeFailed();

        // Transfer NFT from adapter back to vault
        positionManager.safeTransferFrom(address(this), vault, tokenId);

        // SECURITY: Verify vault now owns the NFT (post-operation check)
        if (positionManager.ownerOf(tokenId) != vault) revert UnstakeFailed();

        // Clear state after successful withdrawal
        delete stakedIn[tokenId];
        delete _withdrawing[tokenId];

        emit Unstaked(tokenId, gauge);
    }

    /// @notice Emergency unstake with best-effort reward claiming
    /// @dev Use only if normal unstake fails due to gauge issues
    /// @param tokenId The NFT position ID
    function emergencyUnstake(uint256 tokenId) external onlyAuthorized nonReentrant {
        address gauge = stakedIn[tokenId];
        if (gauge == address(0)) revert NotStaked();

        // L-2 fix: Best-effort reward claim before emergency withdrawal
        try ICLGauge(gauge).getReward(tokenId) {
            // Transfer any claimed rewards to treasury for manual distribution
            uint256 balance = IERC20(AERO).balanceOf(address(this));
            if (balance > 0) {
                IERC20(AERO).safeTransfer(treasury, balance);
            }
        } catch {
            // Reward claim failed - continue with emergency withdrawal
        }

        // Set flags before external call
        _withdrawing[tokenId] = true;
        delete stakedIn[tokenId];

        // M-01 fix: Wrap withdraw in try-catch so broken gauges don't permanently lock positions
        try ICLGauge(gauge).withdraw(tokenId) {
            // Withdrawal succeeded - try to transfer NFT to vault
            address currentOwner = positionManager.ownerOf(tokenId);
            if (currentOwner == address(this)) {
                try positionManager.safeTransferFrom(address(this), vault, tokenId) {
                    // Success
                } catch {
                    emit EmergencyUnstakeIncomplete(tokenId, gauge);
                }
            }
        } catch {
            // Gauge withdraw failed - position stuck in gauge
            emit EmergencyUnstakeIncomplete(tokenId, gauge);
        }

        delete _withdrawing[tokenId];

        emit EmergencyUnstaked(tokenId, gauge);
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Uses balance-before/after pattern and try-catch for safety
    ///      Aerodrome doesn't allow fee collection while staked, so fees0/fees1 are always 0
    function claimRewards(
        uint256 tokenId,
        address to
    ) external override onlyAuthorized nonReentrant returns (uint256 earned, uint256 fees0, uint256 fees1) {
        // Aerodrome doesn't allow fee collection while staked
        fees0 = 0;
        fees1 = 0;

        address gauge = stakedIn[tokenId];
        // LOW-04: Emit event when skipping due to not staked
        if (gauge == address(0)) {
            emit ClaimSkipped(tokenId, "not staked");
            return (0, 0, 0);
        }

        // SECURITY: Use balance-before/after pattern
        uint256 balanceBefore = IERC20(AERO).balanceOf(address(this));

        // Try to claim - don't revert if gauge is killed or has issues
        try ICLGauge(gauge).getReward(tokenId) {
            // Success - calculate earned amount
        } catch (bytes memory reason) {
            // Gauge may be killed or in error state - log but don't fail
            emit ClaimFailed(tokenId, gauge, reason);
            return (0, 0, 0);
        }

        earned = IERC20(AERO).balanceOf(address(this)) - balanceBefore;

        if (earned > 0) {
            IERC20(AERO).safeTransfer(to, earned);
            emit RewardsClaimed(tokenId, to, earned);
        }
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Uses try-catch in case gauge is in bad state
    function pendingRewards(uint256 tokenId) external view override returns (uint256) {
        address gauge = stakedIn[tokenId];
        if (gauge == address(0)) return 0;

        // Use try-catch to handle killed/invalid gauges
        try ICLGauge(gauge).earned(address(this), tokenId) returns (uint256 amount) {
            return amount;
        } catch {
            return 0;
        }
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Returns false if position is being withdrawn (read-only reentrancy protection)
    function isStaked(uint256 tokenId) external view override returns (bool) {
        // SECURITY: Also check _withdrawing to prevent read-only reentrancy
        return stakedIn[tokenId] != address(0) && !_withdrawing[tokenId];
    }

    /// @inheritdoc IRewardAdapter
    function getStakingContract(address pool) external view override returns (address) {
        return voter.gauges(pool);
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Aerodrome gauges don't require the depositor to be msg.sender for getReward()
    function requiresDirectCall() external pure override returns (bool, address) {
        return (false, address(0));
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // VIEW FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Validate that a pool has a living gauge (called by AdminSatellite.addPool)
    /// @dev Reverts if gauge doesn't exist or is killed, preventing silent staking failures
    /// @param pool The pool address to validate
    function validatePool(address pool) external view override {
        address gauge = voter.gauges(pool);
        if (gauge == address(0)) revert NoGaugeForPool();
        if (!voter.isAlive(gauge)) revert GaugeKilled();
    }

    /// @notice Check if gauge exists and is alive for a pool
    /// @param pool The pool address
    /// @return exists Whether gauge exists
    /// @return alive Whether gauge is alive (receiving emissions)
    function getGaugeStatus(address pool) external view returns (bool exists, bool alive) {
        address gauge = voter.gauges(pool);
        exists = gauge != address(0);
        if (exists) {
            alive = voter.isAlive(gauge);
        }
    }

    /// @notice Get the gauge address for a staked position
    /// @param tokenId The NFT position ID
    /// @return The gauge address (address(0) if not staked)
    function getStakedGauge(uint256 tokenId) external view returns (address) {
        return stakedIn[tokenId];
    }

    /// @notice Sweep remaining reward tokens to treasury (LOW-04: cleanup after emergency unstake)
    /// @dev Only callable by authorized addresses. Sends any AERO stuck in adapter to treasury
    ///      so admin can manually distribute to affected users.
    function sweepRewards() external onlyAuthorized returns (uint256 amount) {
        amount = IERC20(AERO).balanceOf(address(this));
        if (amount > 0) {
            IERC20(AERO).safeTransfer(treasury, amount);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ERC721 RECEIVER
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Required to receive NFTs via safeTransferFrom
    /// @dev V13-L-03: Only accepts NFTs from the Aerodrome position manager
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external view override returns (bytes4) {
        if (msg.sender != address(positionManager)) revert OnlyAuthorized();
        return IERC721Receiver.onERC721Received.selector;
    }
}
