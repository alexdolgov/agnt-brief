// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;


interface IInverseHelper {
    function calculateBuyAmount(uint256 _inputAmountInWei, uint256 lowerBound, uint256 a, uint256 curveScaler) external pure returns (uint256);
    function getPurchaseAmountAndPriceWithGivenAvax(uint256 avaxAmount, uint256 _tokenId) external view returns (uint256 purchaseAmount, uint256 price);
    function invertTotalToRaw(uint256 protocolFeeBasisPoint, uint256 referralFeeBasisPoint, uint256 creatorFeeBasisPoint, uint256 tokenCreationBuyFeeAmount, uint256 totalPaid) external pure returns (uint256 rawCost);
    function getPurchaseAmountAndPriceWithGivenAvaxForNewToken(uint256 a, uint256 curveScaler, uint256 tokenSplit, uint256 creatorFeeBasisPoints, uint256 avaxAmount) external view returns (uint256 purchaseAmount, uint256 price);
    function getAvaxAmountForSell(uint256 sellAmount, uint256 tokenId) external view returns (uint256 avaxAmount);
    function getArenaAmountForGivenAvax(uint256 _avaxAmount) external view returns (uint256 arenaAmount);
    function getAvaxAmountForGivenArenaAmount(uint256 _arenaAmount) external view returns (uint256 avaxAmount);
    function getPurchaseAmountAndPriceWithGivenArena(uint256 arenaAmount, uint256 _tokenId) external view returns (uint256 purchaseAmount, uint256 price);
    function getPurchaseAmountAndPriceWithGivenArenaForNewToken(uint256 a, uint256 curveScaler, uint256 tokenSplit, uint256 creatorFeeBasisPoints, uint256 arenaAmount) external view returns (uint256 purchaseAmount, uint256 price);
}