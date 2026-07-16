// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVotingEscrow {
    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

    function ownerOf(uint256 tokenId) external view returns (address);
    function approve(address _spender, uint256 _tokenId) external;
    function isVotingApprovedOrOwner(address _spender, uint256 _tokenId) external returns (bool);
    function locked(uint256 _tokenId) external view returns (LockedBalance memory);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
    function increase_amount(uint256 _tokenId, uint256 _value) external;
    function increase_unlock_time(uint256 _tokenId, uint256 _lockDuration) external;
    function balanceOfNFT(uint256 _tokenId) external view returns (uint256);
    function attachments(uint256 _tokenId) external view returns (uint256);
    function voted(uint256 _tokenId) external view returns (bool);
    function create_lock(uint _value, uint _lock_duration) external returns (uint);
    function approveVoting(address _approved, uint256 _tokenId) external;
}
