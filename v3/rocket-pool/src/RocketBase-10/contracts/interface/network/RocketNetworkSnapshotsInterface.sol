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

/// @notice Accounting for snapshotting of values based on block numbers
interface RocketNetworkSnapshotsInterface {
    struct Checkpoint224 {
        uint32 _block;
        uint224 _value;
    }

    function push(bytes32 _key, uint224 _value) external;
    function length(bytes32 _key) external view returns (uint256);
    function latest(bytes32 _key) external view returns (bool exists, uint32 block, uint224 value);
    function latestBlock(bytes32 _key) external view returns (uint32);
    function latestValue(bytes32 _key) external view returns (uint224);
    function lookup(bytes32 _key, uint32 _block) external view returns (uint224);
    function lookupCheckpoint(bytes32 _key, uint32 _block) external view returns (bool exists, uint32 block, uint224 value);
    function lookupRecent(bytes32 _key, uint32 _block, uint256 _recency) external view returns (uint224);
}
