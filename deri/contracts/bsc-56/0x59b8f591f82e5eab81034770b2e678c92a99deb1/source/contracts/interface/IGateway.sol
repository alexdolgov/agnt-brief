// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IGateway {

    function claimUnusedIChainExecutionFee(uint256 dTokenId, bool isLp) external;

    function requestAddMargin(uint256 pTokenId, address bToken, uint256 bAmount, bool singlePosition)
    external payable returns (uint256);

    function requestRemoveMargin(uint256 pTokenId, address bToken, uint256 bAmount) external payable;

    function requestTrade(uint256 pTokenId, bytes32 symbolId, int256[] calldata tradeParams) external payable;

    function requestAddMarginAndTrade(
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams,
        bool singlePosition
    ) external payable;

    function requestTradeAndRemoveMargin(
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams
    ) external payable;

}
