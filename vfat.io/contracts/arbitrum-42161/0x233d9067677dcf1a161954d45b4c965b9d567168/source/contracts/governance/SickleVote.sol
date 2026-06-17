// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../base/Admin.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Votes.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SickleVote is Admin, ERC721Votes {
    using Counters for Counters.Counter;

    Counters.Counter public _tokenIds;

    constructor()
        ERC721("SickleVote", "SVOTE")
        Admin(msg.sender)
        EIP712("SickleVote", "1")
    {
        _safeMint(msg.sender, 1);
        _tokenIds.increment();
        _tokenIds.increment();
    }

    function mint(address to) external onlyAdmin returns (uint256) {
        uint256 newItemId = _tokenIds.current();
        _safeMint(to, newItemId);
        _tokenIds.increment();
        return newItemId;
    }

    function totalSupply() external view returns (uint256) {
        return _tokenIds.current() - 1;
    }
}
