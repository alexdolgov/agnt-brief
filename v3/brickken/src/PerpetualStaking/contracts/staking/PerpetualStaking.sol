/// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";

/// @title PerpetualStaking
/// @custom:security-contact tech@brickken.com
contract PerpetualStaking is OwnableUpgradeable {
    using Math for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using EnumerableMap for EnumerableMap.UintToUintMap;

    IERC20Upgradeable public BKNToken;

    uint256 private constant ONE = 1e18; // 100% scaled by 1e18
    uint256 private constant SECONDS_IN_A_YEAR = 365 days;

    bool public isDepositable;
    bool public isClaimable;

    uint256 private DEPRECATED_1;
    uint256 private DEPRECATED_2;
    uint256 public yieldPerYear; // 15% per year, 15e16
    uint256 public yieldPerSecond; // yieldPerYear / SECONDS_IN_A_YEAR
    uint256 private DEPRECATED_3;

    /*
        Solvency model (simple interest with piecewise yields):

        For user i with principal d_i and deposit time t0_i, the current value at time t is:
            value_i(t) = d_i * (1 + C(t) - C(t0_i))

        Where: 
        C(t) := cumulative yield integral = ∫ y(s) ds,
                where y(s) is the per-second yield rate (1e18-scaled).

        Define:
            A := totalDeposited = Σ d_i
            B := sumDepositsTimesCumulativeYield = Σ (d_i * C(t0_i))

        Then solvency is:
            S(t) = A + A*C(t) - B

        On deposit of d at time t0:
            A += d
            B += d * C(t0)

        On exit of d originally at t0:
            A -= d
            B -= d * C(t0)
    */

    uint256 public totalDeposited; // A = Σ d_i
    uint256 public DEPRECATED_4;
    uint256 public yieldUpToDeposit;

    struct UserStake {
        uint256 amountDeposited; // principal (d_i)
        uint256 latestDepositTimestamp; // t0_i (resets on compound)
    }

    mapping(address => UserStake) public userStakes;

    bool public isCompoundable;
    uint256 private DEPRECATED_6;

    uint256 public sumDepositsTimesCumulativeYield; // B = Σ d_i * C(t0_i) (1e18-scaled * tokens)

    EnumerableMap.UintToUintMap private yieldSchedule;

    error DepositsAreClosed();
    error ClaimsAreClosed();
    error CompoundIsClosed();
    error NotEnoughToClaim();
    error NotEnoughToDeposit();
    error ContractHasNotEnoughBalance(uint256 claimingAmount, uint256 balance);
    error AlreadyDeposited(address user);
    error InvalidStartTime();
    error StartTimeMustIncrease();

    uint256[33] __gap;

    modifier whenDepositable() {
        require(isDepositable, DepositsAreClosed());
        _;
    }
    modifier whenClaimable() {
        require(isClaimable, ClaimsAreClosed());
        _;
    }
    modifier whenCompoundable() {
        require(isCompoundable, CompoundIsClosed());
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function reinitialize(address _BKN) external reinitializer(3) {
        BKNToken = IERC20Upgradeable(_BKN);
        sumDepositsTimesCumulativeYield = yieldUpToDeposit;
    }

    function initialize(address _BKN, address _owner) external initializer {
        BKNToken = IERC20Upgradeable(_BKN);

        __Ownable_init_unchained();
        __Context_init_unchained();
        _transferOwnership(_owner);

        isClaimable = true;
        isDepositable = true;
        isCompoundable = true;
        yieldPerYear = 150000000000000000;
        yieldPerSecond = yieldPerYear / SECONDS_IN_A_YEAR;
    }

    receive() external payable {
        assert(false);
    }

    function pauseDeposit() external onlyOwner {
        isDepositable = false;
    }
    function unpauseDeposit() external onlyOwner {
        isDepositable = true;
    }
    function pauseCompound() external onlyOwner {
        isCompoundable = false;
    }
    function unpauseCompound() external onlyOwner {
        isCompoundable = true;
    }
    function pauseClaim() external onlyOwner {
        isClaimable = false;
    }
    function unpauseClaim() external onlyOwner {
        isClaimable = true;
    }

    function removeTokens(
        IERC20Upgradeable token,
        address to,
        uint256 amount
    ) external onlyOwner {
        token.safeTransfer(to, amount);
    }

    function changeUserAddress(address from, address to) external onlyOwner {
        userStakes[to] = userStakes[from];
        delete userStakes[from];
    }

    /// @notice Add a yield change starting at `startTime`.
    /// @dev Must be called with strictly increasing `startTime` values.
    /// @param yieldRatePerYear APY in 1e18 scale (e.g., 15% => 0.15e18).
    /// @param startTime UNIX timestamp strictly greater than now and the last inserted one.
    function addYieldChange(
        uint256 yieldRatePerYear,
        uint256 startTime
    ) external onlyOwner {
        require(startTime >= block.timestamp, InvalidStartTime());

        uint256 ratePerSecond = yieldRatePerYear / SECONDS_IN_A_YEAR;

        uint256 n = yieldSchedule.length();
        if (n > 0) {
            (uint256 lastStart, ) = yieldSchedule.at(n - 1);
            require(startTime > lastStart, StartTimeMustIncrease());
        }

        yieldSchedule.set(startTime, ratePerSecond);
    }

    /// @notice Remove a yield change at an exact `startTime`.
    function removeYieldChange(uint256 startTime) external onlyOwner {
        yieldSchedule.remove(startTime);
    }

    /// @notice Current active yield rate and its start time.
    function getCurrentYieldRate()
        public
        view
        returns (uint256 currentYieldRate, uint256 currentStartTime)
    {
        currentYieldRate = yieldPerSecond;
        currentStartTime = 0;

        uint256 n = yieldSchedule.length();
        for (uint256 i = 0; i < n; i++) {
            (uint256 timestamp, uint256 rate) = yieldSchedule.at(i);
            if (timestamp > block.timestamp) break;
            currentYieldRate = rate;
            currentStartTime = timestamp;
        }
    }

    /// @notice Deposit principal for `user`.
    function deposit(address user, uint256 amount) external whenDepositable {
        require(userStakes[user].amountDeposited == 0, AlreadyDeposited(user));

        BKNToken.safeTransferFrom(user, address(this), amount);

        uint256 t0 = block.timestamp;
        userStakes[user] = UserStake({
            amountDeposited: amount,
            latestDepositTimestamp: t0
        });

        // A += d
        totalDeposited += amount;

        // B += d * C(t0)
        uint256 Ct0 = _cumulativeYield(t0);
        sumDepositsTimesCumulativeYield += amount * Ct0;
    }

    /// @notice Compound on-demand: harvest simple interest up to now, add it to principal,
    /// (optionally) add extra `amount`, and restart from now.
    function compoundAndDeposit(
        address user,
        uint256 amount
    ) external whenCompoundable {
        uint256 principal = userStakes[user].amountDeposited;
        if (principal == 0 && amount == 0) revert NotEnoughToDeposit();

        if (amount > 0) {
            require(isDepositable, DepositsAreClosed());
            BKNToken.safeTransferFrom(user, address(this), amount);
        }

        uint256 Cnow = _cumulativeYield(block.timestamp);
        uint256 interest = 0;

        if (principal > 0) {
            uint256 t0 = userStakes[user].latestDepositTimestamp;
            uint256 Ct0 = _cumulativeYield(t0);

            // simple interest on principal: principal * (C(now) - C(t0)) / 1e18
            interest = Math.mulDiv(principal, (Cnow - Ct0), ONE);

            // remove old stake from A and B
            totalDeposited -= principal;
            sumDepositsTimesCumulativeYield -= principal * Ct0;
        }

        uint256 newPrincipal = principal + interest + amount;

        // restart stake at now
        userStakes[user].amountDeposited = newPrincipal;
        userStakes[user].latestDepositTimestamp = block.timestamp;

        // add new stake to A and B
        totalDeposited += newPrincipal;
        sumDepositsTimesCumulativeYield += newPrincipal * Cnow;
    }

    /// @notice Claim full balance (principal + simple interest).
    function claim(address user) external whenClaimable {
        uint256 principal = userStakes[user].amountDeposited;
        require(principal > 0, NotEnoughToClaim());

        uint256 t0 = userStakes[user].latestDepositTimestamp;
        uint256 Cnow = _cumulativeYield(block.timestamp);
        uint256 Ct0 = _cumulativeYield(t0);

        uint256 interest = Math.mulDiv(principal, (Cnow - Ct0), ONE);
        uint256 payout = principal + interest;

        // Update A and B
        totalDeposited -= principal;
        sumDepositsTimesCumulativeYield -= principal * Ct0;

        delete userStakes[user];

        uint256 bal = BKNToken.balanceOf(address(this));
        if (payout > bal) revert ContractHasNotEnoughBalance(payout, bal);

        BKNToken.safeTransfer(user, payout);
    }

    /// @notice Total liabilities if everyone withdrew now (simple interest).
    /// S(t) = A + A*C(t) - B
    function getTotalFundsNeeded() public view returns (uint256) {
        uint256 Cnow = _cumulativeYield(block.timestamp);
        uint256 Act = totalDeposited * Cnow;
        return
            totalDeposited +
            Math.mulDiv(1, (Act - sumDepositsTimesCumulativeYield), ONE);
    }

    function getNetOwed() external view returns (uint256) {
        uint256 currentLiabilities = getTotalFundsNeeded();
        uint256 currentAssets = BKNToken.balanceOf(address(this));
        if (currentLiabilities > currentAssets) {
            return currentLiabilities - currentAssets;
        } else {
            return 0;
        }
    }

    /// @notice User withdrawable balance = principal + simple interest since last (re)deposit.
    function getWithdrawableUserBalance(
        address user
    ) public view returns (uint256) {
        uint256 principal = userStakes[user].amountDeposited;
        if (principal == 0) return 0;

        uint256 Cnow = _cumulativeYield(block.timestamp);
        uint256 Ct0 = _cumulativeYield(userStakes[user].latestDepositTimestamp);
        uint256 interest = Math.mulDiv(principal, (Cnow - Ct0), ONE);

        return principal + interest;
    }

    /// @dev Computes C(t) = ∫y(s)ds from s=0 to s=t, with piecewise y(s).
    /// @param targetTimestamp target timestamp
    /// @return cumulativeYield cumulative yield (1e18 * seconds)
    function _cumulativeYield(
        uint256 targetTimestamp
    ) private view returns (uint256 cumulativeYield) {
        uint256 n = yieldSchedule.length();

        if (n == 0) {
            return yieldPerSecond * targetTimestamp;
        }

        uint256 prevStart = 0;
        uint256 prevRate = yieldPerSecond;

        for (uint256 i = 0; i < n; i++) {
            (uint256 startTime, uint256 rate) = yieldSchedule.at(i);
            if (targetTimestamp <= startTime) {
                cumulativeYield += prevRate * (targetTimestamp - prevStart);
                return cumulativeYield;
            }
            cumulativeYield += prevRate * (startTime - prevStart);
            prevStart = startTime;
            prevRate = rate;
        }

        cumulativeYield += prevRate * (targetTimestamp - prevStart);

        return cumulativeYield;
    }
}
