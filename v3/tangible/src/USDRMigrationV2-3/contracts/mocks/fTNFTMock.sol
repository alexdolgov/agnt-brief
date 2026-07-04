// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract fTNFTMock is ERC721 {
    uint256 public constant fullShare = 100;
    uint256 public immutable tnftTokenId;
    mapping(uint256 => uint256) public fractionShares;

    constructor(uint256 _tnftTokenId) ERC721("fTNFTMock", "FTM") {
        tnftTokenId = _tnftTokenId;
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }

    function mint(
        address to,
        uint256 tokenId,
        uint256 share
    ) public {
        _mint(to, tokenId);
        fractionShares[tokenId] = share;
    }

    function fractionalize(
        address rentManager,
        address originalNFT,
        uint256 originalTokenId,
        uint256 originalShare,
        address fractionNFT,
        uint256[] memory fractionTokenIds
    ) external {
        (bool success, bytes memory result) = rentManager.call(
            abi.encodeWithSignature(
                "onFractionalize(address,uint256,uint256,address,uint256[])",
                originalNFT,
                originalTokenId,
                originalShare,
                fractionNFT,
                fractionTokenIds
            )
        );
        if (success == false) {
            assembly {
                revert(add(result, 32), mload(result))
            }
        }
    }

    function defractionalize(
        address rentManager,
        address originalNFT,
        uint256[] memory originalTokenIds,
        address defractionalizedNFT,
        uint256 defractionalizedTokenId
    ) external {
        (bool success, bytes memory result) = rentManager.call(
            abi.encodeWithSignature(
                "onDefractionalize(address,uint256[],address,uint256)",
                originalNFT,
                originalTokenIds,
                defractionalizedNFT,
                defractionalizedTokenId
            )
        );
        if (success == false) {
            assembly {
                revert(add(result, 32), mload(result))
            }
        }
    }
}
