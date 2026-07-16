//SPDX-License-Identifier: MIT

/**
 *⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *
 *      - Defining Successful Future -
 *
 * @title DSFuserDataMk2
 * @author DSF.Finance
 * @notice Provides analytics and user-level metrics for DSF.Finance protocol.
 * @dev
 * This contract enables:
 * - Calculation of user LP share ratio and strategy share
 * - Estimation of stablecoin withdrawal amounts
 * - Aggregation of CVX/CRV earnings from multiple oracle contracts
 * - Centralized view for DSF dashboards, bots, and integrations
 * - Admin controls for managing oracle list and DSF LP address
 *
 * Key Components:
 * - LP token accounting via IDSFLP interface
 * - Strategy withdrawal simulation via IStrategyDSF
 * - Oracle earnings aggregation via IDSFORACLE[]
 * - Modular and gas-efficient read-only architecture
 *
 * Designed to be used externally for analytics and internal DSF off-chain services.
 */

pragma solidity ^0.8.30;

/**
 * @title IDSFLP
 * @notice Interface for DSF LP core contract (liquidity pool logic)
 * @dev Provides access to LP metrics and strategy pool info
 */
interface IDSFLP {
    function totalHoldings() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function defaultWithdrawPid() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (address strategy, uint256 startTime, uint256 lpShares);
}

/**
 * @title IStrategyDSF
 * @notice Interface for DSF investment strategy contract
 * @dev Supports withdrawal simulations for one stablecoin by index
 */
interface IStrategyDSF {
    function calcWithdrawOneCoin(uint256 lpShares, uint128 tokenIndex) external view returns (uint256);
}

/**
 * @title IDSFORACLE
 * @notice Interface for Oracle contracts aggregating CVX/CRV holdings
 * @dev Returns proportional holdings and converted earnings in USDT
 */
interface IDSFORACLE {
    function getCVXCRVHoldings() external view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    );
}

/**
 * @title IDSFHelperMIM
 * @notice Interface for DSF helper logic (off-chain support and analytics)
 * @dev Estimates deposit value and round-trip returns, fetches balances/allowances
 */
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

/**
 * @title DSFuserData
 * @author DSF
 * @notice Provides a set of read-only functions to retrieve user-level statistics and analytics for DSF Finance protocol.
 * @dev Aggregates data from DSFLP, strategy contracts, helper contracts, and oracle contracts.
 *
 * Core features include:
 * - LP share ratio and user balance in the pool
 * - Strategy share estimation
 * - Withdrawal amount projections per stablecoin
 * - CVX/CRV earnings via multiple oracles
 * - Deposit and round-trip efficiency analytics
 * - Current ETH and stablecoin balances and allowances
 * - Full summary analytics via getUserData()
 * - On-chain management of strategy oracle list
 *
 * Designed to be used off-chain or read-only in dashboards, bots, and analytics tools.
 */
contract DSFuserData {
    uint256 public constant LP_RATIO_MULTIPLIER = 1e18;
    address public dsfLpContract;
    address public dsfHelperContract;
    address public owner;

    struct OracleInfo {
        address oracleAddress;
        uint256 addedTime;
    }

    OracleInfo[] internal strategyOracles;

    event OracleAdded(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event OracleRemoved(uint256 indexed index, address indexed oracle, uint256 timestamp);
    event DSFLPContractUpdated(address indexed newAddress);
    event DSFHelperContractUpdated(address indexed newAddress);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    constructor(address _dsfLpContract, address _dsfHelperContract) {
        require(_dsfLpContract != address(0), "DSF: Invalid DSF contract address");
        require(_dsfHelperContract != address(0), "DSF: Invalid Helper contract");
        dsfLpContract = _dsfLpContract;
        dsfHelperContract = _dsfHelperContract;
        owner = msg.sender;
    }

    /**
     * @notice Sets the address of the DSF Helper contract
     * @dev Only callable by the contract owner
     * @param newAddress Address of the new DSF Helper contract
     */
    function setHelperContract(address newAddress) external onlyOwner {
        require(newAddress != address(0), "DSF: Invalid helper address");
        dsfHelperContract = newAddress;
        emit DSFHelperContractUpdated(newAddress);
    }

    /**
     * @notice Sets the address of the DSF LP contract
     * @dev Only callable by the contract owner
     * @param newAddress Address of the new DSF LP contract
     */
    function setDsfLpContract(address newAddress) external onlyOwner {
        require(newAddress != address(0), "DSF: Invalid DSF contract address");
        dsfLpContract = newAddress;
        emit DSFLPContractUpdated(newAddress);
    }

    /**
     * @notice Adds a new oracle to the strategy oracle list
     * @dev Prevents duplicates; only callable by the owner
     * @param oracle Address of the oracle contract to add
     */
    function addStrategyOracle(address oracle) external onlyOwner {
        require(oracle != address(0), "Invalid oracle address");

        for (uint256 i = 0; i < strategyOracles.length; i++) {
            require(strategyOracles[i].oracleAddress != oracle, "Oracle already added");
        }

        strategyOracles.push(OracleInfo({ oracleAddress: oracle, addedTime: block.timestamp }));
        emit OracleAdded(strategyOracles.length - 1, oracle, block.timestamp);
    }

    /**
     * @notice Removes an oracle by index
     * @dev Replaces with the last element to maintain array continuity
     * @param index Index of the oracle to remove
     */
    function removeStrategyOracle(uint256 index) external onlyOwner {
        require(index < strategyOracles.length, "Index out of bounds");

        address removedOracle = strategyOracles[index].oracleAddress;

        strategyOracles[index] = strategyOracles[strategyOracles.length - 1];
        strategyOracles.pop();

        emit OracleRemoved(index, removedOracle, block.timestamp);
    }

    /**
     * @notice Returns the current default withdrawal strategy and LP share
     * @return strategy Address of the active strategy
     * @return lpShares Total LP shares assigned to the strategy
     */
    function getCurrentWithdrawPool() public view returns (address strategy, uint256 lpShares) {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 pid = dsf.defaultWithdrawPid();
        (strategy, , lpShares) = dsf.poolInfo(pid);
        require(strategy != address(0), "DSF: No active strategy");
    }

    /**
     * @notice Returns the user's LP share ratio and balance
     * @param userAddress Address of the user
     * @return lpShareRatio User’s LP share ratio (1e18 scale)
     * @return userBalance User’s LP token balance
     */
    function getUserLpShare(address userAddress) public view returns (uint256 lpShareRatio, uint256 userBalance) {
        IDSFLP dsf = IDSFLP(dsfLpContract);
        uint256 totalSupply = dsf.totalSupply();
        userBalance = dsf.balanceOf(userAddress);
        require(totalSupply > 0, "DSF: Total supply is zero");
        lpShareRatio = calcLpRatioSafe(userBalance, totalSupply);
    }

    /**
     * @notice Returns the user's share in the currently active strategy
     * @param userAddress Address of the user
     * @return userShare Proportional share in strategy LP (1e18 scale)
     */
    function getUserShareInStrategy(address userAddress) public view returns (uint256 userShare) {
        (, uint256 strategyLpShares) = getCurrentWithdrawPool();
        uint256 userBalance = IDSFLP(dsfLpContract).balanceOf(userAddress);
        userShare = calcLpRatioSafe(userBalance, strategyLpShares);
    }

    /**
     * @notice Estimates the amount of each stablecoin user would receive upon withdrawal
     * @param userAddress Address of the user
     * @return withdrawalAmounts [DAI, USDC, USDT] values after withdrawal
     */
    function getWithdrawalAmounts(address userAddress) public view returns (uint256[3] memory withdrawalAmounts) {
        (address strategy, ) = getCurrentWithdrawPool();
        IStrategyDSF strategyContract = IStrategyDSF(strategy);
        uint256 userShare = getUserShareInStrategy(userAddress);

        if (userShare == 0) {
            withdrawalAmounts[0] = 0;
            withdrawalAmounts[1] = 0;
            withdrawalAmounts[2] = 0;
            return withdrawalAmounts;
        }

        for (uint128 i = 0; i < 3; i++) {
            withdrawalAmounts[i] = strategyContract.calcWithdrawOneCoin(userShare, i);
        }
    }

    /**
     * @notice Calculates user’s proportional share of CVX/CRV and their USDT earnings.
     * @dev Uses all added oracle contracts to aggregate data.
     * @param lpShareRatio User’s LP share ratio (1e18 scale).
     * @return amountIn_cvx Amount of CVX user holds proportionally.
     * @return amountIn_crv Amount of CRV user holds proportionally.
     * @return cvxEarningsUSDT Estimated CVX earnings in USDT.
     * @return crvEarningsUSDT Estimated CRV earnings in USDT.
     */
    function getOracleEarnings(uint256 lpShareRatio) public view returns (
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT
    ) {
        if (strategyOracles.length == 0 || lpShareRatio == 0) {
            return (0, 0, 0, 0);
        }

        uint256 totalAmountIn_cvx;
        uint256 totalAmountIn_crv;
        uint256 totalCvxEarningsUSDT;
        uint256 totalCrvEarningsUSDT;

        for (uint256 i = 0; i < strategyOracles.length; i++) {
            IDSFORACLE oracle = IDSFORACLE(strategyOracles[i].oracleAddress);
            (
                uint256 oracleAmountIn_cvx,
                uint256 oracleAmountIn_crv,
                uint256 oracleCvxEarningsUSDT,
                uint256 oracleCrvEarningsUSDT
            ) = oracle.getCVXCRVHoldings();

            totalAmountIn_cvx += oracleAmountIn_cvx;
            totalAmountIn_crv += oracleAmountIn_crv;
            totalCvxEarningsUSDT += oracleCvxEarningsUSDT;
            totalCrvEarningsUSDT += oracleCrvEarningsUSDT;
        }

        amountIn_cvx = (totalAmountIn_cvx * lpShareRatio) / LP_RATIO_MULTIPLIER;
        amountIn_crv = (totalAmountIn_crv * lpShareRatio) / LP_RATIO_MULTIPLIER;
        cvxEarningsUSDT = (totalCvxEarningsUSDT * lpShareRatio) / LP_RATIO_MULTIPLIER;
        crvEarningsUSDT = (totalCrvEarningsUSDT * lpShareRatio) / LP_RATIO_MULTIPLIER;
    }

    /**
     * @notice Returns stablecoin balances and ETH balance for a user
     * @param user Address of the wallet
     * @return ethBalance ETH balance
     * @return usdtBalance USDT balance
     * @return usdcBalance USDC balance
     * @return daiBalance DAI balance
     */
    function getUserStablecoinBalances(address user) external view returns (
        uint256 ethBalance,
        uint256 usdtBalance,
        uint256 usdcBalance,
        uint256 daiBalance
    ) {
        return IDSFHelperMIM(dsfHelperContract).getUserBalances(user);
    }

    /**
     * @notice Returns approved stablecoin allowances for a user
     * @param user Address of the wallet
     * @return usdtAllowance USDT approval to DSF LP
     * @return usdcAllowance USDC approval to DSF LP
     * @return daiAllowance DAI approval to DSF LP
     */
    function getUserStablecoinAllowances(address user) external view returns (
        uint256 usdtAllowance,
        uint256 usdcAllowance,
        uint256 daiAllowance
    ) {
        return IDSFHelperMIM(dsfHelperContract).getUserAllowances(user, dsfLpContract);
    }

    /**
     * @notice Estimates USD value of stablecoin deposit
     * @param amount Amount of stablecoin to deposit
     * @param tokenIndex Index: 0 = DAI, 1 = USDC, 2 = USDT
     * @return valueInUSD Estimated value in USD
     */
    function getDepositValueUSD(uint256 amount, uint128 tokenIndex) external view returns (uint256 valueInUSD) {
        return IDSFHelperMIM(dsfHelperContract).estimateStablecoinDepositValue(amount, tokenIndex);
    }

    /**
     * @notice Estimates how much of the stablecoin will be returned after full round-trip
     * @param amount Amount of stablecoin to test
     * @param tokenIndex Index: 0 = DAI, 1 = USDC, 2 = USDT
     * @return returnedAmount Amount returned after LP cycle
     */
    function getRoundTripReturn(uint256 amount, uint128 tokenIndex) external view returns (uint256 returnedAmount) {
        return IDSFHelperMIM(dsfHelperContract).estimateNetRoundTripByIndex(amount, tokenIndex);
    }

    /**
     * @notice Calculates how efficiently the user's stablecoin deposit would perform.
     * @dev If token balance is 0, test with a fixed value of 10,000.
     * @param user Address of the user.
     * @return depositEfficiency Deposit-to-USD ratio for [DAI, USDC, USDT].
     * @return roundTripEfficiency Full-cycle return ratio for [DAI, USDC, USDT].
     */
    function getUserDepositEfficiency(address user) external view returns (
        uint256[3] memory depositEfficiency,
        uint256[3] memory roundTripEfficiency
    ) {
        IDSFHelperMIM helper = IDSFHelperMIM(dsfHelperContract);

        (
            ,
            uint256 usdtBalance,
            uint256 usdcBalance,
            uint256 daiBalance
        ) = helper.getUserBalances(user);

        uint256[3] memory balances = [daiBalance, usdcBalance, usdtBalance];

        for (uint128 i = 0; i < 3; i++) {
            uint256 testAmount = balances[i] > 0 ? balances[i] : 10_000;

            uint256 depositValue = helper.estimateStablecoinDepositValue(testAmount, i);
            uint256 roundTripValue = helper.estimateNetRoundTripByIndex(testAmount, i);

            // коэффициенты: USD/токен
            depositEfficiency[i] = depositValue * 1e18 / testAmount;
            roundTripEfficiency[i] = roundTripValue * 1e18 / testAmount;
        }
    }

    /**
     * @notice Returns aggregated analytics for a specific DSF user.
     * @dev This function is optimized to avoid "Stack too deep" issues. `depositEfficiency` is omitted.
     * @param userAddress The wallet address of the user.
     * @return lpShareRatio User's share in total LP supply (1e18 precision).
     * @return userBalance LP token balance of the user.
     * @return userShare User's share in the currently active strategy.
     * @return withdrawalAmounts Expected withdrawal amounts in [DAI, USDC, USDT] if user exits now.
     * @return amountIn_cvx User's proportional share of CVX tokens in strategies.
     * @return amountIn_crv User's proportional share of CRV tokens in strategies.
     * @return cvxEarningsUSDT Estimated CVX earnings converted to USDT.
     * @return crvEarningsUSDT Estimated CRV earnings converted to USDT.
     * @return roundTripEfficiency Array of 3 values showing how much of [DAI, USDC, USDT] is returned after full deposit → LP → withdrawal cycle.
     * @return ethBalance ETH balance of the user.
     * @return balances Array [DAI, USDC, USDT] showing wallet token balances.
     * @return allowances Array [DAI_allowance, USDC_allowance, USDT_allowance] approved to DSF LP contract.
     */
    function getUserData(address userAddress) external view returns (
        uint256 lpShareRatio,
        uint256 userBalance,
        uint256 userShare,
        uint256[3] memory withdrawalAmounts,
        uint256 amountIn_cvx,
        uint256 amountIn_crv,
        uint256 cvxEarningsUSDT,
        uint256 crvEarningsUSDT,
        uint256[3] memory roundTripEfficiency,
        uint256 ethBalance,
        uint256[3] memory balances,     // [DAI, USDC, USDT]
        uint256[3] memory allowances    // [DAI_allowance, USDC_allowance, USDT_allowance]

    ) {
        (lpShareRatio, userBalance) = getUserLpShare(userAddress);
        userShare = getUserShareInStrategy(userAddress);
        withdrawalAmounts = getWithdrawalAmounts(userAddress);
        (amountIn_cvx, amountIn_crv, cvxEarningsUSDT, crvEarningsUSDT) = getOracleEarnings(lpShareRatio);
        (, roundTripEfficiency) = this.getUserDepositEfficiency(userAddress);
        (ethBalance, balances[2], balances[1], balances[0]) = IDSFHelperMIM(dsfHelperContract).getUserBalances(userAddress);
        (allowances[2], allowances[1], allowances[0]) = IDSFHelperMIM(dsfHelperContract).getUserAllowances(userAddress, dsfLpContract);
    }

    /**
     * @notice Calculates LP share ratio safely
     * @dev Prevents division by zero
     * @param userLpShares User’s LP shares
     * @param totalLpShares Total LP supply
     * @return lpShareRatio Ratio scaled to 1e18
     */
    function calcLpRatioSafe(uint256 userLpShares, uint256 totalLpShares) public pure returns (uint256 lpShareRatio) {
        if (userLpShares == 0 || totalLpShares == 0) return 0;

        lpShareRatio = (userLpShares * LP_RATIO_MULTIPLIER) / totalLpShares;
        require(lpShareRatio <= LP_RATIO_MULTIPLIER, "DSF: Wrong out lp Ratio");
    }

    /**
     * @notice Returns all added oracle configurations
     * @return Array of OracleInfo structs
     */
    function getAllOracles() external view returns (OracleInfo[] memory) {
        return strategyOracles;
    }

    /** @notice Returns the number of added oracles
     * @return count Number of oracle entries
     */
    function getOraclesCount() external view returns (uint256) {
        return strategyOracles.length;
    }

    /** @notice Returns oracle info by index
     * @param index Index of the oracle
     * @return OracleInfo struct with address and added timestamp
     */
    function getOracleByIndex(uint256 index) external view returns (OracleInfo memory) {
        require(index < strategyOracles.length, "Index out of bounds");
        return strategyOracles[index];
    }
}