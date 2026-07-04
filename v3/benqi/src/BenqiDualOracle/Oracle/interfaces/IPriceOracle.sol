// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./IQiToken.sol";

interface IPriceOracle {
    function getUnderlyingPrice(IQiToken qiToken) external view returns (uint256);
}
