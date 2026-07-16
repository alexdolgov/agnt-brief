// SPDX-License-Identifier: MIT

/**
 *⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *
 *      - Defining Successful Future -
 *
 * @title DSFuserDataMk2_Aggregated
 * @author DSF.Finance
 * @notice Aggregated read-only user analytics for DSF LP:
 *         - Withdrawal amounts for each stablecoin (from defaultWithdrawPid only)
 *         - Round-trip efficiency (from defaultDepositPid only)
 *         - CVX/CRV holdings and earnings aggregated across ALL pools, then multiplied by user's LP share
 *         - User wallet balances and allowances via DSFHelper
 *
 * @dev Important conventions:
 * 1) Token index mapping everywhere in this contract:
 *      0 = DAI (18 decimals)
 *      1 = USDC (6 decimals)
 *      2 = USDT (6 decimals)
 *
 * 2) DSF uses `decimalsMultipliers(i) = 10^(18 - tokenDecimals)`:
 *      Normalization to 1e18 is: amountNorm1e18 = amountTokenUnits * multiplier
 *
 * 3) Test amount selection for efficiency calculations:
 *      - If user balance == 0: use FLOOR = 50_000 tokens
 *      - If user balance > 0:  use min(userBalance, CAP = 500_000 tokens)
 *      All values are converted to token units (with decimals) using DSF multipliers.
 *
 * 4) Pool semantics:
 *    - WithdrawalAmounts are computed ONLY from `defaultWithdrawPid()`.
 *    - RoundTripEfficiency is computed ONLY from `defaultDepositPid()`.
 *      If depositPid == 0: uses DSFHelper `estimateNetRoundTripByIndex()`.
 *      If depositPid > 0: uses strategy `getEfficiencyByIndex()`.
 *
 * 5) CVX/CRV aggregation:
 *    - Totals are summed across all pools [0..poolCount-1]
 *    - For pid == 0 it uses `pool0Oracle` (if provided).
 *    - For pid > 0 it calls strategy `getCVXCRVHoldings()`.
 *    - Final user values = totals * (userBalance / totalSupply)
 *
 * @custom:security This contract is view-only. No token transfers. Owner can only update addresses.
 * @custom:owner Owner can update: dsfLpContract, dsfHelperContract, pool0Oracle.
 */

pragma solidity ^0.8.33;

interface IDSFLP {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);

    function poolCount() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (PoolInfo memory);

    function defaultDepositPid() external view returns (uint256);
    function defaultWithdrawPid() external view returns (uint256);

    // from DSF: multipliers public
    function decimalsMultipliers(uint256 i) external view returns (uint256);

    struct PoolInfo {
        address strategy;
        uint256 startTime;
        uint256 lpShares;
    }
}

interface IDSFORACLE {
    function getCVXCRVHoldings() external view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    );
}

interface IDSFHelperMIM {
    function estimateStablecoinDepositValue(uint256 amount, uint128 tokenIndex) external view returns (uint256);
    function estimateNetRoundTripByIndex(uint256 amount, uint128 tokenIndex) external view returns (uint256);

    function getUserBalances(address user) external view returns (
        uint256 ethBalance,
        uint256 usdtBalance,
        uint256 usdcBalance,
        uint256 daiBalance
    );

    function getUserAllowances(address user, address spender) external view returns (
        uint256 usdtAllowance,
        uint256 usdcAllowance,
        uint256 daiAllowance
    );
}

interface IStrategyAnalytics {
    function calcWithdrawOneCoin(uint256 userRatioOfCrvLps, uint128 tokenIndex) external view returns (uint256);

    function getCVXCRVHoldings() external view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    );

    function getEfficiencyByIndex(uint256 amount, uint128 tokenIndex)
        external
        view
        returns (uint256 depositEfficiency1e18, uint256 roundTripEfficiency1e18);
}

contract DSFuserDataMk2_Aggregated {
    uint256 public constant ONE = 1e18;

    /// @dev Floor (if balance == 0), in whole tokens (not token-units)
    uint256 public FLOOR_TEST_AMOUNT = 50_000;

    /// @dev Cap (if balance > 0), in whole tokens (not token-units)
    uint256 public CAP_TEST_AMOUNT = 500_000;

    address public dsfLpContract;
    address public dsfHelperContract;
    address public owner;

    // oracle only for pid=0 (if pid=0 is not a strategy)
    address public pool0Oracle;

    event DSFLPContractUpdated(address indexed newAddress);
    event DSFHelperContractUpdated(address indexed newAddress);
    event Pool0OracleUpdated(address indexed newOracle);

    event TestAmountBoundsUpdated(uint256 newFloorWhole, uint256 newCapWhole);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    constructor(address _dsfLpContract, address _dsfHelperContract, address _pool0Oracle) {
        require(_dsfLpContract != address(0), "DSF: invalid DSF");
        require(_dsfHelperContract != address(0), "DSF: invalid helper");
        dsfLpContract = _dsfLpContract;
        dsfHelperContract = _dsfHelperContract;
        pool0Oracle = _pool0Oracle; // may be 0
        owner = msg.sender;
    }

    /**
     * @notice Updates DSF helper contract address.
     * @dev    Owner-only. The helper is used for:
     *         - user wallet balances (ETH / DAI / USDC / USDT)
     *         - user token allowances to DSF LP
     *         - round-trip estimation when defaultDepositPid == 0
     *
     *         Address must be non-zero to avoid breaking read-only analytics.
     *
     * @param  newAddress Address of the new DSFHelperMIM contract.
     */
    function setHelperContract(address newAddress) external onlyOwner {
        require(newAddress != address(0), "DSF: invalid helper");
        dsfHelperContract = newAddress;
        emit DSFHelperContractUpdated(newAddress);
    }

    /**
     * @notice Updates DSF LP core contract address.
     * @dev    Owner-only. This contract is the source of truth for:
     *         - totalSupply and user balances
     *         - pool configuration (deposit / withdraw pid)
     *         - decimalsMultipliers for token normalization
     *
     *         Address must be non-zero to preserve consistency of aggregated analytics.
     *
     * @param  newAddress Address of the new DSFLP contract.
     */
    function setDsfLpContract(address newAddress) external onlyOwner {
        require(newAddress != address(0), "DSF: invalid DSF");
        dsfLpContract = newAddress;
        emit DSFLPContractUpdated(newAddress);
    }

    /**
     * @notice Updates oracle contract used for CVX/CRV aggregation of pool with pid = 0.
     * @dev    Owner-only.
     *         Required only if pool 0 does not expose strategy analytics
     *         or has special accounting logic.
     *
     *         Oracle must implement IDSFORACLE interface.
     *         Zero address is disallowed to prevent silent data loss.
     *
     * @param  newOracle Address of the oracle contract for pool 0.
     */
    function setPool0Oracle(address newOracle) external onlyOwner {
        require(newOracle != address(0), "DSF: invalid oracle");
        pool0Oracle = newOracle;
        emit Pool0OracleUpdated(newOracle);
    }

    /**
     * @notice Update FLOOR/CAP bounds for efficiency test amount (whole tokens).
     * @dev    Owner-only. Bounds apply for all tokens (DAI/USDC/USDT) via decimals conversion.
     *
     * Rules:
     *  - newFloor > 0
     *  - newCap >= newFloor
     *  - newCap is not absurdly large (optional sanity cap can be added)
     */
    function setTestAmountBounds(uint256 newFloorWhole, uint256 newCapWhole) external onlyOwner {
        require(newFloorWhole > 0, "DSF: floor=0");
        require(newCapWhole >= newFloorWhole, "DSF: cap<floor");
        FLOOR_TEST_AMOUNT = newFloorWhole;
        CAP_TEST_AMOUNT = newCapWhole;
        emit TestAmountBoundsUpdated(newFloorWhole, newCapWhole);
    }

    /**
     * @notice Calculates share ratio (part / total) normalized to 1e18.
     * @dev    Returns 0 if part or total is zero.
     *         Reverts if the computed ratio exceeds 1e18, which would indicate
     *         inconsistent accounting or corrupted input.
     *
     * @param  part  Numerator value (e.g. user balance).
     * @param  total Denominator value (e.g. total supply or pool LP shares).
     * @return ratio Share ratio normalized to 1e18.
     */
    function _shareRatio(uint256 part, uint256 total) internal pure returns (uint256) {
        if (part == 0 || total == 0) return 0;
        uint256 r = (part * ONE) / total;
        require(r <= ONE, "DSF: ratio>1");
        return r;
    }

    /**
     * @notice Returns the minimum of two unsigned integers.
     * @dev    Pure utility helper used for bounding test amounts
     *         by user's available balance.
     *
     * @param  a First value.
     * @param  b Second value.
     * @return Minimum of a and b.
     */
    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @notice Converts "whole token amount" (e.g. 50_000) into token units using DSF multiplier.
     * @dev    DSF multiplier is: m = 10^(18 - decimals).
     *         If you want tokenUnits, you can do:
     *             tokenUnits = wholeTokens * 1e18 / m
     *         because: tokenUnits * m = wholeTokens * 1e18 (normalized)
     */
    function _wholeToTokenUnits(IDSFLP dsf, uint128 tokenIndex, uint256 wholeTokens)
        internal
        view
        returns (uint256 tokenUnits)
    {
        uint256 m = dsf.decimalsMultipliers(tokenIndex);
        require(m > 0, "DSF: bad multiplier");
        tokenUnits = (wholeTokens * 1e18) / m;
    }

    /**
     * @notice Picks test amount in token units:
     *         - if balance == 0  -> FLOOR (50k)
     *         - else             -> min(balance, CAP (500k))
     */
    function _pickTestAmountTokenUnits(uint256 balanceTokenUnits, uint256 floorTokenUnits, uint256 capTokenUnits)
        internal
        pure
        returns (uint256)
    {
        if (balanceTokenUnits == 0) return floorTokenUnits;
        return _min(balanceTokenUnits, capTokenUnits);
    }

    /**
     * @notice Calculates estimated withdrawal amounts for user for each stablecoin (DAI/USDC/USDT),
     *         using DSF default withdraw pool strategy only.
     * @dev    Logic:
     *         - pidW = dsf.defaultWithdrawPid()
     *         - p = dsf.poolInfo(pidW)
     *         - userRatioInWithdrawPool = userBalance / p.lpShares (scaled to 1e18)
     *         - out[i] = strategy.calcWithdrawOneCoin(userRatioInWithdrawPool, i)
     *
     *         `calcWithdrawOneCoin` expects `userRatioOfCrvLps` in 1e18.
     *
     * @param  user User address.
     * @return out Token amounts in token units:
     *         out[0]=DAI (18 decimals), out[1]=USDC (6 decimals), out[2]=USDT (6 decimals).
     */
    function getWithdrawalAmounts(address user) public view returns (uint256[3] memory out) {
        IDSFLP dsf = IDSFLP(dsfLpContract);

        uint256 ub = dsf.balanceOf(user);
        if (ub == 0) return out;

        uint256 pidW = dsf.defaultWithdrawPid();
        IDSFLP.PoolInfo memory p = dsf.poolInfo(pidW);
        require(p.strategy != address(0), "DSF: no withdraw strategy");
        if (p.lpShares == 0) return out;

        uint256 userRatioInWithdrawPool = _shareRatio(ub, p.lpShares);
        if (userRatioInWithdrawPool == 0) return out;

        for (uint128 i = 0; i < 3; i++) {
            out[i] = IStrategyAnalytics(p.strategy).calcWithdrawOneCoin(userRatioInWithdrawPool, i);
        }
    }

    /**
     * @notice Estimates withdrawal amounts for an arbitrary DSF LP amount.
     * @dev    Simulates withdrawal from the default withdraw pool only.
     *         `lpAmount` is treated as a virtual user LP balance.
     *
     * @param  lpAmount DSF LP amount to simulate withdrawal for.
     * @return out      Estimated withdrawal amounts [DAI, USDC, USDT]
     *                  in token units.
     */
    function getWithdrawalAmountsByLp(uint256 lpAmount)
        public
        view
        returns (uint256[3] memory out)
    {
        if (lpAmount == 0) return out;

        IDSFLP dsf = IDSFLP(dsfLpContract);

        uint256 pidW = dsf.defaultWithdrawPid();
        IDSFLP.PoolInfo memory p = dsf.poolInfo(pidW);

        require(p.strategy != address(0), "DSF: no withdraw strategy");
        if (p.lpShares == 0) return out;

        // lpAmount — это "виртуальный userBalance"
        uint256 userRatioInWithdrawPool = _shareRatio(lpAmount, p.lpShares);
        if (userRatioInWithdrawPool == 0) return out;

        for (uint128 i = 0; i < 3; i++) {
            out[i] = IStrategyAnalytics(p.strategy)
                .calcWithdrawOneCoin(userRatioInWithdrawPool, i);
        }
    }

    /**
     * @notice Returns round-trip efficiency (1e18) for each token index, using DSF default deposit pool only.
     * @dev    Round-trip efficiency is a dimensionless ratio (1e18):
     *         - 1e18 means "no loss" (output equals input after simulated deposit+withdraw flow).
     *
     *         Deposit pool branching:
     *           - If pidD == 0:
     *               Uses helper.estimateNetRoundTripByIndex(amountInTokenUnits, tokenIndex)
     *               Helper returns `returnedAmount` in token units (same decimals as input).
     *               Then we normalize both input and output to 1e18 using multiplier `m` and compute:
     *                 roundTrip = (outNorm1e18 * 1e18) / inNorm1e18
     *   
     *           - If pidD > 0:
     *               Uses strategy.getEfficiencyByIndex(amountInTokenUnits, tokenIndex)
     *               Strategy returns (depositEfficiency1e18, roundTripEfficiency1e18).
     *               Input amount MUST be in token units (with decimals), not normalized.
     *
     * @param  user             User address (used to fetch wallet balances from helper).
     * @return roundTripEff1e18 Efficiencies in 1e18 for [DAI, USDC, USDT].
     */
    function getRoundTripEfficiencyForDepositPool(address user)
        public
        view
        returns (uint256[3] memory roundTripEff1e18)
    {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 pidD = dsf.defaultDepositPid();

        IDSFHelperMIM helper = IDSFHelperMIM(dsfHelperContract);

        // helper returns: (eth, usdt, usdc, dai)
        (, uint256 usdtB, uint256 usdcB, uint256 daiB) = helper.getUserBalances(user);
        uint256[3] memory b = [daiB, usdcB, usdtB]; // [DAI, USDC, USDT]

        if (pidD == 0) {
            for (uint128 i = 0; i < 3; i++) {
                uint256 m = dsf.decimalsMultipliers(i);

                uint256 floorAmount = _wholeToTokenUnits(dsf, i, FLOOR_TEST_AMOUNT);
                uint256 capAmount = _wholeToTokenUnits(dsf, i, CAP_TEST_AMOUNT);

                uint256 testAmount = _pickTestAmountTokenUnits(b[i], floorAmount, capAmount);

                uint256 returnedAmount = helper.estimateNetRoundTripByIndex(testAmount, i);

                uint256 amountNorm1e18 = testAmount * m;
                uint256 tokenOutNorm1e18 = returnedAmount * m;

                roundTripEff1e18[i] = (amountNorm1e18 == 0) ? 0 : (tokenOutNorm1e18 * ONE) / amountNorm1e18;
            }
        } else {
            IDSFLP.PoolInfo memory p = dsf.poolInfo(pidD);
            require(p.strategy != address(0), "DSF: no deposit strategy");

            for (uint128 i = 0; i < 3; i++) {
                uint256 floorAmount = _wholeToTokenUnits(dsf, i, FLOOR_TEST_AMOUNT);
                uint256 capAmount = _wholeToTokenUnits(dsf, i, CAP_TEST_AMOUNT);

                uint256 testAmount = _pickTestAmountTokenUnits(b[i], floorAmount, capAmount);

                (, uint256 rt1e18) = IStrategyAnalytics(p.strategy).getEfficiencyByIndex(testAmount, i);
                roundTripEff1e18[i] = rt1e18;
            }
        }
    }

    /**
     * @notice Returns user's proportional share of aggregated CVX/CRV holdings and earnings.
     * @dev    Aggregation flow:
     *         1) userShare = userBalance / totalSupply (1e18)
     *         2) Sum totals across all pools:
     *             - pid==0: if pool0Oracle != 0, use IDSFORACLE(pool0Oracle).getCVXCRVHoldings()
     *             - pid>0:  use strategy.getCVXCRVHoldings()
     *         3) Scale totals by userShare (divide by 1e18).
     *
     *         Returns:
     *           - amountIn_cvx / amountIn_crv: token units
     *           - cvxEarningsUSDT / crvEarningsUSDT: USDT-valued amounts as provided by oracle/strategy
     *
     * @param  user            User address.
     * @return amountIn_cvx    User share of CVX amount (token units).
     * @return amountIn_crv    User share of CRV amount (token units).
     * @return cvxEarningsUSDT User share of CVX earnings valued in USDT.
     * @return crvEarningsUSDT User share of CRV earnings valued in USDT.
     */
    function getCVXCRVUserShareAggregated(address user) public view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    ) {
        IDSFLP dsf = IDSFLP(dsfLpContract);

        uint256 ts = dsf.totalSupply();
        uint256 ub = dsf.balanceOf(user);
        if (ts == 0 || ub == 0) return (0,0,0,0);

        uint256 userShare = _shareRatio(ub, ts);

        uint256 pools = dsf.poolCount();
        if (pools == 0) return (0,0,0,0);

        uint256 tCvx;
        uint256 tCrv;
        uint256 tCvxUsd;
        uint256 tCrvUsd;

        for (uint256 pid = 0; pid < pools; pid++) {
            if (pid == 0) {
                if (pool0Oracle == address(0)) continue;
                (uint256 a, uint256 b_, uint256 c, uint256 d) = IDSFORACLE(pool0Oracle).getCVXCRVHoldings();
                tCvx += a; tCrv += b_; tCvxUsd += c; tCrvUsd += d;
            } else {
                IDSFLP.PoolInfo memory p = dsf.poolInfo(pid);
                if (p.strategy == address(0)) continue;
                (uint256 a, uint256 b_, uint256 c, uint256 d) = IStrategyAnalytics(p.strategy).getCVXCRVHoldings();
                tCvx += a; tCrv += b_; tCvxUsd += c; tCrvUsd += d;
            }
        }

        amountIn_cvx    = (tCvx    * userShare) / ONE;
        amountIn_crv    = (tCrv    * userShare) / ONE;
        cvxEarningsUSDT = (tCvxUsd * userShare) / ONE;
        crvEarningsUSDT = (tCrvUsd * userShare) / ONE;
    }

    /**
     * @notice Returns aggregated analytics pack for a given user.
     * @dev    Combines:
     *         - lpShareRatio:        user share of totalSupply (1e18)
     *         - withdrawalAmounts:   computed from defaultWithdrawPid only (token units)
     *         - roundTripEfficiency: computed from defaultDepositPid only (1e18)
     *         - CVX/CRV:             totals across all pools scaled by lpShareRatio
     *         - balances/allowances: from helper (token units), mapped to [DAI, USDC, USDT]
     *
     * @param  user                User address.
     * @return lpShareRatio        User share in DSF LP totalSupply (1e18).
     * @return userBalance         DSF LP balance of user (lpShares).
     * @return withdrawalAmounts   Estimated withdrawals [DAI, USDC, USDT] in token units.
     * @return amountIn_cvx        User share of CVX holdings (token units).
     * @return amountIn_crv        User share of CRV holdings (token units).
     * @return cvxEarningsUSDT     User share of CVX earnings valued in USDT.
     * @return crvEarningsUSDT     User share of CRV earnings valued in USDT.
     * @return roundTripEfficiency Round-trip efficiencies [DAI, USDC, USDT] in 1e18.
     * @return ethBalance          User ETH balance (wei) from helper.
     * @return balances            User token balances [DAI, USDC, USDT] in token units.
     * @return allowances          User token allowances to spender=dsfLpContract [DAI, USDC, USDT] in token units.
     */
    function getUserData(address user) external view returns (
        uint256 lpShareRatio,                 // user's share in totalSupply (1e18)
        uint256 userBalance,                  // DSFLP balance
        uint256[3] memory withdrawalAmounts,  // only withdraw pool
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT,
        uint256[3] memory roundTripEfficiency,// only deposit pool
        uint256 ethBalance,
        uint256[3] memory balances,           // [DAI, USDC, USDT]
        uint256[3] memory allowances          // [DAI, USDC, USDT]
    ) {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 ts = dsf.totalSupply();
        userBalance = dsf.balanceOf(user);
        lpShareRatio = _shareRatio(userBalance, ts);

        withdrawalAmounts = getWithdrawalAmounts(user);
        (amountIn_cvx, amountIn_crv, cvxEarningsUSDT, crvEarningsUSDT) =
            getCVXCRVUserShareAggregated(user);

        roundTripEfficiency = getRoundTripEfficiencyForDepositPool(user);

        IDSFHelperMIM helper = IDSFHelperMIM(dsfHelperContract);
        // helper returns: (eth, usdt, usdc, dai)
        (ethBalance, balances[2], balances[1], balances[0]) = helper.getUserBalances(user);
        // helper returns: (usdt, usdc, dai) for (user, spender)
        (allowances[2], allowances[1], allowances[0]) = helper.getUserAllowances(user, dsfLpContract);
    }
}
