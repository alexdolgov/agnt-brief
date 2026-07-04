// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
interface IVotingEscrowAttach {

    /// @notice Lock veTHE when voting
    /// @param _tokenId tokenID used to vote
    function voting(uint _tokenId) external;

    /// @notice Unlock veTHE when resetting vote
    /// @param _tokenId tokenID used to vote
    function abstain(uint _tokenId) external;

    
    /// @notice Attach a veTHE locking it
    /// @param _tokenId tokenId used for the operation
    function attach(uint _tokenId) external;

    
    /// @notice Detach a veTHE unlocking it
    /// @param _tokenId tokenId used for the operation
    function detach(uint _tokenId) external;

    
    event Voting(uint256 tokenId);
    event Abstain(uint256 tokenId);
    event Attach(uint256 tokenId);
    event Detach(uint256 tokenId);

    error notAllowedAttach();
}