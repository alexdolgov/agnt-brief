// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;


interface ITokenManagerERC20 {
    struct TokenParameters {
        uint128 curveScaler;
        uint32 a;
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
    struct TokenInfo {
        uint8 protocolFee;
        uint8 creatorFee;
        uint8 referralFee;
        uint88 tokenCreationBuyFee;
        uint128 curveScaler;
        uint32 a;
        address tokenAddress;
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
    function allowedTotalSupplyWithParameters(uint32 a, uint8 b, uint128 c, uint256 tokenSplit) external view returns (uint256);
    function getMaxTokensForSale(uint256 _tokenId) external view returns (uint256);
    function getTokenParameters(uint256 _tokenId) external view returns (TokenParameters memory);
    function getFeeInfoAndCurrentTokenIdentifier(uint256 _tokenId) external view returns (uint256, uint256, uint256, uint256, uint256);
    function tokenIdentifier() external view returns (uint256);
    function getTokenInfo(uint256 _tokenId) external view returns (TokenInfo memory);
    function buyAndCreateLpIfPossibleWithUser(uint256 amount, uint256 _tokenId, address _user, uint256 maxArenaToSpend) external;
    function setReferrer(address _user, address _referrer) external;
    function sellWithUser(uint256 _amount, uint256 _tokenId, address _user, uint256 minArenaToReceive) external returns (uint256 amountOut);
}