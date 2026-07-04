// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

interface IApi3OracleWithMaxDelay is IERC165 {
    event SetMaximumOracleDelay(address oracle, uint256 oldMaxOracleDelay, uint256 newMaxOracleDelay);

    function API3_FEED_ADDRESS() external view returns (address);

    function API3_FEED_DECIMALS() external view returns (uint8);

    function API3_FEED_PRECISION() external view returns (uint256);

    function getApi3Price() external view returns (bool _isBadData, uint256 _updatedAt, uint256 _usdPerEth);

    function maximumOracleDelay() external view returns (uint256);

    function setMaximumOracleDelay(uint256 _newMaxOracleDelay) external;

    error AnswerWouldOverflow();
}
