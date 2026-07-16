// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IPriceFeed} from "../../src/interfaces/core/IPriceFeed.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IIBGTVault} from "src/interfaces/core/vaults/IIBGTVault.sol";
import {IInfraredVault} from "src/interfaces/utils/integrations/IInfraredVault.sol";


contract RewardsFeed {
    uint constant BP = 1e4;
    IPriceFeed priceFeed;

    constructor(address _priceFeed) {
        priceFeed = IPriceFeed(_priceFeed);
    }
    /**
     * @return tokens Only includes tokens that are virtually accounted as rewardedTokens
     * @return amounts Array of amounts per token after performance fee
     */
    function previewHarvestRewards(address _vault) external view returns (address[] memory tokens, uint[] memory amounts) {
        IInfraredCollateralVault vault = IInfraredCollateralVault(_vault);

        IInfraredVault iVault = vault.infraredVault();
        
        tokens = iVault.getAllRewardTokens();
        amounts = new uint[](tokens.length);

        uint _performanceFee = vault.getPerformanceFee();
        address _iRedToken = vault.iRedToken();
        address _ibgt = vault.ibgt();
        IIBGTVault _ibgtVault = IIBGTVault(vault.ibgtVault());

        for (uint i; i < tokens.length; i++) {
            address _token = tokens[i];
            uint rewards = iVault.earned(_vault, tokens[i]);
            if (rewards == 0) continue;

            bool isIBGT = _token == _ibgt;
            if (isIBGT && _hasPriceFeed(_ibgt)) {
                rewards = _ibgtVault.previewDeposit(rewards);
                _token = isIBGT ? address(_ibgtVault) : _token;
            }

            if (_hasPriceFeed(_token) && _token != _iRedToken && !_isCollVault(_token, _vault, address(_ibgtVault))) {
                uint fee = rewards * _performanceFee / BP;
                uint netRewards = rewards - fee;

                amounts[i] = netRewards;
            }
        }
    }

    function _hasPriceFeed(address token) internal view returns (bool) {
        (address oracle,,,,) = priceFeed.oracleRecords(token);

        IPriceFeed.FeedType memory feedInfo = priceFeed.feedType(token);

        return oracle != address(0) || feedInfo.isCollVault || feedInfo.spotOracle != address(0);
    }

    function _isCollVault(address token, address _vault, address ibgtVault) internal view returns (bool) {
        // iBGTVault is the only collateral vault permitted, unless it is the current vault
        if (token == ibgtVault && ibgtVault != _vault) {
            return false;
        }
        return priceFeed.isCollVault(token);
    }
}

