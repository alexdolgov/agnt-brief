// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UD60x18, ud, pow, unwrap} from "lib/prb-math/src/UD60x18.sol";
import {IVeReppo} from "../../interfaces/IVeReppo.sol";

struct Balance {
    uint256 relockingAmount;
    uint256 points;
}

contract PointsTracker is Initializable {
    // keccak256(abi.encode(uint256(keccak256("reppo.storage.VeReppo.PointsTracker")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PointsTrackerStorageLocation =
        0x482368847e05054f2fd1a78549220c37dfe216bfccbad07275d4f96e83036200;

    /// @custom:storage-location erc7201:reppo.storage.VeReppo.PointsTracker
    struct PointsTrackerStorage {
        uint48 creationTimestamp;
        uint48 maxStakeDuration;
        uint48 epochLength;
    }

    function _getPointsTrackerStorage() private pure returns (PointsTrackerStorage storage $) {
        assembly {
            $.slot := PointsTrackerStorageLocation
        }
    }

    uint256 internal constant YEAR_BASE = 18e17;

    function __PointsTracker_init(uint48 maxStakeDuration, uint48 epochLength) internal onlyInitializing {
        if (epochLength == 0) revert IVeReppo.AmountZero();
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        $.creationTimestamp = uint48(block.timestamp);
        $.maxStakeDuration = maxStakeDuration;
        $.epochLength = epochLength;
    }

    function _previewPoints(uint256 amount, uint256 duration)
        internal
        view
        virtual
        returns (uint256 points, uint256 end)
    {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        // take epoch start as the start of the duration
        uint256 start = block.timestamp - (block.timestamp - $.creationTimestamp) % $.epochLength;
        end = start + duration;
        uint256 timePassed = _timePassed(end);
        points = _pointsAfter(amount, timePassed);
    }

    function _pointsAfter(uint256 amount, uint256 timePassed) internal view returns (uint256) {
        // time is rounded down to the nearest epoch end
        uint256 timePassedRoundedToEpochEnd = timePassed - (timePassed % _epochLength());
        UD60x18 endYearpoc = ud(((timePassedRoundedToEpochEnd) * 1e18) / 365 days);
        UD60x18 multiplier = pow(ud(YEAR_BASE), endYearpoc);
        return (amount * unwrap(multiplier)) / 1e18;
    }

    function _timePassed(uint256 end) internal view returns (uint256) {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        uint256 creationTimestamp = $.creationTimestamp;
        if (end < creationTimestamp) return 0;
        return end - creationTimestamp;
    }

    function _totalPointsAt(Balance memory balance, uint256 timestamp) internal view virtual returns (uint256) {
        uint256 timePassed = _timePassed(timestamp);
        return _pointsAfter(balance.relockingAmount, timePassed + _maxStakeDuration()) + balance.points;
    }

    function _maxStakeDuration() internal view returns (uint256) {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        return $.maxStakeDuration;
    }

    function _epochLength() internal view returns (uint256) {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        return $.epochLength;
    }

    function _currentEpoch() internal view returns (uint256) {
        return _timePassed(block.timestamp) / _epochLength();
    }

    function _epochEnd(uint256 epoch) internal view returns (uint256) {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        return $.creationTimestamp + (epoch + 1) * $.epochLength;
    }

    function _creationTimestamp() internal view returns (uint256) {
        PointsTrackerStorage storage $ = _getPointsTrackerStorage();
        return $.creationTimestamp;
    }
}
