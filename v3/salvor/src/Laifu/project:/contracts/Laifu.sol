//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./LiquidCollectible.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import {IERC165, ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC721Metadata} from "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";

contract Laifu is LiquidCollectible, ERC165 {
    string public baseTokenURI;

    uint256 public royaltyAmount;
    address public royaltyReceiver;

    bytes4 private constant _INTERFACE_ID_ERC2981 = 0x2a55205a;

    constructor(
        address _owner
    ) LiquidCollectible("Laifu", "LAIFU", 18, 1024, _owner) {
        balanceOf[_owner] = 1024 ether;

        whitelist[_owner] = true;

        royaltyAmount = 500;
        royaltyReceiver = 0x8818bacF59c76cb99892887812bd2c2b34d243A4;

        baseTokenURI = "ipfs://bafybeicu5ils4w3a7es7m3546o3odcc5xwnrrgpw6ak7swjqundgo46ypq/";
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        return string.concat(baseTokenURI, Strings.toString(id));
    }

    // ROYALTIES

    function royaltyInfo(
        uint256 _tokenId,
        uint256 _salePrice
    ) external view returns (address receiver, uint256 amount) {
        return (royaltyReceiver, ((_salePrice * royaltyAmount) / 10000));
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC165) returns (bool) {
        return
            interfaceId == type(IERC721).interfaceId ||
            interfaceId == type(IERC721Metadata).interfaceId ||
            interfaceId == _INTERFACE_ID_ERC2981 ||
            super.supportsInterface(interfaceId);
    }

    function setRoyaltyReceiver(address _receiver) public onlyOwner {
        royaltyReceiver = _receiver;
    }

    function setRoyaltyAmount(uint256 _royaltyAmount) public onlyOwner {
        royaltyAmount = _royaltyAmount;
    }

    function setBaseURI(string memory _baseURI) public onlyOwner {
        baseTokenURI = _baseURI;
    }

}