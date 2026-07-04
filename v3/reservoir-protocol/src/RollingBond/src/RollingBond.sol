// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20Metadata} from "openzeppelin-contracts/contracts/interfaces/IERC20Metadata.sol";
import {IERC20} from "openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {AccessControl} from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {ERC4626} from "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";
import {Math} from "openzeppelin-contracts/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @dev Interface for the protocol-controlled stablecoin used as the vault's underlying asset.
 *      The vault burns tokens from the depositor on deposit and mints tokens to the receiver
 *      on redemption. Any asset contract used with this vault MUST implement both functions.
 *      A malicious or non-compliant asset contract could break deposit/redemption flows.
 */
interface IStablecoin {
    function mint(address, uint256) external;
    function burnFrom(address, uint256) external;
}

/**
 * @title RollingBond
 * @notice ERC4626 vault implementing rolling bond mechanics with lock-up redemption
 * @dev Users deposit assets to receive shares that continuously accrue yield at a variable rate.
 *
 *      Yield behaviour during redemption:
 *        - While holding shares freely:        yield accrues continuously.
 *        - During lock-up (request → unlock):  yield continues to accrue at the current rate.
 *        - During redemption window:           yield is FROZEN at the exact unlock timestamp.
 *        - The payout is therefore the value the shares had at the moment the lock-up ended,
 *          regardless of when within the window the user calls completeRedemption().
 *
 *      To reconstruct the cumulative factor at any past timestamp (necessary to freeze yield
 *      at unlockTime even when rates change mid-lockup), all rate changes are recorded in
 *      `rateHistory`. _getFactorAt() integrates across these intervals to return the exact
 *      factor at an arbitrary historical or present timestamp.
 *
 *      Users can also redeem instantly by paying an early redemption fee; that path uses the
 *      live cumulative factor at call time.
 */
contract RollingBond is AccessControl, ERC4626, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 public constant RAY = 1e27;
    uint256 public immutable REDEMPTION_WINDOW;

    /// @notice Maximum per-second rate (~3150% APY; prevents overflow in _compoundFactor with 100yr timeDelta)
    uint256 public constant MAX_RATE = 1_000_000_000_000_000_000_000; // 1e21
    /// @notice Maximum allowed lockup period
    uint256 public constant MAX_LOCKUP_PERIOD = 365 days;

    bytes32 public constant MANAGER = keccak256(abi.encode("rollingbond.manager"));

    // Events
    event CapUpdated(uint256 oldCap, uint256 newCap);
    event RateUpdated(uint256 oldRate, uint256 newRate, uint256 timestamp);
    event EarlyRedemptionFeeUpdated(uint256 oldFee, uint256 newFee);
    event RedemptionRequested(address indexed user, uint256 shares, uint256 requestTime, uint256 unlockTime);
    event RedemptionCancelled(address indexed user, uint256 shares);
    event RedemptionCompleted(address indexed user, address indexed receiver, uint256 shares, uint256 assets);
    event EarlyRedemption(address indexed user, address indexed receiver, uint256 shares, uint256 assets, uint256 fee);

    // Configuration
    uint256 public cap;
    uint256 public lockupPeriod; // in seconds
    uint256 public currentRate; // per second rate in RAY format
    uint256 public earlyRedemptionFee; // in RAY format (e.g., 0.05e27 = 5%)

    // State tracking
    uint256 public lastUpdateTimestamp;
    uint256 public cumulativeRateFactor; // cumulative compound factor

    /**
     * @dev One entry per rate interval. The rate stored in interval[i] is active from
     *      interval[i].startTimestamp up to (but not including) interval[i+1].startTimestamp.
     *      The most recent interval's rate stays active until the next setRate() call.
     *      Appended to only on deployment and on each setRate() call.
     */
    struct RateInterval {
        uint256 startTimestamp;          // when this rate became active
        uint256 cumulativeFactorAtStart; // cumulativeRateFactor at startTimestamp
        uint256 rate;                    // per-second rate active from startTimestamp
    }
    RateInterval[] public rateHistory;

    // Redemption request tracking
    struct RedemptionRequest {
        uint256 shares;
        uint256 requestTime;
        uint256 unlockTime; // stored at request time — unaffected by future lockupPeriod changes
        // NOTE: yieldFactorAtRequest removed. Payout is now computed via _getFactorAt(unlockTime),
        // which yields the exact cumulative factor at the end of the lock-up period regardless
        // of rate changes that occurred during the lock-up.
    }

    mapping(address => RedemptionRequest) public redemptionRequests;

    constructor(
        address admin,
        string memory name,
        string memory symbol,
        IERC20Metadata asset,
        uint256 _lockupPeriod,
        uint256 _redemptionWindow,
        uint256 initialRate,
        uint256 initialEarlyRedemptionFee
    ) ERC20(name, symbol) ERC4626(asset) {
        require(_lockupPeriod <= MAX_LOCKUP_PERIOD, "Lockup period exceeds maximum");
        require(initialRate <= MAX_RATE, "Rate exceeds maximum");

        _grantRole(DEFAULT_ADMIN_ROLE, admin);

        lockupPeriod = _lockupPeriod;
        REDEMPTION_WINDOW = _redemptionWindow;
        currentRate = initialRate;
        earlyRedemptionFee = initialEarlyRedemptionFee;

        lastUpdateTimestamp = block.timestamp;
        cumulativeRateFactor = RAY;
        cap = 0;

        // Seed rate history with the initial rate interval
        rateHistory.push(RateInterval({
            startTimestamp: block.timestamp,
            cumulativeFactorAtStart: RAY,
            rate: initialRate
        }));
    }

    // ============================================
    // ADMIN FUNCTIONS
    // ============================================

    /**
     * @notice Sets the notional cap for total assets
     * @param newCap The new cap value
     */
    function setCap(uint256 newCap) external onlyRole(MANAGER) {
        emit CapUpdated(cap, newCap);
        cap = newCap;
    }

    /**
     * @notice Updates the yield rate
     * @dev Before changing the rate, the cumulative factor is updated and a new RateInterval
     *      is pushed to rateHistory. This allows _getFactorAt() to reconstruct the exact
     *      factor at any past timestamp, even when multiple rate changes have occurred during
     *      an active lock-up period.
     * @param newRate The new rate per second in RAY format
     */
    function setRate(uint256 newRate) external onlyRole(MANAGER) {
        require(newRate <= MAX_RATE, "Rate exceeds maximum");
        _updateCumulativeFactor();

        // Snapshot the current state before the rate changes so _getFactorAt() can integrate
        // across this interval correctly.
        rateHistory.push(RateInterval({
            startTimestamp: block.timestamp,
            cumulativeFactorAtStart: cumulativeRateFactor,
            rate: newRate
        }));

        emit RateUpdated(currentRate, newRate, block.timestamp);
        currentRate = newRate;
    }

    /**
     * @notice Updates the early redemption fee
     * @param newFee The new fee in RAY format (e.g., 0.05e27 = 5%)
     */
    function setEarlyRedemptionFee(uint256 newFee) external onlyRole(MANAGER) {
        require(newFee <= RAY, "Fee cannot exceed 100%");
        emit EarlyRedemptionFeeUpdated(earlyRedemptionFee, newFee);
        earlyRedemptionFee = newFee;
    }

    /**
     * @notice Recovers accidentally sent tokens
     * @param token The token to recover
     * @param receiver The address to send recovered tokens to
     */
    function recover(address token, address receiver) external onlyRole(MANAGER) {
        require(receiver != address(0), "Invalid receiver");
        require(token != asset(), "Cannot recover asset token");
        IERC20 tokenContract = IERC20(token);
        tokenContract.safeTransfer(receiver, tokenContract.balanceOf(address(this)));
    }

    // ============================================
    // DEPOSIT FUNCTIONS
    // ============================================

    /**
     * @dev Internal deposit function - updates state and mints shares.
     *
     * CEI note: `burnFrom` (external call) is executed before `_mint` (state update).
     * This is intentional — shares are not yet issued at the time of the external call,
     * so a re-entrant call would observe an unadulterated share price and receive a fair
     * share count. The asset contract is trusted (protocol-controlled rUSD); a malicious
     * asset could exploit this ordering, so the asset trust boundary is the security perimeter.
     * The public `deposit()` inherited from ERC4626 is NOT guarded by `nonReentrant` — the
     * asset contract is the trust boundary here.
     *
     * Cap enforcement is handled upstream by `maxDeposit()`, which the ERC4626 base
     * `deposit()` checks before invoking this function (reverting with
     * `ERC4626ExceededMaxDeposit` when exceeded).
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override {
        _updateCumulativeFactor();

        IStablecoin(asset()).burnFrom(caller, assets);
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, shares);
    }

    // ============================================
    // REDEMPTION REQUEST FUNCTIONS
    // ============================================

    /**
     * @notice Request a redemption with lock-up period
     * @dev Yield continues to accrue during the lock-up. The payout is frozen at the
     *      cumulative factor as of `unlockTime`, computed retrospectively by _getFactorAt()
     *      when completeRedemption() is called.
     * @param shares The amount of shares to redeem
     */
    function requestRedemption(uint256 shares) external nonReentrant {
        require(shares > 0, "Cannot request zero shares");

        RedemptionRequest memory existingRequest = redemptionRequests[msg.sender];

        // Auto-clear if existing request is expired
        if (existingRequest.shares > 0) {
            uint256 windowEnd = existingRequest.unlockTime + REDEMPTION_WINDOW;
            if (block.timestamp > windowEnd) {
                // Expired - auto-clear it and return locked shares
                delete redemptionRequests[msg.sender];
                _transfer(address(this), msg.sender, existingRequest.shares);
                emit RedemptionCancelled(msg.sender, existingRequest.shares);
            } else {
                // Not expired - still active
                revert("Existing request pending");
            }
        }

        // Check balance AFTER auto-clearing expired requests
        require(balanceOf(msg.sender) >= shares, "Insufficient balance");

        _updateCumulativeFactor();

        uint256 unlockTime = block.timestamp + lockupPeriod;

        redemptionRequests[msg.sender] = RedemptionRequest({
            shares: shares,
            requestTime: block.timestamp,
            unlockTime: unlockTime
        });

        // Lock shares in the vault for the duration of the lockup period
        _transfer(msg.sender, address(this), shares);

        emit RedemptionRequested(msg.sender, shares, block.timestamp, unlockTime);
    }

    /**
     * @notice Cancel a pending redemption request
     */
    function cancelRedemption() external nonReentrant {
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        require(request.shares > 0, "No pending request");

        uint256 shares = request.shares;
        delete redemptionRequests[msg.sender];

        // Return the locked shares to the user
        _transfer(address(this), msg.sender, shares);

        emit RedemptionCancelled(msg.sender, shares);
    }

    /**
     * @notice Complete a redemption after lock-up period
     * @dev Payout uses the cumulative factor at exactly `unlockTime` — yield accrued during
     *      the lock-up is included; no additional yield accrues during the redemption window.
     *      The factor is reconstructed from rateHistory via _getFactorAt(), ensuring correctness
     *      even when the yield rate changed one or more times during the lock-up.
     * @param receiver The address to receive the assets
     * @return assets The amount of assets received
     */
    function completeRedemption(address receiver) external nonReentrant returns (uint256 assets) {
        require(receiver != address(0), "Invalid receiver");
        RedemptionRequest memory request = redemptionRequests[msg.sender];
        require(request.shares > 0, "No pending request");

        // Use unlock time stored at request time — unaffected by subsequent lockupPeriod changes
        uint256 unlockTime = request.unlockTime;
        require(block.timestamp >= unlockTime, "Lock-up period not finished");

        uint256 windowEnd = unlockTime + REDEMPTION_WINDOW;
        require(block.timestamp <= windowEnd, "Redemption window expired");

        _updateCumulativeFactor();

        // Yield is frozen at the factor that existed exactly at unlockTime.
        // Using _getFactorAt() instead of the current factor enforces the rule that no yield
        // accrues during the redemption window, regardless of when in the window the user redeems.
        uint256 factorAtUnlock = _getFactorAt(unlockTime);
        assets = Math.mulDiv(request.shares, factorAtUnlock, RAY);

        delete redemptionRequests[msg.sender];

        // Shares were locked in the vault at requestRedemption time; burn them from here
        _burn(address(this), request.shares);
        IStablecoin(asset()).mint(receiver, assets);

        emit RedemptionCompleted(msg.sender, receiver, request.shares, assets);
    }

    /**
     * @notice Redeem immediately by paying early redemption fee
     * @dev Uses the live current cumulative factor — shares continue earning yield right up
     *      until this call. No lock-up period applies; fee is charged instead.
     * @param shares The amount of shares to redeem
     * @param receiver The address to receive the assets
     * @param minAssetsOut Minimum assets to receive — reverts if slippage exceeds this (use 0 to disable)
     * @return assets The amount of assets received (after fee)
     */
    function redeemEarly(uint256 shares, address receiver, uint256 minAssetsOut) external nonReentrant returns (uint256 assets) {
        require(receiver != address(0), "Invalid receiver");
        require(shares > 0, "Cannot redeem zero shares");

        RedemptionRequest memory existingRequest = redemptionRequests[msg.sender];

        // Auto-clear if existing request is expired
        if (existingRequest.shares > 0) {
            uint256 windowEnd = existingRequest.unlockTime + REDEMPTION_WINDOW;
            if (block.timestamp > windowEnd) {
                // Expired - auto-clear it and return locked shares
                delete redemptionRequests[msg.sender];
                _transfer(address(this), msg.sender, existingRequest.shares);
                emit RedemptionCancelled(msg.sender, existingRequest.shares);
            } else {
                // Not expired - still active
                revert("Cancel pending request first");
            }
        }

        // Check balance AFTER auto-clearing expired requests
        require(balanceOf(msg.sender) >= shares, "Insufficient balance");

        _updateCumulativeFactor();

        // Calculate assets based on current value
        uint256 assetsBeforeFee = convertToAssets(shares);
        uint256 feeAmount = (assetsBeforeFee * earlyRedemptionFee) / RAY;
        assets = assetsBeforeFee - feeAmount;

        if (assets < minAssetsOut) revert("Slippage exceeded");

        _burn(msg.sender, shares);
        IStablecoin(asset()).mint(receiver, assets);

        emit EarlyRedemption(msg.sender, receiver, shares, assets, feeAmount);
    }

    // ============================================
    // VIEW FUNCTIONS
    // ============================================

    /**
     * @notice Get redemption request details for a user
     * @param user The user address
     * @return shares The shares requested
     * @return requestTime When the request was made
     * @return unlockTime When the lock-up ends (stored at request time)
     * @return windowEnd When the redemption window closes
     * @return canRedeem Whether redemption is currently possible
     */
    function getRedemptionRequest(address user) external view returns (
        uint256 shares,
        uint256 requestTime,
        uint256 unlockTime,
        uint256 windowEnd,
        bool canRedeem
    ) {
        RedemptionRequest memory request = redemptionRequests[user];
        shares = request.shares;
        requestTime = request.requestTime;
        unlockTime = request.unlockTime;
        windowEnd = unlockTime + REDEMPTION_WINDOW;
        canRedeem = request.shares > 0 &&
                    block.timestamp >= unlockTime &&
                    block.timestamp <= windowEnd;
    }

    /**
     * @notice Preview assets that would be received from completing a redemption
     * @dev During the lock-up period, the returned value grows continuously as yield accrues.
     *      Once the lock-up ends (i.e. block.timestamp >= unlockTime), the value is frozen at
     *      the factor that existed at unlockTime — reflecting the "no yield during window" rule.
     * @param user The user address
     * @return assets The amount of assets that would be received (0 if no active request)
     */
    function previewCompleteRedemption(address user) external view returns (uint256 assets) {
        RedemptionRequest memory request = redemptionRequests[user];
        if (request.shares == 0) return 0;

        // During lockup: use the live (growing) factor so the preview reflects accruing yield.
        // During window: cap at unlockTime so the preview correctly shows the frozen payout.
        uint256 effectiveTimestamp = block.timestamp < request.unlockTime
            ? block.timestamp
            : request.unlockTime;

        return Math.mulDiv(request.shares, _getFactorAt(effectiveTimestamp), RAY);
    }

    /**
     * @notice Preview assets for early redemption (after fee)
     * @param shares The amount of shares to redeem
     * @return assets The amount of assets after fee
     * @return fee The fee amount
     */
    function previewRedeemEarly(uint256 shares) external view returns (uint256 assets, uint256 fee) {
        uint256 assetsBeforeFee = convertToAssets(shares);
        fee = (assetsBeforeFee * earlyRedemptionFee) / RAY;
        assets = assetsBeforeFee - fee;
    }

    /**
     * @notice Calculate current APY based on the rate
     * @return apy The annual percentage yield in RAY format
     */
    function apy() external view returns (uint256) {
        uint256 secondsInYear = 365 days;
        return _compoundFactor(currentRate, secondsInYear);
    }

    /**
     * @notice Get the current cumulative rate factor
     * @return factor The current cumulative factor
     */
    function getCurrentCumulativeFactor() external view returns (uint256) {
        return _getCurrentCumulativeFactor();
    }

    /**
     * @notice Returns the number of rate intervals stored in history
     */
    function rateHistoryLength() external view returns (uint256) {
        return rateHistory.length;
    }

    // ============================================
    // ERC4626 OVERRIDES
    // ============================================

    /**
     * @dev Disable standard withdraw - use redemption request system instead
     */
    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }

    /**
     * @dev Disable standard redeem - use redemption request system instead
     */
    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert("Use redemption request system");
    }

    /**
     * @dev Disable mint function
     */
    function mint(uint256, address) public pure override returns (uint256) {
        revert("Use deposit function");
    }

    /**
     * @notice Preview assets received for redeeming shares via the request/complete flow
     * @dev Returns the amount a user would receive if they call requestRedemption NOW and
     *      complete after the lockup — this is the live current factor (yield still accruing),
     *      representing the maximum value the shares have at this moment.
     *
     *      IMPORTANT DISTINCTION:
     *      - `previewRedeem(shares)` always uses the CURRENT live factor. It answers:
     *        "What is the current asset value of these shares?"
     *      - `previewCompleteRedemption(user)` uses _getFactorAt(min(now, unlockTime)).
     *        It answers: "Given my existing pending request, what will I receive?"
     *      During the lock-up (block.timestamp < unlockTime) both functions use the
     *      live factor and return equivalent values for the same share count.
     *      They diverge only once the lock-up ends (block.timestamp >= unlockTime):
     *      previewCompleteRedemption freezes at unlockTime while previewRedeem continues
     *      to grow — reflecting yield that accrues during the redemption window.
     *
     *      This is an ERC4626 override. Standard redeem() is disabled; use completeRedemption().
     * @param shares The amount of shares to redeem
     * @return assets The amount of assets (at current cumulative factor, no fee)
     */
    function previewRedeem(uint256 shares) public view override returns (uint256) {
        return Math.mulDiv(shares, _getCurrentCumulativeFactor(), RAY);
    }

    /**
     * @dev Convert assets to shares accounting for accrued yield
     * @notice Divides assets by cumulative factor to maintain fair share price
     * @param assets Amount of assets to convert
     * @param rounding Rounding direction for the conversion
     * @return shares Amount of shares corresponding to the assets
     */
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override returns (uint256) {
        uint256 currentFactor = _getCurrentCumulativeFactor();
        return Math.mulDiv(assets, RAY, currentFactor, rounding);
    }

    /**
     * @dev Convert shares to assets including accrued yield
     */
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override returns (uint256) {
        uint256 currentFactor = _getCurrentCumulativeFactor();
        return Math.mulDiv(shares, currentFactor, RAY, rounding);
    }

    /**
     * @notice Total assets in the vault
     */
    function totalAssets() public view override returns (uint256) {
        return _convertToAssets(totalSupply(), Math.Rounding.Floor);
    }

    /**
     * @notice Maximum deposit allowed
     */
    function maxDeposit(address) public view override returns (uint256) {
        if (cap == 0) {
            return type(uint256).max;
        }
        uint256 currentAssets = totalAssets();
        if (currentAssets >= cap) {
            return 0;
        }
        return cap - currentAssets;
    }

    /**
     * @notice Maximum withdraw is 0 (must use redemption system)
     */
    function maxWithdraw(address) public pure override returns (uint256) {
        return 0;
    }

    /**
     * @notice Maximum redeem is 0 (must use redemption system)
     */
    function maxRedeem(address) public pure override returns (uint256) {
        return 0;
    }

    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================

    /**
     * @dev Update the cumulative rate factor
     */
    function _updateCumulativeFactor() internal {
        if (block.timestamp == lastUpdateTimestamp) {
            return;
        }

        // Only compound factor if shares exist to prevent inflation before first deposit
        if (totalSupply() > 0) {
            uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
            uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);

            cumulativeRateFactor = Math.mulDiv(cumulativeRateFactor, growthFactor, RAY);
        }

        lastUpdateTimestamp = block.timestamp;
    }

    /**
     * @dev Get current cumulative factor without updating state
     */
    function _getCurrentCumulativeFactor() internal view returns (uint256) {
        if (block.timestamp == lastUpdateTimestamp) {
            return cumulativeRateFactor;
        }

        // Only compound if shares exist to prevent inflation before first deposit
        if (totalSupply() == 0) {
            return cumulativeRateFactor;
        }

        uint256 timeElapsed = block.timestamp - lastUpdateTimestamp;
        uint256 growthFactor = _compoundFactor(currentRate, timeElapsed);

        return Math.mulDiv(cumulativeRateFactor, growthFactor, RAY);
    }

    /**
     * @dev Reconstruct the cumulative rate factor at an arbitrary past or present timestamp.
     *
     *      Algorithm:
     *        1. If targetTimestamp is at or after the current block, return the live factor
     *           (avoids future-projection; _getCurrentCumulativeFactor handles the present).
     *        2. Walk rateHistory in reverse to find the interval whose startTimestamp is ≤
     *           targetTimestamp. Compound that interval's opening factor forward by the elapsed
     *           seconds using the rate active during that interval.
     *        3. Falls back to RAY if targetTimestamp precedes all history (edge case: should
     *           not occur in practice since history is seeded at construction time).
     *
     *      Gas: rateHistory grows only on setRate() calls (admin-gated, infrequent). A linear
     *      reverse scan is acceptable for expected array sizes (<< 1000 elements over a vault's
     *      lifetime). A binary search can be substituted if history grows large.
     *
     * @param targetTimestamp The timestamp at which to evaluate the cumulative factor
     * @return factor The cumulative rate factor at targetTimestamp
     */
    function _getFactorAt(uint256 targetTimestamp) internal view returns (uint256) {
        // If target is at or past the current block, use the live (possibly un-persisted) value
        if (targetTimestamp >= block.timestamp) {
            return _getCurrentCumulativeFactor();
        }

        // Scan backward through rate history to find the enclosing interval
        uint256 len = rateHistory.length;
        for (uint256 i = len; i > 0; i--) {
            RateInterval memory interval = rateHistory[i - 1];
            if (interval.startTimestamp <= targetTimestamp) {
                uint256 elapsed = targetTimestamp - interval.startTimestamp;
                if (elapsed == 0) return interval.cumulativeFactorAtStart;
                uint256 growth = _compoundFactor(interval.rate, elapsed);
                return Math.mulDiv(interval.cumulativeFactorAtStart, growth, RAY);
            }
        }

        // Fallback: target is before the first recorded interval (shouldn't happen)
        return RAY;
    }

    /**
     * @dev Calculate compound factor using Taylor series approximation
     * @param rate The rate per second in RAY format
     * @param timeDelta The time period in seconds
     * @return The compound factor in RAY format
     */
    function _compoundFactor(
        uint256 rate,
        uint256 timeDelta
    ) internal pure returns (uint256) {
        // Binomial expansion of (1 + rate)^timeDelta, truncated to 4 terms:
        //   1 + t·r + t(t-1)/2 · r² + t(t-1)(t-2)/6 · r³
        // This is equivalent to per-second discrete compounding to 3rd order.
        // For practical rates (≤ MAX_RATE) and realistic time periods this
        // gives results indistinguishable from continuous compounding (e^(r·t)).

        if (timeDelta == 0 || rate == 0) {
            return RAY;
        }

        require(timeDelta <= 100 * 365 days, "Time delta too large");

        uint256 rt = rate * timeDelta;

        uint256 term1 = RAY;
        uint256 term2 = rt;

        if (timeDelta == 1) {
            return term1 + term2;
        }

        uint256 term3 = ((timeDelta - 1) * timeDelta * ((rate * rate) / RAY)) / 2;

        if (timeDelta == 2) {
            return term1 + term2 + term3;
        }

        uint256 term4 = (timeDelta * (timeDelta - 1) * (timeDelta - 2) * ((rate * rate) / RAY) * rate) / RAY / 6;

        return term1 + term2 + term3 + term4;
    }
}
