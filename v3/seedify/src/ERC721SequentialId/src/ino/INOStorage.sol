// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title INOStorage
 * @notice Mapps the storage layout of the {INO} contract.
 * @dev Diamond proxy (ERC-2535) storage style.
 */
library INOStorage {
    /**
     * @notice Struct reprensenting the main setup of the INO.
     *
     * @param paymentReceiver The address which will receive the funds from the INO.
     * @param projectWallet The address of the project issuing NFTs - transfer ownership once sale closed.
     */
    struct SetUp {
        address paymentReceiver;
        address projectWallet;
    }

    /**
     * @notice Struct reprensenting the data of the NFT collection to be deployed through INO.
     *
     * @param name The name of the NFTs to be minted during the INO.
     * @param symbol The symbol of the NFTs to be minted during the INO.
     * @param uri The base URI of the NFTs to be minted during the INO - only used for reveal on minint,
     *        otherwise the uri will be an empty string (blackbox and reveal date cases).
     * @param maxCap The maximum number of NFTs to be minted during and after (if not sold out) the INO.
     * @param startTokenId The first token id to be minted during the INO.
     */
    struct NFTCollectionData {
        string name;
        string symbol;
        string uri;
        uint256 maxCap;
        uint256 startTokenId;
    }

    /**
     * @notice Struct reprensenting the whole storage layout of the INO contract.
     *
     * @param setUp Struct reprensenting the main setup of the INO - modified by owner interactions only.
     * @param nftData Struct reprensenting the data of the NFT collection to be deployed through INO
     *                - modified by owner interactions only.
     * @param collection The address of the NFT collection to be deployed and minted through INO - modified
     *                   by owner interactions only.
     * @param phaseMaxMint Maximum number of NFTs to be minted in a specific phase - modified by owner
     *                     interactions only.
     * @param mintedInPhase Number of NFTs minted in a specific phase - modified by INO contract
     *                      interaction.
     * @param totalMinted Total number of NFTs minted in the whole INO - modified by INO contract
     *                    interaction.
     */
    struct INOStruct {
        // modified by owner interactions only
        SetUp setUp;
        NFTCollectionData nftData;
        address collection;
        mapping(string => uint256) phaseMaxMint;
        // modified by INO contract interaction
        mapping(string => uint256) mintedInPhase;
        uint256 totalMinted;
    }

    /// @notice Storage position of {INOStruct} in {INO} contract.
    bytes32 public constant INO_STORAGE = keccak256("ino.storage");

    /**
     * @return inoStruct Whole storage of {INO} contract.
     */
    function layout() internal pure returns (INOStruct storage inoStruct) {
        bytes32 position = INO_STORAGE;
        assembly {
            inoStruct.slot := position
        }
    }
}
