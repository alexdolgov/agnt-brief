// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {PortfolioFactory} from "../../../accounts/PortfolioFactory.sol";
import {PortfolioAccountConfig} from "../config/PortfolioAccountConfig.sol";
import {IYieldBasisVotingEscrow} from "../../../interfaces/IYieldBasisVotingEscrow.sol";
import {IYieldBasisGaugeController} from "../../../interfaces/IYieldBasisGaugeController.sol";
import {AccessControl} from "../utils/AccessControl.sol";

/**
 * @title YieldBasisVotingFacet
 * @dev Facet for voting on YieldBasis gauge weights (Ethereum)
 *
 * veYB holders vote to direct YB emissions to liquidity gauges.
 * Voting power is based on veYB balance.
 * 10-day cooldown between vote changes per gauge.
 * Weights are expressed in bps (0-10000, where 10000 = 100%).
 *
 * Contract Addresses (Ethereum Mainnet):
 * - veYB: 0x8235c179E9e84688FBd8B12295EfC26834dAC211
 * - GaugeController: 0x1Be14811A3a06F6aF4fA64310a636e1Df04c1c21
 */
contract YieldBasisVotingFacet is AccessControl {
    PortfolioFactory public immutable _portfolioFactory;
    PortfolioAccountConfig public immutable _portfolioAccountConfig;
    IYieldBasisVotingEscrow public immutable _veYB;
    IYieldBasisGaugeController public immutable _gaugeController;

    uint256 public constant VOTE_COOLDOWN = 10 days;
    uint256 public constant MAX_WEIGHT = 10000; // 100% in bps

    event GaugeVoted(address indexed account, address indexed gauge, uint256 weight, address indexed owner);
    event VotesReset(address indexed account, address[] gauges, address indexed owner);

    error NoVotingPower();
    error InvalidWeight();
    error VoteCooldownActive(address gauge, uint256 canVoteAt);
    error GaugeNotRegistered(address gauge);
    error TotalWeightExceeded();

    constructor(
        address portfolioFactory,
        address portfolioAccountConfig,
        address veYB,
        address gaugeController
    ) {
        require(portfolioFactory != address(0), "Invalid portfolio factory");
        require(portfolioAccountConfig != address(0), "Invalid config");
        require(veYB != address(0), "Invalid veYB");
        require(gaugeController != address(0), "Invalid gauge controller");

        _portfolioFactory = PortfolioFactory(portfolioFactory);
        _portfolioAccountConfig = PortfolioAccountConfig(portfolioAccountConfig);
        _veYB = IYieldBasisVotingEscrow(veYB);
        _gaugeController = IYieldBasisGaugeController(gaugeController);
    }


    /**
     * @notice Vote for multiple gauges with specified weights
     * @param gauges Array of gauge addresses
     * @param weights Array of weights in bps (must sum to <= 10000)
     */
    function vote(
        address[] calldata gauges,
        uint256[] calldata weights
    ) external onlyPortfolioManagerMulticall(_portfolioFactory) {
        require(gauges.length == weights.length, "Length mismatch");
        require(gauges.length > 0, "Empty arrays");

        // Validate total weight doesn't exceed 100%
        uint256 totalWeight;
        for (uint256 i = 0; i < weights.length; i++) {
            totalWeight += weights[i];
        }
        if (totalWeight > MAX_WEIGHT) revert TotalWeightExceeded();

        // Vote for each gauge
        for (uint256 i = 0; i < gauges.length; i++) {
            _voteForGauge(gauges[i], weights[i]);
        }
    }


    function defaultVote(
        address[] calldata gauges,
        uint256[] calldata weights
    ) external onlyAuthorizedCaller(_portfolioFactory) {
        require(gauges.length == weights.length, "Length mismatch");
        require(gauges.length > 0, "Empty arrays");

        // Validate total weight doesn't exceed 100%
        uint256 totalWeight;
        for (uint256 i = 0; i < weights.length; i++) {
            totalWeight += weights[i];
        }
        if (totalWeight > MAX_WEIGHT) revert TotalWeightExceeded();

        for (uint256 i = 0; i < gauges.length; i++) {
            _voteForGauge(gauges[i], weights[i]);
        }
    }

    // ============ Internal Functions ============

    function _voteForGauge(address gauge, uint256 weight) internal {
        // Validate voting power
        if (_veYB.balanceOf(address(this)) == 0) revert NoVotingPower();

        // Validate weight
        if (weight > MAX_WEIGHT) revert InvalidWeight();

        // Check gauge exists
        if (!_gaugeController.gauge_exists(gauge)) revert GaugeNotRegistered(gauge);

        // Check cooldown
        uint256 lastVote = _gaugeController.last_user_vote(address(this), gauge);
        if (lastVote > 0 && block.timestamp < lastVote + VOTE_COOLDOWN) {
            revert VoteCooldownActive(gauge, lastVote + VOTE_COOLDOWN);
        }

        // Vote
        _gaugeController.vote_for_gauge_weights(gauge, weight);

        address owner = _portfolioFactory.ownerOf(address(this));
        emit GaugeVoted(address(this), gauge, weight, owner);
    }

    // ============ View Functions ============

    /**
     * @notice Get this account's voting power
     * @return Current veYB balance (voting power)
     */
    function getVotingPower() external view returns (uint256) {
        return _veYB.balanceOf(address(this));
    }

    /**
     * @notice Get remaining voting power (not yet allocated)
     * @return Remaining power in bps (10000 - used)
     */
    function getRemainingVotingPower() external view returns (uint256) {
        uint256 used = _gaugeController.vote_user_power(address(this));
        return MAX_WEIGHT > used ? MAX_WEIGHT - used : 0;
    }

    /**
     * @notice Get vote info for a specific gauge
     * @param gauge Gauge address
     * @return weight Current vote weight for this gauge
     * @return lastVoteTime Timestamp of last vote
     * @return canVoteAt Timestamp when vote can be changed
     */
    function getVoteInfo(address gauge) external view returns (
        uint256 weight,
        uint256 lastVoteTime,
        uint256 canVoteAt
    ) {
        (uint256 slope, uint256 power,) = _gaugeController.vote_user_slopes(address(this), gauge);
        weight = power;
        lastVoteTime = _gaugeController.last_user_vote(address(this), gauge);
        canVoteAt = lastVoteTime > 0 ? lastVoteTime + VOTE_COOLDOWN : 0;
    }

    /**
     * @notice Check if vote can be changed for a gauge
     * @param gauge Gauge address
     * @return True if cooldown has passed
     */
    function canVote(address gauge) external view returns (bool) {
        uint256 lastVote = _gaugeController.last_user_vote(address(this), gauge);
        return lastVote == 0 || block.timestamp >= lastVote + VOTE_COOLDOWN;
    }

    /**
     * @notice Get current weight of a gauge
     * @param gauge Gauge address
     * @return Current gauge weight
     */
    function getGaugeWeight(address gauge) external view returns (uint256) {
        return _gaugeController.get_gauge_weight(gauge);
    }

    /**
     * @notice Get total weight across all gauges
     * @return Total weight
     */
    function getTotalWeight() external view returns (uint256) {
        return _gaugeController.get_total_weight();
    }

    /**
     * @notice Get relative weight of a gauge (as percentage of total)
     * @param gauge Gauge address
     * @return Relative weight in bps (0-10000)
     */
    function getGaugeRelativeWeight(address gauge) external view returns (uint256) {
        uint256 gaugeWeight = _gaugeController.get_gauge_weight(gauge);
        uint256 totalWeight = _gaugeController.get_total_weight();
        if (totalWeight == 0) return 0;
        return (gaugeWeight * MAX_WEIGHT) / totalWeight;
    }

    /**
     * @notice Get number of registered gauges
     * @return Number of gauges
     */
    function getGaugeCount() external view returns (uint256) {
        return _gaugeController.n_gauges();
    }

    /**
     * @notice Get gauge address by index
     * @param index Gauge index
     * @return Gauge address
     */
    function getGauge(uint256 index) external view returns (address) {
        return _gaugeController.gauges(index);
    }
}
