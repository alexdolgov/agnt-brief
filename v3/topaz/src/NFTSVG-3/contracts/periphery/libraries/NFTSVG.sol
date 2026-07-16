// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.6;
pragma abicoder v2;

import "lib/openzeppelin-contracts/contracts/utils/Strings.sol";

/// @title NFTSVG
/// @notice Generates the on-chain SVG art for a Topaz CL position: a concentrated-liquidity
///         curve whose width encodes the range, with a live current-price marker.
library NFTSVG {
    using Strings for uint256;

    // Unit liquidity bell in a 1000x1000 box (baseline y=1000, peak at center y=0).
    string private constant BELL =
        "M0 1000L28 992L56 970L83 933L111 883L139 821L167 750L194 671L222 587L250 500L278 413L306 329L333 250L361 179L389 117L417 67L444 30L472 8L500 0L528 8L556 30L583 67L611 117L639 179L667 250L694 329L722 413L750 500L778 587L806 671L833 750L861 821L889 883L917 933L944 970L972 992L1000 1000";

    // Topaz wordmark (vectorized brand font), even-odd fill.
    string private constant WORD =
        "M205 101L205 36 L216 36C226 36 227 36 227 38C227 40 227 40 233 38C264 24 298 57 289 93C286 107 277 118 265 124C256 129 240 129 233 125C230 123 228 122 227 122C227 122 227 132 227 144L227 165 L216 165L205 165 L205 101ZM129 126C111 120 99 106 96 88C91 57 119 30 150 35C193 42 206 97 170 120C158 128 142 130 129 126ZM317 126C300 120 294 98 307 84C315 75 323 72 342 71L355 71 L355 67C353 59 347 55 336 55C328 55 327 55 321 58L315 62 L309 55L303 49 L305 46C306 45 311 42 315 40C339 28 364 35 374 55L376 60 L377 93L377 126 L366 126C355 126 355 126 355 124C355 122 355 122 353 123C341 128 326 130 317 126ZM42 75L42 24 L22 24L2 24 L9 13L16 2 L58 2L100 2 L100 13L100 24 L83 24L66 24 L66 75L66 126 L54 126L42 126 L42 75ZM389 126C389 125 398 110 410 92C422 73 431 58 431 57C431 56 424 56 412 56L393 56 L393 46L393 36 L431 36C452 36 469 36 469 37C469 37 459 52 447 71L425 106 L451 106C472 106 477 106 477 107C476 108 474 113 471 117L465 126 L427 126C406 126 389 126 389 126ZM349 106L355 104 L355 95L355 87 L344 87C328 88 321 93 322 101C324 110 336 112 349 106ZM250 108C260 105 267 96 268 84C269 62 251 48 232 57L227 59 L227 80L227 102 L230 104C236 109 243 110 250 108ZM154 106C173 96 173 67 154 57C137 48 117 61 118 81C118 101 137 114 154 106Z";

    struct SVGParams {
        string baseSymbol; // price denominator token (shown first: "BASE / QUOTE")
        string quoteSymbol;
        string baseColor; // SVG paint, e.g. "#26A17B" or "hsl(210,65%,55%)"
        string quoteColor;
        string priceLeft; // label at left band edge (lower displayed price)
        string priceCurrent;
        string priceRight;
        string baseAmount; // formatted underlying amounts
        string quoteAmount;
        int256 tickLeft; // ticks oriented for x-axis (left edge)
        int256 tickRight;
        int256 tickCurrent;
        uint256 spanTicks; // abs(tickUpper - tickLower), drives band width
        uint256 tickSpacing;
        bool inRange;
        uint256 tokenId;
    }

    struct Geo {
        uint256 bw;
        uint256 lx;
        uint256 hx;
        uint256 cx;
    }

    function generateSVG(SVGParams memory p) public pure returns (string memory) {
        Geo memory g = geomOf(p);
        return string(
            abi.encodePacked(
                '<svg width="800" height="800" viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg">',
                defs(p),
                '<rect width="800" height="800" fill="#0c0d10"/><rect width="800" height="800" fill="url(#bg)"/>',
                '<rect x="16" y="16" width="768" height="768" rx="26" fill="none" stroke="#fff" stroke-opacity="0.08"/>',
                header(p),
                statusPill(p),
                curveBack(p, g),
                curveFront(p, g),
                footer(p),
                "</svg>"
            )
        );
    }

    function geomOf(SVGParams memory p) private pure returns (Geo memory g) {
        g.bw = bandWidth(p.spanTicks);
        g.lx = 400 - g.bw / 2;
        g.hx = 400 + g.bw / 2;
        int256 denom = p.tickRight - p.tickLeft;
        int256 cxi = int256(g.lx);
        if (denom != 0) {
            cxi = int256(g.lx) + (p.tickCurrent - p.tickLeft) * int256(g.bw) / denom;
        }
        if (cxi < 88) cxi = 88;
        if (cxi > 712) cxi = 712;
        g.cx = uint256(cxi);
    }

    function bandWidth(uint256 span) private pure returns (uint256 bw) {
        if (span == 0) span = 1;
        uint256 l2 = 0;
        while (span > 1) {
            span >>= 1;
            l2++;
        }
        bw = 150 + l2 * 19;
        if (bw > 540) bw = 540;
    }

    // format v in [0,999] as "0.vvv" for use as an SVG scale factor
    function frac3(uint256 v) private pure returns (string memory) {
        string memory s = v.toString();
        uint256 len = bytes(s).length;
        if (len == 1) return string(abi.encodePacked("0.00", s));
        if (len == 2) return string(abi.encodePacked("0.0", s));
        return string(abi.encodePacked("0.", s));
    }

    function defs(SVGParams memory p) private pure returns (string memory) {
        string memory bg = string(
            abi.encodePacked(
                "<defs>",
                '<linearGradient id="gem" gradientUnits="userSpaceOnUse" x1="300" y1="49" x2="300" y2="565">',
                '<stop offset="0" stop-color="#FE3C00"/><stop offset="0.5" stop-color="#FE4B07"/><stop offset="1" stop-color="#FC8625"/></linearGradient>',
                '<radialGradient id="bg" cx="28%" cy="20%" r="90%"><stop offset="0" stop-color="',
                p.baseColor,
                '" stop-opacity="0.16"/><stop offset="0.45" stop-color="',
                p.quoteColor,
                '" stop-opacity="0.06"/><stop offset="1" stop-color="#0c0d10" stop-opacity="0"/></radialGradient>'
            )
        );
        return string(
            abi.encodePacked(
                bg,
                '<linearGradient id="hump" x1="0" y1="1" x2="0" y2="0"><stop offset="0" stop-color="',
                p.baseColor,
                '" stop-opacity="0.10"/><stop offset="1" stop-color="',
                p.quoteColor,
                '" stop-opacity="0.55"/></linearGradient>',
                '<linearGradient id="rim" x1="0" y1="0" x2="1" y2="0"><stop offset="0" stop-color="',
                p.baseColor,
                '"/><stop offset="1" stop-color="',
                p.quoteColor,
                '"/></linearGradient></defs>'
            )
        );
    }

    function header(SVGParams memory p) private pure returns (string memory) {
        // legend: dot at 60, its label 12px to the right; the second group starts a clear
        // gap after the first label (≈11px per character at font-size 17).
        uint256 dot2 = 83 + bytes(p.baseSymbol).length * 11;
        string memory title = string(
            abi.encodePacked(
                '<text x="56" y="92" font-family="Arial" font-size="46" font-weight="bold" fill="#fff">',
                p.baseSymbol,
                " / ",
                p.quoteSymbol,
                '</text><circle cx="60" cy="120" r="5" fill="',
                p.baseColor,
                '"/><text x="72" y="126" font-family="Arial" font-size="17" fill="#aeb3bd">',
                p.baseSymbol,
                "</text>"
            )
        );
        string memory dots = string(
            abi.encodePacked(
                '<circle cx="',
                dot2.toString(),
                '" cy="120" r="5" fill="',
                p.quoteColor,
                '"/><text x="',
                (dot2 + 12).toString(),
                '" y="126" font-family="Arial" font-size="17" fill="#aeb3bd">',
                p.quoteSymbol,
                "</text>"
            )
        );
        return string(
            abi.encodePacked(
                title,
                dots,
                '<text x="56" y="158" font-family="Arial" font-size="15" fill="#71757f" letter-spacing="2">CONCENTRATED LIQUIDITY &#183; #',
                p.tokenId.toString(),
                " &#183; SPACING ",
                p.tickSpacing.toString(),
                "</text>"
            )
        );
    }

    function statusPill(SVGParams memory p) private pure returns (string memory) {
        string memory acc = p.inRange ? "#3DE08A" : "#FF9A3D";
        uint256 x = p.inRange ? 612 : 572;
        string memory box = string(
            abi.encodePacked(
                '<rect x="',
                x.toString(),
                '" y="62" width="',
                (744 - x).toString(),
                '" height="34" rx="17" fill="',
                acc,
                '" fill-opacity="0.14"/>'
            )
        );
        return string(
            abi.encodePacked(
                box,
                '<circle cx="',
                (x + 22).toString(),
                '" cy="79" r="5" fill="',
                acc,
                '"><animate attributeName="opacity" values="1;0.3;1" dur="1.6s" repeatCount="indefinite"/></circle><text x="',
                (x + 38).toString(),
                '" y="84" font-family="Arial" font-size="15" font-weight="bold" fill="',
                acc,
                '">',
                p.inRange ? "IN RANGE" : "OUT OF RANGE",
                "</text>"
            )
        );
    }

    function curveBack(SVGParams memory p, Geo memory g) private pure returns (string memory) {
        string memory tf = string(
            abi.encodePacked('transform="translate(', g.lx.toString(), ' 310) scale(', frac3(g.bw), ' 0.292)"')
        );
        string memory base = string(
            abi.encodePacked(
                '<line x1="80" y1="602" x2="720" y2="602" stroke="#fff" stroke-opacity="0.14"/>',
                '<rect x="',
                g.lx.toString(),
                '" y="304" width="',
                g.bw.toString(),
                '" height="298" fill="#fff" fill-opacity="0.03"/>'
            )
        );
        return string(
            abi.encodePacked(
                base,
                "<g ",
                tf,
                '><path d="',
                BELL,
                'Z" fill="url(#hump)" opacity="',
                p.inRange ? "0.95" : "0.5",
                '"/></g><g ',
                tf,
                '><path d="',
                BELL,
                '" fill="none" stroke="url(#rim)" stroke-width="3.5" vector-effect="non-scaling-stroke" opacity="',
                p.inRange ? "1" : "0.55",
                '"/></g>'
            )
        );
    }

    function curveFront(SVGParams memory p, Geo memory g) private pure returns (string memory) {
        string memory acc = p.inRange ? "#3DE08A" : "#FF9A3D";
        string memory cxs = g.cx.toString();
        return string(abi.encodePacked(guides(p, g), marker(acc, cxs), curveLabels(p, g, acc, cxs)));
    }

    function guides(SVGParams memory p, Geo memory g) private pure returns (string memory) {
        return string(
            abi.encodePacked(
                '<line x1="',
                g.lx.toString(),
                '" y1="304" x2="',
                g.lx.toString(),
                '" y2="612" stroke="',
                p.baseColor,
                '" stroke-opacity="0.55" stroke-dasharray="3 4"/><line x1="',
                g.hx.toString(),
                '" y1="304" x2="',
                g.hx.toString(),
                '" y2="612" stroke="',
                p.quoteColor,
                '" stroke-opacity="0.55" stroke-dasharray="3 4"/>'
            )
        );
    }

    function marker(string memory acc, string memory cxs) private pure returns (string memory) {
        return string(
            abi.encodePacked(
                '<line x1="',
                cxs,
                '" y1="276" x2="',
                cxs,
                '" y2="612" stroke="',
                acc,
                '" stroke-width="2.5"><animate attributeName="opacity" values="0.55;1;0.55" dur="1.8s" repeatCount="indefinite"/></line><circle cx="',
                cxs,
                '" cy="276" r="6" fill="',
                acc,
                '"/>'
            )
        );
    }

    function curveLabels(SVGParams memory p, Geo memory g, string memory acc, string memory cxs)
        private
        pure
        returns (string memory)
    {
        string memory cur = string(
            abi.encodePacked(
                '<text x="',
                cxs,
                '" y="266" text-anchor="middle" font-family="Arial" font-size="17" font-weight="bold" fill="',
                acc,
                '">',
                p.priceCurrent,
                "</text>"
            )
        );
        return string(
            abi.encodePacked(
                cur,
                '<text x="',
                g.lx.toString(),
                '" y="634" text-anchor="middle" font-family="Arial" font-size="16" fill="#cfd2d8">',
                p.priceLeft,
                '</text><text x="',
                g.hx.toString(),
                '" y="634" text-anchor="middle" font-family="Arial" font-size="16" fill="#cfd2d8">',
                p.priceRight,
                '</text><text x="400" y="658" text-anchor="middle" font-family="Arial" font-size="14" fill="#71757f" letter-spacing="1">',
                p.quoteSymbol,
                " per ",
                p.baseSymbol,
                "</text>"
            )
        );
    }

    function footer(SVGParams memory p) private pure returns (string memory) {
        string memory amounts = string(
            abi.encodePacked(
                '<line x1="56" y1="700" x2="744" y2="700" stroke="#fff" stroke-opacity="0.08"/>',
                '<text x="56" y="730" font-family="Arial" font-size="14" fill="#71757f" letter-spacing="1">POSITION</text>',
                '<text x="56" y="757" font-family="Arial" font-size="18" font-weight="bold" fill="#fff">',
                p.baseAmount,
                " ",
                p.baseSymbol,
                "  &#183;  ",
                p.quoteAmount,
                " ",
                p.quoteSymbol,
                "</text>"
            )
        );
        return string(
            abi.encodePacked(
                amounts,
                '<g transform="translate(611 742) scale(0.14) translate(-300 -307)">',
                gemPolys(),
                "</g>",
                '<g transform="translate(707 742) scale(0.22) translate(-240 -83.5)"><path d="',
                WORD,
                '" fill="#e7e9ee" fill-rule="evenodd"/></g>'
            )
        );
    }

    function gemPolys() private pure returns (string memory) {
        return
        '<polygon points="286,49 45,165 286,193" fill="url(#gem)"/><polygon points="314,49 555,165 314,193" fill="url(#gem)"/><polygon points="45,202 256,298 280,565" fill="url(#gem)"/><polygon points="555,202 344,298 320,565" fill="url(#gem)"/>';
    }
}
