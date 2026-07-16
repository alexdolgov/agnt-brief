// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

interface IGaugeVoting {
    struct VotedSlope {
        uint256 slope;
        uint256 power;
        uint256 end;
    }

    struct Point {
        uint256 bias;
        uint256 slope;
    }

    function votingEscrow() external view returns (address);

    function voteUserSlopes(address, bytes32) external view returns (VotedSlope memory);

    function addGauge(address, uint256, uint256, uint256, address, uint256, uint256, uint256) external;

    function WEIGHT_VOTE_DELAY() external view returns (uint256);

    function lastUserVote(address, bytes32) external view returns (uint256);

    function gaugePointsWeight(bytes32, uint256) external view returns (Point memory);

    function checkpointGauge(address, uint256) external;

    //solhint-disable-next-line
    function gaugeTypes_(bytes32) external view returns (int128);

    //solhint-disable-next-line
    function gaugeRelativeWeight_write(address gauge_addr, uint256 time, uint256 _chainId) external returns (uint256);

    function getGaugeWeight(address gauge_addr, uint256 chainId, bool inCap) external view returns (uint256);

    //solhint-disable-next-line
    function gaugeRelativeWeight(address gauge_addr, uint256 time, uint256 _chainId) external view returns (uint256);

    //solhint-disable-next-line
    function getTotalWeight(bool inCap) external view returns (uint256);

    //solhint-disable-next-line
    function Weight(address gauge_addr, uint256 _chainId, bool inCap) external view returns (uint256);

    ///@notice Allocate voting power for changing pool weights.
    function voteForGaugeWeights(address, uint256, uint256, bool, bool) external;

    function voteFromAdmin(address, uint256, uint256, uint256) external;

    function addType(string memory, uint256) external;
}
