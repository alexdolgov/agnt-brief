// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ERC721Token is ERC721Enumerable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    function mint(address player)
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);

        return newItemId;
    }

    function mintBatch(address player, uint256 amount) public
    {
        for(uint256 i = 0; i < amount; i++) {
            mint(player);
        }
    }
}