// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.6;

import "contracts/core/libraries/TickMath.sol";
import "lib/openzeppelin-contracts/contracts/utils/Strings.sol";
import "lib/openzeppelin-contracts/contracts/math/SafeMath.sol";
import "./base64.sol";

/// @title NFTSVG
/// @notice Provides a function for generating an SVG associated with a CL NFT
library NFTSVG {
    using Strings for uint256;
    using SafeMath for uint256;

    function generateSVG(
        string memory quoteTokenSymbol,
        string memory baseTokenSymbol,
        uint256 quoteTokensOwed,
        uint256 baseTokensOwed,
        uint256 tokenId,
        int24 tickLower,
        int24 tickUpper,
        int24 tickSpacing,
        uint8 quoteTokenDecimals,
        uint8 baseTokenDecimals
    ) public pure returns (string memory svg) {
        return string(
            abi.encodePacked(
                '<svg width="800" height="800" viewBox="0 0 800 800" fill="none" xmlns="http://www.w3.org/2000/svg">',
                '<g id="NFT Topaz" clip-path="url(#clip0_1098_820)">',
                '<rect width="800" height="800" fill="#252525"/>',
                '<g id="shadow">',
                '<g id="Group 465">',
                '<path id="Rectangle 173" d="M394 234L394 566L-0.000117372 566L-0.00012207 234L394 234Z" fill="url(#paint0_linear_1098_820)"/>',
                "</g>",
                "</g>",
                generateTopText({
                    quoteTokenSymbol: quoteTokenSymbol,
                    baseTokenSymbol: baseTokenSymbol,
                    tokenId: tokenId,
                    tickSpacing: tickSpacing
                }),
                generateArt(),
                generateBottomText({
                    quoteTokenSymbol: quoteTokenSymbol,
                    baseTokenSymbol: baseTokenSymbol,
                    quoteTokensOwed: quoteTokensOwed,
                    baseTokensOwed: baseTokensOwed,
                    tickLower: tickLower,
                    tickUpper: tickUpper,
                    quoteTokenDecimals: quoteTokenDecimals,
                    baseTokenDecimals: baseTokenDecimals
                }),
                generateSVGDefs(),
                "</svg>"
            )
        );
    }

    function generateTopText(
        string memory quoteTokenSymbol,
        string memory baseTokenSymbol,
        uint256 tokenId,
        int24 tickSpacing
    ) private pure returns (string memory svg) {
        string memory poolId =
            string(abi.encodePacked("CL", tickToString(tickSpacing), "-", quoteTokenSymbol, "/", baseTokenSymbol));
        string memory tokenIdStr = string(abi.encodePacked("ID #", tokenId.toString()));
        string memory id = string(abi.encodePacked(poolId, tokenIdStr));
        svg = string(
            abi.encodePacked(
                '<g id="',
                id,
                '">',
                '<text fill="#F3F4F6" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="32" font-weight="bold" letter-spacing="0em"><tspan x="56" y="85.5938">',
                poolId,
                "</tspan></text>",
                "</g>",
                '<text id="ID #1223" fill="#F3F4F6" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="20" letter-spacing="0em">',
                '<tspan x="56" y="128.913">',
                tokenIdStr,
                "</tspan>",
                "</text>"
            )
        );
    }

    function generateArt() private pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                '<circle fill="#000000" r="165.837" cy="399.837" cx="400" id="circle"/>',
                '<g id="topaz" transform="translate(400 399.837) scale(0.5) translate(-300 -307)">',
                '<polygon points="286,49 45,165 286,193" fill="url(#topazGrad)"/>',
                '<polygon points="314,49 555,165 314,193" fill="url(#topazGrad)"/>',
                '<polygon points="45,202 256,298 280,565" fill="url(#topazGrad)"/>',
                '<polygon points="555,202 344,298 320,565" fill="url(#topazGrad)"/>',
                "</g>"
            )
        );
    }

    function generateSVGDefs() private pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                "<defs>",
                '<linearGradient id="topazGrad" gradientUnits="userSpaceOnUse" x1="300" y1="49" x2="300" y2="565">',
                '<stop offset="0" stop-color="#FE3C00"/>',
                '<stop offset="0.5" stop-color="#FE4B07"/>',
                '<stop offset="1" stop-color="#FC8625"/>',
                "</linearGradient>",
                '<linearGradient id="paint0_linear_1098_820" x1="491" y1="566" x2="26.2101" y2="566" gradientUnits="userSpaceOnUse">'
                '<stop offset="0.142" stop-color="white" stop-opacity="0.2"/>',
                '<stop offset="1" stop-opacity="0"/>',
                "</linearGradient>",
                '<clipPath id="clip0_1098_820">',
                '<rect width="800" height="800" fill="white"/>',
                "</clipPath>",
                "</defs>"
            )
        );
    }

    function generateBottomText(
        string memory quoteTokenSymbol,
        string memory baseTokenSymbol,
        uint256 quoteTokensOwed,
        uint256 baseTokensOwed,
        int24 tickLower,
        int24 tickUpper,
        uint8 quoteTokenDecimals,
        uint8 baseTokenDecimals
    ) internal pure returns (string memory svg) {
        string memory balance0 = balanceToDecimals(quoteTokensOwed, quoteTokenDecimals);
        string memory balance1 = balanceToDecimals(baseTokensOwed, baseTokenDecimals);
        string memory balances =
            string(abi.encodePacked(balance0, " ", quoteTokenSymbol, " ~ ", balance1, " ", baseTokenSymbol));
        string memory tickLow = string(abi.encodePacked(tickToString(tickLower), " Low "));
        string memory tickHigh = string(abi.encodePacked(tickToString(tickUpper), " High "));
        svg = string(
            abi.encodePacked(
                '<text id="',
                balances,
                '" fill="#F3F4F6" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="32" font-weight="bold" letter-spacing="0em"><tspan x="56" y="676.594">',
                balances,
                "</tspan></text>",
                '<rect id="line" opacity="0.05" x="56" y="700" width="693" height="2" fill="#D9D9D9"/>',
                '<text id="',
                tickLow,
                "&#226;&#128;&#148; ",
                tickHigh,
                '" fill="#F3F4F6" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="20" letter-spacing="0em"><tspan x="56" y="736.434">',
                tickLow,
                "&#x2014; ",
                tickHigh,
                "</tspan></text>",
                "</g>"
            )
        );
    }

    function balanceToDecimals(uint256 balance, uint8 decimals) private pure returns (string memory) {
        uint256 divisor = 10 ** decimals;
        uint256 integerPart = balance / divisor;
        uint256 fractionalPart = balance % divisor;

        // trim to 5 dp
        if (decimals > 5) {
            uint256 adjustedDivisor = 10 ** (decimals - 5);
            fractionalPart = adjustedDivisor > 0 ? fractionalPart / adjustedDivisor : fractionalPart;
        }

        // add leading zeroes
        string memory leadingZeros = "";
        uint256 fractionalPartLength = bytes(fractionalPart.toString()).length;
        uint256 zerosToAdd = 5 > fractionalPartLength ? 5 - fractionalPartLength : 0;
        for (uint256 i = 0; i < zerosToAdd; i++) {
            leadingZeros = string(abi.encodePacked("0", leadingZeros));
        }
        return string(abi.encodePacked(integerPart.toString(), ".", leadingZeros, fractionalPart.toString()));
    }

    function tickToString(int24 tick) private pure returns (string memory) {
        string memory sign = "";
        if (tick < 0) {
            tick = tick * -1;
            sign = "-";
        }
        return string(abi.encodePacked(sign, uint256(tick).toString()));
    }
}
