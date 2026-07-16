// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Base64} from "solady/utils/Base64.sol";
import {LibString} from "solady/utils/LibString.sol";
import {IFundingWorks, INameResolver, IENS, IFundingWorksSignature} from "./Interfaces.sol";
import {IShapeData} from "./IShapeData.sol";

/// @title FundingWorksRenderer - On-chain SVG renderer for FundingWorks NFTs
/// @author TokenWorks (https://token.works/)
/// @notice Generates on-chain Teto-style card artwork and metadata for FundingWorks contribution NFTs
contract FundingWorksRenderer {
    using LibString for uint256;
    using LibString for address;

    string public constant CARD_TITLE = "TokenWorks S02";
    uint8 public constant SHAPE_COUNT = 10;
    address public constant ENS_REGISTRY = 0x00000000000C2E074eC69A0dFb2997BA6C7d2e1e;
    bytes32 public constant ADDR_REVERSE_NODE = 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2;

    address[10] public shapeSources;
    IFundingWorksSignature public signatureContract;

    error InvalidTokenIdError();
    error InvalidShapeSources();

    constructor(address[10] memory _shapeSources, address _signatureContract) {
        for (uint256 i = 0; i < SHAPE_COUNT; i++) {
            if (_shapeSources[i] == address(0)) revert InvalidShapeSources();
            shapeSources[i] = _shapeSources[i];
        }
        signatureContract = IFundingWorksSignature(_signatureContract);
    }

    /// @notice Generates the tokenURI for a FundingWorks NFT
    /// @param tokenId The token ID to generate metadata for
    /// @return The base64 encoded data URI containing JSON metadata
    function tokenURI(uint256 tokenId) external view returns (string memory) {
        IFundingWorks fundingWorks = IFundingWorks(msg.sender);

        address owner = fundingWorks.ownerOf(tokenId);
        if (owner == address(0)) {
            revert InvalidTokenIdError();
        }

        string memory svg = tokenSVG(tokenId);
        string memory image = Base64.encode(bytes(svg));
        string memory jsonRaw = string.concat(
            '{"name":"',
            CARD_TITLE,
            " #",
            tokenId.toString(),
            '","description":"TokenWorks S02 Patron NFT with art designed by Teto.","image":"data:image/svg+xml;base64,',
            image,
            '"}'
        );
        string memory json = Base64.encode(bytes(jsonRaw));
        return string.concat("data:application/json;base64,", json);
    }

    /// @notice Generates the contract-level metadata URI
    /// @return The base64 encoded data URI containing JSON metadata
    function contractURI() external view returns (string memory) {
        IFundingWorks fundingWorks = IFundingWorks(msg.sender);
        string memory crowdfundName = fundingWorks.name();

        return string.concat(
            "data:application/json;base64,",
            Base64.encode(
                abi.encodePacked(
                    '{"name":"',
                    crowdfundName,
                    '", "description":"',
                    _generateCollectionDescription(crowdfundName),
                    '"}'
                )
            )
        );
    }

    /// @notice Generates the SVG image for a FundingWorks NFT
    /// @param tokenId The token ID to generate SVG for
    /// @return The SVG markup string
    function tokenSVG(uint256 tokenId) public view returns (string memory) {
        IFundingWorks fundingWorks = IFundingWorks(msg.sender);

        address owner = fundingWorks.ownerOf(tokenId);
        if (owner == address(0)) revert InvalidTokenIdError();

        string memory ownerName = _escapeXml(_displayNameOf(owner));
        string memory idLabel = string.concat("#", tokenId.toString());
        string memory timeLabel = _formatTimeRemaining(fundingWorks);
        string memory valueLabel = _formatEthSymbol(fundingWorks.getRemainingLockedEth(tokenId));

        // Determine shape based on mintHash
        bytes32 hash = fundingWorks.mintHash(tokenId);
        uint8 shapeId = uint8(uint256(hash) % SHAPE_COUNT);
        string memory shape = _shapeMarkup(shapeId);

        string memory header = string.concat(
            "<g font-family='Arial,sans-serif'>",
            "<text x='16' y='28' font-size='13' fill='#fff'>",
            CARD_TITLE,
            " <tspan fill='#808080'>",
            idLabel,
            "</tspan></text>",
            "<text x='16' y='48' font-size='13' fill='#808080'>",
            timeLabel,
            "</text>",
            "<text x='16' y='68' font-size='15' fill='#fff'>",
            ownerName,
            "</text>",
            "<text x='16' y='88' font-size='15' fill='#fff'>",
            valueLabel,
            "</text></g>"
        );

        // TokenWorks Logo - scaled from 500x500 to 36x36
        string memory mark = string.concat(
            "<g transform='translate(250 14) scale(0.072)'>",
            "<path fill-rule='evenodd' clip-rule='evenodd' d='M250 0C111.929 0 0 111.929 0 250C0 388.071 111.929 500 250 500C388.071 500 500 388.071 500 250C500 111.929 388.071 0 250 0ZM404.091 404.091C374.936 433.246 330.297 433.246 250 433.246C169.703 433.246 125.064 433.246 95.909 404.091C66.754 374.936 66.754 330.297 66.754 250C66.754 169.703 66.754 125.064 95.909 95.909C125.064 66.754 169.703 66.754 250 66.754C330.297 66.754 374.936 66.754 404.091 95.909C433.246 125.064 433.246 169.703 433.246 250C433.246 330.297 433.246 374.936 404.091 404.091Z' fill='#F2F2F2'/>",
            "<path d='M239.219 203.73V130.486H258.159V203.73H239.219ZM211.528 132.404V116.341H285.61V132.404H211.528ZM301.438 203.73L276.984 116.341H296.284L312.347 183.111H310.789L327.691 116.341H345.792L362.455 183.111H361.016L377.2 116.341H396.739L371.805 203.73H351.307L335.962 142.474H337.641L322.177 203.73H301.438Z' fill='#F2F2F2'/>",
            "</g>"
        );

        string memory signature = _getSignatureSvg(tokenId);

        return string(
            abi.encodePacked(
                "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 300 400'>",
                "<rect width='300' height='400' rx='16' fill='#2D2D2D'/>",
                shape,
                header,
                mark,
                signature,
                "</svg>"
            )
        );
    }

    /// @notice Generates SVG path element for token signature if it exists
    /// @param tokenId The token ID to get signature for
    /// @return SVG path element string or empty string if no signature
    function _getSignatureSvg(uint256 tokenId) internal view returns (string memory) {
        if (address(signatureContract) == address(0)) return "";
        if (!signatureContract.hasSignature(tokenId)) return "";

        bytes memory sigBytes = signatureContract.getSignature(tokenId);
        if (sigBytes.length == 0) return "";

        return string.concat(
            "<path d='",
            string(sigBytes),
            "' fill='none' stroke='#fff' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'/>"
        );
    }

    function _generateCollectionDescription(string memory crowdfundName) private pure returns (string memory) {
        return string.concat(
            "Contribution NFTs for ",
            crowdfundName,
            ". Each NFT represents a supporter's contribution. During vesting, holders can burn their NFT to reclaim remaining locked ETH."
        );
    }

    /// @notice Resolves ENS name or returns shortened hex address
    function _displayNameOf(address wallet) internal view returns (string memory) {
        // Skip ENS lookup if registry has no code (e.g., in tests)
        if (ENS_REGISTRY.code.length == 0) return _addressToHex(wallet);

        // Compute reverse node: keccak256(ADDR_REVERSE_NODE, sha3HexAddress(wallet))
        bytes32 node = keccak256(abi.encodePacked(ADDR_REVERSE_NODE, _sha3HexAddress(wallet)));

        // Query ENS Registry for resolver
        try IENS(ENS_REGISTRY).resolver(node) returns (address resolver) {
            if (resolver != address(0)) {
                try INameResolver(resolver).name(node) returns (string memory ens) {
                    if (bytes(ens).length != 0) return ens;
                } catch {}
            }
        } catch {}

        return _addressToHex(wallet);
    }

    /// @notice Computes keccak256 of lowercase hex address (without 0x prefix)
    function _sha3HexAddress(address addr) internal pure returns (bytes32) {
        bytes memory lowercase = new bytes(40);
        bytes16 hexSymbols = "0123456789abcdef";
        bytes20 value = bytes20(addr);
        for (uint256 i = 0; i < 20; i++) {
            lowercase[i * 2] = hexSymbols[uint8(value[i] >> 4)];
            lowercase[i * 2 + 1] = hexSymbols[uint8(value[i] & 0x0f)];
        }
        return keccak256(lowercase);
    }

    /// @notice Generates shape markup from shape data contract
    function _shapeMarkup(uint8 shapeId) internal view returns (string memory) {
        (string memory baseTransform, string memory pathD, string memory pathTransform, string memory useList) =
            IShapeData(shapeSources[shapeId]).shapeParts();

        return string.concat(
            "<g transform='",
            baseTransform,
            "'><g transform='translate(-400 -300)'><defs><path id='a' fill='none' stroke='#6b6666' stroke-width='1' d='",
            pathD,
            "' transform='",
            pathTransform,
            "' vector-effect='non-scaling-stroke'></path></defs>",
            _renderUses(useList),
            "</g></g>"
        );
    }

    /// @notice Renders use elements from packed use list
    function _renderUses(string memory useList) internal pure returns (string memory out) {
        bytes memory src = bytes(useList);
        if (src.length == 0) return "";

        out = "";
        uint256 start = 0;
        for (uint256 i = 0; i <= src.length; i++) {
            if (i == src.length || src[i] == 0x7c) {
                // '|' delimiter
                bytes memory token = _slice(src, start, i);
                out = string.concat(out, "<use href='#a' transform='", _decodePackedTransform(token), "'></use>");
                start = i + 1;
            }
        }
    }

    /// @notice Decodes packed transform notation into SVG transform string
    function _decodePackedTransform(bytes memory token) internal pure returns (string memory) {
        if (token.length < 2 || token[1] != 0x3b) return string(token); // ';' check
        bytes1 kind = token[0];
        if (kind == 0x72) {
            // 'r' for rotate
            string[3] memory p = _splitParts(token, 3);
            return string.concat("rotate(", p[0], " ", p[1], " ", p[2], ")scale(.5)");
        }
        if (kind == 0x6d) {
            // 'm' for matrix
            string[6] memory p = _splitParts6(token);
            return string.concat("matrix(", p[0], " ", p[1], " ", p[2], " ", p[3], " ", p[4], " ", p[5], ")");
        }
        if (kind == 0x78) return _partAfterPrefix(token); // 'x' for raw
        return string(token);
    }

    function _partAfterPrefix(bytes memory token) internal pure returns (string memory) {
        return string(_slice(token, 2, token.length));
    }

    function _splitParts(bytes memory token, uint256 expected) internal pure returns (string[3] memory parts) {
        uint256 idx = 2;
        uint256 start = idx;
        uint256 part = 0;
        while (idx <= token.length) {
            if (idx == token.length || token[idx] == 0x3b) {
                // ';' delimiter
                if (part < 3) parts[part] = string(_slice(token, start, idx));
                part++;
                start = idx + 1;
            }
            idx++;
        }
        if (part != expected) return ["", "", ""];
    }

    function _splitParts6(bytes memory token) internal pure returns (string[6] memory parts) {
        uint256 idx = 2;
        uint256 start = idx;
        uint256 part = 0;
        while (idx <= token.length) {
            if (idx == token.length || token[idx] == 0x3b) {
                // ';' delimiter
                if (part < 6) parts[part] = string(_slice(token, start, idx));
                part++;
                start = idx + 1;
            }
            idx++;
        }
    }

    function _slice(bytes memory src, uint256 start, uint256 end) internal pure returns (bytes memory out) {
        out = new bytes(end - start);
        for (uint256 i = 0; i < out.length; i++) {
            out[i] = src[start + i];
        }
    }

    /// @notice Formats wei amount to ETH with 3 decimal places and Ξ symbol
    function _formatEthSymbol(uint256 weiAmount) internal pure returns (string memory) {
        uint256 whole = weiAmount / 1e18;
        uint256 frac3 = (weiAmount % 1e18) / 1e15;
        // Using Unicode escape for Ξ (Xi/Ethereum symbol)
        return string.concat(whole.toString(), ".", _pad3(frac3), unicode"Ξ");
    }

    /// @notice Formats remaining vesting time as "XXD XXH XXM remaining"
    function _formatTimeRemaining(IFundingWorks fundingWorks) internal view returns (string memory) {
        if (!fundingWorks.vestingStarted()) {
            return "Vesting not started";
        }

        uint256 vestingStart = fundingWorks.vestingStartTime();
        uint256 vestingPeriod = fundingWorks.VESTING_PERIOD();
        uint256 vestingEnd = vestingStart + vestingPeriod;

        if (block.timestamp >= vestingEnd) {
            return "0D 0H 0M remaining";
        }

        uint256 remaining = vestingEnd - block.timestamp;
        uint256 days_ = remaining / 1 days;
        uint256 hours_ = (remaining % 1 days) / 1 hours;
        uint256 minutes_ = (remaining % 1 hours) / 1 minutes;

        return string.concat(days_.toString(), "D ", hours_.toString(), "H ", minutes_.toString(), "M remaining");
    }

    function _pad3(uint256 value) internal pure returns (string memory) {
        if (value >= 100) return value.toString();
        if (value >= 10) return string.concat("0", value.toString());
        return string.concat("00", value.toString());
    }

    function _addressToHex(address a) internal pure returns (string memory) {
        bytes20 value = bytes20(a);
        bytes16 hexSymbols = "0123456789ABCDEF";
        // Show "0X" + last 4 hex chars (last 2 bytes) in uppercase
        bytes memory out = new bytes(6);
        out[0] = "0";
        out[1] = "X";
        out[2] = hexSymbols[uint8(value[18] >> 4)];
        out[3] = hexSymbols[uint8(value[18] & 0x0f)];
        out[4] = hexSymbols[uint8(value[19] >> 4)];
        out[5] = hexSymbols[uint8(value[19] & 0x0f)];
        return string(out);
    }

    function _escapeXml(string memory raw) internal pure returns (string memory escaped) {
        bytes memory src = bytes(raw);
        escaped = "";
        for (uint256 i = 0; i < src.length; i++) {
            bytes1 c = src[i];
            if (c == 0x26) escaped = string.concat(escaped, "&amp;"); // &
            else if (c == 0x3c) escaped = string.concat(escaped, "&lt;"); // <
            else if (c == 0x3e) escaped = string.concat(escaped, "&gt;"); // >
            else if (c == 0x22) escaped = string.concat(escaped, "&quot;"); // "
            else if (c == 0x27) escaped = string.concat(escaped, "&apos;"); // '
            else escaped = string.concat(escaped, string(abi.encodePacked(c)));
        }
    }
}
