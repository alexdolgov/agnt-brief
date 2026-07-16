// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {ERC721, IERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721Burnable} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import {ERC721Pausable} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Pausable.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract SBT is ERC721, ERC721URIStorage, ERC721Pausable, ERC721Burnable, Ownable {
    // ************************************* //
    // *             Storage               * //
    // ************************************* //

    string public imageUri;
    uint256 private _nextTokenId;

    // ************************************* //
    // *              Events               * //
    // ************************************* //

    error TransfersNotPermitted();

    // ************************************* //
    // *            Constructor            * //
    // ************************************* //

    constructor(
        string memory _name,
        string memory _symbol,
        string memory _imageUri
    ) ERC721(_name, _symbol) Ownable(msg.sender) {
        imageUri = _imageUri;
    }

    // ************************************* //
    // *             Governance            * //
    // ************************************* //

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function setImageUri(string memory _imageUri) public onlyOwner {
        imageUri = _imageUri;
    }

    // ************************************* //
    // *        ERC-721 Functions          * //
    // ************************************* //

    function tokenURI(uint256 /*_tokenId*/) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        string memory json = Base64.encode(
            bytes(string.concat('{"name":"', name(), '",', '"image":"', imageUri, '"}'))
        );
        return string.concat("data:application/json;base64,", json);
    }

    function safeMint(address _to) public onlyOwner returns (uint256) {
        require(balanceOf(_to) == 0, "Address should not already have a token");
        uint256 tokenId = _nextTokenId++;
        _safeMint(_to, tokenId);
        _setTokenURI(tokenId, tokenURI(tokenId));
        return tokenId;
    }

    function transferFrom(address, address, uint256) public pure override(ERC721, IERC721) {
        revert TransfersNotPermitted();
    }

    function safeTransferFrom(address, address, uint256, bytes memory) public pure override(ERC721, IERC721) {
        revert TransfersNotPermitted();
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address _to,
        uint256 _tokenId,
        address _auth
    ) internal override(ERC721, ERC721Pausable) returns (address) {
        return super._update(_to, _tokenId, _auth);
    }

    function supportsInterface(bytes4 _interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(_interfaceId);
    }
}
