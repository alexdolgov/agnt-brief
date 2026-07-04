// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

/// library imports
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { ERC1155 } from "openzeppelin-contracts/contracts/token/ERC1155/ERC1155.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

/// local imports
import { ISuperFrens } from "src/interfaces/ISuperFrens.sol";

/// @title SuperFrens
/// @author Zeropoint Labs
contract SuperFrens is ISuperFrens, ERC1155, Ownable {
    //////////////////////////////////////////////////////////////
    //                      CONSTANTS                           //
    //////////////////////////////////////////////////////////////
    uint256 internal constant MAX_MINT = 1;
    uint256 internal constant FORGE_QTY = 5;
    uint256 internal constant TOTAL_TIERS_PER_EDITION = 7;

    bytes internal constant ZERO_BYTES = "";
    bytes32 internal constant ZERO_BYTES32 = bytes32(0);

    uint256 internal immutable ETHEREAL_AVAILABLE_PER_EDITION;
    uint256 internal immutable MYTHIC_AVAILABLE_PER_EDITION;
    uint256 internal immutable DIAMOND_AVAILABLE_PER_EDITION;
    uint256 internal immutable ONYX_AVAILABLE_PER_EDITION;
    uint256 internal immutable GOLD_AVAILABLE_PER_EDITION;
    uint256 internal immutable SILVER_AVAILABLE_PER_EDITION;
    uint256 internal immutable BRONZE_AVAILABLE_PER_EDITION;

    //////////////////////////////////////////////////////////////
    //                      STATE VARIABLES                     //
    //////////////////////////////////////////////////////////////

    /// @dev tracks the starting tier id of the next edition.
    uint256 internal nextTierId;

    /// @dev maps the edition to its corresponding merkle root
    mapping(uint256 editionId => bytes32 merkleRoot) public editionMerkleRoot;

    /// @dev mapping from tokenId and claimer address to total number of tokens claimed.
    mapping(uint256 tokenId => mapping(address claimerAddress => uint256 totalClaimed)) public supplyClaimedByWallet;

    /// @dev first tier id of the editionId after editionId
    mapping(uint256 editionId => uint256 nextEditionFirstTierId) internal nextEditionFirstTierId;

    /// @dev supply information per edition per tier
    mapping(uint256 editionId => mapping(uint256 tierId => Supply)) public editionTiersSupply;

    /// @dev the collection name
    string public name;

    /// @dev the collection symbol
    string public symbol;

    /// @dev the uri frozen status
    /// @dev not using uint8 since this value is set only once in its lifetime.
    bool public baseURIFrozen;

    //////////////////////////////////////////////////////////////
    //                      CONSTRUCTOR                         //
    //////////////////////////////////////////////////////////////
    constructor(
        string memory name_,
        string memory symbol_,
        string memory tokenURI_,
        uint256[] memory availablePerEdition_
    )
        ERC1155(tokenURI_)
        Ownable(msg.sender)
    {
        name = name_;
        symbol = symbol_;

        /// @dev no length based checks made to save gas as deployment fails if the length is < 7
        ETHEREAL_AVAILABLE_PER_EDITION = availablePerEdition_[0];
        MYTHIC_AVAILABLE_PER_EDITION = availablePerEdition_[1];
        DIAMOND_AVAILABLE_PER_EDITION = availablePerEdition_[2];
        ONYX_AVAILABLE_PER_EDITION = availablePerEdition_[3];
        GOLD_AVAILABLE_PER_EDITION = availablePerEdition_[4];
        SILVER_AVAILABLE_PER_EDITION = availablePerEdition_[5];
        BRONZE_AVAILABLE_PER_EDITION = availablePerEdition_[6];
    }

    //////////////////////////////////////////////////////////////
    //              EXTERNAL WRITE FUNCTIONS                    //
    //////////////////////////////////////////////////////////////

    /// @inheritdoc ISuperFrens
    function setEdition(uint256 editionId_, bytes32 root_) external payable override onlyOwner {
        if (root_ == ZERO_BYTES32) revert INVALID_MERKLE_ROOT();
        if (editionMerkleRoot[editionId_] != ZERO_BYTES32) revert MERKLE_ROOT_ALREADY_SET();
        if (editionId_ != 0 && editionMerkleRoot[editionId_ - 1] == ZERO_BYTES32) revert PREVIOUS_EDITION_NOT_SET();

        editionMerkleRoot[editionId_] = root_;

        /// @dev reduces the SLOADS by writing to memory
        uint256 currentEditionFirstTierId_ = nextTierId;

        /// @dev reduces the SLOADS to 1
        uint256 nextTierId_;
        unchecked {
            nextTierId_ = currentEditionFirstTierId_ + TOTAL_TIERS_PER_EDITION;
        }

        nextTierId = nextTierId_;
        nextEditionFirstTierId[editionId_] = nextTierId_;

        /// @dev ethereal starts from first index
        editionTiersSupply[editionId_][0 + currentEditionFirstTierId_].availableToMint = ETHEREAL_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][1 + currentEditionFirstTierId_].availableToMint = MYTHIC_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][2 + currentEditionFirstTierId_].availableToMint = DIAMOND_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][3 + currentEditionFirstTierId_].availableToMint = ONYX_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][4 + currentEditionFirstTierId_].availableToMint = GOLD_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][5 + currentEditionFirstTierId_].availableToMint = SILVER_AVAILABLE_PER_EDITION;
        editionTiersSupply[editionId_][6 + currentEditionFirstTierId_].availableToMint = BRONZE_AVAILABLE_PER_EDITION;

        emit EditionSet(editionId_, root_);
    }

    /// @inheritdoc ISuperFrens
    function setUri(string memory uri_, bool freeze_) external payable override onlyOwner {
        if (baseURIFrozen) {
            revert URI_FROZEN();
        }

        string memory oldURI = uri(0);
        baseURIFrozen = freeze_;

        _setURI(uri_);
        emit BaseURIUpdated(oldURI, uri_, freeze_);
    }

    /// @inheritdoc ISuperFrens
    function claim(
        address receiver_,
        uint256 editionId_,
        uint256 tierId_,
        bytes32[] calldata proof_
    )
        external
        override
    {
        if (receiver_ == address(0)) revert INVALID_RECEIVER();
        _claim(receiver_, editionId_, tierId_, proof_);
    }

    /// @inheritdoc ISuperFrens
    function batchClaim(
        address receiver_,
        uint256[] calldata editionIds_,
        uint256[] calldata tierIds_,
        bytes32[][] calldata proofs_
    )
        external
        override
    {
        if (receiver_ == address(0)) revert INVALID_RECEIVER();

        uint256 len = editionIds_.length;

        if (len == 0) revert ZERO_ARR_LENGTH();
        if (len != tierIds_.length || len != proofs_.length) revert INVALID_BATCH_REQ();

        for (uint256 i; i < len; ++i) {
            _claim(receiver_, editionIds_[i], tierIds_[i], proofs_[i]);
        }
    }

    /// @inheritdoc ISuperFrens
    function forge(uint256 tierId_) external override {
        _forge(tierId_);
    }

    /// @inheritdoc ISuperFrens
    function batchForge(uint256[] calldata tierIds_) external override {
        uint256 arrLen = tierIds_.length;

        if (arrLen == 0) revert ZERO_ARR_LENGTH();

        for (uint256 i; i < arrLen; ++i) {
            _forge(tierIds_[i]);
        }
    }

    //////////////////////////////////////////////////////////////
    //              EXTERNAL VIEW FUNCTIONS                     //
    //////////////////////////////////////////////////////////////

    /// @inheritdoc ISuperFrens
    function verifyClaim(
        address claimer_,
        uint256 editionId_,
        uint256 tierId_,
        bytes32[] calldata proof_
    )
        public
        view
        override
        returns (bool valid)
    {
        bytes32 root = editionMerkleRoot[editionId_];
        if (root == ZERO_BYTES32) revert MERKLE_ROOT_NOT_SET();

        /// @dev user cannot mint more than MAX_MINT tokens
        /// @dev this prevents signature replay attack
        if (supplyClaimedByWallet[tierId_][claimer_] == MAX_MINT) return false;

        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(claimer_, tierId_))));
        return MerkleProof.verify(proof_, root, leaf);
    }

    /// @inheritdoc ISuperFrens
    function tokenURI(uint256 tokenId_) external view override returns (string memory) {
        return string.concat(uri(0), Strings.toString(tokenId_));
    }

    //////////////////////////////////////////////////////////////
    //                  INTERNAL FUNCTIONS                      //
    //////////////////////////////////////////////////////////////

    /// @notice helper function for processing claim
    function _claim(address receiver_, uint256 editionId_, uint256 tierId_, bytes32[] calldata proof_) internal {
        if (!verifyClaim(msg.sender, editionId_, tierId_, proof_)) revert INVALID_CLAIM();
        _mintTokens(receiver_, editionId_, tierId_);
    }

    /// @notice settles the token minting after successful proof validation
    function _mintTokens(address to_, uint256 claimedEditionId_, uint256 claimedTierId_) internal {
        /// @dev reducing SLOADs
        uint256 _nextTierId = nextEditionFirstTierId[claimedEditionId_];

        /// @dev the user will be awarded with NFTs of their tier and all the tiers below them.
        /// For eg., if the user gets SILVER, then he will be minted 1 SILVER & 1 BRONZE
        /// if the user gets GOLD, then he will be minted 1 GOLD, 1 SILVER & 1 BRONZE

        /// Every edition has  the highest tier as the first element.
        /// For eg., For the first edition, the tier id starts from 0 (ETHEREAL) and
        /// ends in 6 (BRONZE)
        for (uint256 i = claimedTierId_; i < _nextTierId; ++i) {
            if (editionTiersSupply[claimedEditionId_][i].availableToMint < 1) {
                revert NO_SUPERFRENS_AVAILABLE_TO_MINT();
            }

            unchecked {
                supplyClaimedByWallet[i][msg.sender] += MAX_MINT;

                editionTiersSupply[claimedEditionId_][i].availableToMint -= MAX_MINT;
                editionTiersSupply[claimedEditionId_][i].currentSupply += MAX_MINT;
            }

            _mint(to_, i, MAX_MINT, ZERO_BYTES);

            emit TokensClaimed(msg.sender, to_, claimedEditionId_, i);
        }
    }

    /// @notice helper function for processing forge
    function _forge(uint256 tierId_) internal {
        if (tierId_ == 0) revert INVALID_FORGE_TIER();

        uint256 forgeId;

        /// @dev can never underflow because of the above check
        unchecked {
            forgeId = tierId_ - 1;
        }

        /// @dev already the highest version of the edition
        if (tierId_ % TOTAL_TIERS_PER_EDITION == 0) revert INVALID_FORGE_TIER();

        /// @dev cannot underflow as burn will fail if the currentSupply is zero
        unchecked {
            /// adjust the edition tier supply
            /// NOTE: edition id starts from zero
            editionTiersSupply[(tierId_ / TOTAL_TIERS_PER_EDITION)][tierId_].currentSupply -= FORGE_QTY;
            editionTiersSupply[(forgeId / TOTAL_TIERS_PER_EDITION)][forgeId].currentSupply += MAX_MINT;
        }

        /// @dev burn 5 of this tierId and mint 1 above
        _burn(msg.sender, tierId_, FORGE_QTY);
        _mint(msg.sender, forgeId, MAX_MINT, ZERO_BYTES);

        emit TokensForged(msg.sender, tierId_, forgeId);
    }
}
