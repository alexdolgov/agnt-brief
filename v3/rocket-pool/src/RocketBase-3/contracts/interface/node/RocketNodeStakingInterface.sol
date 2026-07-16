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
    function getTotalStakedRPL() external view returns (uint256);
    function getTotalMegapoolStakedRPL() external view returns (uint256);
    function getTotalLegacyStakedRPL() external view returns (uint256);

    function getNodeStakedRPL(address _nodeAddress) external view returns (uint256);
    function getNodeMegapoolStakedRPL(address _nodeAddress) external view returns (uint256);
    function getNodeLegacyStakedRPL(address _nodeAddress) external view returns (uint256);

    function getNodeUnstakingRPL(address _nodeAddress) external view returns (uint256);
    function getNodeLockedRPL(address _nodeAddress) external view returns (uint256);

    function stakeRPLFor(address _nodeAddress, uint256 _amount) external;
    function stakeRPL(uint256 _amount) external;
    function unstakeRPL(uint256 _amount) external;
    function unstakeRPLFor(address _nodeAddress, uint256 _amount) external;
    function withdrawRPL() external;
    function withdrawRPLFor(address _nodeAddress) external;
    function unstakeLegacyRPL(uint256 _amount) external;
    function unstakeLegacyRPLFor(address _nodeAddress, uint256 _amount) external;

    function getNodeRPLStakedTime(address _nodeAddress) external view returns (uint256);
    function getNodeLastUnstakeTime(address _nodeAddress) external view returns (uint256);

    function setStakeRPLForAllowed(address _caller, bool _allowed) external;
    function setStakeRPLForAllowed(address _nodeAddress, address _caller, bool _allowed) external;

    function getRPLLockingAllowed(address _nodeAddress) external view returns (bool);
    function setRPLLockingAllowed(address _nodeAddress, bool _allowed) external;

    function getNodeETHBonded(address _nodeAddress) external view returns (uint256);
    function getNodeMegapoolETHBonded(address _nodeAddress) external view returns (uint256);
    function getNodeMinipoolETHBonded(address _nodeAddress) external view returns (uint256);

    function getNodeETHBorrowed(address _nodeAddress) external view returns (uint256);
    function getNodeMegapoolETHBorrowed(address _nodeAddress) external view returns (uint256);
    function getNodeMinipoolETHBorrowed(address _nodeAddress) external view returns (uint256);

    function getNodeMinimumLegacyRPLStake(address _nodeAddress) external view returns (uint256);
    function getNodeETHCollateralisationRatio(address _nodeAddress) external view returns (uint256);

    // Internal (not callable by users)
    function lockRPL(address _nodeAddress, uint256 _amount) external;
    function unlockRPL(address _nodeAddress, uint256 _amount) external;
    function transferRPL(address _from, address _to, uint256 _amount) external;
    function burnRPL(address _from, uint256 _amount) external;
    function slashRPL(address _nodeAddress, uint256 _ethSlashAmount) external;
}