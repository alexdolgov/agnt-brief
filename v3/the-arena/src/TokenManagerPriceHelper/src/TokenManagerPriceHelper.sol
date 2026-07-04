// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;


import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";


interface ITokenManager {
    struct TokenParameters {
        uint128 curveScaler;
        uint16 a;
        uint8 b;
        bool lpDeployed;
        uint8 lpPercentage;
        uint8 salePercentage;
        uint8 creatorFeeBasisPoints;
        address creatorAddress;
        address pairAddress;
        address tokenContractAddress;
    }

    struct FeeData {
        uint256 protocolFee;
        uint256 creatorFee;
        uint256 referralFee;
        uint256 totalFeeAmount;
        address tokenCreator;
        address referrerAddress;
    }

    function getFeeData(uint256 _tokenId, uint256 _rawCosts, address _user) external view returns (FeeData memory);
    function calculateCost(uint256 amountInToken, uint256 _tokenId) external view returns (uint256);
    function calculateCostWithFees(uint256 amountInToken, uint256 _tokenId) external view returns (uint256);
    function calculateCostWithSupply(uint256 amountInToken, uint256 _tokenId, uint256 totalSupply) external view returns (uint256);
    function calculateCostScaledParametric(uint256 amountInWei, uint256 supplyInWei, uint256 a, uint256 b, uint256 curveScaler) external pure returns (uint256);
    function calculateCostScaledParametricWithFees(uint256 amountInWei, uint256 supplyInWei, uint256 a, uint256 b, uint256 curveScaler, uint256 creatorFeeBasisPoints) external view returns (uint256);
    function calculateReward(uint256 amount, uint256 _tokenId) external view returns (uint256);
    function calculateRewardWithFees(uint256 amount, uint256 _tokenId) external view returns (uint256);
    function calculateRewardAndSupply(uint256 amount, uint256 _tokenId) external view returns (uint256, uint256);
    function allowedTotalSupplyWithParameters(uint16 a, uint8 b, uint128 c, uint256 tokenSplit) external view returns (uint256);
    function getMaxTokensForSale(uint256 _tokenId) external view returns (uint256);
    function getTokenParameters(uint256 _tokenId) external view returns (TokenParameters memory);
}

contract TokenManagerPriceHelper {

    ITokenManager public immutable TOKEN_MANAGER;
    uint256 public constant GRANULARITY_SCALER = 1e18;

    constructor(address _tokenManagerAddress) {
        TOKEN_MANAGER = ITokenManager(_tokenManagerAddress);
    }

    function calculatePurchaseAmountAndPrice(uint256 avaxAmount, uint256 _tokenId)
        external
        view
        returns (uint256 tokenAmount, uint256 price)
    {
        if(avaxAmount == 0) { return (0,0);}
        ITokenManager.TokenParameters memory params = TOKEN_MANAGER.getTokenParameters(_tokenId);
        uint256 currentSupply = ITokenTemplate(params.tokenContractAddress).totalSupply();
        tokenAmount = _calculatePurchaseAmountParametricWithSupply(avaxAmount,params.a,params.b,params.curveScaler,params.creatorFeeBasisPoints,params.salePercentage,currentSupply);
        price = TOKEN_MANAGER.calculateCostWithFees(tokenAmount / GRANULARITY_SCALER, _tokenId);
    }



    function calculatePurchaseAmountAndPriceParametric(
        uint256 avaxAmount,
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint256 creatorFeeBasisPoints,
        uint256 tokenSplit
    ) external view returns (uint256 tokenAmount, uint256 price) {
        if(avaxAmount == 0) { return (0,0);}
        tokenAmount =
            _calculatePurchaseAmountParametricWithSupply(avaxAmount, a, b, curveScaler, creatorFeeBasisPoints, tokenSplit,0);
        price = TOKEN_MANAGER.calculateCostScaledParametricWithFees(tokenAmount, 0, a, b, curveScaler,creatorFeeBasisPoints);
    }

    /**
     * @notice Calculates the amount of tokens that can be bought with given parameteres
     * @param avaxAmount the Avax amount in wei to be spent.
     * @param a curve param.
     * @param b curve param.
     * @param curveScaler curve param.
     * @param creatorFeeBasisPoints the creator fee in base points (100 is 1 percent, 250 (max) is 2,5 percent).
     * @param tokenSplit the percentage of tokens that are available for sale.
     * @return the max amount of tokens in wei that can be bought with the given amount
     */
    function _calculatePurchaseAmountParametricWithSupply(
        uint256 avaxAmount,
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint256 creatorFeeBasisPoints,
        uint256 tokenSplit,
        uint256 currentSupply
    ) internal view returns (uint256) {
        // Fetch the maximum tokens available for sale
        uint256 maxTokensForSale = (TOKEN_MANAGER.allowedTotalSupplyWithParameters(a, b, curveScaler, tokenSplit) * tokenSplit / 100) - currentSupply;
        uint256 cost = TOKEN_MANAGER.calculateCostScaledParametricWithFees(maxTokensForSale, currentSupply, a, b, curveScaler,creatorFeeBasisPoints);
        if (avaxAmount > cost) {
            return maxTokensForSale;
        }
        uint256 low = 0;
        uint256 high = maxTokensForSale / GRANULARITY_SCALER;

        // Binary search within [low, high]
        while (low < high) {
            // Use upper-mid to avoid infinite loop when low+1=high
            uint256 mid = (low + high + 1) / 2;

            cost = TOKEN_MANAGER.calculateCostScaledParametricWithFees(mid * GRANULARITY_SCALER, currentSupply, a, b, curveScaler,creatorFeeBasisPoints);
            if (cost == avaxAmount) {
                // Exactly matches the amount you have, so this is maximum
                return mid * 10 ** 18;
            } else if (cost < avaxAmount) {
                // You can afford mid tokens, try for more
                low = mid;
            } else {
                // mid tokens too expensive, try fewer
                high = mid - 1;
            }
        }
        // After the loop, low will hold the maximum number of tokens you can afford
        return low * 10 ** 18;
    }

    
}