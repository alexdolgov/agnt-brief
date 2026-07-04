// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title WiserStaking
 * @notice Stake WISEr tokens and accumulate points over time.
 *
 * Points formula (live, never stale):
 *   currentPoints(user) = accumulatedPoints + (stakedAmount / 1e18) * (now - lastUpdateTime)
 *
 *   => 1 whole WISEr token staked for 1 second = 1 point.
 *
 * Write gas: O(1) per stake/unstake – only the caller's storage slot is touched.
 *
 * Leaderboard reads (view, zero ETH cost):
 *   - getStakersPaginated(offset, limit)  – fetch a page of stakers
 *   - getTopStakersByPoints(n)            – on-chain selection scan; returns sorted top-N
 *     Works correctly because it inspects ALL stakers, not just one page.
 *     O(total_stakers × n) comparisons; fine as a view call up to ~5 000 stakers.
 *
 * Staker list: swap-and-pop array for O(1) removal with no gaps.
 *
 * Dust / Sybil protection:
 *   minimumStake is enforced on entry and on partial-unstake remainders.
 *   An attacker must hold >= minimumStake per address, making a
 *   10 000-address spam campaign economically prohibitive.
 *   Owner can adjust minimumStake at any time (default: 50,000 WISEr).
 */

interface IERC20 {
    function transferFrom(
        address _from,
        address _to,
        uint256 _amount
    )
        external
        returns (bool);

    function transfer(
        address _to,
        uint256 _amount
    )
        external
        returns (bool);

    function balanceOf(
        address _account
    )
        external
        view
        returns (uint256);
}

contract WiserStaking {

    // ------------------------------------------------------------------ //
    //  Constants
    // ------------------------------------------------------------------ //

    /// @dev Hard cap on getTopStakersByPoints n parameter.
    uint256 public constant MAX_TOP_N = 100;

    /// @dev Hard cap on getStakersPaginated page size to avoid eth_call timeouts.
    uint256 public constant MAX_PAGE_SIZE = 200;

    // ------------------------------------------------------------------ //
    //  Storage
    // ------------------------------------------------------------------ //

    IERC20  public immutable wiserToken;
    address public owner;

    struct StakerInfo {
        uint256 stakedAmount;      // tokens currently staked (wei)
        uint256 accumulatedPoints; // points banked up to lastUpdateTime
        uint256 lastUpdateTime;    // unix timestamp of last checkpoint
        uint256 stakerIndex;       // index inside stakerList
        bool isActive;          // true while stakedAmount > 0
    }

    address[] public stakerList; // active stakers; order changes on removal
    uint256 public totalStaked;  // sum of all stakedAmount (wei)

    /// @notice Minimum position size in wei. New stakes and unstake remainders
    /// must be >= this value (or exactly 0 to exit fully).
    /// Prevents dust-address spam that would bloat stakerList.
    uint256 public minimumStake;

    /// @notice Timestamp of the last points reset. Any points accumulated before
    ///         this time are silently ignored in currentPoints() and _checkpoint().
    ///         Reset is O(1) – no iteration over stakers needed.
    uint256 public epochStart;

    mapping(address => StakerInfo) public stakers;

    // ------------------------------------------------------------------ //
    //  Events
    // ------------------------------------------------------------------ //

    event Staked(
        address indexed user,
        uint256 amount,
        uint256 newStakerTotal
    );

    event Unstaked(
        address indexed user,
        uint256 amount,
        uint256 newStakerTotal
    );

    event OwnershipTransferred(
        address indexed previous,
        address indexed next
    );

    event MinimumStakeUpdated(
        uint256 oldMinimum,
        uint256 newMinimum
    );

    event PointsReset(
        uint256 timestamp
    );

    // ------------------------------------------------------------------ //
    //  Guards
    // ------------------------------------------------------------------ //

    bool private _locked;

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "NOT_OWNER"
        );
        _;
    }

    modifier nonReentrant() {
        require(
            _locked == false,
            "REENTRANT_CALL"
        );
        _locked = true;
        _;
        _locked = false;
    }

    // ------------------------------------------------------------------ //
    //  Constructor
    // ------------------------------------------------------------------ //

    constructor(
        address _wiserToken
    ) {
        require(
            _wiserToken != address(0),
            "ZERO_TOKEN_ADDRESS"
        );

        wiserToken = IERC20(_wiserToken);
        owner = msg.sender;
        minimumStake = 50_000 * 1e18; // 50,000 WISEr tokens (~$100)
    }

    // ------------------------------------------------------------------ //
    //  Owner config
    // ------------------------------------------------------------------ //

    function transferOwnership(
        address _newOwner
    )
        external
        onlyOwner
    {
        require(
            _newOwner != address(0),
            "ZERO_ADDRESS"
        );

        emit OwnershipTransferred(
            owner,
            _newOwner
        );

        owner = _newOwner;
    }

    /**
     * @notice Update the minimum stake threshold.
     *         Setting to 0 disables the check (not recommended).
     *         Existing positions below the new minimum are grandfathered —
     *         they can still fully exit via unstake() but cannot partially
     *         reduce their position until they are above the new minimum.
     */
    function setMinimumStake(
        uint256 _newMinimum
    )
        external
        onlyOwner
    {
        emit MinimumStakeUpdated(
            minimumStake,
            _newMinimum
        );

        minimumStake = _newMinimum;
    }

    /**
     * @notice Reset all stakers' points to zero in a single O(1) transaction.
     *
     * How it works (no iteration needed):
     *   Sets epochStart = block.timestamp. Both currentPoints() and _checkpoint()
     *   check whether a staker's lastUpdateTime is before or after epochStart:
     *     - Before: their accumulatedPoints are ignored and accrual restarts
     *               from epochStart, wiping all pre-reset history.
     *     - After:  normal calculation, unaffected.
     *   Each staker's storage is lazily migrated on their next stake/unstake.
     */
    function resetPoints()
        external
        onlyOwner
    {
        epochStart = block.timestamp;
        emit PointsReset(
            block.timestamp
        );
    }

    // ------------------------------------------------------------------ //
    //  Points helpers
    // ------------------------------------------------------------------ //

    /**
     * @notice Live point total for `_user`, including accrual since last checkpoint.
     *         Safe to call any time – reads only, no writes.
     */
    function currentPoints(
        address _user
    )
        public
        view
        returns (uint256)
    {
        StakerInfo storage info = stakers[
            _user
        ];

        if (info.stakedAmount == 0) {
            // If last checkpoint was before the reset, accumulated points are wiped.
            return info.lastUpdateTime >= epochStart ? info.accumulatedPoints : 0;
        }

        if (info.lastUpdateTime < epochStart) {
            // Staker hasn't touched the contract since the last reset.
            // Ignore all pre-reset accumulated points; count only from epochStart.
            uint256 elapsed = block.timestamp - epochStart;
            return (info.stakedAmount * elapsed) / 1E18;
        }

        uint256 elapsed = block.timestamp - info.lastUpdateTime;

        return info.accumulatedPoints
            + (info.stakedAmount * elapsed) / 1E18;
    }

    /**
     * @dev Bank points into storage before any balance change.
     *      Called only by stake / unstake – O(1), touches only caller's slot.
     */
    function _checkpoint(
        address _user
    )
        internal
    {
        StakerInfo storage info = stakers[
            _user
        ];

        if (info.stakedAmount > 0) {
            if (info.lastUpdateTime < epochStart) {
                // Pre-reset checkpoint: wipe accumulated points and count
                // only from epochStart forward, not from lastUpdateTime.
                uint256 elapsed = block.timestamp - epochStart;
                info.accumulatedPoints = (info.stakedAmount * elapsed) / 1E18;
            } else {
                uint256 elapsed = block.timestamp - info.lastUpdateTime;
                info.accumulatedPoints += (info.stakedAmount * elapsed) / 1E18;
            }
        } else {
            // No tokens staked – wipe any stale accumulated points from before reset.
            if (info.lastUpdateTime < epochStart) {
                info.accumulatedPoints = 0;
            }
        }

        info.lastUpdateTime = block.timestamp;
    }

    // ------------------------------------------------------------------ //
    //  Staking actions  (all O(1) gas, no iteration)
    // ------------------------------------------------------------------ //

    /**
     * @notice Stake `_amount` WISEr. Must approve this contract first.
     */
    function stake(
        uint256 _amount
    )
        external
        nonReentrant
    {
        require(
            _amount > 0,
            "AMOUNT_MUST_BE_GREATER_THAN_ZERO"
        );

        _checkpoint(
            msg.sender
        );

        require(
            wiserToken.transferFrom(
                msg.sender,
                address(this),
                _amount
            ),
            "TRANSFER_FROM_FAILED"
        );

        StakerInfo storage info = stakers[
            msg.sender
        ];

        // Validate minimum before touching the staker list.
        require(
            info.stakedAmount + _amount >= minimumStake,
            "BELOW_MINIMUM_STAKE"
        );

        if (!info.isActive) {
            info.stakerIndex = stakerList.length;
            stakerList.push(
                msg.sender
            );
            info.isActive = true;
        }

        info.stakedAmount += _amount;
        totalStaked += _amount;

        emit Staked(
            msg.sender,
            _amount,
            info.stakedAmount
        );
    }

    /**
     * @notice Unstake exactly `_amount` tokens. Accumulated points are kept.
     */
    function unstake(
        uint256 _amount
    )
        external
        nonReentrant
    {
        StakerInfo storage info = stakers[
            msg.sender
        ];

        require(
            _amount > 0,
            "AMOUNT_MUST_BE_GREATER_THAN_ZERO"
        );

        require(
            info.stakedAmount >= _amount,
            "INSUFFICIENT_STAKED_BALANCE"
        );

        _checkpoint(
            msg.sender
        );

        info.stakedAmount -= _amount;
        totalStaked -= _amount;

        // Remainder must be 0 (full exit) or >= minimumStake.
        // Prevents partial unstakes that leave a dust position.
        require(
            info.stakedAmount == 0 || info.stakedAmount >= minimumStake,
            "REMAINDER_BELOW_MINIMUM_STAKE"
        );

        if (info.stakedAmount == 0) {
            _removeFromList(
                msg.sender
            );
        }

        require(
            wiserToken.transfer(
                msg.sender,
                _amount
            ),
            "TRANSFER_FAILED"
        );

        emit Unstaked(
            msg.sender,
            _amount,
            info.stakedAmount
        );
    }

    /**
     * @dev Swap-and-pop: O(1) removal, no gaps left in array.
     */
    function _removeFromList(
        address _user
    )
        internal
    {
        StakerInfo storage info = stakers[
            _user
        ];

        uint256 index = info.stakerIndex;
        uint256 lastIndex = stakerList.length - 1;

        if (index != lastIndex) {
            address last = stakerList[
                lastIndex
            ];
            stakerList[index] = last;
            stakers[last].stakerIndex = index;
        }

        stakerList.pop();
        info.isActive = false;
        info.stakerIndex = 0;
    }

    // ------------------------------------------------------------------ //
    //  Read helpers  (view – zero ETH cost to caller)
    // ------------------------------------------------------------------ //

    /// @notice Total number of active stakers.
    function getStakersCount()
        external
        view
        returns (uint256)
    {
        return stakerList.length;
    }

    /**
     * @notice Fetch a page of stakers with their live point totals.
     *
     * NOTE: page order is arbitrary (swap-and-pop array).
     * To build a leaderboard you must page through ALL stakers and sort
     * client-side, OR use getTopStakersByPoints() for an on-chain sort.
     *
     * @param _offset - Starting index (0-based).
     * @param _limit - Max results; capped at MAX_PAGE_SIZE (200).
     */
    function getStakersPaginated(
        uint256 _offset,
        uint256 _limit
    )
        external
        view
        returns (
            address[] memory addresses,
            uint256[] memory stakedAmounts,
            uint256[] memory points,
            uint256[] memory lastUpdateTimes
        )
    {
        if (_limit > MAX_PAGE_SIZE) {
            _limit = MAX_PAGE_SIZE;
        }

        uint256 total = stakerList.length;

        if (_offset >= total || _limit == 0) {
            return (
                new address[](0),
                new uint256[](0),
                new uint256[](0),
                new uint256[](0)
            );
        }

        uint256 end = _offset
            + _limit;

        if (end > total) {
            end = total;
        }

        uint256 size = end
            - _offset;

        addresses = new address[](
            size
        );

        stakedAmounts = new uint256[](
            size
        );

        points = new uint256[](
            size
        );

        lastUpdateTimes = new uint256[](
            size
        );

        for (uint256 i = 0; i < size; i++) {
            address staker = stakerList[
                _offset + i
            ];

            StakerInfo storage si = stakers[
                staker
            ];

            addresses[i] = staker;
            stakedAmounts[i] = si.stakedAmount;

            points[i] = currentPoints(
                staker
            );

            lastUpdateTimes[i] = si.lastUpdateTime;
        }
    }

    /**
     * @notice Return the top-N stakers sorted by current points (descending).
     *
     * How it works:
     *   Iterates ALL stakers once per rank slot (selection-scan).
     *   Complexity: O(total_stakers × n) comparisons, all in memory.
     *   No writes, no gas cost to caller. Safe up to ~5 000 stakers for n=20.
     *
     * Why this is necessary:
     *   Points are never globally sorted on-chain. Fetching only one page and
     *   sorting it would give the wrong answer – a staker on page 8 might beat
     *   everyone on page 1. This function inspects every staker before deciding
     *   the winner of each rank, so the result is always globally correct.
     *
     * @param _n  How many top stakers to return; capped at MAX_TOP_N (100).
     */
    function getTopStakersByPoints(
        uint256 _n
    )
        external
        view
        returns (
            address[] memory addresses,
            uint256[] memory stakedAmounts,
            uint256[] memory points,
            uint256[] memory lastUpdateTimes
        )
    {
        if (_n > MAX_TOP_N) {
            _n = MAX_TOP_N;
        }

        uint256 total = stakerList.length;

        if (total == 0 || _n == 0) {
            return (
                new address[](0),
                new uint256[](0),
                new uint256[](0),
                new uint256[](0)
            );
        }

        uint256 resultSize = _n < total
            ? _n
            : total;

        addresses = new address[](
            resultSize
        );

        stakedAmounts = new uint256[](
            resultSize
        );

        points = new uint256[](
            resultSize
        );

        lastUpdateTimes = new uint256[](
            resultSize
        );

        // Track which stakers have already been placed into a rank slot.
        bool[] memory used = new bool[](
            total
        );

        for (uint256 rank = 0; rank < resultSize; rank++) {
            uint256 bestPoints = 0;
            uint256 bestIdx = 0;
            bool found = false;

            // Scan all stakers, skip already-ranked ones.
            for (uint256 i = 0; i < total; i++) {

                if (used[i]) {
                    continue;
                }

                uint256 pts = currentPoints(
                    stakerList[i]
                );
                if (!found || pts > bestPoints) {
                    bestPoints = pts;
                    bestIdx    = i;
                    found      = true;
                }
            }

            if (!found) {
                break;
            }

            used[bestIdx] = true;
            address winner = stakerList[
                bestIdx
            ];

            addresses[rank] = winner;
            stakedAmounts[rank] = stakers[winner].stakedAmount;
            points[rank] = bestPoints;
            lastUpdateTimes[rank] = stakers[winner].lastUpdateTime;
        }
    }

    /**
     * @notice Full info for a single staker including live points.
     */
    function getStakerInfo(
        address _user
    )
        external
        view
        returns (
            uint256 stakedAmount,
            uint256 totalPoints,
            uint256 lastUpdateTime,
            bool isActive
        )
    {
        StakerInfo storage info = stakers[
            _user
        ];

        return (
            info.stakedAmount,
            currentPoints(_user),
            info.lastUpdateTime,
            info.isActive
        );
    }

    // ------------------------------------------------------------------ //
    //  Safety
    // ------------------------------------------------------------------ //

    /**
     * @notice Rescue tokens accidentally sent to this contract.
     *         Cannot drain staked WISEr – only the surplus above totalStaked.
     */
    function rescueTokens(
        address _token,
        uint256 _amount,
        address _to
    )
        external
        onlyOwner
    {
        require(
            _to != address(0),
            "ZERO_ADDRESS"
        );

        if (_token == address(wiserToken)) {
            uint256 contractBal = IERC20(_token).balanceOf(address(this));
            require(
                _amount <= contractBal && contractBal - _amount >= totalStaked,
                "WOULD_DRAIN_STAKED_TOKENS"
            );
        }

        require(
            IERC20(_token).transfer(_to, _amount),
            "TRANSFER_FAILED"
        );
    }
}
