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
 * @title DSFUserHelper
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
    function fee_denominator() external view returns (uint256);
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
}

interface ICurveMetaPool {
    function calc_token_amount(uint256[2] memory amounts, bool isDeposit) external view returns (uint256);
    function fee() external view returns (uint256);
    function fee_denominator() external view returns (uint256);
    function get_virtual_price() external view returns (uint256);
}

contract DSFUserHelper {
    uint256 public constant LP_RATIO_MULTIPLIER = 1e18;
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
     * @param token Address of stablecoin (USDT, USDC, DAI)
     * @param amount Amount of stablecoin to deposit
     * @return Estimated amount of 3CRV tokens after fees
     */
    function _estimate3CRV(address token, uint256 amount) public view returns (uint256) {
        require(amount > 0, "Zero amount");

        ICurvePool pool3crv = ICurvePool(CURVE_3POOL);
        uint256[3] memory depositAmounts;
        bool valid;

        if (token == DAI) {
            depositAmounts[0] = amount;
            valid = true;
        } else if (token == USDC) {
            depositAmounts[1] = amount;
            valid = true;
        } else if (token == USDT) {
            depositAmounts[2] = amount;
            valid = true;
        }
        require(valid, "Unsupported token");

        uint256 raw3CRV;

        try pool3crv.calc_token_amount(depositAmounts, true) returns (uint256 result) {
            raw3CRV = result;
        } catch Error(string memory reason) {
            revert(string(abi.encodePacked("Curve calc_token_amount failed: ", reason)));
        } catch {
            revert("Curve calc_token_amount reverted silently");
        }
        
        uint256 fee = pool3crv.fee();
        uint256 feeDenominator = pool3crv.fee_denominator();
        return raw3CRV * (feeDenominator - fee) / feeDenominator;
    }   

    /**
     * @notice Estimates the number of MIM-3CRV LP tokens received for a given 3CRV amount
     * @param amount3CRV Amount of 3CRV to deposit
     * @return Estimated MIM-3CRV LP tokens after fees
     */
    function _estimateMIM3CRVLP(uint256 amount3CRV) public view returns (uint256) {
        ICurveMetaPool mim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        uint256[2] memory metaDeposit;
        metaDeposit[1] = amount3CRV;

        uint256 rawLP = mim3crv.calc_token_amount(metaDeposit, true);
        uint256 fee = mim3crv.fee();
        uint256 feeDenominator = mim3crv.fee_denominator();
        return rawLP * (feeDenominator - fee) / feeDenominator;
    }

    /**
     * @notice Estimates the USD-equivalent value of a stablecoin deposit into DSF
     * @param token Address of the stablecoin (USDT, USDC, DAI)
     * @param amount Amount of stablecoin to deposit
     * @return valueInUSD Estimated deposit value in USD via MIM-3CRV LP price
     */
    function estimateStablecoinDepositValue(address token, uint256 amount) public view returns (uint256 valueInUSD) {
        require(token == USDT || token == USDC || token == DAI, "Unsupported token");

        uint256 amount3CRV = _estimate3CRV(token, amount);
        uint256 lpAmount = _estimateMIM3CRVLP(amount3CRV);

        ICurveMetaPool mim3crv = ICurveMetaPool(MIM_3CRV_POOL);
        uint256 virtualPrice = mim3crv.get_virtual_price(); // 18 decimals

        valueInUSD = (lpAmount * virtualPrice) / 1e18;
    }

    /**
     * @notice Estimates the USD-equivalent value of a stablecoin deposit by token index
     * @dev Index mapping: 0 = DAI, 1 = USDC, 2 = USDT
     * @param tokenIndex Index of the stablecoin
     * @param amount Amount of stablecoin to deposit
     * @return valueInUSD Estimated deposit value in USD
     */
    function estimateByIndex(uint8 tokenIndex, uint256 amount) public view returns (uint256 valueInUSD) {
        address token;
        if (tokenIndex == 0) token = DAI;
        else if (tokenIndex == 1) token = USDC;
        else if (tokenIndex == 2) token = USDT;
        else revert("Invalid token index");

        valueInUSD = estimateStablecoinDepositValue(token, amount);
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
        estUSDT = estimateByIndex(2, 1e6);   // 1 USDT (6 decimals)
        estUSDC = estimateByIndex(1, 1e6);   // 1 USDC (6 decimals)
        estDAI  = estimateByIndex(0, 1e18);  // 1 DAI  (18 decimals)
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
        usdtAllowance = IERC20(USDT).allowance(user, dsfContract);
        usdcAllowance = IERC20(USDC).allowance(user, dsfContract);
        daiAllowance = IERC20(DAI).allowance(user, dsfContract);
    }
}