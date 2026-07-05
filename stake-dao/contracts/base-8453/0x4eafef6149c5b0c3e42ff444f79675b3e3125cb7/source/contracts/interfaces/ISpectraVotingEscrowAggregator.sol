// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IGovernanceRegistry} from "./IGovernanceRegistry.sol";

interface ISpectraVotingEscrowAggregator {
    error InvalidVotingEscrow(address _ve);
    event GovernanceRegistryChange(address indexed oldGovernanceRegistry, address indexed newGovernanceRegistry);

    function governanceRegistry() external view returns (IGovernanceRegistry);

    /* USER VOTING POWER
     *****************************************************************************************************************/
    /// @notice Get the total voting power of a user at the latest block timestamp
    function getTotalVotingPowerOfUser(address _user) external view returns (uint256);

    /// @notice Get the total voting power of a user at the latest block timestamp
    /// @dev This is a duplicate of getTotalVotingPowerOfUser used for governance stack compatibility
    function balanceOf(address _user) external view returns (uint256);

    /* INDIVIDUAL NFT VOTING POWER
     *****************************************************************************************************************/
    /// @notice Get the voting power of an NFT at the latest block timestamp
    function getVotingPowerOfNFT(address _ve, uint256 _tokenId) external view returns (uint256);

    /// @notice Get the voting power of an NFT at a specific timestamp
    function getVotingPowerOfNFTAt(address _ve, uint256 _tokenId, uint256 _t) external view returns (uint256);

    /* INDIVIDUAL VE VOTING POWER
     *****************************************************************************************************************/
    /// @notice Get the total voting power of a VotingEscrow at the latest block timestamp
    function getTotalVotingPowerOfVE(address _ve) external view returns (uint256);

    /// @notice Get the total voting power of a VotingEscrow at a specific timestamp
    function getTotalVotingPowerOfVEAt(address _ve, uint256 _t) external view returns (uint256);

    /* TOTAL VOTING POWER
     *****************************************************************************************************************/
    /// @notice Get the total voting power of all VotingEscrows at the latest block timestamp
    function getTotalVotingPower() external view returns (uint256);

    /// @notice Get the total voting power of all VotingEscrows at a specific timestamp
    function getTotalVotingPowerAt(uint256 _t) external view returns (uint256);

    /// @notice Get the total voting power of all VotingEscrows at the latest block timestamp
    /// @dev This is a duplicate of getTotalVotingPower used for governance stack compatibility
    function totalSupply() external view returns (uint256);

    /* Setters
     *****************************************************************************************************************/

    /// @notice Set the governance registry
    function setGovernanceRegistry(address _governanceRegistry) external;
}
