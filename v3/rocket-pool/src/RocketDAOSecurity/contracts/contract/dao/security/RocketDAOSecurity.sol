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
pragma solidity 0.8.18;

import "../../RocketBase.sol";
import "../../../interface/dao/security/RocketDAOSecurityInterface.sol";
import "../../../interface/dao/security/RocketDAOSecurityProposalsInterface.sol";
import "../../../interface/dao/protocol/settings/RocketDAOProtocolSettingsSecurityInterface.sol";
import "../../../interface/util/AddressSetStorageInterface.sol";

/// @notice The Rocket Pool Security Council DAO
contract RocketDAOSecurity is RocketBase, RocketDAOSecurityInterface {

    // The namespace for any data stored in the network DAO (do not change)
    string constant internal daoNameSpace = "dao.security.";

    constructor(RocketStorageInterface _rocketStorageAddress) RocketBase(_rocketStorageAddress) {
        version = 1;
    }

    /// @notice Return the amount of member votes need for a proposal to pass (as a fraction of 1e18)
    function getMemberQuorumVotesRequired() override external view returns (uint256) {
        // Load contracts
        RocketDAOProtocolSettingsSecurityInterface rocketDAOProtocolSettingsSecurity = RocketDAOProtocolSettingsSecurityInterface(getContractAddress("rocketDAOProtocolSettingsSecurity"));
        // Calculate and return votes required
        return getMemberCount() * rocketDAOProtocolSettingsSecurity.getQuorum();
    }

    /*** Members ******************/

    /// @notice Returns whether a given address is a member
    /// @param _memberAddress Address of the member to query
    /// @return True if the node addressed passed is a member of the trusted node DAO
    function getMemberIsValid(address _memberAddress) override external view returns (bool) {
        return getBool(keccak256(abi.encodePacked(daoNameSpace, "member", _memberAddress)));
    }

    /// @notice Returns the address of a node in the member set
    /// @param _index The index into the member set
    /// @return Address of the member at the given index
    function getMemberAt(uint256 _index) override external view returns (address) {
        AddressSetStorageInterface addressSetStorage = AddressSetStorageInterface(getContractAddress("addressSetStorage"));
        return addressSetStorage.getItem(keccak256(abi.encodePacked(daoNameSpace, "member.index")), _index);
    }

    /// @notice Returns the total number of members in the set
    /// @return The number of members
    function getMemberCount() override public view returns (uint256) {
        AddressSetStorageInterface addressSetStorage = AddressSetStorageInterface(getContractAddress("addressSetStorage"));
        return addressSetStorage.getCount(keccak256(abi.encodePacked(daoNameSpace, "member.index")));
    }

    /// @notice Get the ID of a member
    /// @param _memberAddress The address of the member to query
    /// @return The ID of the relevant member
    function getMemberID(address _memberAddress) override external view returns (string memory) {
        return getString(keccak256(abi.encodePacked(daoNameSpace, "member.id", _memberAddress)));
    }

    /// @notice Get the block the member joined at
    /// @param _memberAddress The address of the member to query
    /// @return The timestamp at which the relevant member joined
    function getMemberJoinedTime(address _memberAddress) override external view returns (uint256) {
        return getUint(keccak256(abi.encodePacked(daoNameSpace, "member.joined.time", _memberAddress)));
    }

    /// @notice Get data that was recorded about a proposal that was executed
    /// @param _proposalType Can be one of the following: "invited", "leave"
    /// @param _memberAddress The address of the member to query
    /// @return The timestamp that the relevant proposal happened for the relevant member
    function getMemberProposalExecutedTime(string memory _proposalType, address _memberAddress) override external view returns (uint256) {
        return getUint(keccak256(abi.encodePacked(daoNameSpace, "member.executed.time", _proposalType, _memberAddress)));
    }
}
