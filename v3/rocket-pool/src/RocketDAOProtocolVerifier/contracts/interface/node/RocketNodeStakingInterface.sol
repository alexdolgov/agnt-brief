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

interface RocketNodeStakingInterface {
    function getTotalRPLStake() external view returns (uint256);
    function getNodeRPLStake(address _nodeAddress) external view returns (uint256);
    function getNodeETHMatched(address _nodeAddress) external view returns (uint256);
    function getNodeETHProvided(address _nodeAddress) external view returns (uint256);
    function getNodeETHCollateralisationRatio(address _nodeAddress) external view returns (uint256);
    function getNodeRPLStakedTime(address _nodeAddress) external view returns (uint256);
    function getNodeEffectiveRPLStake(address _nodeAddress) external view returns (uint256);
    function getNodeMinimumRPLStake(address _nodeAddress) external view returns (uint256);
    function getNodeMaximumRPLStake(address _nodeAddress) external view returns (uint256);
    function getNodeETHMatchedLimit(address _nodeAddress) external view returns (uint256);
    function getRPLLockingAllowed(address _nodeAddress) external view returns (bool);
    function stakeRPL(uint256 _amount) external;
    function stakeRPLFor(address _nodeAddress, uint256 _amount) external;
    function setRPLLockingAllowed(address _nodeAddress, bool _allowed) external;
    function setStakeRPLForAllowed(address _caller, bool _allowed) external;
    function setStakeRPLForAllowed(address _nodeAddress, address _caller, bool _allowed) external;
    function getNodeRPLLocked(address _nodeAddress) external view returns (uint256);
    function lockRPL(address _nodeAddress, uint256 _amount) external;
    function unlockRPL(address _nodeAddress, uint256 _amount) external;
    function transferRPL(address _from, address _to, uint256 _amount) external;
    function burnRPL(address _from, uint256 _amount) external;
    function withdrawRPL(uint256 _amount) external;
    function withdrawRPL(address _nodeAddress, uint256 _amount) external;
    function slashRPL(address _nodeAddress, uint256 _ethSlashAmount) external;
}
