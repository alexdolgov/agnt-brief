// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;


import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";
import {ITokenManagerERC20} from "./interfaces/ITokenManagerERC20.sol";


contract TokenManagerERC20PriceHelper {

    ITokenManagerERC20 public immutable TOKEN_MANAGER;
    uint256 public constant GRANULARITY_SCALER = 1e18;

    constructor(address _tokenManagerAddress) {
        TOKEN_MANAGER = ITokenManagerERC20(_tokenManagerAddress);
    }

    function calculatePurchaseAmountAndPrice(uint256 avaxAmount, uint256 _tokenId)
        external
        view
        returns (uint256 tokenAmount, uint256 price)
    {
        if(avaxAmount == 0) { return (0,0);}
        ITokenManagerERC20.TokenParameters memory params = TOKEN_MANAGER.getTokenParameters(_tokenId);
        uint256 currentSupply = ITokenTemplate(params.tokenContractAddress).totalSupply();
        tokenAmount = _calculatePurchaseAmountParametricWithSupply(avaxAmount,params.a,params.b,params.curveScaler,params.creatorFeeBasisPoints,params.salePercentage,currentSupply);
        price = TOKEN_MANAGER.calculateCostWithFees(tokenAmount / GRANULARITY_SCALER, _tokenId);
    }



    function calculatePurchaseAmountAndPriceParametric(
        uint256 avaxAmount,
        uint32 a,
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
        uint32 a,
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