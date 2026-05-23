// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "base64-sol/base64.sol";

contract LowEffortLendies is ERC721, Ownable {

    // next token id
    uint128 public _nextId = 1;
    // max number of tokens
    uint128 public _maxTokenCount = 100;
    // base URI
    string public baseURI;

    constructor()
        ERC721("LowEffortLendies", "LEL")
        Ownable() {}

    function setBaseURI(string memory _baseURI) public onlyOwner {
        baseURI = _baseURI;
    }

    function mint() public {
        require(_nextId <= _maxTokenCount);
        uint256 tokenId = _nextId++;
        _safeMint(msg.sender, tokenId);
    }

    /**
     * @notice Returns the encoded svg data
     * @param tokenId The tokenId of the position
     * @return encoded svg
     **/
    function tokenURI(uint256 tokenId)
        public
        view
        override
        returns (string memory)
    {
        require(_exists(tokenId));
        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        abi.encodePacked(
                            '{"name":"Low Effort Lendie #', Strings.toString(tokenId), '","external_url":"https://atlendis.io/","image":"',
                            baseURI, "/", Strings.toString(tokenId), '.png"}'
                        )
                    )
                )
            );
    }
}
