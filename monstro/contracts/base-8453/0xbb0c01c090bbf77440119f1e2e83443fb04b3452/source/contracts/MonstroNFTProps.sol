// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MonstroNFTProps
 * @dev A simplified contract to associate string properties with NFT token IDs.
 */
contract MonstroNFTProps is Ownable {
    struct Property {
        string name;
        mapping(uint256 => string) values; // Maps tokenId to property value
    }

    Property[] public properties; // Array of properties
    mapping(string => uint256) private propertyIndexes; // Maps property names to their index
    mapping(address => bool) private _whitelist; // Whitelist for access control
    address[] private _whitelistedAddresses; // Track all whitelisted addresses

    event PropertyAdded(string name, uint256 index);
    event PropertyUpdated(uint256 tokenId, string propertyName, string value);
    event PropertiesUpdated(uint256 indexed tokenId, string[25] propertyNames, string[25] values);
    event WhitelistUpdated(address account, bool status);

    modifier onlyWhitelisted() {
        require(_whitelist[msg.sender], "Caller is not whitelisted");
        _;
    }

    /**
     * @dev Constructor initializes the owner in the whitelist.
     */
    constructor() Ownable(msg.sender) {
        _whitelist[msg.sender] = true;
        _whitelistedAddresses.push(msg.sender);
    }

    /**
     * @dev Adds a new property.
     * @param propertyName Name of the new property.
     */
    function addProperty(string memory propertyName) external onlyOwner {
        require(propertyIndexes[propertyName] == 0 && (properties.length == 0 || keccak256(bytes(properties[0].name)) != keccak256(bytes(propertyName))), "Property already exists");

        properties.push();
        Property storage newProperty = properties[properties.length - 1];
        newProperty.name = propertyName;
        propertyIndexes[propertyName] = properties.length - 1;

        emit PropertyAdded(propertyName, properties.length - 1);
    }

    /**
     * @dev Sets a single property for a specific NFT token ID.
     * @param tokenId The ID of the NFT.
     * @param propertyName Name of the property.
     * @param value Value to set.
     */
    function setSingleProperty(uint256 tokenId, string memory propertyName, string memory value) external onlyWhitelisted {
        uint256 index = getPropertyIndex(propertyName);
        properties[index].values[tokenId] = value;
        emit PropertyUpdated(tokenId, propertyName, value);
    }

    /**
     * @dev Sets multiple properties for a single NFT.
     * @param tokenId ID of the NFT.
     * @param propertyNames Array of property names.
     * @param values Array of string values for the properties.
     */
    function setMultipleProperties(uint256 tokenId, string[25] memory propertyNames, string[25] memory values) public onlyWhitelisted {
        require(propertyNames.length == values.length, "Arrays length mismatch");

        for (uint256 i = 0; i < propertyNames.length; i++) {
            if (bytes(propertyNames[i]).length > 0) {
                uint256 index = getPropertyIndex(propertyNames[i]);
                properties[index].values[tokenId] = values[i];
                emit PropertyUpdated(tokenId, propertyNames[i], values[i]);
            }
        }

        emit PropertiesUpdated(tokenId, propertyNames, values);
    }

    /**
     * @dev Sets multiple properties across multiple NFTs.
     * @param tokenIds Array of NFT IDs.
     * @param propertyNames Array of property names.
     * @param values Array of arrays, each containing the values for each tokenId.
     */
    function setPropertiesForMultipleNFTs(uint256[] memory tokenIds, string[25] memory propertyNames, string[25][] memory values) external onlyWhitelisted {
        require(tokenIds.length == values.length, "Tokens and values length mismatch");

        for (uint256 i = 0; i < tokenIds.length; i++) {
            setMultipleProperties(tokenIds[i], propertyNames, values[i]);
        }
    }

    /**
     * @dev Gets all properties for a specific token ID.
     * @param tokenId ID of the NFT.
     * @return propertiesArray Array of property names and values.
     */
    function getProperties(uint256 tokenId) public view returns (string[] memory propertiesArray) {
        propertiesArray = new string[](properties.length * 2);

        for (uint256 i = 0; i < properties.length; i++) {
            propertiesArray[i * 2] = properties[i].name;
            propertiesArray[i * 2 + 1] = properties[i].values[tokenId];
        }
    }

    /**
     * @dev Fetches all properties for multiple NFT IDs in a single call.
     * @param tokenIds Array of NFT IDs to fetch properties for.
     * @return results An array where each entry is a list of properties for the respective NFT.
     */
    function getPropertiesForMultipleNFTs(uint256[] memory tokenIds) external view returns (string[][] memory results) {
        results = new string[][](tokenIds.length);

        for (uint256 i = 0; i < tokenIds.length; i++) {
            results[i] = getProperties(tokenIds[i]);
        }
    }

    /**
     * @dev Returns the value of a single property for a given token ID.
     * @param tokenId The ID of the NFT.
     * @param propertyName The name of the property to fetch.
     * @return The value of the property.
     */
    function getSingleProperty(uint256 tokenId, string memory propertyName) external view returns (string memory) {
        uint256 propertyIndex = propertyIndexes[propertyName];
        require(propertyIndex < properties.length && keccak256(bytes(properties[propertyIndex].name)) == keccak256(bytes(propertyName)), "Property does not exist");
        return properties[propertyIndex].values[tokenId];
    }

    /**
     * @dev Helper function to get the index of a property name.
     * @param propertyName Name of the property.
     * @return uint256 Index of the property in the array.
     */
    function getPropertyIndex(string memory propertyName) private view returns (uint256) {
        uint256 index = propertyIndexes[propertyName];
        require(index != 0 || (properties.length > 0 && keccak256(bytes(properties[0].name)) == keccak256(bytes(propertyName))), "Property does not exist");
        return index;
    }

    /**
     * @dev Lists all properties with their names.
     * @return Array of property names.
     */
    function listProperties() external view returns (string[] memory) {
        string[] memory propertyNames = new string[](properties.length);

        for (uint256 i = 0; i < properties.length; i++) {
            propertyNames[i] = properties[i].name;
        }

        return propertyNames;
    }

    /**
     * @dev Lists all whitelisted addresses.
     * @return Array of whitelisted addresses.
     */
    function listWhitelist() external view returns (address[] memory) {
        return _whitelistedAddresses;
    }

    /**
     * @dev Checks if an address is whitelisted.
     * @param account The address to check.
     * @return True if the address is whitelisted, false otherwise.
     */
    function isWhitelisted(address account) public view returns (bool) {
        return _whitelist[account];
    }

    /**
     * @dev Updates the whitelist status of an address.
     * @param account Address to update.
     * @param status Whitelist status (true to whitelist, false to remove).
     */
    function updateWhitelist(address account, bool status) external onlyOwner {
        if (_whitelist[account] != status) {
            _whitelist[account] = status;
            if (status) {
                _whitelistedAddresses.push(account);
            }
            emit WhitelistUpdated(account, status);
        }
    }
}
