// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title SOUMetadata
 * @notice Handles tokenURI generation for SOU NFTs
 * @dev Extracted from main SOU contract to reduce contract size
 */
contract SOUMetadata {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";

    // IPFS URL for the base SOU image
    string private constant BASE_IMAGE_URL = "https://red-solid-flamingo-376.mypinata.cloud/ipfs/bafybeienvyetpgag3s4rbmmehwvmqvt7g2uvzqpclomkaagjg4bmavdbou";

    /**
     * @notice Generates the tokenURI for a given SOU token
     * @param tokenId The ID of the token
     * @param currentPrincipalUSD Current principal in USD (8 decimals)
     * @param originalPrincipalUSD Original principal in USD (8 decimals)
     * @param totalPaidOutUSD Total amount paid out in USD (8 decimals)
     * @return The complete tokenURI as a base64-encoded data URI
     */
    function tokenURI(
        uint256 tokenId,
        uint256 currentPrincipalUSD,
        uint256 originalPrincipalUSD,
        uint256 totalPaidOutUSD
    ) external pure returns (string memory) {
        // Generate SVG with base image and token ID overlay
        string memory svg = _generateSVG(tokenId);
        string memory svgBase64 = _base64Encode(bytes(svg));

        // Note: bridgedTokens removed from metadata - use event logs to get this data
        string memory bridgedTokensJson = "[]"; // Empty array since we use events now

        return string(abi.encodePacked(
            "data:application/json;base64,",
            _base64Encode(bytes(abi.encodePacked(
                '{"name":"SOU #', _toString(tokenId),
                '","description":"Shib Owes You claim representing $', _toString(currentPrincipalUSD / 1e8),
                ' USD","image":"data:image/svg+xml;base64,', svgBase64,
                '","principal":"', _toString(currentPrincipalUSD),
                '","original":"', _toString(originalPrincipalUSD),
                '","paid":"', _toString(totalPaidOutUSD),
                '","bridgedTokens":', bridgedTokensJson, '}'
            )))
        ));
    }

    /**
     * @dev Generates SVG with base image and token ID overlay
     * @param tokenId The token ID to display
     * @return SVG string
     */
    function _generateSVG(uint256 tokenId) internal pure returns (string memory) {
        return string(abi.encodePacked(
            '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1080 1080">',
            // Base image from IPFS
            '<image href="', BASE_IMAGE_URL, '" width="1080" height="1080"/>',

            // Token ID overlay at bottom with Space Mono font styling
            '<style>',
            '@import url("https://fonts.googleapis.com/css2?family=Space+Mono:wght@400&amp;display=swap");',
            '.token-id { font-family: "Space Mono", monospace; font-weight: 400; font-size: 22px; ',
            'line-height: 140%; letter-spacing: 0%; text-transform: uppercase; fill: #ffffff; }',
            '</style>',

            // Token ID text at bottom center
            '<text x="540" y="1000" text-anchor="middle" class="token-id">',
            'ID: ', _toString(tokenId),
            '</text>',
            '</svg>'
        ));
    }

    /**
     * @dev Converts bytes32 to hex string
     */
    function _bytes32ToString(bytes32 value) internal pure returns (string memory) {
        return _toHexString(uint256(value), 32);
    }

    /**
     * @dev Converts uint256 to string
     */
    function _toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) return "0";

        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }

        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }

        return string(buffer);
    }

    /**
     * @dev Converts uint256 to hex string with specified length
     */
    function _toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Base64 encoding function
     */
    function _base64Encode(bytes memory data) internal pure returns (string memory) {
        if (data.length == 0) return "";

        string memory table = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        uint256 encodedLen = 4 * ((data.length + 2) / 3);
        bytes memory result = new bytes(encodedLen);

        uint256 resultIndex = 0;
        for (uint256 i = 0; i < data.length; i += 3) {
            uint256 a = uint8(data[i]);
            uint256 b = i + 1 < data.length ? uint8(data[i + 1]) : 0;
            uint256 c = i + 2 < data.length ? uint8(data[i + 2]) : 0;

            uint256 triple = (a << 16) | (b << 8) | c;

            result[resultIndex++] = bytes(table)[(triple >> 18) & 0x3F];
            result[resultIndex++] = bytes(table)[(triple >> 12) & 0x3F];
            result[resultIndex++] = i + 1 < data.length ? bytes(table)[(triple >> 6) & 0x3F] : bytes1("=");
            result[resultIndex++] = i + 2 < data.length ? bytes(table)[triple & 0x3F] : bytes1("=");
        }

        return string(result);
    }
}
