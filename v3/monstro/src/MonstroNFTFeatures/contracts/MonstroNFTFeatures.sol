// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IMonstroNFT {
    function burn(uint256[] memory tokenIds) external;
    function ownerOf(uint256 tokenId) external view returns (address);
    function getTokenIdDetails(
        uint256 tokenId
    ) external view returns (uint256 typeId, uint256 name, uint256 uri);
}

interface IMonstroNFTProps {
    function getSingleProperty(
        uint256 tokenId,
        string memory propertyName
    ) external view returns (string memory);
    function setSingleProperty(
        uint256 tokenId,
        string memory propertyName,
        string memory value
    ) external;
    function setMultipleProperties(
        uint256 tokenId,
        string[25] memory propertyNames,
        string[25] memory values
    ) external;
}

/**
 * @title MonstroNFTFeatures
 * @dev An improved contract to merge/move tokens with enhanced security features.
 */
contract MonstroNFTFeatures is Ownable {
    IMonstroNFT private immutable nftContract;
    IMonstroNFTProps private immutable nftProps;

    // Constants
    uint256 private constant MAX_MERGE_TOKENS = 20;

    // State variables
    mapping(string => uint256) public classMinimums;
    string[] public classes;
    bool public isDegenzConversionEnabled;

    // Events
    event SetMinimumInvestment(string indexed className, uint256 value);
    event SetCompound(
        address indexed user,
        uint256 indexed tokenId,
        uint256 percentage
    );
    event Merge(
        uint256 indexed targetId,
        uint256[] burnedTokenIds,
        uint256 totalAmount,
        uint256 totalReceived
    );
    event Move(
        uint256 indexed sourceTokenId,
        uint256 indexed targetTokenId,
        uint256 amount
    );
    event DegenzConverted(uint256 indexed tokenId);
    event DegenzConversionStatusChanged(bool isEnabled);

    // Errors
    error InvalidOwner();
    error InvalidPercentage();
    error InvalidTypeId();
    error InvalidClassCombination();
    error InvalidClass();
    error InvalidValues();
    error ExceedsMaxTokens();
    error RemainderBelowMinimum();
    error EmptyClassName();
    error CompoundingNotAllowedForDegenz();
    error DegenzConversionDisabled();

    modifier validTokenOwner(uint256 tokenId) {
        if (nftContract.ownerOf(tokenId) != msg.sender) revert InvalidOwner();
        _;
    }

    /**
     * @dev Constructor initializes the contracts.
     */
    constructor(
        address _nftContractAddress,
        address _nftPropsAddress
    ) Ownable(msg.sender) {
        nftContract = IMonstroNFT(_nftContractAddress);
        nftProps = IMonstroNFTProps(_nftPropsAddress);
        isDegenzConversionEnabled = false;
    }

    /**
     * @dev Retrieves the typeId associated with the given tokenId.
     */
    function getTypeId(uint256 tokenId) public view returns (uint256) {
        (uint256 typeId, , ) = nftContract.getTokenIdDetails(tokenId);
        return typeId;
    }

    /**
     * @dev Sets the minimum "investment" value that must remain on an NFT
     * within a specific class after any "move" operation.
     *
     * @param className The name of the class to set a minimum for.
     * @param value The minimum "investment" value that must remain on an NFT
     *              within the specified class.
     */
    function setMinimumInvestment(
        string calldata className,
        uint256 value
    ) external onlyOwner {
        if (bytes(className).length == 0) revert EmptyClassName();
        if (value == 0) revert InvalidValues();
        if (classMinimums[className] == 0) {
            classes.push(className);
        }

        classMinimums[className] = value;
        emit SetMinimumInvestment(className, value);
    }

    /**
     * @dev Enables or disables the conversion of Degenz NFTs.
     */
    function setDegenzConversionEnabled(bool enabled) external onlyOwner {
        isDegenzConversionEnabled = enabled;
        emit DegenzConversionStatusChanged(enabled);
    }

    /**
     * @dev Sets the compound percentage for a specific NFT token ID.
     */
    function setCompound(
        uint256 tokenId,
        uint8 percentage
    ) external validTokenOwner(tokenId) {
        string memory nftClass = nftProps.getSingleProperty(tokenId, "class");

        if (keccak256(bytes(nftClass)) == keccak256(bytes("degenz"))) {
            revert CompoundingNotAllowedForDegenz();
        }

        if (
            (keccak256(bytes(nftClass)) == keccak256(bytes("")) &&
                (percentage == 0 ||
                    percentage == 50 ||
                    percentage == 75 ||
                    percentage == 100)) ||
            (keccak256(bytes(nftClass)) != keccak256(bytes("")) &&
                (percentage == 0 ||
                    percentage == 25 ||
                    percentage == 50 ||
                    percentage == 75 ||
                    percentage == 100))
        ) {
            nftProps.setSingleProperty(
                tokenId,
                "compound",
                uintToStr(percentage)
            );
            emit SetCompound(msg.sender, tokenId, percentage);
        } else {
            revert InvalidPercentage();
        }
    }

    /**
     * @dev Merges multiple tokens into a single target token.
     *
     * Requirements:
     * - Only the owner of the target token can call this function.
     * - The number of tokens to be merged cannot exceed the `MAX_MERGE_TOKENS` limit.
     * - All tokens to be merged must belong to the same type as the target token.
     * - All tokens to be merged must be owned by the caller.
     * - Merging restrictions based on class must be adhered to.
     *
     * @param tokenIds An array of token IDs to be merged.
     * @param targetId The ID of the target token to merge the other tokens into.
     */
    function merge(
        uint256[] calldata tokenIds,
        uint256 targetId
    ) external validTokenOwner(targetId) {
        if (tokenIds.length > MAX_MERGE_TOKENS) revert ExceedsMaxTokens();

        // Get target token type and initial properties
        uint256 targetTypeId = getTypeId(targetId);
        (
            string memory targetClass,
            uint256 targetInvest,
            uint256 targetReceived
        ) = getProperties(targetId);
        // Initialize total amount with target's values
        uint256 totalInvest = targetInvest;
        uint256 totalReceived = targetReceived;

        // Calculate total investment and received
        for (uint256 i = 0; i < tokenIds.length; i++) {
            // Check ownership and type of each token to be merged
            if (nftContract.ownerOf(tokenIds[i]) != msg.sender)
                revert InvalidOwner();
            if (getTypeId(tokenIds[i]) != targetTypeId) revert InvalidTypeId();

            // Get source token properties
            (
                string memory sourceClass,
                uint256 sourceInvest,
                uint256 sourceReceived
            ) = getProperties(tokenIds[i]);

            // Calculate keccak256 hashes for efficiency
            bytes32 sourceClassHash = keccak256(bytes(sourceClass));
            bytes32 targetClassHash = keccak256(bytes(targetClass));
            bytes32 monstroHash = keccak256(bytes("monstro"));
            bytes32 castleHash = keccak256(bytes("castle"));
            bytes32 whelpsHash = keccak256(bytes("whelps"));
            bytes32 h_vHash = keccak256(bytes("h/v"));
            bytes32 vaultHash = keccak256(bytes("vault"));
            bytes32 fortressHash = keccak256(bytes("fortress"));
            bytes32 kingdomHash = keccak256(bytes("kingdom"));

            if (
                // Class Restrictions:
                // - "degenz" cannot be merged into any other class
                // - "monstro" can only be merged into "monstro", "vault", "fortress", or "kingdom"
                // - "castle" can only be merged into "castle", "vault", "fortress", or "kingdom"
                // - "whelps" can only be merged into "whelps", "vault", "fortress", or "kingdom"
                // - "h/v" can only be merged into "h/v", "vault", "fortress", or "kingdom"
                // - "" (empty string) can only be merged into "", "vault", "fortress", or "kingdom"
                // - "vault" can only be merged into "fortress" or "kingdom"
                // - "fortress" can only be merged into "kingdom"
                // - "kingdom" cannot be merged into any other class

                (sourceClassHash == keccak256(bytes("degenz"))) ||
                (sourceClassHash == monstroHash &&
                    targetClassHash != monstroHash &&
                    targetClassHash != vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == castleHash &&
                    targetClassHash != castleHash &&
                    targetClassHash != vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == whelpsHash &&
                    targetClassHash != whelpsHash &&
                    targetClassHash != vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == h_vHash &&
                    targetClassHash != h_vHash &&
                    targetClassHash != vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == keccak256(bytes("")) &&
                    targetClassHash != keccak256(bytes("")) &&
                    targetClassHash != vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == vaultHash &&
                    targetClassHash != fortressHash &&
                    targetClassHash != kingdomHash) ||
                (sourceClassHash == fortressHash &&
                    targetClassHash != kingdomHash)
            ) {
                revert InvalidClassCombination();
            }

            totalInvest += sourceInvest;
            totalReceived += sourceReceived;
        }

        // Update state after all checks
        nftContract.burn(tokenIds);

        // Update target token investment and received
        setProperties(targetId, totalInvest, totalReceived);

        emit Merge(targetId, tokenIds, totalInvest, totalReceived);
    }

    /**
     * @dev Moves a portion of the investment from one NFT to another.
     *
     * Requirements:
     * - Only the owner of both source and target NFTs can call this function.
     * - The source and target NFTs must belong to the same type.
     * - The amount to move cannot exceed the current investment of the source NFT.
     * - The remaining investment in the source NFT must be greater than or equal to the minimum investment for its class.
     *
     * @param sourceId The ID of the source NFT.
     * @param targetId The ID of the target NFT.
     * @param amount The amount of investment to move from source to target.
     */
    function move(
        uint256 sourceId,
        uint256 targetId,
        uint256 amount
    ) external validTokenOwner(sourceId) validTokenOwner(targetId) {
        // Check if source and target NFTs have the same type
        if (getTypeId(sourceId) != getTypeId(targetId)) revert InvalidTypeId();

        // Get source and target NFT properties
        (
            string memory sourceClass,
            uint256 sourceInvest,
            uint256 sourceReceived
        ) = getProperties(sourceId);
        (
            string memory targetClass,
            uint256 targetInvest,
            uint256 targetReceived
        ) = getProperties(targetId);

        // Check if either source or target class is "degenz"
        if (
            (keccak256(bytes(sourceClass)) == keccak256(bytes("degenz"))) ||
            (keccak256(bytes(targetClass)) == keccak256(bytes("degenz")))
        ) {
            revert InvalidClassCombination();
        }

        // Check if the amount to move is valid
        if (amount > sourceInvest) revert InvalidValues();

        // Check if the remaining investment in the source NFT will meet the minimum requirement
        uint256 newSourceInvest = sourceInvest - amount;
        if (newSourceInvest < classMinimums[sourceClass])
            revert RemainderBelowMinimum();

        // Calculate new investment and received values
        uint256 newSourceReceived = sourceReceived -
            (sourceReceived * amount) /
            sourceInvest;
        uint256 newTargetInvest = targetInvest + amount;
        uint256 newTargetReceived = targetReceived +
            (targetReceived * amount) /
            sourceInvest;

        setProperties(sourceId, newSourceInvest, newSourceReceived);
        setProperties(targetId, newTargetInvest, newTargetReceived);

        emit Move(sourceId, targetId, amount);
    }

    /**
     * @dev Converts a Degenz NFT to a Farmz NFT.
     */
    function convertDegenzToFarm(
        uint256 tokenId
    ) external validTokenOwner(tokenId) {
        if (!isDegenzConversionEnabled) revert DegenzConversionDisabled();

        string memory currentClass = nftProps.getSingleProperty(
            tokenId,
            "class"
        );
        if (keccak256(bytes(currentClass)) != keccak256(bytes("degenz"))) {
            revert InvalidClass();
        }

        nftProps.setSingleProperty(tokenId, "class", "");
        emit DegenzConverted(tokenId);
    }

    /**
     * @dev Get properties from props contract.
     */
    function getProperties(
        uint256 tokenId
    ) internal view returns (string memory, uint256, uint256) {
        string memory nftClass = nftProps.getSingleProperty(tokenId, "class");
        string memory strInvested = nftProps.getSingleProperty(
            tokenId,
            "investment"
        );
        string memory strReceived = nftProps.getSingleProperty(
            tokenId,
            "received"
        );

        return (nftClass, strToUint(strInvested), strToUint(strReceived));
    }

    /**
     * @dev Set properties to the props contract.
     */
    function setProperties(
        uint256 tokenId,
        uint256 invested,
        uint256 received
    ) internal {
        // Update NFT properties
        string[25] memory propertyNames;
        propertyNames[0] = "investment";
        propertyNames[1] = "received";

        string[25] memory propertyValues;
        propertyValues[0] = uintToStr(invested);
        propertyValues[1] = uintToStr(received);

        nftProps.setMultipleProperties(tokenId, propertyNames, propertyValues);
    }

    /**
     * @dev Converts uint256 to string.
     */
    function uintToStr(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) return "0";

        uint256 temp = _i;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }

        bytes memory buffer = new bytes(digits);
        while (_i != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(_i % 10)));
            _i /= 10;
        }

        return string(buffer);
    }

    /**
     * @dev Converts string to uint256.
     */
    function strToUint(string memory s) internal pure returns (uint256) {
        bytes memory b = bytes(s);
        uint256 result;

        for (uint256 i = 0; i < b.length; i++) {
            uint8 val = uint8(b[i]);
            if (val < 48 || val > 57) revert InvalidValues();
            result = result * 10 + (val - 48);
        }

        return result;
    }

    /**
     * @dev Returns all available classes.
     */
    function getClasses() external view returns (string[] memory) {
        return classes;
    }
}
