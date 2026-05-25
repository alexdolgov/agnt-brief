// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";

import {DN404} from "../DN404.sol";
import {BT404NFTWrapper} from "../BT404NFTWrapper.sol";
import {BT404NFTWrapped} from "./BT404NFTWrapped.sol";
import {LibString} from "../solady/utils/LibString.sol";
import {SafeTransferLib} from "../solady/utils/SafeTransferLib.sol";
import "../blast/AbstractBlastContract.sol";

/**
 * @title SimpleDN404
 * @notice Sample DN404 contract that demonstrates the owner selling fungile tokens.
 * When a user has at least one base unit (10^18) amount of tokens, they will automatically receive an NFT.
 * NFTs are minted as an address accumulates each base unit amount of tokens.
 */
contract BT404Token is BT404NFTWrapper, OwnableUpgradeable, UUPSUpgradeable, AbstractBlastContract {

    string private _name;
    string private _symbol;
    string private _baseURI;

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function initialize(
        string memory name_,
        string memory symbol_,
        uint256 initialTokenSupply,
        address initialSupplyOwner,
        address mirror
    ) public payable initializer {
        __Ownable_init(msg.sender);
        __AbstractBlastContract_init();
        _configurePointsOperator(msg.sender);
        _initializeDN404(initialTokenSupply, initialSupplyOwner, mirror);

        _name = name_;
        _symbol = symbol_;
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory result) {
        address baseERC721 = BT404NFTWrapped(payable(mirrorERC721())).baseERC721();
        return IERC721Metadata(baseERC721).tokenURI(tokenId);
    }

    function setNameAndSymbol(string calldata name_, string calldata symbol_) public onlyOwner {
        _name = name_;
        _symbol = symbol_;
    }

    function setSkipNFTFor(address account, bool state) public onlyOwner {
        _setSkipNFT(account, state);
    }

    function setExchangeNFTFeeRate(uint256 feeBips) public onlyOwner {
        _setExchangeNFTFeeRate(feeBips);
    }

    function withdraw() public onlyOwner {
        SafeTransferLib.safeTransferAllETH(msg.sender);
    }
}
