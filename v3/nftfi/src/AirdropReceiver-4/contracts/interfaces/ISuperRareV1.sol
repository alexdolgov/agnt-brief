// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.4;

/**
 * @title IERC721_CryptoKitties
 * @author NFTfi
 * @dev ERC721 compliant interface used by CryptoKitties contract.
 * Extracted from https://etherscan.io/address/0x41a322b28d0ff354040e2cbc676f0320d8c8850d#code
 */

interface ISuperRareV1 {
    event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);

    function balanceOf(address _owner) external view returns (uint256 _balance);

    function ownerOf(uint256 _tokenId) external view returns (address _owner);

    function transfer(address _to, uint256 _tokenId) external;

    function approve(address _to, uint256 _tokenId) external;

    function takeOwnership(uint256 _tokenId) external;
}
