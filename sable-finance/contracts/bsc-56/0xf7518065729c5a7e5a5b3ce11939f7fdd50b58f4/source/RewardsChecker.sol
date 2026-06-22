// SPDX-License-Identifier: MIT

pragma solidity =0.6.11;
pragma experimental ABIEncoderV2;

interface ICommunityIssuance {
    function lastIssuanceTime() external view returns (uint);
    function latestRewardPerSec() external view returns (uint);
}

interface IStabilityPool {
    struct Snapshots {
        uint S;
        uint P;
        uint G;
        uint128 scale;
        uint128 epoch;
    }
    struct Deposit {
        uint initialValue;
        address frontEndTag;
    }
    function P() external view returns (uint);
    function currentEpoch() external view returns (uint128);
    function currentScale() external view returns (uint128);
    function lastSABLEError() external view returns (uint);
    function getTotalUSDSDeposits() external view returns (uint);
    function epochToScaleToG(uint128, uint128) external view returns (uint);
    function deposits(address) external view returns (Deposit memory);
    function depositSnapshots(address) external view returns (Snapshots memory);
}

contract RewardsChecker {
    using SafeMath for uint;

    uint constant public DECIMAL_PRECISION = 1e18;
    uint constant public SCALE_FACTOR = 1e9;

    address constant COMMUNITY_ISSUANCE = 0x7fd517b06b898F1a6081E0891265516F83Dc9C9E;
    address constant STABILITY_POOL = 0x598913568093AB9F3d549236EB98388271073F18;
    ICommunityIssuance public communityIssuance;
    IStabilityPool public stabilityPool;


    constructor() public {
        communityIssuance = ICommunityIssuance(COMMUNITY_ISSUANCE);
        stabilityPool = IStabilityPool(STABILITY_POOL);
    }

    function _getLastIssuanceTime() private view returns (uint) {
        return communityIssuance.lastIssuanceTime();
    }

    function _getLatestRewardPerSec() private view returns (uint) {
        return communityIssuance.latestRewardPerSec();
    }

    function _getP() private view returns (uint) {
        return stabilityPool.P();
    }

    function _getCurrentEpoch() private view returns (uint128) {
        return stabilityPool.currentEpoch();
    }

    function _getCurrentScale() private view returns (uint128) {
        return stabilityPool.currentScale();
    }

    function _getTotalUSDSDeposits() private view returns (uint) {
        return stabilityPool.getTotalUSDSDeposits();
    }

    function _getSABLEError() private view returns (uint) {
        return stabilityPool.lastSABLEError();
    }

    function _getEpochToScaleToG(uint128 epoch, uint128 scale) private view returns (uint) {
        return stabilityPool.epochToScaleToG(epoch, scale);
    }

    function _getDepositorInitialValue(address depositor) private view returns (uint) {
        return stabilityPool.deposits(depositor).initialValue;
    }

    function _getSnapshotsByAddress(address depositor) private view returns (uint, uint, uint128, uint128) {
        IStabilityPool.Snapshots memory snapshots = stabilityPool.depositSnapshots(depositor);
        return (snapshots.P, snapshots.G, snapshots.scale, snapshots.epoch);
    }

    function _calcPendingIssuance() private view returns (uint) {
        uint timeSinceLastIssue = block.timestamp.sub(_getLastIssuanceTime());
        uint issuance = _getLatestRewardPerSec().mul(timeSinceLastIssue);
        return issuance;
    }

    function _calcLatestSABLEPerUnitStaked() private view returns (uint) {
        uint pendingIssuance = _calcPendingIssuance();
        uint totalUSDSDeposits = _getTotalUSDSDeposits();
        uint lastSABLEError = _getSABLEError();

        uint numerator = pendingIssuance.mul(DECIMAL_PRECISION).add(lastSABLEError);
        uint latestPerUnitStaked = numerator.div(totalUSDSDeposits);

        return latestPerUnitStaked;
    }

    function _calcLatestMarginalSABLEGain() private view returns (uint) {
        uint latestPerUnitStaked = _calcLatestSABLEPerUnitStaked();
        uint P = _getP();
        return latestPerUnitStaked.mul(P);
    }

    function _calcLatestEpcohScaleToG() private view returns (uint) {
        uint lastestMarginalSABLEGain = _calcLatestMarginalSABLEGain();
        uint128 currentEpoch = _getCurrentEpoch();
        uint128 currentScale = _getCurrentScale();
        uint latestEpochScaleToG = _getEpochToScaleToG(currentEpoch, currentScale).add(lastestMarginalSABLEGain);
        return latestEpochScaleToG;
    }

    function calcDepositorPendingSABLEGain(address depositor) public view returns (uint) {
        uint128 currentEpoch = _getCurrentEpoch();
        uint128 currentScale = _getCurrentScale();

        (uint depositorP, uint depositorG, uint128 depositorScale, uint128 depositorEpoch) = _getSnapshotsByAddress(depositor);
        uint initialStake = _getDepositorInitialValue(depositor);

        if (currentEpoch == depositorEpoch && currentScale == depositorScale) {
            uint firstPortion = _calcLatestEpcohScaleToG().sub(depositorG);
            uint secondPortion = _getEpochToScaleToG(currentEpoch, currentScale + 1).div(SCALE_FACTOR);
            uint SABLEGain = initialStake.mul(firstPortion.add(secondPortion)).div(depositorP).div(DECIMAL_PRECISION);
            return SABLEGain;
        } else {
            return 0;
        }

    }
}


library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

 
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }


    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}