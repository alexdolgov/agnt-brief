// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IMinter } from "./interfaces/IMinter.sol";
import { ITokenAdmin } from "./interfaces/ITokenAdmin.sol";
import { IGaugeController } from "./interfaces/IGaugeController.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title StakelessGauge
 * @author  Thruster
 * @dev Abstract contract for managing emission rates and checkpoints without staking.
 */
abstract contract StakelessGauge is ReentrancyGuard {
    uint256 public constant MAX_RELATIVE_WEIGHT_CAP = 1e18;

    struct PendingRate {
        uint256 rate;
        uint256 epoch;
    }

    ITokenAdmin private immutable _tokenAdmin;
    IMinter private immutable _minter;
    IGaugeController internal immutable _gaugeController;
    PendingRate private _pendingRate;

    event Checkpoint(uint256 indexed periodTime, uint256 periodEmissions);
    event RelativeWeightCapChanged(uint256 cap);

    uint256 private _rate;
    uint256 private _period;

    uint256 private _emissions;
    bool private _isKilled;

    uint256 private _relativeWeightCap;

    /**
     * @dev Sets the initial state of the contract.
     * @param minter The address of the minter contract.
     */
    constructor(IMinter minter) {
        _tokenAdmin = ITokenAdmin(minter.token());
        _minter = minter;
        _gaugeController = IGaugeController(minter.controller());

        // Rate is iniality set here, it is updated while checkpointing the gauge.
        _rate = _tokenAdmin.rate();

        // Prevent initialisation of implementation contract
        // Choice of `type(uint256).max` prevents implementation from being checkpointed
        _period = type(uint256).max;
    }

    /**
     * @dev Initializes the StakelessGauge with a relative weight cap.
     * @param relativeWeightCap The maximum relative weight cap.
     */
    // solhint-disable-next-line func-name-mixedcase
    function __StakelessGauge_init(uint256 relativeWeightCap) internal {
        require(_period == 0, "Already initialized");

        _period = _currentPeriod();
        _setRelativeWeightCap(relativeWeightCap);
    }

    /**
     * @dev Creates a checkpoint for emissions calculation.
     *      Only callable by the gauge controller admin.
     * @return A boolean value indicating whether the checkpoint was successful.
     */
    function checkpoint() external payable nonReentrant returns (bool) {
        require(msg.sender == _gaugeController.admin(), "!admin");

        uint256 lastPeriod = _period;
        uint256 currentPeriod = _currentPeriod();

        if (lastPeriod < currentPeriod) {
            _gaugeController.checkpoint_gauge(address(this));

            uint256 rate = _rate;
            uint256 newRate = _tokenAdmin.rate();
            PendingRate memory pendingRate = _pendingRate;

            if (_isKilled) {
                rate = 0;
                newRate = 0;
                pendingRate.rate = 0;
            }

            // Write a pending rate update for the next period (next week)
            if (rate != newRate && pendingRate.rate != newRate) {
                _pendingRate.epoch = currentPeriod + 1;
                _pendingRate.rate = newRate;
            }

            uint256 newEmissions = 0;
            lastPeriod += 1;
            for (uint256 i = lastPeriod; i < lastPeriod + 255; ++i) {
                if (i > currentPeriod) break;

                if (i == pendingRate.epoch) {
                    _rate = pendingRate.rate;
                    rate = pendingRate.rate;
                }

                uint256 periodTime = i * 1 weeks;
                uint256 periodEmission = 0;
                uint256 gaugeWeight = getCappedRelativeWeight(periodTime);

                periodEmission = (gaugeWeight * rate * 1 weeks) / 10**18;

                emit Checkpoint(periodTime, periodEmission);
                newEmissions += periodEmission;
            }

            _period = currentPeriod;
            _emissions += newEmissions;

            if (newEmissions > 0 && !_isKilled) {
                _minter.mint(address(this));
                _postMintAction(newEmissions);
            }
        }

        return true;
    }

    /**
     * @dev Returns the current period based on the block timestamp.
     * @return The current period as a uint256.
     */
    function _currentPeriod() internal view returns (uint256) {
        return (block.timestamp / 1 weeks) - 1;
    }

    /**
     * @dev Abstract function to be implemented by the inheriting contract.
     * @param mintAmount The amount minted during the checkpoint.
     */
    function _postMintAction(uint256 mintAmount) internal virtual;

    /**
     * @dev A placeholder function for user checkpoint. Returns true.
     * @return A boolean value, always true.
     */
    function user_checkpoint(address) external pure returns (bool) {
        return true;
    }

    /**
     * @dev Gets the total emissions integrated for a user.
     * @param user The address of the user.
     * @return The total emissions for the user.
     */
    function integrate_fraction(address user) external view returns (uint256) {
        require(user == address(this), "Gauge can only mint for itself");
        return _emissions;
    }

    /**
     * @dev Checks if the gauge is killed.
     * @return A boolean value indicating whether the gauge is killed.
     */
    function is_killed() external view returns (bool) {
        return _isKilled;
    }

    /**
     * @dev Kills the gauge, stopping all emissions.
     */
    function killGauge() external {
        require(msg.sender == _gaugeController.admin(), "!admin");
        _isKilled = true;
    }

    /**
     * @dev Unkills the gauge, resuming emissions.
     */
    function unkillGauge() external {
        require(msg.sender == _gaugeController.admin(), "!admin");
        _isKilled = false;
    }

    /**
     * @dev Sets the relative weight cap for the gauge.
     * @param relativeWeightCap The new relative weight cap.
     */
    function setRelativeWeightCap(uint256 relativeWeightCap) external {
        require(msg.sender == _gaugeController.admin(), "!admin");
        _setRelativeWeightCap(relativeWeightCap);
    }

    /**
     * @dev Internal function to set the relative weight cap.
     * @param relativeWeightCap The new relative weight cap.
     */
    function _setRelativeWeightCap(uint256 relativeWeightCap) internal {
        require(relativeWeightCap <= MAX_RELATIVE_WEIGHT_CAP, "Relative weight cap exceeds allowed absolute maximum");
        _relativeWeightCap = relativeWeightCap;
        emit RelativeWeightCapChanged(relativeWeightCap);
    }

    /**
     * @dev Gets the current relative weight cap.
     * @return The current relative weight cap.
     */
    function getRelativeWeightCap() external view returns (uint256) {
        return _relativeWeightCap;
    }

    /**
     * @dev Gets the capped relative weight at a specific time.
     * @param time The time for which to get the relative weight.
     * @return The capped relative weight.
     */
    function getCappedRelativeWeight(uint256 time) public view returns (uint256) {
        return Math.min(_gaugeController.gauge_relative_weight(address(this), time), _relativeWeightCap);
    }
}
