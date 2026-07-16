// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";

interface ISolvBTCYieldToken {
    function getValueByShares(uint256 shares) external view returns (uint256 value);
    function getSharesByValue(uint256 value) external view returns (uint256 shares);
    function getOracleDecimals() external view returns (uint8);
    function getOracle() external view returns (address);
    function decimals() external view returns (uint8);
}

/**
 * @title SolvBTC_BNB_Feed
 * @author Beraborrow Team
 * @notice Spot feed for SolvBTC.BNB
 */
contract SolvBTC_BNB_Feed is ISpotOracle {
    address public immutable solvBtc;
    ISolvBTCYieldToken public immutable solvBtcBnb;
    IPriceFeed public immutable priceFeed;

    error AddressZero();
    error NoFeed();

    constructor(address _solvBtc, address _solvBtcBnb, address _priceFeed) {
        if (_solvBtc == address(0) || _solvBtcBnb == address(0) || _priceFeed == address(0)) revert AddressZero();

        solvBtc = _solvBtc;
        priceFeed = IPriceFeed(_priceFeed);
        solvBtcBnb = ISolvBTCYieldToken(_solvBtcBnb);

        uint256 decimals = solvBtcBnb.decimals();

        if (solvBtcBnb.getValueByShares(10 ** decimals) == 0 || priceFeed.fetchPrice(solvBtc) == 0) revert NoFeed();
    }

    function fetchPrice() external view returns (uint256) {
        uint256 decimals = solvBtcBnb.decimals();

        return solvBtcBnb.getValueByShares(10 ** decimals) * priceFeed.fetchPrice(solvBtc) / 10 ** solvBtcBnb.getOracleDecimals();
    }
}