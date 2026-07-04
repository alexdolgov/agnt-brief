// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../interfaces/IRewardAdapter.sol";
import "../interfaces/IPancakeSwap.sol";
import "../interfaces/IVaultOwner.sol";

/// @title PancakeSwapRewardAdapter
/// @notice Secure adapter for PancakeSwap MasterChef V3 staking to earn CAKE rewards
/// @dev Implements IRewardAdapter with comprehensive security measures including:
///      - Read-only reentrancy protection via _withdrawing mapping
///      - Position-pool validation before staking
///      - Post-operation ownership verification
///      - Try-catch for MasterChef error handling
///      - Emergency unstake function
/// @author Snuggle (snuggle.fi)
contract PancakeSwapRewardAdapter is IRewardAdapter, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice PancakeSwap MasterChef V3 contract
    IMasterChefV3 public immutable masterChef;

    /// @notice PancakeSwap NonfungiblePositionManager
    IPancakeSwapNonfungiblePositionManager public immutable positionManager;

    /// @notice PancakeSwap V3 Factory for pool validation
    IPancakeSwapV3Factory public immutable factory;

    /// @notice CAKE reward token address
    address public immutable CAKE;

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

    /// @notice Track which positions are staked
    /// @dev tokenId => is staked
    mapping(uint256 => bool) public stakedIn;

    /// @notice Reentrancy guard for withdrawal operations
    /// @dev Prevents read-only reentrancy during NFT callback
    mapping(uint256 => bool) private _withdrawing;

    // ═══════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ═══════════════════════════════════════════════════════════════════════════

    error OnlyAuthorized();
    error NotStaked();
    error AlreadyStaked();
    error PoolNotInMasterChef();
    error NotNFTOwner();
    error StakeFailed();
    error UnstakeFailed();
    error WithdrawInProgress();
    error InvalidAddress();
    error PoolAllocPointZero();

    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS (additional to IRewardAdapter events)
    // ═══════════════════════════════════════════════════════════════════════════

    event EmergencyUnstaked(uint256 indexed tokenId);
    event EmergencyUnstakeIncomplete(uint256 indexed tokenId);
    event ClaimFailed(uint256 indexed tokenId, bytes reason);
    event ClaimSkipped(uint256 indexed tokenId, string reason);
    event TradingFeesCollected(uint256 indexed tokenId, address indexed to, uint256 amount0, uint256 amount1);
    event TradingFeeCollectionFailed(uint256 indexed tokenId, bytes reason);
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
    /// @param _masterChef PancakeSwap MasterChef V3 address
    /// @param _positionManager PancakeSwap NonfungiblePositionManager address
    /// @param _factory PancakeSwap V3 Factory address
    /// @param _cake CAKE token address
    /// @param _vault The SnuggleVault address that can call this adapter
    /// @param _stakingManager The StakingManager address that can also call this adapter
    /// @param _treasury Treasury address for swept rewards
    constructor(
        address _masterChef,
        address _positionManager,
        address _factory,
        address _cake,
        address _vault,
        address _stakingManager,
        address _treasury
    ) {
        if (_masterChef == address(0)) revert InvalidAddress();
        if (_positionManager == address(0)) revert InvalidAddress();
        if (_factory == address(0)) revert InvalidAddress();
        if (_cake == address(0)) revert InvalidAddress();
        if (_vault == address(0)) revert InvalidAddress();
        if (_stakingManager == address(0)) revert InvalidAddress();
        if (_treasury == address(0)) revert InvalidAddress();

        masterChef = IMasterChefV3(_masterChef);
        positionManager = IPancakeSwapNonfungiblePositionManager(_positionManager);
        factory = IPancakeSwapV3Factory(_factory);
        CAKE = _cake;
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
        return CAKE;
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Stakes position by deriving pool from position data and validating it exists in MasterChef
    ///      Uses two-step transfer: vault->adapter->MasterChef so adapter is the depositor
    ///      This allows the adapter to call withdraw() later (MasterChef checks msg.sender == depositor)
    function stake(uint256 tokenId) external override onlyAuthorized nonReentrant {
        if (stakedIn[tokenId]) revert AlreadyStaked();

        // SECURITY: Verify vault owns the NFT before staking
        if (positionManager.ownerOf(tokenId) != vault) revert NotNFTOwner();

        // Get position to determine pool
        (,, address token0, address token1, uint24 fee,,,,,,,) =
            positionManager.positions(tokenId);

        address pool = factory.getPool(token0, token1, fee);
        if (pool == address(0)) revert PoolNotInMasterChef();

        // SECURITY: Verify pool is registered in MasterChef
        if (!_isPoolInMasterChef(pool)) revert PoolNotInMasterChef();

        // L-02: Reject staking into pools with zero CAKE allocation
        if (_getPoolAllocPoint(pool) == 0) revert PoolAllocPointZero();

        // Step 1: Transfer NFT from vault to this adapter
        // This is required because MasterChef records msg.sender of safeTransferFrom as the depositor
        positionManager.safeTransferFrom(vault, address(this), tokenId);

        // Step 2: Transfer from adapter to MasterChef (adapter becomes the depositor)
        // MasterChef V3 uses onERC721Received for deposits and records `from` as the user
        positionManager.safeTransferFrom(address(this), address(masterChef), tokenId);

        // SECURITY: Verify MasterChef now owns the NFT (post-operation check)
        if (positionManager.ownerOf(tokenId) != address(masterChef)) revert StakeFailed();

        // Update state after successful external interaction
        stakedIn[tokenId] = true;

        emit Staked(tokenId, address(masterChef));
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Protected against read-only reentrancy via _withdrawing flag
    ///      Uses two-step withdrawal: MasterChef->adapter->vault (adapter is the depositor)
    function unstake(uint256 tokenId) external override onlyAuthorized nonReentrant {
        if (!stakedIn[tokenId]) revert NotStaked();
        if (_withdrawing[tokenId]) revert WithdrawInProgress();

        // SECURITY: Set withdrawing flag to prevent read-only reentrancy
        // This ensures isStaked() returns false during the callback
        _withdrawing[tokenId] = true;

        // Step 1: Withdraw from MasterChef to this adapter (adapter is the depositor)
        // MasterChef.withdraw() checks msg.sender == depositor, so adapter must be the caller
        // Note: MasterChef auto-claims CAKE to adapter during withdraw()
        masterChef.withdraw(tokenId, address(this));

        // SECURITY: Verify adapter received the NFT
        if (positionManager.ownerOf(tokenId) != address(this)) revert UnstakeFailed();

        // V16-L-01 fix: Route auto-claimed CAKE back to vault for performance fee processing
        // MasterChef auto-harvests CAKE during withdraw(). Previously sent to treasury directly,
        // bypassing the performance fee pipeline. Now sends to vault so claimStakingRewards or
        // _executeSnuggle can process it through _distributeRewardPerformanceFee.
        uint256 cakeBalance = IERC20(CAKE).balanceOf(address(this));
        if (cakeBalance > 0) {
            IERC20(CAKE).safeTransfer(vault, cakeBalance);
        }

        // Step 2: Transfer NFT from adapter to vault
        positionManager.safeTransferFrom(address(this), vault, tokenId);

        // SECURITY: Verify vault now owns the NFT (post-operation check)
        if (positionManager.ownerOf(tokenId) != vault) revert UnstakeFailed();

        // Clear state after successful withdrawal
        delete stakedIn[tokenId];
        delete _withdrawing[tokenId];

        emit Unstaked(tokenId, address(masterChef));
    }

    /// @notice Emergency unstake with best-effort reward claiming
    /// @dev Use only if normal unstake fails due to MasterChef issues
    /// @param tokenId The NFT position ID
    function emergencyUnstake(uint256 tokenId) external onlyAuthorized nonReentrant {
        if (!stakedIn[tokenId]) revert NotStaked();

        // L-2 fix: Best-effort reward claim before emergency withdrawal
        // Note: PancakeSwap withdraw() auto-claims, but we try harvest first
        // in case withdraw fails but harvest succeeds
        try masterChef.harvest(tokenId, treasury) {
            // Rewards sent to treasury for manual distribution
        } catch {
            // Harvest failed - continue with emergency withdrawal
        }

        // Set flags before external call
        _withdrawing[tokenId] = true;
        delete stakedIn[tokenId];

        // M-01 fix: Wrap withdraw in try-catch so broken MasterChef doesn't permanently lock positions
        try masterChef.withdraw(tokenId, address(this)) {
            // Withdrawal succeeded - try to transfer NFT to vault
            address currentOwner = positionManager.ownerOf(tokenId);
            if (currentOwner == address(this)) {
                // V16-L-01 fix: Route auto-claimed CAKE to vault for performance fee processing
                uint256 cakeBalance = IERC20(CAKE).balanceOf(address(this));
                if (cakeBalance > 0) {
                    IERC20(CAKE).safeTransfer(vault, cakeBalance);
                }
                try positionManager.safeTransferFrom(address(this), vault, tokenId) {
                    // Success
                } catch {
                    emit EmergencyUnstakeIncomplete(tokenId);
                }
            } else {
                emit EmergencyUnstakeIncomplete(tokenId);
            }
        } catch {
            // MasterChef withdraw failed - position stuck
            emit EmergencyUnstakeIncomplete(tokenId);
        }

        delete _withdrawing[tokenId];

        emit EmergencyUnstaked(tokenId);
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Claims CAKE rewards AND trading fees via MasterChef's collectTo function
    ///      Uses try-catch for safety - CAKE and fees are claimed independently
    ///      so failure in one doesn't prevent the other from succeeding
    function claimRewards(
        uint256 tokenId,
        address to
    ) external override onlyAuthorized nonReentrant returns (uint256 earned, uint256 fees0, uint256 fees1) {
        // Emit event when skipping due to not staked
        if (!stakedIn[tokenId]) {
            emit ClaimSkipped(tokenId, "not staked");
            return (0, 0, 0);
        }

        // ═══════════════════════════════════════════════════════════════════════════
        // STEP 1: Collect trading fees via MasterChef's collectTo
        // ═══════════════════════════════════════════════════════════════════════════
        // Unlike Aerodrome, PancakeSwap MasterChef V3 allows collecting fees while staked
        // This is done via collectTo which wraps the position manager's collect function

        try masterChef.collectTo(
            IPancakeSwapNonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: to,  // Send directly to user
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            }),
            to  // Refund address
        ) returns (uint256 amount0, uint256 amount1) {
            fees0 = amount0;
            fees1 = amount1;
            if (amount0 > 0 || amount1 > 0) {
                emit TradingFeesCollected(tokenId, to, amount0, amount1);
            }
        } catch (bytes memory reason) {
            // Fee collection failed but we should still try to claim CAKE
            // This could happen if position has no liquidity or other MasterChef issues
            emit TradingFeeCollectionFailed(tokenId, reason);
        }

        // ═══════════════════════════════════════════════════════════════════════════
        // STEP 2: Harvest CAKE rewards
        // ═══════════════════════════════════════════════════════════════════════════

        // Try to harvest CAKE - don't revert if MasterChef has issues
        try masterChef.harvest(tokenId, address(this)) returns (uint256 reward) {
            earned = reward;
        } catch (bytes memory reason) {
            // MasterChef may be in error state - log but don't fail
            // Still return fees even if harvest fails
            emit ClaimFailed(tokenId, reason);
            return (0, fees0, fees1);
        }

        if (earned > 0) {
            IERC20(CAKE).safeTransfer(to, earned);
            emit RewardsClaimed(tokenId, to, earned);
        }
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Uses try-catch in case MasterChef is in bad state
    function pendingRewards(uint256 tokenId) external view override returns (uint256) {
        if (!stakedIn[tokenId]) return 0;

        // Use try-catch to handle invalid/problematic positions
        try masterChef.pendingCake(tokenId) returns (uint256 amount) {
            return amount;
        } catch {
            return 0;
        }
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Returns false if position is being withdrawn (read-only reentrancy protection)
    function isStaked(uint256 tokenId) external view override returns (bool) {
        // SECURITY: Also check _withdrawing to prevent read-only reentrancy
        return stakedIn[tokenId] && !_withdrawing[tokenId];
    }

    /// @inheritdoc IRewardAdapter
    /// @dev Returns MasterChef address if pool is registered, otherwise address(0)
    function getStakingContract(address pool) external view override returns (address) {
        if (_isPoolInMasterChef(pool)) {
            return address(masterChef);
        }
        return address(0);
    }

    /// @inheritdoc IRewardAdapter
    /// @dev With two-step transfer pattern, the adapter is the depositor in MasterChef
    ///      So the adapter can call harvest/collectTo directly - no need for vault direct calls
    function requiresDirectCall() external pure override returns (bool, address) {
        return (false, address(0));
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // VIEW FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Validate that a pool is registered in MasterChef with non-zero allocPoint
    /// @dev Called by AdminSatellite.addPool() to fail early if staking would fail later
    /// @param pool The pool address to validate
    function validatePool(address pool) external view override {
        if (!_isPoolInMasterChef(pool)) revert PoolNotInMasterChef();
        if (_getPoolAllocPoint(pool) == 0) revert PoolAllocPointZero();
    }

    /// @notice Check if a pool is registered in MasterChef
    /// @param pool The pool address
    /// @return True if pool is registered for CAKE rewards
    function isPoolInMasterChef(address pool) external view returns (bool) {
        return _isPoolInMasterChef(pool);
    }

    /// @notice Get pool info from MasterChef for a given pool address
    /// @param pool The pool address
    /// @return pid The pool ID (0 if not found)
    /// @return allocPoint Allocation points (0 if not found)
    function getPoolInfo(address pool) external view returns (uint256 pid, uint256 allocPoint) {
        pid = masterChef.v3PoolAddressPid(pool);

        // Verify this is actually the pool (pid 0 needs special handling)
        if (pid == 0) {
            // Check if pid 0 actually corresponds to this pool
            try masterChef.poolInfo(0) returns (
                uint256 _allocPoint,
                address v3Pool,
                address,
                address,
                uint24,
                uint256,
                uint256
            ) {
                if (v3Pool == pool) {
                    return (0, _allocPoint);
                }
                return (0, 0); // Pool not found
            } catch {
                return (0, 0);
            }
        }

        try masterChef.poolInfo(pid) returns (
            uint256 _allocPoint,
            address,
            address,
            address,
            uint24,
            uint256,
            uint256
        ) {
            allocPoint = _allocPoint;
        } catch {
            allocPoint = 0;
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev L-02: Get allocation points for a pool from MasterChef
    /// @param pool The pool address
    /// @return allocPoint The allocation points (0 if not found or not registered)
    function _getPoolAllocPoint(address pool) internal view returns (uint256 allocPoint) {
        uint256 pid = masterChef.v3PoolAddressPid(pool);

        if (pid == 0) {
            try masterChef.poolInfo(0) returns (
                uint256 _allocPoint, address v3Pool, address, address, uint24, uint256, uint256
            ) {
                if (v3Pool == pool) return _allocPoint;
            } catch {}
            return 0;
        }

        try masterChef.poolInfo(pid) returns (
            uint256 _allocPoint, address, address, address, uint24, uint256, uint256
        ) {
            return _allocPoint;
        } catch {
            return 0;
        }
    }

    /// @dev Check if pool is registered in MasterChef for CAKE rewards
    /// @param pool The pool address to check
    /// @return True if registered
    function _isPoolInMasterChef(address pool) internal view returns (bool) {
        uint256 pid = masterChef.v3PoolAddressPid(pool);

        // If pid is 0, we need to verify if it's actually pool 0 or not found
        if (pid == 0) {
            // Check if pool 0 actually matches this pool address
            try masterChef.poolInfo(0) returns (
                uint256,
                address v3Pool,
                address,
                address,
                uint24,
                uint256,
                uint256
            ) {
                return v3Pool == pool;
            } catch {
                return false;
            }
        }

        // Non-zero pid means pool is definitely registered
        return true;
    }

    /// @notice Sweep remaining reward tokens to treasury (LOW-04: cleanup after emergency unstake)
    /// @dev Only callable by authorized addresses. Sends any CAKE stuck in adapter to treasury
    ///      so admin can manually distribute to affected users.
    function sweepRewards() external onlyAuthorized returns (uint256 amount) {
        amount = IERC20(CAKE).balanceOf(address(this));
        if (amount > 0) {
            IERC20(CAKE).safeTransfer(treasury, amount);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // ERC721 RECEIVER
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Handle receipt of NFT
    /// @dev V14-L-01: Only accepts NFTs from the PancakeSwap position manager
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external view returns (bytes4) {
        if (msg.sender != address(positionManager)) revert OnlyAuthorized();
        return this.onERC721Received.selector;
    }
}
