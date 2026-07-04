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

interface RocketMinipoolBondReducerInterface {
    function beginReduceBondAmount(address _minipoolAddress, uint256 _newBondAmount) external;
    function getReduceBondTime(address _minipoolAddress) external view returns (uint256);
    function getReduceBondValue(address _minipoolAddress) external view returns (uint256);
    function getReduceBondCancelled(address _minipoolAddress) external view returns (bool);
    function canReduceBondAmount(address _minipoolAddress) external view returns (bool);
    function voteCancelReduction(address _minipoolAddress) external;
    function reduceBondAmount() external returns (uint256);
    function getLastBondReductionTime(address _minipoolAddress) external view returns (uint256);
    function getLastBondReductionPrevValue(address _minipoolAddress) external view returns (uint256);
    function getLastBondReductionPrevNodeFee(address _minipoolAddress) external view returns (uint256);
}
