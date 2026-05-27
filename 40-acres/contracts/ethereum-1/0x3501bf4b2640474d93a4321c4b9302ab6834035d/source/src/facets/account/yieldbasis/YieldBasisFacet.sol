// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {PortfolioFactory} from "../../../accounts/PortfolioFactory.sol";
import {PortfolioAccountConfig} from "../config/PortfolioAccountConfig.sol";
import {IYieldBasisVotingEscrow} from "../../../interfaces/IYieldBasisVotingEscrow.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "../utils/AccessControl.sol";

/**
 * @title YieldBasisFacet
 * @dev Facet for managing veYB lock positions on YieldBasis (Ethereum)
 *
 * All locks are MAX LOCKED (4 years). When increasing position, lock is
 * automatically extended to maintain max lock.
 *
 * Contract Addresses (Ethereum Mainnet):
 * - YB Token: 0x01791F726B4103694969820be083196cC7c045fF
 * - veYB: 0x8235c179E9e84688FBd8B12295EfC26834dAC211
 */
contract YieldBasisFacet is AccessControl {
    using SafeERC20 for IERC20;

    PortfolioFactory public immutable _portfolioFactory;
    PortfolioAccountConfig public immutable _portfolioAccountConfig;
    IYieldBasisVotingEscrow public immutable _veYB;
    IERC20 public immutable _yb;

    uint256 public constant MAX_LOCK_TIME = 4 * 365 days;
    uint256 public constant WEEK = 7 days;

    event LockCreated(address indexed account, uint256 tokenId, uint256 amount, uint256 unlockTime, address indexed owner);
    event LockIncreased(address indexed account, uint256 tokenId, uint256 amount, uint256 newUnlockTime, address indexed owner);

    error LockAlreadyExists();
    error NoExistingLock();
    error ZeroAmount();

    constructor(
        address portfolioFactory,
        address portfolioAccountConfig,
        address veYB,
        address yb
    ) {
        require(portfolioFactory != address(0), "Invalid portfolio factory");
        require(portfolioAccountConfig != address(0), "Invalid config");
        require(veYB != address(0), "Invalid veYB");
        require(yb != address(0), "Invalid yb");
        _portfolioFactory = PortfolioFactory(portfolioFactory);
        _portfolioAccountConfig = PortfolioAccountConfig(portfolioAccountConfig);
        _veYB = IYieldBasisVotingEscrow(veYB);
        _yb = IERC20(yb);
    }

    /**
     * @notice Create a new max-locked veYB position (4 years)
     * @param amount Amount of YB to lock
     */
    function createLock(uint256 amount) external {
        if (amount == 0) revert ZeroAmount();

        // Check no existing lock
        IYieldBasisVotingEscrow.LockedBalance memory existing = _veYB.locked(address(this));
        if (existing.amount > 0) revert LockAlreadyExists();

        // Calculate max lock time (rounded to week)
        uint256 unlockTime = ((block.timestamp + MAX_LOCK_TIME) / WEEK) * WEEK;

        // Transfer YB from caller
        address from = msg.sender == address(_portfolioFactory.portfolioManager())
            ? _portfolioFactory.ownerOf(address(this))
            : msg.sender;

        _yb.safeTransferFrom(from, address(this), amount);
        _yb.approve(address(_veYB), amount);

        // Create max lock
        _veYB.create_lock(amount, unlockTime);

        // Get the token ID that was created
        uint256 tokenId = _veYB.tokenOfOwnerByIndex(address(this), 0);

        emit LockCreated(address(this), tokenId, amount, unlockTime, from);
    }

    /**
     * @notice Increase the locked YB amount and ensure max lock
     * @dev Automatically extends lock to max (4 years) when adding collateral
     * @param amount Additional YB to lock
     */
    function increaseLock(uint256 amount) external {
        if (amount == 0) revert ZeroAmount();

        // Verify existing lock
        IYieldBasisVotingEscrow.LockedBalance memory existing = _veYB.locked(address(this));
        if (existing.amount == 0) revert NoExistingLock();

        // Transfer YB from caller
        address from = msg.sender == address(_portfolioFactory.portfolioManager())
            ? _portfolioFactory.ownerOf(address(this))
            : msg.sender;

        _yb.safeTransferFrom(from, address(this), amount);
        _yb.approve(address(_veYB), amount);

        // Extend to max lock first (if not already max)
        uint256 maxUnlockTime = ((block.timestamp + MAX_LOCK_TIME) / WEEK) * WEEK;
        if (existing.end < maxUnlockTime) {
            _veYB.increase_unlock_time(maxUnlockTime);
        }

        // Then increase amount
        _veYB.increase_amount(amount);

        uint256 tokenId = _veYB.tokenOfOwnerByIndex(address(this), 0);
        emit LockIncreased(address(this), tokenId, amount, maxUnlockTime, from);
    }

    // ============ View Functions ============
    /**
     * @notice Get lock details for this account
     * @return amount Locked YB amount
     * @return unlockTime Lock expiry timestamp
     */
    function getLockInfo() external view returns (uint256 amount, uint256 unlockTime) {
        IYieldBasisVotingEscrow.LockedBalance memory lock = _veYB.locked(address(this));
        amount = uint256(uint128(lock.amount));
        unlockTime = lock.end;
    }

    /**
     * @notice Check if this account has an active lock
     */
    function hasLock() external view returns (bool) {
        return _veYB.balanceOfNFT(address(this)) > 0;
    }

    /**
     * @notice Get the veYB token ID owned by this account
     * @return tokenId The token ID (reverts if no lock)
     */
    function getTokenId() external view returns (uint256) {
        if (_veYB.balanceOfNFT(address(this)) == 0) revert NoExistingLock();
        return _veYB.tokenOfOwnerByIndex(address(this), 0);
    }

    /**
     * @notice Get the YB token address
     */
    function getYBToken() external view returns (address) {
        return address(_yb);
    }

    /**
     * @notice Get the veYB contract address
     */
    function getVeYB() external view returns (address) {
        return address(_veYB);
    }
}
