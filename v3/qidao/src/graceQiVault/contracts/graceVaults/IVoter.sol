// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
interface IVoter {

    // Functions
    function claimBribes(address[] calldata _bribes, address[][] calldata _tokens, uint256 _tokenId) external;
    function claimFees(address[] calldata _fees, address[][] calldata _tokens, uint256 _tokenId) external;
    /*
        tokenId : vaultId
        bribes : 
            tokens []
    */
    
    function claimRewards(address[] calldata _gauges) external;
    function vote(uint256 _tokenId, address[] calldata _poolVote, uint256[] calldata _weights) external;


/*
    function claimable(address) external view returns (uint256);
    function createGauge(address _poolFactory, address _pool) external returns (address);
    function depositManaged(uint256 _tokenId, uint256 _mTokenId) external;
    function distribute(address[] calldata _gauges) external;
    function distribute(uint256 _start, uint256 _finish) external;
    function emergencyCouncil() external view returns (address);
    function epochGovernor() external view returns (address);
    function epochNext(uint256 _timestamp) external pure returns (uint256);
    function epochStart(uint256 _timestamp) external pure returns (uint256);
    function epochVoteEnd(uint256 _timestamp) external pure returns (uint256);
    function epochVoteStart(uint256 _timestamp) external pure returns (uint256);
    function factoryRegistry() external view returns (address);
    function forwarder() external view returns (address);
    function gaugeToBribe(address) external view returns (address);
    function gaugeToFees(address) external view returns (address);
    function gauges(address) external view returns (address);
    function governor() external view returns (address);
    function initialize(address[] calldata _tokens, address _minter) external;
    function isAlive(address) external view returns (bool);
    function isGauge(address) external view returns (bool);
    function isTrustedForwarder(address forwarder) external view returns (bool);
    function isWhitelistedNFT(uint256) external view returns (bool);
    function isWhitelistedToken(address) external view returns (bool);
    function killGauge(address _gauge) external;
    function lastVoted(uint256) external view returns (uint256);
    function length() external view returns (uint256);
    function maxVotingNum() external view returns (uint256);
    function minter() external view returns (address);
    function notifyRewardAmount(uint256 _amount) external;
    function poke(uint256 _tokenId) external;
    function poolForGauge(address) external view returns (address);
    function poolVote(uint256, uint256) external view returns (address);
    function pools(uint256) external view returns (address);
    function reset(uint256 _tokenId) external;
    function reviveGauge(address _gauge) external;
    function setEmergencyCouncil(address _council) external;
    function setEpochGovernor(address _epochGovernor) external;
    function setGovernor(address _governor) external;
    function setMaxVotingNum(uint256 _maxVotingNum) external;
    function totalWeight() external view returns (uint256);
    function updateFor(address _gauge) external;
    function updateFor(uint256 start, uint256 end) external;
    function updateFor(address[] calldata _gauges) external;
    function usedWeights(uint256) external view returns (uint256);
    function ve() external view returns (address);
    function votes(uint256, address) external view returns (uint256);
    function weights(address) external view returns (uint256);
    function whitelistNFT(uint256 _tokenId, bool _bool) external;
    function whitelistToken(address _token, bool _bool) external;
    function withdrawManaged(uint256 _tokenId) external;
*/
}
