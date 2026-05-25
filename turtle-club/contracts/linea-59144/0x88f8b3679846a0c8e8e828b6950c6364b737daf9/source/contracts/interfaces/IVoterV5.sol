// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IVoterV5 {
    function ve() external view returns (address);
    function oLynx() external view returns (address);
    function base() external view returns (address);
    function gauges(address _pair) external view returns (address);
    function isGauge(address _gauge) external view returns (bool);
    function poolForGauge(address _gauge) external view returns (address);
    function factory() external view returns (address);
    function minter() external view returns(address);
    function isWhitelisted(address token) external view returns (bool);
    function isGaugeDepositor(address depositor) external view returns (bool);
    function notifyRewardAmount(uint amount) external;
    function distributeAll() external;
    function distributeFees(address[] memory _gauges) external;

    function internal_bribes(address _gauge) external view returns (address);
    function external_bribes(address _gauge) external view returns (address);

    function usedWeights(address _account) external view returns(uint);
    function lastVoted(address _account) external view returns(uint);
    function poolVote(address _account, uint _index) external view returns(address _pair);
    function votes(address _account, address _pool) external view returns(uint votes);
    function poolVoteLength(address _account) external view returns(uint);
    function _epochTimestamp() external view returns(uint);
}
