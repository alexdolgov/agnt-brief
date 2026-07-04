// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.28;

import '@openzeppelin/contracts/utils/Base64.sol';

/**
 * @title TokenURILib
 * @dev Library for managing tokenURI
 * @custom:security-contact tech@ethichub.com
 */
library TokenURILib {    
    struct Attribute {
        string name;
        string value;
    }

    function _setTokenURI(
        string memory name,
        string memory imageCID, 
        Attribute[] memory attributes
    ) internal pure returns (string memory) {
        uint256 attributesLength = attributes.length;
        string memory dataAttributes;
        for (uint8 i = 0; i < attributesLength; ++i) { 
            if (i == attributesLength - 1) {
                dataAttributes = string.concat(dataAttributes, _setAttribute(attributes[i].name, attributes[i].value));
            } else {
                dataAttributes = string.concat(dataAttributes, _setAttribute(attributes[i].name, attributes[i].value), ',');
            }
        }
        dataAttributes = string.concat('"attributes": [', dataAttributes, ']');
        string memory dataJSON = string.concat(
            '{',
                _setProperty('name', name),
                _setProperty('description', 'EthicHub contract'),
                _setProperty('external_url', 'https://ethichub.com'),
                _setProperty('image', string.concat('ipfs://', imageCID)),
                dataAttributes,
            '}'
        );
        return string.concat('data:application/json;base64,', Base64.encode(bytes(dataJSON)));
    }

    function _setProperty(string memory _name, string memory _value) private pure returns (string memory) {
        return string.concat('"', _name, '": "', _value, '", ');
    }

    function _setAttribute(string memory _name, string memory _value) private pure returns (string memory) {
        return string.concat('{"trait_type":"', _name,'","value":"', _value,'"}');
    }

}
