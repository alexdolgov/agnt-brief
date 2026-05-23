// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {INonfungiblePositionManager} from "../CL/periphery/interfaces/INonfungiblePositionManager.sol";
import {IGauge} from "../interfaces/IGauge.sol";
import {IGaugeV3} from "../CL/gauge/interfaces/IGaugeV3.sol";
import {IClGaugeFactory} from "../CL/gauge/interfaces/IClGaugeFactory.sol";
import {IVoteModule} from "../interfaces/IVoteModule.sol";
import {IFeeDistributor} from "../interfaces/IFeeDistributor.sol";
import {IXShadow} from "contracts/interfaces/IXShadow.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Errors} from "contracts/libraries/Errors.sol";
import {IPair} from "contracts/interfaces/IPair.sol";
import {IPairFactory} from "contracts/interfaces/IPairFactory.sol";
import {IRouter} from "contracts/interfaces/IRouter.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IFeeRecipientFactory} from "contracts/interfaces/IFeeRecipientFactory.sol";

import {VoterStorage} from "contracts/libraries/VoterStorage.sol";

/// @title VoterGovernanceActions
/// @notice Governance logic for Voter
/// @dev Used to reduce Voter contract size by moving all governance related logic to a library
library VoterGovernanceActions {
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 internal constant DURATION = 7 days;
    uint256 public constant BASIS = 1_000_000;

    function setGlobalRatio(uint256 _xRatio) external {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        require(_xRatio <= BASIS, Errors.RATIO_TOO_HIGH(_xRatio));

        emit IVoter.EmissionsRatio(msg.sender, $.xRatio, _xRatio);
        $.xRatio = _xRatio;
    }

    function setGovernor(address _governor) external {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        if ($.governor != _governor) {
            $.governor = _governor;
            emit IVoter.NewGovernor(msg.sender, _governor);
        }
    }

    function whitelist(address _token) public {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        require(!$.isWhitelisted[_token], Errors.ALREADY_WHITELISTED(_token));
        $.isWhitelisted[_token] = true;
        emit IVoter.Whitelisted(msg.sender, _token);
    }

    function revokeWhitelist(address _token) public {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        require($.isWhitelisted[_token], Errors.NOT_WHITELISTED(_token));
        $.isWhitelisted[_token] = false;
        emit IVoter.WhitelistRevoked(msg.sender, _token, true);
    }

    function killGauge(address _gauge) public {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        /// @dev ensure the gauge is alive already, and exists
        require($.isAlive[_gauge] && $.gauges.contains(_gauge), Errors.GAUGE_INACTIVE(_gauge));
        /// @dev set the gauge to dead
        $.isAlive[_gauge] = false;
        address pool = $.poolForGauge[_gauge];
        /// @dev check if it's a legacy gauge
        if ($.isLegacyGauge[_gauge]) {
            /// @dev revert back to the default feeSplit
            uint256 feeSplit = IPairFactory($.legacyFactory).feeSplit();
            IPairFactory($.legacyFactory).setPairFeeSplit(pool, feeSplit);

            /// @dev killed legacy gauges behave the same whether it has a main gauge or not
            bool feeSplitWhenNoGauge = IPairFactory($.legacyFactory).feeSplitWhenNoGauge();
            if (feeSplitWhenNoGauge) {
                /// @dev What used to go to FeeRecipient will go to treasury
                /// @dev we are assuming voter.governor is the intended receiver (== factory.treasury)
                IPairFactory($.legacyFactory).setFeeRecipient(pool, $.governor);
            } else {
                /// @dev the fees are handed to LPs instead of FeeRecipient
                IPairFactory($.legacyFactory).setFeeRecipient(pool, address(0));
            }
        }
        /// @dev fetch the last distribution
        uint256 _lastDistro = $.lastDistro[_gauge];
        /// @dev fetch the current period
        uint256 currentPeriod = getPeriod();
        /// @dev placeholder
        uint256 _claimable;
        /// @dev loop through the last distribution period up to and including the current period
        for (uint256 period = _lastDistro; period <= currentPeriod; ++period) {
            /// @dev if the gauge isn't distributed for the period
            if (!$.gaugePeriodDistributed[_gauge][period]) {
                uint256 additionalClaimable = _claimablePerPeriod(pool, period);
                _claimable += additionalClaimable;

                /// @dev prevent gaugePeriodDistributed being marked true when the minter hasn't updated yet
                if (additionalClaimable > 0) {
                    $.gaugePeriodDistributed[_gauge][period] = true;
                }
            }
        }
        /// @dev if there is anything claimable left
        if (_claimable > 0) {
            /// @dev send to the governor contract
            IERC20($.shadow).transfer($.governor, _claimable);
        }

        /// @dev we dont update lastDistro here so distribute can still be called to pass if revived

        emit IVoter.GaugeKilled(_gauge);
    }

    function reviveGauge(address _gauge) public {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        /// @dev ensure the gauge is dead and exists
        require(!$.isAlive[_gauge] && $.gauges.contains(_gauge), Errors.ACTIVE_GAUGE(_gauge));
        /// @dev set the gauge to alive
        $.isAlive[_gauge] = true;
        /// @dev check if it's a legacy gauge
        if ($.isLegacyGauge[_gauge]) {
            address pool = $.poolForGauge[_gauge];
            address feeRecipient = IFeeRecipientFactory($.feeRecipientFactory).feeRecipientForPair(pool);
            IPairFactory($.legacyFactory).setFeeRecipient(pool, feeRecipient);

            /// @dev revert back to the 100% feeSplit going to feeRecipient
            IPairFactory($.legacyFactory).setPairFeeSplit(pool, BASIS);
        }

        /// @dev we dont update lastDistro here so distribute can still be called to pass fees

        emit IVoter.GaugeRevived(_gauge);
    }

    /// @dev in case of emission stuck due to killed gauges and unsupported operations
    function stuckEmissionsRecovery(address _gauge, uint256 _period) external {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        /// @dev require gauge is dead
        require(!$.isAlive[_gauge], Errors.ACTIVE_GAUGE(_gauge));

        /// @dev ensure the gauge exists
        require($.gauges.contains(_gauge), Errors.GAUGE_INACTIVE(_gauge));

        /// @dev check if the period has been distributed already
        if (!$.gaugePeriodDistributed[_gauge][_period]) {
            address pool = $.poolForGauge[_gauge];
            uint256 _claimable = _claimablePerPeriod(pool, _period);
            /// @dev if there is gt 0 emissions, send to governor
            if (_claimable > 0) {
                IERC20($.shadow).transfer($.governor, _claimable);
                /// @dev mark period as distributed
                $.gaugePeriodDistributed[_gauge][_period] = true;
            }
        }
    }

    function removeFeeDistributorReward(address _feeDistributor, address reward) external {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        /// @dev ensure the feeDist exists
        require($.feeDistributors.contains(_feeDistributor));
        IFeeDistributor(_feeDistributor).removeReward(reward);
    }

    function setNfpManager(address _newNfpManager) external {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        $.nfpManager = _newNfpManager;
        IClGaugeFactory($.clGaugeFactory).setNfpManager(_newNfpManager);
    }

    function getPeriod() private view returns (uint256 period) {
        return (block.timestamp / 1 weeks);
    }

    /// @dev shows how much is claimable per period
    function _claimablePerPeriod(address pool, uint256 period) private view returns (uint256) {
        VoterStorage.VoterState storage $ = VoterStorage.getStorage();

        uint256 numerator = ($.totalRewardPerPeriod[period] * $.poolTotalVotesPerPeriod[pool][period]) * 1e18;

        /// @dev return 0 if this happens, or else there could be a divide by zero next
        return (numerator == 0 ? 0 : (numerator / $.totalVotesPerPeriod[period] / 1e18));
    }
}
