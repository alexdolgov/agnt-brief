// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface ISmartAccount {

    function setOwner(address owner_) external;

    function requestAddMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount
    ) external;

    function requestRemoveMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount
    ) external;

    function requestTrade(
        uint256 gatewayIdx,
        uint256 pTokenId,
        bytes32 symbolId,
        int256[] memory tradeParams
    ) external;

    function requestAddMarginAndTrade(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams
    ) external;

    function requestTradeAndRemoveMargin(
        uint256 gatewayIdx,
        uint256 pTokenId,
        address bToken,
        uint256 bAmount,
        bytes32 symbolId,
        int256[] calldata tradeParams
    ) external;

    function withdraw(address token, uint256 amount) external;

    function withdrawEthAndB0() external;

}
