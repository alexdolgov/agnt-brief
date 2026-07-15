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

import "../../types/MinipoolDeposit.sol";

interface RocketMinipoolQueueInterface {
    function getTotalLength() external view returns (uint256);
    function getContainsLegacy() external view returns (bool);
    function getLengthLegacy(MinipoolDeposit _depositType) external view returns (uint256);
    function getLength() external view returns (uint256);
    function getTotalCapacity() external view returns (uint256);
    function getEffectiveCapacity() external view returns (uint256);
    function getNextCapacityLegacy() external view returns (uint256);
    function getNextDepositLegacy() external view returns (MinipoolDeposit, uint256);
    function enqueueMinipool(address _minipool) external;
    function dequeueMinipoolByDepositLegacy(MinipoolDeposit _depositType) external returns (address minipoolAddress);
    function dequeueMinipools(uint256 _maxToDequeue) external returns (address[] memory minipoolAddress);
    function removeMinipool(MinipoolDeposit _depositType) external;
    function getMinipoolAt(uint256 _index) external view returns(address);
    function getMinipoolPosition(address _minipool) external view returns (int256);
}
