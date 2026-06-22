// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IERC2981, ERC2981} from "openzeppelin-contracts/token/common/ERC2981.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import {INFT} from "./interfaces/INFT.sol";
import {INFTInternal} from "./interfaces/INFTInternal.sol";
import {ISaleReadable} from "../../common/readable/ISaleReadable.sol";

/// @custom:audit OpenSea base contract (imported in `seadrop` library) - very few changes
import {ERC721ContractMetadataCloneable} from "./imported/ERC721ContractMetadataCloneable.sol";

import {INOStorage} from "../INOStorage.sol";

// import struct
import {Status} from "../../common/SaleStruct.sol";

abstract contract ERC721Base is
    INFT, // 1 inherited component
    INFTInternal, // 1 inherited component
    ERC2981, // 4 inherited components
    ERC721ContractMetadataCloneable, // 7 inherited components
    ReentrancyGuardUpgradeable // 2 inherited components
{
    uint256 public startTokenId;
    address public ino;

    function deleteDefaultRoyalty() external override {
        _onlyOwnerOrSelf();
        _deleteDefaultRoyalty();
    }

    /// @inheritdoc INFT
    function mint(
        address minter,
        uint256 quantity
    ) external virtual override nonReentrant {
        _onlyIno(msg.sender);

        // Extra safety check to ensure the max supply is not exceeded.
        if (_totalMinted() + quantity > maxSupply()) {
            revert ERC721Base_MintQuantityExceedsMaxSupply(
                _totalMinted() + quantity,
                maxSupply()
            );
        }

        // Mint the quantity of tokens to the minter.
        _safeMint(minter, quantity);
    }

    /// @inheritdoc INFT
    function postmintAllUnsold(address receiver) external override onlyOwner {
        _onlyIfInoCompleted();

        uint256 quantity = maxSupply() - _totalMinted();
        _safeMint(receiver, quantity);

        emit MintedAllUnsold(quantity);
    }

    /// @inheritdoc INFT
    function postmintAndReduceSupply(
        address receiver,
        uint256 quantity
    ) external override onlyOwner returns (uint256 reducedBy) {
        _onlyIfInoCompleted();

        uint256 newTotal = _totalMinted() + quantity;
        uint256 oldMaxSupply = _maxSupply;

        if (newTotal > oldMaxSupply) {
            revert ERC721Base_PostmintAndReduceSupply_QuantityExceedsMaxSupply(
                oldMaxSupply,
                newTotal - oldMaxSupply
            );
        }

        reducedBy = oldMaxSupply - newTotal;

        _safeMint(receiver, quantity);
        _setMaxSupply(_totalMinted());

        emit MintedSomeUnsoldAndReducedSupply(quantity, reducedBy, _maxSupply);
    }

    /// @inheritdoc INFT
    function premint(
        address receiver,
        uint256 quantity
    ) external override onlyOwner {
        Status status = ISaleReadable(ino).saleStatus();
        if (status != Status.NOT_STARTED) {
            revert ERC721Base_Premint_INOStarted(status);
        }

        _safeMint(receiver, quantity);

        emit Preminted(receiver, quantity, _startTokenId());
    }

    function resetTokenRoyalty(uint256 tokenId) external override {
        _onlyOwnerOrSelf();
        _resetTokenRoyalty(tokenId);
    }

    function setDefaultRoyalty(
        address receiver,
        uint96 feeNumerator
    ) external override {
        _onlyOwnerOrSelf();

        _setDefaultRoyalty(receiver, feeNumerator);

        emit RoyaltyInfoUpdated(receiver, feeNumerator);
    }

    function setTokenRoyalty(
        uint256 tokenId,
        address receiver,
        uint96 feeNumerator
    ) external override {
        _onlyOwnerOrSelf();

        _setTokenRoyalty(tokenId, receiver, feeNumerator);

        emit TokenRoyaltyInfoUpdated(tokenId, receiver, feeNumerator);
    }

    /// @inheritdoc INFT
    /// @dev Child contract MUST override it to emit an event.
    function initialize(
        INOStorage.NFTCollectionData calldata data,
        address initialOwner,
        address ino_
    ) public virtual override initializer {
        __ERC721ACloneable__init(data.name, data.symbol);
        _maxSupply = data.maxCap;
        _tokenBaseURI = data.uri;
        startTokenId = data.startTokenId;
        __ReentrancyGuard_init();
        _transferOwnership(initialOwner);
        ino = ino_;
    }

    /// @inheritdoc ERC721ContractMetadataCloneable
    function setBaseURI(string calldata newBaseURI) public override {
        Status status = ISaleReadable(ino).saleStatus();
        // IF ino is not started OR IF ino is completed AND newBaseURI hash = provenance hash
        if (
            (status == Status.NOT_STARTED) ||
            (status == Status.COMPLETED &&
                keccak256(bytes(newBaseURI)) == _provenanceHash)
        ) super.setBaseURI(newBaseURI);
        else revert ERC721Base_SetBaseURI(status);
    }

    /// @inheritdoc ERC721ContractMetadataCloneable
    function setProvenanceHash(bytes32 newProvenanceHash) public override {
        Status status = ISaleReadable(ino).saleStatus();
        if (status == Status.NOT_STARTED) {
            super.setProvenanceHash(newProvenanceHash);
        } else revert ERC721Base_SetProvenanceHash(status);
    }

    /// @inheritdoc INFT
    function reduceSupplyTo(uint256 newMaxSupply) public override {
        _onlyIfInoCompleted();

        if (newMaxSupply >= _maxSupply) {
            revert ERC721Base_ReduceSupplyTo_NotGreaterEqThan(_maxSupply);
        }
        if (newMaxSupply <= _totalMinted()) {
            revert ERC721Base_ReduceSupplyTo_NotLowerEqThan(_totalMinted());
        }

        emit SupplyReduced(_maxSupply, newMaxSupply);

        _setMaxSupply(newMaxSupply); /// @custom:audit cotains {_onlyOwnerOrSelf()}
    }

    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(ERC721ContractMetadataCloneable, ERC2981)
        returns (bool)
    {
        return
            interfaceId == type(IERC2981).interfaceId ||
            ERC721ContractMetadataCloneable.supportsInterface(interfaceId);
    }

    /// @inheritdoc INFT
    function getMintStats(
        address minter
    )
        external
        view
        override
        returns (
            uint256 minterNumMinted,
            uint256 currentTotalSupply,
            uint256 maxSupply
        )
    {
        minterNumMinted = _numberMinted(minter);
        currentTotalSupply = _totalMinted();
        maxSupply = _maxSupply;
    }

    function _onlyIno(address minter) internal view {
        if (minter != ino) {
            revert ERC721Base_InoOnlyApprovedMinter();
        }
    }

    function _onlyIfInoCompleted() internal view {
        Status status = ISaleReadable(ino).saleStatus();
        if (status != Status.COMPLETED) {
            revert ERC721Base_OnlyIfInoCompleted(status);
        }
    }

    function _startTokenId() internal view override returns (uint256) {
        return startTokenId;
    }
}
