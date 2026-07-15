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

interface RocketDAONodeTrustedUpgradeInterface {
    enum UpgradeProposalState {
        Pending,        // Upgrade proposal is in the delay period
        Succeeded,      // Upgrade proposal can be executed immediately
        Vetoed,         // Upgrade was vetoed by the security council
        Executed        // Upgrade was executed
    }

    function upgrade(string memory _type, string memory _name, string memory _contractAbi, address _contractAddress) external;
    function veto(uint256 _upgradeProposalID) external;
    function execute(uint256 _upgradeProposalID) external;
    function bootstrapUpgrade(string memory _type, string memory _name, string memory _contractAbi, address _contractAddress) external;

    function getTotal() external view returns (uint256);
    function getState(uint256 _upgradeProposalID) external view returns (UpgradeProposalState);
    function getEnd(uint256 _upgradeProposalID) external view returns (uint256);
    function getExecuted(uint256 _upgradeProposalID) external view returns (bool);
    function getVetoed(uint256 _upgradeProposalID) external view returns (bool);
    function getType(uint256 _upgradeProposalID) external view returns (bytes32);
    function getName(uint256 _upgradeProposalID) external view returns (string memory);
    function getUpgradeAddress(uint256 _upgradeProposalID) external view returns (address);
    function getUpgradeABI(uint256 _upgradeProposalID) external view returns (string memory);
}
