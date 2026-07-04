// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./IWETH.sol";

interface IPriceOracleV2 {
    function wbnb() external view returns (address);

    function isWhitelisted(address erc20) external view returns (bool);

    function isSupportedDynamicToken(address baseToken, address paymentToken) external view returns(bool);

    function getTokenAmount(
        address baseToken,
        address quoteToken,
        uint256 baseAmount
    ) external view returns (uint256 quoteAmount);

    function getQuoteAmount4Native(
        address quoteToken,
        uint256 nativeAmount
    ) external view returns (uint256 quoteAmount);

    function getQuoteAmount4Gas(
        address quoteToken,
        uint256 gasAmount
    ) external view returns (uint256 quoteAmount);
}
