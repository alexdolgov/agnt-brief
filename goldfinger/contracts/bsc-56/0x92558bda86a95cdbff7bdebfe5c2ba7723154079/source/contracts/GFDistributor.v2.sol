// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts@5.4.0/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts@5.4.0/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts@5.4.0/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts@5.4.0/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts@5.4.0/token/ERC20/utils/SafeERC20.sol";

interface IGFToken is IERC20 {
    function mint(address to, uint256 amount) external;
}

/**
 * @title GFDistributor
 * @dev GF token distribution + Lock Pool.
 * @notice Amounts use 6 decimals. This contract must be an authorized minter in GFToken (for mint paths).
 *         Lock pool uses ERC20 transfers from category allocation wallets (requires allowance).
 */
contract GFDistributor is Ownable, ReentrancyGuard, Pausable {

    using SafeERC20 for IERC20;
    using SafeERC20 for IGFToken;

    // ==================== Constants ====================

    string public constant VERSION = "2.0.0";

    // Reference total supply (for documentation, actual cap enforced by GFToken)
    uint256 public constant TOTAL_SUPPLY = 100_000_000_000 * 1e6; // 100B

    // Token Unit: 1 Billion GF (with 6 decimals)
    uint256 public constant BILLION = 1_000_000_000 * 1e6;

    // Time Constants (in seconds) - Generic
    uint256 private constant DAY_1      = 1 days;

    // ---------- Vesting Parameters ----------

    // 1. TEAM: 23B Total.
    // Logic: 1 year cliff, then linear for 9 years (until end of Year 10).
    uint256 private constant TEAM_TOTAL_ALLOCATION    = 23 * BILLION;
    uint256 private constant TEAM_CLIFF_DURATION      = 365 days;  // 1 year
    uint256 private constant TEAM_VESTING_DURATION    = 3650 days; // 10 years total
    uint256 private constant TEAM_LINEAR_DURATION     = 3285 days; // 9 years (post-cliff)

    // 2. PRIVATE: 4B Total.
    // Logic: Linear release over "middle 4 years".
    // Interpretation: Starts after Year 1 (Day 365), ends after Year 5 (Day 1825).
    uint256 private constant PRIVATE_TOTAL_ALLOCATION = 4 * BILLION;
    uint256 private constant PRIVATE_START_DELAY      = 365 days;  // Starts after 1 year
    uint256 private constant PRIVATE_END_DELAY        = 1825 days; // Ends after 5 years
    uint256 private constant PRIVATE_VESTING_DURATION = 1460 days; // 4 years duration

    // 3. PARTNERSHIP: 8B Total.
    // Logic: 4B TGE.
    //        1 Month Cliff (Wait).
    //        Remaining 4B linear over 5 months.
    uint256 private constant PARTNERSHIP_TOTAL_ALLOCATION = 8 * BILLION;
    uint256 private constant PARTNERSHIP_TGE_AMOUNT       = 4 * BILLION;
    uint256 private constant PARTNERSHIP_LINEAR_AMOUNT    = 4 * BILLION;
    uint256 private constant PARTNERSHIP_CLIFF_DURATION   = 30 days;  // 1 month wait after TGE
    uint256 private constant PARTNERSHIP_VESTING_DURATION = 150 days; // 5 months linear

    // 4. COMMUNITY: 9.5B Total.
    // Logic: 4B TGE.
    //        Year 1 (Day 0-365): Linear release of 3.25B.
    //        Year 2-10 (Day 365-3650): Linear release of remaining 2.25B.
    uint256 private constant COMMUNITY_TOTAL_ALLOCATION   = 9_500_000_000 * 1e6; // 9.5B
    uint256 private constant COMMUNITY_TGE_AMOUNT         = 4_000_000_000 * 1e6; // 4B
    uint256 private constant COMMUNITY_PHASE_1_AMOUNT     = 3_250_000_000 * 1e6; // 3.25B
    uint256 private constant COMMUNITY_PHASE_2_AMOUNT     = 2_250_000_000 * 1e6; // 2.25B
    uint256 private constant COMMUNITY_PHASE_1_DURATION   = 365 days;  // Year 1
    uint256 private constant COMMUNITY_TOTAL_DURATION     = 3650 days; // 10 years
    uint256 private constant COMMUNITY_PHASE_2_DURATION   = 3285 days; // 9 years (Year 2-10)

    // 5. ECOSYSTEM: 21.5B Total.
    // Logic: 3.5B TGE. Remaining 18B linear over 10 years.
    uint256 private constant ECOSYSTEM_TOTAL_ALLOCATION   = 21_500_000_000 * 1e6; // 21.5B
    uint256 private constant ECOSYSTEM_TGE_AMOUNT         = 3_500_000_000 * 1e6;  // 3.5B
    uint256 private constant ECOSYSTEM_LINEAR_AMOUNT      = 18_000_000_000 * 1e6; // 18B
    uint256 private constant ECOSYSTEM_VESTING_DURATION   = 3650 days; // 10 years

    // 6. RESERVE: 8B Total.
    // Logic: 4B after 6 months, 4B after 60 months.
    uint256 private constant RESERVE_TOTAL_ALLOCATION     = 8 * BILLION;
    uint256 private constant RESERVE_BATCH_AMOUNT         = 4 * BILLION;
    uint256 private constant RESERVE_BATCH_1_DELAY        = 180 days;  // 6 months
    uint256 private constant RESERVE_BATCH_2_DELAY        = 1800 days; // 60 months

    // 7. LIQUIDITY: 6B Total.
    // Logic: 100% TGE.
    uint256 private constant LIQUIDITY_TOTAL_ALLOCATION   = 6 * BILLION;
    uint256 private constant LIQUIDITY_TGE_AMOUNT         = 6 * BILLION;

    // ==================== State ====================

    IGFToken public immutable gfToken;

    mapping(address => bool) private admins;
    address[] private adminList;

    // TGE (Token Generation Event) Timestamp.
    uint256 public tgeTimestamp;

    enum Category { TEAM, PRIVATE, PARTNERSHIP, COMMUNITY, ECOSYSTEM, RESERVE, LIQUIDITY }

    mapping(Category => address) public allocationAddress;
    mapping(Category => uint256) public totalCategoryMinted;  // all minted amounts for category

    // ==================== Lock Pool State ====================

    struct LockRecord {
        address user;
        Category category;
        uint256 amount;        // locked amount
        uint256 startTime;     // lock start timestamp
        uint256 lockDuration;  // lock duration in seconds
        bool    released;      // marked after user/admin withdrawal
    }

    struct UserLockSummary {
        uint256 totalCount;
        uint256 activeCount;
        uint256 maturedCount;
        uint256 releasedCount;
        uint256 totalAmount;
        uint256 activeAmount;
        uint256 maturedAmount;
        uint256 releasedAmount;
    }

    uint256 public nextLockId = 1;
    mapping(uint256 => LockRecord) public locks;
    mapping(address => uint256[]) public userLockIds;
    uint256 public totalLocked;       // sum of active (not released) locks
    uint256 public totalLockReleased; // cumulative amount released from locks

    // ==================== Events ====================

    event AllocationAddressSet(Category indexed category, address indexed oldAddress, address indexed newAddress);
    event TokensReleased(Category indexed category, address indexed to, uint256 amount, uint256 currentTotalMinted);

    event AdminAdded(address indexed account);
    event AdminRemoved(address indexed account);

    event ERC20Rescued(address indexed token, address indexed to, uint256 amount);
    event NativeRescued(address indexed to, uint256 amount);

    // Lock pool events
    event Locked(uint256 indexed lockId, address indexed user, Category indexed category, uint256 amount, uint256 startTime, uint256 duration);
    event LockWithdrawn(uint256 indexed lockId, address indexed user, uint256 amount, bool byAdmin);
    event LockCancelled(uint256 indexed lockId, address indexed to, uint256 amount, address cancelledBy);

    // ==================== Errors ====================

    error OnlyAdminOrOwner();
    error InvalidAddress();
    error InvalidAmount();
    error InvalidLockId();
    error NotAuthorized();
    error NothingToRelease();
    error NativeTransferFailed();
    error LockNotMatured();
    error LockAlreadyReleased();
    error TGENotStarted();
    error TGEAlreadyStarted();

    // ==================== Modifiers ====================

    modifier onlyAdminOrOwner() {
        if (msg.sender != owner() && !admins[msg.sender]) revert OnlyAdminOrOwner();
        _;
    }

    modifier validAddress(address addr) {
        if (addr == address(0)) revert InvalidAddress();
        _;
    }

    modifier validAmount(uint256 amount) {
        if (amount == 0) revert InvalidAmount();
        _;
    }

    modifier validLockId(uint256 lockId) {
        if (locks[lockId].user == address(0)) revert InvalidLockId();
        _;
    }

    // ==================== Constructor & Views ====================

    constructor(address _gfToken) Ownable(msg.sender) {
        if (_gfToken == address(0)) revert InvalidAddress();
        gfToken = IGFToken(_gfToken);

        _addAdminInternal(msg.sender);
    }

    struct Overview {
        // Version & constants
        string  version;
        uint256 totalSupplyRef;
        uint256 maxInitialUnlock; // Calculated sum of TGE amounts

        // Roles
        address owner;

        // Switches
        bool paused;

        // Allocation wallets
        address teamAddress;
        address privateAddress;
        address partnershipAddress;
        address communityAddress;
        address ecosystemAddress;
        address reserveAddress;
        address liquidityAddress;

        // Flags
        uint256 tgeTimestamp;

        // Category minted so far
        uint256 teamMinted;
        uint256 privateMinted;
        uint256 partnershipMinted;
        uint256 communityMinted;
        uint256 ecosystemMinted;
        uint256 reserveMinted;
        uint256 liquidityMinted;

        // Lock pool meta
        uint256 nextLockId;
        uint256 totalLocked;
        uint256 totalLockReleased;
    }

    function getOverview() external view returns (Overview memory s) {
        s.version = VERSION;
        s.totalSupplyRef = TOTAL_SUPPLY;
        // TGE Sum: Partnership(4B) + Community(4B) + Ecosystem(3.5B) + Liquidity(6B) = 17.5B
        s.maxInitialUnlock = PARTNERSHIP_TGE_AMOUNT + COMMUNITY_TGE_AMOUNT + ECOSYSTEM_TGE_AMOUNT + LIQUIDITY_TGE_AMOUNT;

        s.owner = owner();
        s.paused = paused();

        s.teamAddress = allocationAddress[Category.TEAM];
        s.privateAddress = allocationAddress[Category.PRIVATE];
        s.partnershipAddress = allocationAddress[Category.PARTNERSHIP];
        s.communityAddress = allocationAddress[Category.COMMUNITY];
        s.ecosystemAddress = allocationAddress[Category.ECOSYSTEM];
        s.reserveAddress = allocationAddress[Category.RESERVE];
        s.liquidityAddress = allocationAddress[Category.LIQUIDITY];

        s.tgeTimestamp = tgeTimestamp;

        s.teamMinted = totalCategoryMinted[Category.TEAM];
        s.privateMinted = totalCategoryMinted[Category.PRIVATE];
        s.partnershipMinted = totalCategoryMinted[Category.PARTNERSHIP];
        s.communityMinted = totalCategoryMinted[Category.COMMUNITY];
        s.ecosystemMinted = totalCategoryMinted[Category.ECOSYSTEM];
        s.reserveMinted = totalCategoryMinted[Category.RESERVE];
        s.liquidityMinted = totalCategoryMinted[Category.LIQUIDITY];

        s.nextLockId = nextLockId;
        s.totalLocked = totalLocked;
        s.totalLockReleased = totalLockReleased;
    }

    // ==================== Roles ====================

    function addAdmin(address account) external onlyOwner validAddress(account) {
        if (_addAdminInternal(account)) {
            emit AdminAdded(account);
        }
    }

    function removeAdmin(address account) external onlyOwner validAddress(account) {
        if (_removeAdminInternal(account)) {
            emit AdminRemoved(account);
        }
    }

    function isAdmin(address account) external view returns (bool) {
        return admins[account];
    }

    function getAdmins() external view onlyAdminOrOwner returns (address[] memory) {
        return adminList;
    }

    function _addAdminInternal(address account) internal returns (bool) {
        if (admins[account]) return false;
        admins[account] = true;
        adminList.push(account);
        return true;
    }

    function _removeAdminInternal(address account) internal returns (bool) {
        if (!admins[account]) return false;
        admins[account] = false;

        uint256 len = adminList.length;
        for (uint256 i = 0; i < len; ) {
            if (adminList[i] == account) {
                uint256 last = len - 1;
                if (i != last) {
                    adminList[i] = adminList[last];
                }
                adminList.pop();
                break;
            }
            unchecked { ++i; }
        }
        return true;
    }

    // ==================== Allocation Management ====================

    function setAllocationAddresses(
        address teamAddress,
        address privateAddress,
        address partnershipAddress,
        address communityAddress,
        address ecosystemAddress,
        address reserveAddress,
        address liquidityAddress
    ) external onlyAdminOrOwner {
        _setAllocationAddress(Category.TEAM, teamAddress);
        _setAllocationAddress(Category.PRIVATE, privateAddress);
        _setAllocationAddress(Category.PARTNERSHIP, partnershipAddress);
        _setAllocationAddress(Category.COMMUNITY, communityAddress);
        _setAllocationAddress(Category.ECOSYSTEM, ecosystemAddress);
        _setAllocationAddress(Category.RESERVE, reserveAddress);
        _setAllocationAddress(Category.LIQUIDITY, liquidityAddress);
    }

    function setAllocationAddress(Category category, address addr) external onlyAdminOrOwner {
        _setAllocationAddress(category, addr);
    }

    function _setAllocationAddress(Category category, address addr) internal validAddress(addr) {
        address old = allocationAddress[category];
        if (old == addr) return;
        allocationAddress[category] = addr;
        emit AllocationAddressSet(category, old, addr);
    }

    // ==================== TGE & Distribution Logic ====================

    /**
     * @notice Manually sets the TGE timestamp.
     * @dev Use this if you want to set TGE to a specific time (past or present).
     */
    function startTGE(uint256 timestamp) external onlyAdminOrOwner {
        if (tgeTimestamp != 0) revert TGEAlreadyStarted();
        if (timestamp == 0) revert InvalidAmount();
        tgeTimestamp = timestamp;
    }

    /**
     * @notice Releases pending tokens for a specific category based on the Excel curve.
     * @param category The category to release tokens for.
     */
    function release(Category category) external nonReentrant whenNotPaused {
        // Ensure TGE is set AND the time has arrived
        if (tgeTimestamp == 0 || block.timestamp < tgeTimestamp) revert TGENotStarted();
        _releaseCategory(category);
    }

    /**
     * @notice Releases pending tokens for ALL categories.
     */
    function releaseAll() external onlyAdminOrOwner nonReentrant whenNotPaused {
        // Ensure TGE is set AND the time has arrived
        if (tgeTimestamp == 0 || block.timestamp < tgeTimestamp) revert TGENotStarted();
        _releaseAll();
    }

    function _releaseAll() internal {
        _releaseCategory(Category.TEAM);
        _releaseCategory(Category.PRIVATE);
        _releaseCategory(Category.PARTNERSHIP);
        _releaseCategory(Category.COMMUNITY);
        _releaseCategory(Category.ECOSYSTEM);
        _releaseCategory(Category.RESERVE);
        _releaseCategory(Category.LIQUIDITY);
    }

    function _releaseCategory(Category category) internal {
        address recipient = allocationAddress[category];
        // If address is not set, we skip minting but do not revert (allows setting addresses later)
        if (recipient == address(0)) return;

        uint256 vestedTotal = _calculateCumulativeVested(category, block.timestamp);
        uint256 alreadyMinted = totalCategoryMinted[category];

        if (vestedTotal > alreadyMinted) {
            uint256 amountToMint = vestedTotal - alreadyMinted;
            totalCategoryMinted[category] = vestedTotal;
            gfToken.mint(recipient, amountToMint);
            emit TokensReleased(category, recipient, amountToMint, vestedTotal);
        }
    }

    // ==================== Mathematical Model ====================

    /**
     * @dev Calculates the total amount that should exist for a category at a given time.
     */
    function _calculateCumulativeVested(Category category, uint256 currentTime) internal view returns (uint256) {
        if (currentTime < tgeTimestamp) return 0;

        uint256 elapsed = currentTime - tgeTimestamp;
        uint256 vestedAmount = 0;

        // 1. TEAM: Cliff 1 year, then linear until 10 years.
        if (category == Category.TEAM) {
            if (elapsed < TEAM_CLIFF_DURATION) {
                vestedAmount = 0;
            } else if (elapsed >= TEAM_VESTING_DURATION) {
                vestedAmount = TEAM_TOTAL_ALLOCATION;
            } else {
                // Duration of vesting is 9 years (post-cliff)
                uint256 timeInVesting = elapsed - TEAM_CLIFF_DURATION;
                vestedAmount = (TEAM_TOTAL_ALLOCATION * timeInVesting) / TEAM_LINEAR_DURATION;
            }
        }
            // 2. PRIVATE: Middle 4 years. Starts after Year 1, ends after Year 5.
        else if (category == Category.PRIVATE) {
            if (elapsed < PRIVATE_START_DELAY) {
                vestedAmount = 0;
            } else if (elapsed >= PRIVATE_END_DELAY) {
                vestedAmount = PRIVATE_TOTAL_ALLOCATION;
            } else {
                uint256 timeInVesting = elapsed - PRIVATE_START_DELAY;
                vestedAmount = (PRIVATE_TOTAL_ALLOCATION * timeInVesting) / PRIVATE_VESTING_DURATION;
            }
        }
            // 3. PARTNERSHIP: TGE 4B + 1 Month Cliff + 4B linear over 5 months.
        else if (category == Category.PARTNERSHIP) {
            if (elapsed < PARTNERSHIP_CLIFF_DURATION) {
                // Month 0 to Month 1: Only TGE amount
                vestedAmount = PARTNERSHIP_TGE_AMOUNT;
            } else if (elapsed >= PARTNERSHIP_CLIFF_DURATION + PARTNERSHIP_VESTING_DURATION) {
                // After Month 6 (1 month cliff + 5 months linear): Full amount
                vestedAmount = PARTNERSHIP_TOTAL_ALLOCATION;
            } else {
                // Month 1 to Month 6: TGE + Linear portion
                uint256 timeInLinear = elapsed - PARTNERSHIP_CLIFF_DURATION;
                vestedAmount = PARTNERSHIP_TGE_AMOUNT + ((PARTNERSHIP_LINEAR_AMOUNT * timeInLinear) / PARTNERSHIP_VESTING_DURATION);
            }
        }
            // 4. COMMUNITY: TGE 4B. Year 1 (3.25B). Year 2-10 (2.25B).
        else if (category == Category.COMMUNITY) {
            if (elapsed < COMMUNITY_PHASE_1_DURATION) {
                // Phase 1: Linear 3.25B over Year 1
                vestedAmount = COMMUNITY_TGE_AMOUNT + ((COMMUNITY_PHASE_1_AMOUNT * elapsed) / COMMUNITY_PHASE_1_DURATION);
            } else if (elapsed >= COMMUNITY_TOTAL_DURATION) {
                vestedAmount = COMMUNITY_TOTAL_ALLOCATION;
            } else {
                // Phase 2: Linear 2.25B over remaining 9 years
                uint256 timeInPhase2 = elapsed - COMMUNITY_PHASE_1_DURATION;
                vestedAmount = COMMUNITY_TGE_AMOUNT + COMMUNITY_PHASE_1_AMOUNT + ((COMMUNITY_PHASE_2_AMOUNT * timeInPhase2) / COMMUNITY_PHASE_2_DURATION);
            }
        }
            // 5. ECOSYSTEM: TGE 3.5B + Linear remaining over 10 years.
        else if (category == Category.ECOSYSTEM) {
            if (elapsed >= ECOSYSTEM_VESTING_DURATION) {
                vestedAmount = ECOSYSTEM_TOTAL_ALLOCATION;
            } else {
                vestedAmount = ECOSYSTEM_TGE_AMOUNT + ((ECOSYSTEM_LINEAR_AMOUNT * elapsed) / ECOSYSTEM_VESTING_DURATION);
            }
        }
            // 6. RESERVE: 4B at Month 6, 4B at Month 60.
        else if (category == Category.RESERVE) {
            if (elapsed < RESERVE_BATCH_1_DELAY) {
                vestedAmount = 0;
            } else if (elapsed >= RESERVE_BATCH_1_DELAY && elapsed < RESERVE_BATCH_2_DELAY) {
                vestedAmount = RESERVE_BATCH_AMOUNT;
            } else {
                vestedAmount = RESERVE_BATCH_AMOUNT * 2;
            }
        }
            // 7. LIQUIDITY: TGE 100%
        else if (category == Category.LIQUIDITY) {
            vestedAmount = LIQUIDITY_TGE_AMOUNT;
        }

        // --- Safety Cap Check ---
        // Ensure calculated amount never exceeds the hardcoded total allocation for the category.
        uint256 cap = _getCategoryCap(category);
        if (vestedAmount > cap) {
            return cap;
        }
        return vestedAmount;
    }

    /**
     * @dev Helper to retrieve the Total Allocation constant for a category.
     */
    function _getCategoryCap(Category c) internal pure returns (uint256) {
        if (c == Category.TEAM) return TEAM_TOTAL_ALLOCATION;
        if (c == Category.PRIVATE) return PRIVATE_TOTAL_ALLOCATION;
        if (c == Category.PARTNERSHIP) return PARTNERSHIP_TOTAL_ALLOCATION;
        if (c == Category.COMMUNITY) return COMMUNITY_TOTAL_ALLOCATION;
        if (c == Category.ECOSYSTEM) return ECOSYSTEM_TOTAL_ALLOCATION;
        if (c == Category.RESERVE) return RESERVE_TOTAL_ALLOCATION;
        if (c == Category.LIQUIDITY) return LIQUIDITY_TOTAL_ALLOCATION;
        return 0;
    }

    // ==================== Lock Pool (transfer from allocation wallets) ====================

    /**
     * @notice Allocate budget from a category wallet and lock it for a user.
     *         Pulls tokens via transferFrom from allocationAddress[category] (requires allowance).
     *         Lock startTime is set to the current block timestamp.
     * @param user The beneficiary entitled to withdraw after maturity
     * @param category Source category; tokens are pulled from allocationAddress[category]
     * @param amount Lock amount
     * @param lockDuration Lock duration in seconds
     * @return lockId Newly created lock id
     */
    function allocateAndLockForUser(
        address user,
        Category category,
        uint256 amount,
        uint256 lockDuration
    ) external onlyAdminOrOwner nonReentrant whenNotPaused validAddress(user) validAmount(amount) returns (uint256 lockId) {
        address src = allocationAddress[category];
        if (src == address(0)) revert InvalidAddress();

        // Pull tokens into contract custody (requires allowance by the category wallet)
        gfToken.safeTransferFrom(src, address(this), amount);

        uint256 start = block.timestamp;

        lockId = nextLockId++;
        locks[lockId] = LockRecord({
            user: user,
            category: category,
            amount: amount,
            startTime: start,
            lockDuration: lockDuration,
            released: false
        });
        userLockIds[user].push(lockId);

        totalLocked += amount;
        emit Locked(lockId, user, category, amount, start, lockDuration);
    }

    /**
     * @notice User withdraws their matured lock (self-service).
     */
    function withdrawLock(uint256 lockId) external nonReentrant whenNotPaused validLockId(lockId) {
        LockRecord storage l = locks[lockId];
        if (l.released) revert LockAlreadyReleased();
        if (msg.sender != l.user) revert NotAuthorized();

        if (!_isMatured(l)) revert LockNotMatured();

        l.released = true;
        totalLocked -= l.amount;
        totalLockReleased += l.amount;

        gfToken.safeTransfer(l.user, l.amount);
        emit LockWithdrawn(lockId, l.user, l.amount, false);
    }

    /**
     * @notice Admin releases a lock to the user (optionally before maturity if policy allows).
     */
    function adminReleaseLock(uint256 lockId) external onlyAdminOrOwner nonReentrant validLockId(lockId) {
        LockRecord storage l = locks[lockId];
        if (l.released) revert LockAlreadyReleased();

        // Optional: enforce maturity if desired
        // if (!_isMatured(l)) revert LockNotMatured();

        l.released = true;
        totalLocked -= l.amount;
        totalLockReleased += l.amount;

        gfToken.safeTransfer(l.user, l.amount);
        emit LockWithdrawn(lockId, l.user, l.amount, true);
    }

    /**
     * @notice Admin cancels a lock and returns funds back to the category allocation address.
     */
    function adminCancelLock(uint256 lockId) external onlyAdminOrOwner nonReentrant validLockId(lockId) {
        LockRecord storage l = locks[lockId];
        if (l.released) revert LockAlreadyReleased();

        address to = allocationAddress[l.category];
        if (to == address(0)) revert InvalidAddress();

        uint256 amt = l.amount;
        l.released = true;
        totalLocked -= amt;
        totalLockReleased += amt;

        gfToken.safeTransfer(to, amt);
        emit LockCancelled(lockId, to, amt, msg.sender);
    }

    function _isMatured(LockRecord memory l) internal view returns (bool) {
        return block.timestamp >= l.startTime + l.lockDuration;
    }

    // ======== Lock Pool Views ========

    function getUserLocks(address user) external view returns (uint256[] memory) {
        return userLockIds[user];
    }

    function getLock(uint256 lockId) external view validLockId(lockId) returns (
        address user,
        Category category,
        uint256 amount,
        uint256 startTime,
        uint256 lockDuration,
        bool released
    ) {
        LockRecord memory l = locks[lockId];
        return (l.user, l.category, l.amount, l.startTime, l.lockDuration, l.released);
    }

    function getUserLockSummary(address user) external view returns (UserLockSummary memory s) {
        uint256[] memory ids = userLockIds[user];
        s.totalCount = ids.length;

        for (uint256 i = 0; i < ids.length; ) {
            LockRecord memory l = locks[ids[i]];
            s.totalAmount += l.amount;

            if (l.released) {
                s.releasedCount += 1;
                s.releasedAmount += l.amount;
            } else {
                bool matured = block.timestamp >= l.startTime + l.lockDuration;
                if (matured) {
                    s.maturedCount += 1;
                    s.maturedAmount += l.amount;
                } else {
                    s.activeCount += 1;
                    s.activeAmount += l.amount;
                }
            }

            unchecked { ++i; }
        }
    }

    // ==================== Views ====================

    function getAllocationAddresses() external view returns (
        address teamAddress,
        address privateAddress,
        address partnershipAddress,
        address communityAddress,
        address ecosystemAddress,
        address reserveAddress,
        address liquidityAddress
    ) {
        return (
            allocationAddress[Category.TEAM],
            allocationAddress[Category.PRIVATE],
            allocationAddress[Category.PARTNERSHIP],
            allocationAddress[Category.COMMUNITY],
            allocationAddress[Category.ECOSYSTEM],
            allocationAddress[Category.RESERVE],
            allocationAddress[Category.LIQUIDITY]
        );
    }

    function getCategoryMinted() external view returns (
        uint256 teamMinted,
        uint256 privateMinted,
        uint256 partnershipMinted,
        uint256 communityMinted,
        uint256 ecosystemMinted,
        uint256 reserveMinted,
        uint256 liquidityMinted
    ) {
        return (
            totalCategoryMinted[Category.TEAM],
            totalCategoryMinted[Category.PRIVATE],
            totalCategoryMinted[Category.PARTNERSHIP],
            totalCategoryMinted[Category.COMMUNITY],
            totalCategoryMinted[Category.ECOSYSTEM],
            totalCategoryMinted[Category.RESERVE],
            totalCategoryMinted[Category.LIQUIDITY]
        );
    }

    /**
     * @notice Returns the amount of tokens currently available for release for a specific category.
     * @param category The category to check.
     * @return releasableAmount The amount that can be minted/released right now.
     */
    function getReleasableAmount(Category category) public view returns (uint256 releasableAmount) {
        if (tgeTimestamp == 0 || block.timestamp < tgeTimestamp) return 0;

        uint256 vestedTotal = _calculateCumulativeVested(category, block.timestamp);
        uint256 alreadyMinted = totalCategoryMinted[category];

        if (vestedTotal > alreadyMinted) {
            return vestedTotal - alreadyMinted;
        }
        return 0;
    }

    /**
     * @notice Returns the amount of tokens currently available for release for ALL categories.
     */
    function getAllReleasableAmounts() external view returns (
        uint256 team,
        uint256 privateSale,
        uint256 partnership,
        uint256 community,
        uint256 ecosystem,
        uint256 reserve,
        uint256 liquidity
    ) {
        return (
            getReleasableAmount(Category.TEAM),
            getReleasableAmount(Category.PRIVATE),
            getReleasableAmount(Category.PARTNERSHIP),
            getReleasableAmount(Category.COMMUNITY),
            getReleasableAmount(Category.ECOSYSTEM),
            getReleasableAmount(Category.RESERVE),
            getReleasableAmount(Category.LIQUIDITY)
        );
    }

    function getNextLockId() external view returns (uint256) {
        return nextLockId;
    }

    // ==================== Emergency ====================

    function pause() external onlyAdminOrOwner { _pause(); }

    function unpause() external onlyOwner { _unpause(); }

    /**
     * @dev Rescue tokens accidentally sent to this contract. GF token is blocked to protect locked funds.
     */
    function rescueERC20(address token, address to, uint256 amount) external onlyOwner validAddress(token) validAddress(to) validAmount(amount) {
        if (token == address(gfToken)) revert NotAuthorized();
        IERC20(token).safeTransfer(to, amount);
        emit ERC20Rescued(token, to, amount);
    }

    function rescueNative(address to, uint256 amount) external onlyOwner validAddress(to) validAmount(amount) {
        (bool ok, ) = to.call{value: amount}("");
        if (!ok) revert NativeTransferFailed();
        emit NativeRescued(to, amount);
    }
}