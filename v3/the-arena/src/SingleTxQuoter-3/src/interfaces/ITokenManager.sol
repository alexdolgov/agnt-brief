// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {IArenaPoolDeployer} from "./IArenaPoolDeployer.sol";
import {ITokenTemplate} from "./ITokenTemplate.sol";

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

    struct V4PoolInitParams {
        IArenaPoolDeployer.PoolInitParams poolInitParams;
        uint16 creatorFeePpm;
        uint160 invertedStartingPrice;
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
    function getV4PoolInitParams() external view returns (V4PoolInitParams memory);
    function tokenIdentifier() external view returns (uint256);
    function createToken(
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint8 creatorFeeBasisPoints,
        address tokenCreatorAddress,
        uint256 tokenSplit,
        string memory name,
        string memory symbol,
        uint256 amount
    ) external payable;
        function createTokenWithWL(
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint8 creatorFeeBasisPoints,
        address tokenCreatorAddress,
        uint256 tokenSplit,
        string memory name,
        string memory symbol,
        uint256 amount,
        ITokenTemplate.Whitelist calldata whitelist
    ) external payable;
    function tokenCreationBuyFeeAmount() external view returns (uint88);

}