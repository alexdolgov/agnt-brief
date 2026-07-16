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

pragma solidity >0.5.0 <0.9.0;

// SPDX-License-Identifier: GPL-3.0-only

interface RocketDAOProtocolSettingsProposalsInterface {
    function getVotePhase1Time() external view returns(uint256);
    function getVotePhase2Time() external view returns(uint256);
    function getVoteDelayTime() external view returns(uint256);
    function getExecuteTime() external view returns(uint256);
    function getProposalBond() external view returns(uint256);
    function getChallengeBond() external view returns(uint256);
    function getChallengePeriod() external view returns(uint256);
    function getProposalQuorum() external view returns (uint256);
    function getProposalVetoQuorum() external view returns (uint256);
    function getProposalMaxBlockAge() external view returns (uint256);
}
