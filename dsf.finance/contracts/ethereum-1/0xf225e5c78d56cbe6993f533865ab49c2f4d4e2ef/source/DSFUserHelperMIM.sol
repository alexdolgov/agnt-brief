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
 *
 * @title DSFUserHelperMIM
 * @author DSF.Finance
 * @notice Utility contract for DSF.Finance to estimate deposit outcomes and read user token data
 * @dev Provides stablecoin-to-USD estimations based on Curve 3pool and MIM-3CRV MetaPool
 */
 
pragma solidity ^0.8.30;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
}

interface ICurvePool {
    function calc_token_amount(uint256[3] memory amounts, bool isDeposit) external view returns (uint256);
    function fee() external view returns (uint256);
    function get_dy(uint128 i, uint128 j, uint256 dx) external view returns (uint256);
    function calc_withdraw_one_coin(uint256 _token_amount, int128 i) external view returns (uint256);
}

interface ICurveMetaPool {
    function calc_token_amount(uint256[2] memory amounts, bool isDeposit) external view returns (uint256);
    function fee() external view returns (uint256);
    function get_virtual_price() external view returns (uint256);
    function calc_withdraw_one_coin(uint256 _token_amount, int128 i) external view returns (uint256);
}

contract DSFUserHelperMIM {
    uint256 public constant LP_RATIO_MULTIPLIER = 1e18;
    uint256 public constant FEE_DENOMINATOR = 1e10; // as per Curve v0.2.8 contracts

    address public dsfLpContract;

    address public constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address public constant DAI  = 0x6B175474E89094C44Da98b954EedeAC495271d0F;

    address public constant CURVE_3POOL = 0xbEbc44782C7dB0a1A60Cb6fe97d0b483032FF1C7;
    address public constant MIM_3CRV_POOL = 0x5a6A4D54456819380173272A5E8E9B9904BdF41B;

    constructor(address _dsfLpContract) {
        require(_dsfLpContract != address(0), "DSF: Invalid DSF contract address");
        dsfLpContract = _dsfLpContract;
    }

    /**
     * @notice Estimates the number of 3CRV tokens received for a given stablecoin deposit
     * @dev Uses Curve 3pool. Applies pool fee. Index mapping: 0 = DAI, 1 = USDC, 2 = USDT
     * @param amount Amount of stablecoin to deposit
     * @param tokenIndex Index of stablecoin (0=DAI, 1=USDC, 2=USDT)
     * @return Estimated amount of 3CRV tokens after fees
     */
    function _estimate3CRV(uint256 amount, uint128 tokenIndex) public view returns (uint256) {
        require(amount > 0, "DSF: Zero deposit amount");
        require(tokenIndex <= 2, "DSF: Invalid coin index");

        ICurvePool pool3crv = ICurvePool(CURVE_3POOL);
        uint256[3] memory depositAmounts;
        depositAmounts[tokenIndex] = amount;

        uint256 raw3CRV;
        try pool3crv.calc_token_amount(depositAmounts, true) returns (uint256 result) {
            raw3CRV = result;
        } catch Error(string memory reason) {
            revert(string(abi.encodePacked("Curve calc_token_amount failed: ", reason)));
        } catch {
            revert("Curve: calc_token_amount failed (silent)");
        }

        // Use hardcoded fee denominator (10^10)
        uint256 fee = pool3crv.fee();
        return raw3CRV * (FEE_DENOMINATOR - fee) / FEE_DENOMINATOR;
    }   

    /**
     * @notice Estimates the number of MIM-3CRV LP tokens received for a given 3CRV amount
     * @param amount3CRV Amount of 3CRV to deposit
     * @return Estimated MIM-3CRV LP tokens after fees
     */
    function _estimateMIM3CRVLP(uint256 amount3CRV) public view returns (uint256) {
        require(amount3CRV > 0, "DSF: Zero 3CRV amount");

        ICurveMetaPool poolmim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        uint256[2] memory metaDeposit;
        metaDeposit[1] = amount3CRV;

        uint256 rawLP = poolmim3crv.calc_token_amount(metaDeposit, true);
        uint256 fee = poolmim3crv.fee();
        return rawLP * (FEE_DENOMINATOR - fee) / FEE_DENOMINATOR;
    }

    /**
     * @notice Estimates the amount of LP tokens received after depositing a stablecoin
     * @dev Combines deposit to 3CRV + MetaPool, applies both fees. Index mapping: 0=DAI, 1=USDC, 2=USDT
     * @param amount Amount of stablecoin to deposit
     * @param tokenIndex Index of the stablecoin
     * @return lpAmount Estimated amount of LP tokens received
     */
    function estimateReceivedLP(uint256 amount, uint128 tokenIndex) public view returns (uint256 lpAmount) {
        require(amount > 0, "DSF: Zero amount");
        require(tokenIndex <= 2, "DSF: Invalid coin index");

        uint256 amount3CRV = _estimate3CRV(amount, tokenIndex);
        lpAmount = _estimateMIM3CRVLP(amount3CRV);
    }

    /**
     * @notice Estimates current USD value of LP tokens using virtual price
     * @param lpAmount Amount of MIM-3CRV LP tokens
     * @return valueInUSD USD-equivalent value
     */
    function estimateLPValueInUSD(uint256 lpAmount) public view returns (uint256 valueInUSD) {
        require(lpAmount > 0, "DSF: Zero LP");

        ICurveMetaPool poolmim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        uint256 virtualPrice = poolmim3crv.get_virtual_price(); // 18 decimals

        valueInUSD = (lpAmount * virtualPrice) / 1e18;
    }

    /**
     * @notice Shortcut: estimates USD value of stablecoin deposit (via LP and virtual price)
     * @dev Index mapping: 0 = DAI, 1 = USDC, 2 = USDT
     * @param amount Amount of token to deposit
     * @param tokenIndex Index of stablecoin
     * @return valueInUSD Estimated value in USD (virtualPrice * LP)
     */
    function estimateStablecoinDepositValue(uint256 amount, uint128 tokenIndex) public view returns (uint256 valueInUSD) {
        require(amount > 0, "DSF: Zero amount");
        require(tokenIndex <= 2, "DSF: Invalid token index");

        uint256 lpAmount = estimateReceivedLP(amount, tokenIndex);
        valueInUSD = estimateLPValueInUSD(lpAmount);
    }

    /**
     * @notice Estimates the stablecoin amount (DAI, USDC, USDT) user will get from withdrawing LP tokens
     * @dev Withdraws LP → 3CRV via MetaPool, then estimates 3CRV → target stablecoin via 3pool.calc_withdraw_one_coin
     * @param lpAmount Amount of MIM-3CRV LP tokens
     * @param stableIndex Index of stablecoin to receive: 0 = DAI, 1 = USDC, 2 = USDT
     * @return estimatedStablecoin Amount of target stablecoin received after full roundtrip
     */
    function estimateWithdrawalToStablecoin(uint256 lpAmount, uint128 stableIndex) public view returns (uint256 estimatedStablecoin) {
        require(lpAmount > 0, "DSF: Zero LP amount");
        require(stableIndex >= 0 && stableIndex <= 2, "DSF: Invalid stable index");

        ICurveMetaPool poolmim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        ICurvePool pool3crv = ICurvePool(CURVE_3POOL);

        // Step 1: MIM-3CRV → 3CRV (index = 1)
        uint256 amount3CRV = poolmim3crv.calc_withdraw_one_coin(lpAmount, 1); // 1 = 3CRV

        // Step 2: Withdraw from 3CRV → stablecoin (index: 0 = DAI, 1 = USDC, 2 = USDT)
        estimatedStablecoin = pool3crv.calc_withdraw_one_coin(amount3CRV, int128(stableIndex));
    }

    /**
     * @notice Estimates how much of the original stablecoin will be returned after full roundtrip:
     * deposit → LP → withdraw → stablecoin
     * @dev Index mapping: 0 = DAI, 1 = USDC, 2 = USDT
     * @param amount Amount of stablecoin to deposit
     * @param tokenIndex Index of the stablecoin
     * @return returnedAmount Stablecoin amount returned after deposit and withdrawal
     */
    function estimateNetRoundTripByIndex(uint256 amount, uint128 tokenIndex) external view returns (uint256 returnedAmount) {
        require(amount > 0, "DSF: Zero amount");
        require(tokenIndex <= 2, "DSF: Invalid token index");

        // 1. Estimate LP received from initial stablecoin deposit
        uint256 lpAmount = estimateReceivedLP(amount, tokenIndex);

        // 2. Estimate stablecoin amount returned after withdrawing LP to same coin
        returnedAmount = estimateWithdrawalToStablecoin(lpAmount, tokenIndex);
    }

    /**
     * @notice Estimates the net USD value received when withdrawing a single coin from MIM-3CRV LP
     * @param lpAmount Amount of MIM-3CRV LP tokens to withdraw
     * @param coinIndex Index of the coin to withdraw (0 = MIM, 1 = 3CRV)
     * @return withdrawValueInUSD Estimated net value in USD after withdrawal
     */
    function estimateWithdrawalValue(uint256 lpAmount, int128 coinIndex) external view returns (uint256 withdrawValueInUSD) {
        require(lpAmount > 0, "DSF: Zero LP amount");
        require(coinIndex == 0 || coinIndex == 1, "DSF: Invalid coin index");

        ICurveMetaPool poolmim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        uint256 underlyingAmount = poolmim3crv.calc_withdraw_one_coin(lpAmount, coinIndex);
        uint256 virtualPrice = poolmim3crv.get_virtual_price();

        withdrawValueInUSD = (underlyingAmount * virtualPrice) / 1e18;
    }

    /**
     * @notice Estimates the USD-equivalent value of a stablecoin deposit by token index
     * @dev Index mapping: 0 = DAI, 1 = USDC, 2 = USDT
     * @param tokenIndex Index of the stablecoin
     * @param amount Amount of stablecoin to deposit
     * @return valueInUSD Estimated deposit value in USD
     */
    function estimateByIndex(uint256 amount, uint128 tokenIndex) public view returns (uint256 valueInUSD) {
        valueInUSD = estimateStablecoinDepositValue(amount,tokenIndex);
    }

    /**
     * @notice Returns the estimated deposit value (in USD) for 1 unit of each stablecoin
     * @return estUSDT Estimated value of 1 USDT
     * @return estUSDC Estimated value of 1 USDC
     * @return estDAI Estimated value of 1 DAI
     */
    function estimateAllStablecoins() external view returns (
        uint256 estUSDT,
        uint256 estUSDC,
        uint256 estDAI
    ) {
        estUSDT = estimateByIndex(1e6, 2);   // 1 USDT (6 decimals)
        estUSDC = estimateByIndex(1e6, 1);   // 1 USDC (6 decimals)
        estDAI  = estimateByIndex(1e18, 0);  // 1 DAI  (18 decimals)
    }

    /**
     * @notice Estimates returned stablecoin amount after full roundtrip (deposit → LP → withdraw)
     *         for 1 unit of each stablecoin: DAI, USDC, USDT.
     * @return daiReturned    Amount of DAI returned after roundtrip of 1 DAI
     * @return usdcReturned   Amount of USDC returned after roundtrip of 1 USDC
     * @return usdtReturned   Amount of USDT returned after roundtrip of 1 USDT
     */
    function estimateAllNetRoundTrip() external view returns (
        uint256 daiReturned,
        uint256 usdcReturned,
        uint256 usdtReturned
    ) {
        daiReturned = this.estimateNetRoundTripByIndex(1e18, 0); // 1 DAI (18 decimals)
        usdcReturned = this.estimateNetRoundTripByIndex(1e6, 1); // 1 USDC (6 decimals)
        usdtReturned = this.estimateNetRoundTripByIndex(1e6, 2); // 1 USDT (6 decimals)
    }

    /**
     * @notice Returns ETH and stablecoin balances for a user
     * @param user Address of the user wallet
     * @return ethBalance ETH balance
     * @return usdtBalance USDT token balance
     * @return usdcBalance USDC token balance
     * @return daiBalance DAI token balance
     */
    function getUserBalances(address user) public view returns (
        uint256 ethBalance,
        uint256 usdtBalance,
        uint256 usdcBalance,
        uint256 daiBalance
    ) {
        require(user != address(0), "DSF: Zero address");

        ethBalance = user.balance;
        usdtBalance = IERC20(USDT).balanceOf(user);
        usdcBalance = IERC20(USDC).balanceOf(user);
        daiBalance = IERC20(DAI).balanceOf(user);
    }

    /**
     * @notice Returns stablecoin allowances granted by a user to DSF contract
     * @param user Address of the user
     * @param dsfContract Address of the DSF contract
     * @return usdtAllowance Allowance for USDT
     * @return usdcAllowance Allowance for USDC
     * @return daiAllowance Allowance for DAI
     */
    function getUserAllowances(address user, address dsfContract) public view returns (
    uint256 usdtAllowance,
    uint256 usdcAllowance,
    uint256 daiAllowance
    ) {
        require(user != address(0) && dsfContract != address(0), "DSF: Zero address");

        usdtAllowance = IERC20(USDT).allowance(user, dsfContract);
        usdcAllowance = IERC20(USDC).allowance(user, dsfContract);
        daiAllowance = IERC20(DAI).allowance(user, dsfContract);
    }
}