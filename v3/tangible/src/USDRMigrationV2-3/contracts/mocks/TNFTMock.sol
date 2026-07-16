// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./fTNFTMock.sol";

contract TNFTMock is ERC721 {
    address public rentManagement;

    mapping(uint256 => address) public fractionNFTs;

    constructor() ERC721("TNFTMock", "TNM") {}

    function setRentManager(address _rentManagement) external {
        rentManagement = _rentManagement;
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }

    function fractionalize(
        address originalNFT,
        uint256 originalTokenId,
        uint256[] calldata fractionTokenIds,
        uint256[] calldata fractionShares
    ) external {
        bool success;
        uint256 originalShare;

        // Mock fractionalization process
        if (originalNFT != address(this)) {
            (success, ) = originalNFT.call(
                abi.encodeWithSignature("burn(uint256)", originalTokenId)
            );
            require(success, "burn failed");
        } else {
            transferFrom(msg.sender, address(this), originalTokenId);
        }

        uint256 tnftTokenId = originalNFT == address(this)
            ? originalTokenId
            : fTNFTMock(originalNFT).tnftTokenId();
        address fractionNFT = fractionNFTs[tnftTokenId];
        if (fractionNFT == address(0)) {
            fTNFTMock fTNFT = new fTNFTMock(tnftTokenId);
            fractionNFT = fractionNFTs[tnftTokenId] = address(fTNFT);
            (success, ) = rentManagement.call(
                abi.encodeWithSignature(
                    "whitelistFractionalTNFT(address,uint256)",
                    fractionNFT,
                    tnftTokenId
                )
            );
            require(success, "whitelist failed");
        }

        bytes memory result;
        if (originalNFT == address(this)) {
            (success, result) = fractionNFT.call(
                abi.encodeWithSignature("fullShare()")
            );
            require(success, "fullShare failed");
            originalShare = abi.decode(result, (uint256));
        } else {
            (success, result) = fractionNFT.call(
                abi.encodeWithSignature(
                    "fractionShares(uint256)",
                    originalTokenId
                )
            );
            require(success, "fractionShares failed");
            originalShare = abi.decode(result, (uint256));
        }

        for (uint256 i = 0; i < fractionTokenIds.length; i++) {
            (success, ) = fractionNFT.call(
                abi.encodeWithSignature(
                    "mint(address,uint256,uint256)",
                    msg.sender,
                    fractionTokenIds[i],
                    fractionShares[i]
                )
            );
            require(success, "mint failed");
        }

        // Call onFractionalize
        (success, ) = fractionNFT.call(
            abi.encodeWithSignature(
                "fractionalize(address,address,uint256,uint256,address,uint256[])",
                rentManagement,
                originalNFT,
                originalTokenId,
                originalShare,
                fractionNFT,
                fractionTokenIds
            )
        );
        require(success, "onFractionalize failed");
    }

    function defractionalize(
        address originalNFT,
        uint256[] calldata originalTokenIds,
        address defractionalizedNFT,
        uint256 defractionalizedTokenId
    ) external {
        bool success;
        bytes memory result;
        uint256 share;

        // Mock defractionalization process
        for (uint256 i = 0; i < originalTokenIds.length; i++) {
            (success, result) = originalNFT.staticcall(
                abi.encodeWithSignature(
                    "fractionShares(uint256)",
                    originalTokenIds[i]
                )
            );
            require(success, "failed to determine share");
            share += abi.decode(result, (uint256));
            (success, ) = originalNFT.call(
                abi.encodeWithSignature("burn(uint256)", originalTokenIds[i])
            );
            require(success, "burn failed");
        }

        if (defractionalizedNFT == address(this)) {
            (success, result) = originalNFT.staticcall(
                abi.encodeWithSignature("tnftTokenId()")
            );
            uint256 tokenId = abi.decode(result, (uint256));
            require(
                defractionalizedTokenId == tokenId,
                "Invalid defractionalizedTokenId"
            );
            IERC721(defractionalizedNFT).transferFrom(
                address(this),
                msg.sender,
                tokenId
            );
        } else {
            (success, ) = defractionalizedNFT.call(
                abi.encodeWithSignature(
                    "mint(address,uint256,uint256)",
                    msg.sender,
                    defractionalizedTokenId,
                    share
                )
            );
        }
        require(success, "mint failed");

        // Call onDefractionalize
        (success, ) = originalNFT.call(
            abi.encodeWithSignature(
                "defractionalize(address,address,uint256[],address,uint256)",
                rentManagement,
                originalNFT,
                originalTokenIds,
                defractionalizedNFT,
                defractionalizedTokenId
            )
        );
        require(success, "onDefractionalize failed");
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        if (to == address(this) && from == msg.sender) {
            _transfer(from, to, tokenId);
        } else {
            super.transferFrom(from, to, tokenId);
        }
    }
}
