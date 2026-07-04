/**
   *       .
   *      / \
   *     |.'.|
   *     |'.'|
   *   ,'|   |'.
   *  |,-'-|-'-.|
   *   __|_| |         _        _      _____           _
   *  | ___ \|        | |      | |    | ___ \         | |
   *  | |_/ /|__   ___| | _____| |_   | |_/ /__   ___ | |
   *  |    // _ \ / __| |/ / _ \ __|  |  __/ _ \ / _ \| |
   *  | |\ \ (_) | (__|   <  __/ |_   | | | (_) | (_) | |
   *  \_| \_\___/ \___|_|\_\___|\__|  \_|  \___/ \___/|_|
   * +---------------------------------------------------+
   * |    DECENTRALISED STAKING PROTOCOL FOR ETHEREUM    |
   * +---------------------------------------------------+
   *
   *  Rocket Pool is a first-of-its-kind Ethereum staking pool protocol, designed to
   *  be community-owned, decentralised, permissionless, & trustless.
   *
   *  For more information about Rocket Pool, visit https://rocketpool.net
   *
   *  Authored by the Rocket Pool Core Team
   *  Contributors: https://github.com/rocket-pool/rocketpool/graphs/contributors
   *  A special thanks to the Rocket Pool community for all their contributions.
   *
   */

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >0.5.0 <0.9.0;
pragma abicoder v2;

interface RocketRewardsRelayInterface {
    function relayRewards(uint256 _intervalIndex, bytes32 _merkleRoot, uint256 _rewardsRPL, uint256 _rewardsETH) external;
    function claim(address _nodeAddress, uint256[] calldata _intervalIndex, uint256[] calldata _amountRPL, uint256[] calldata _amountETH, bytes32[][] calldata _merkleProof) external;
    function claimAndStake(address _nodeAddress, uint256[] calldata _intervalIndex, uint256[] calldata _amountRPL, uint256[] calldata _amountETH, bytes32[][] calldata _merkleProof, uint256 _stakeAmount) external;
    function isClaimed(uint256 _intervalIndex, address _claimer) external view returns (bool);
}
