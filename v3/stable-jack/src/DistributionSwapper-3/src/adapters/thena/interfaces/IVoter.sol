// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVoter {
    function maxVotingNum() external view returns (uint256);
    function lastVoted(uint256 tokenId) external view returns (uint256);
    function vote(uint256 _tokenId, address[] calldata _poolVote, uint256[] calldata _weights) external;
    function reset(uint256 _tokenId) external;
    function claimBribes(address[] memory _bribes, address[][] memory _tokens) external;
    function claimFees(address[] memory _fees, address[][] memory _tokens) external;
    function internal_bribes(address _gauge) external view returns (address);
    function external_bribes(address _gauge) external view returns (address);
    function gauges(address _pair) external view returns (address);
    function getGaugeVotes(address _pool) external view returns (uint256);
    function poolVote(uint256 _tokenId, uint256 i) external view returns (address);
    function currentPeriod() external view returns (uint256);
}
