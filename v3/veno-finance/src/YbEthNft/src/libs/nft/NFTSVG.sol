// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {DecimalString} from "../DecimalString.sol";

library NFTSVG {
    using Strings for uint256;

    struct SVGParams {
        uint256 tokenId;
        string owner;
        string unlockEndTime;
        uint256 batchNo;
        uint256 liquidTokenAmount;
        uint8 liquidTokenDecimal;
        uint256 tokenAmount;
        string exchangeRate;
        string liquidTokenSymbol;
        string tokenSymbol;
    }

    /**
     * This method is made `public` intentionally to prevent the inclusion of this library's code in caller contracts.
     * The library needs to be deployed and linked to the caller contract when using Hardhat.
     * Due to the large code size of this library, including it directly in the caller contract
     * would likely exceed the contract size limit.
     *
     * When deploying with Foundry, it will automatically deploy and link the library.
     */
    function generateSVGImage(SVGParams memory params) public pure returns (string memory) {
        return string(
            abi.encodePacked(
                generateSVGHeader(),
                generateSVGDefs(),
                generateTokenAmountText(params),
                generateUnlockEndTime(params),
                generateBatchNo(params),
                generateExchangeRateText(params),
                generateliquidTokenAmount(params),
                generateNFTOwnerInfo(params),
                "</svg>"
            )
        );
    }

    function generateSVGHeader() internal pure returns (string memory svgHeader) {
        svgHeader = string(
            abi.encodePacked(
                '<svg width="160" height="271" viewBox="0 0 160 271" fill="none" xmlns="http://www.w3.org/2000/svg"><g clip-path="url(#clip0_2248_1826)">',
                '<path d="M160.156 0.573975H0.156006V270.394H160.156V0.573975Z" fill="url(#paint0_linear_2248_1826)"/><path d="M93.0162 63.0441L59.0662 91.0241L74.7662 150.304L109.716 104.284L93.0162 63.0441Z" fill="url(#paint1_linear_2248_1826)"/><path d="M92.7959 61.834L58.8459 89.814L74.5459 149.094L109.496 103.074L92.7959 61.834Z" fill="url(#paint2_linear_2248_1826)"/><path d="M42.8461 68.884L13.2761 122.254" stroke="url(#paint3_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M59.0661 89.0741L11.6161 123.414" stroke="url(#paint4_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M44.8459 70.8341L57.906 88.6941" stroke="url(#paint5_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.8462 60.8839L44.8462 68.8839L13.3462 64.3839" stroke="url(#paint6_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M81.876 -3.16602L123.356 50.694" stroke="url(#paint7_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M152.466 -3.16602L121.606 52.244" stroke="url(#paint8_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M163.086 17.6541L120.116 52.244" stroke="url(#paint9_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 48.964L91.4961 60.094" stroke="url(#paint10_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.0162 61.094L59.0662 89.074" stroke="url(#paint11_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M13.2761 124.204L74.7661 150.304" stroke="url(#paint12_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 49.964L109.716 102.334" stroke="url(#paint13_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.0161 63.0441L109.716 104.284" stroke="url(#paint14_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/>',
                '<path d="M59.0662 89.0741L109.716 102.334" stroke="url(#paint15_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M74.7662 152.074L59.0662 91.0239" stroke="url(#paint16_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M110.606 102.044L74.766 150.304" stroke="url(#paint17_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 49.964L163.086 97.654" stroke="url(#paint18_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M109.716 102.334L163.086 109.974" stroke="url(#paint19_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M108.846 100.834L115.846 176.834" stroke="url(#paint20_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M164.096 124.364L115.796 177.904" stroke="url(#paint21_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M73.166 149.834L115.796 178.434" stroke="url(#paint22_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M76.156 150.304L3.80603 174.194" stroke="url(#paint23_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M76.166 148.944L39.416 193.214" stroke="url(#paint24_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.904L169.666 175.744" stroke="url(#paint25_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.904L160.156 257.584" stroke="url(#paint26_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.434L59.0662 212.054" stroke="url(#paint27_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M0.156006 270.394L59.066 212.524" stroke="url(#paint28_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M104.186 270.484L59.0662 212.524" stroke="url(#paint29_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M39.416 192.744L61.276 212.054" stroke="url(#paint30_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M39.4161 192.744L-5.52393 225.704" stroke="url(#paint31_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/>',
                '<path d="M74.7661 149.834L60.2761 212.054" stroke="url(#paint32_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M108.616 106.904C110.632 106.904 112.266 105.27 112.266 103.254C112.266 101.238 110.632 99.604 108.616 99.604C106.6 99.604 104.966 101.238 104.966 103.254C104.966 105.27 106.6 106.904 108.616 106.904Z" fill="url(#paint33_linear_2248_1826)"/><path d="M74.7661 153.954C76.7819 153.954 78.4161 152.32 78.4161 150.304C78.4161 148.288 76.7819 146.654 74.7661 146.654C72.7503 146.654 71.1161 148.288 71.1161 150.304C71.1161 152.32 72.7503 153.954 74.7661 153.954Z" fill="url(#paint34_linear_2248_1826)"/><path d="M122.496 54.134C124.512 54.134 126.146 52.4998 126.146 50.484C126.146 48.4681 124.512 46.834 122.496 46.834C120.48 46.834 118.846 48.4681 118.846 50.484C118.846 52.4998 120.48 54.134 122.496 54.134Z" fill="url(#paint35_linear_2248_1826)"/><path d="M93.016 66.694C95.0318 66.694 96.666 65.0599 96.666 63.044C96.666 61.0282 95.0318 59.394 93.016 59.394C91.0001 59.394 89.366 61.0282 89.366 63.044C89.366 65.0599 91.0001 66.694 93.016 66.694Z" fill="url(#paint36_linear_2248_1826)"/><path d="M43.4961 73.1341C45.5119 73.1341 47.1461 71.4999 47.1461 69.4841C47.1461 67.4683 45.5119 65.8341 43.4961 65.8341C41.4802 65.8341 39.8461 67.4683 39.8461 69.4841C39.8461 71.4999 41.4802 73.1341 43.4961 73.1341Z" fill="url(#paint37_linear_2248_1826)"/><path d="M59.066 94.674C61.0819 94.674 62.716 93.0399 62.716 91.024C62.716 89.0082 61.0819 87.374 59.066 87.374C57.0502 87.374 55.416 89.0082 55.416 91.024C55.416 93.0399 57.0502 94.674 59.066 94.674Z" fill="url(#paint38_linear_2248_1826)"/><path d="M115.796 182.554C117.812 182.554 119.446 180.92 119.446 178.904C119.446 176.888 117.812 175.254 115.796 175.254C113.78 175.254 112.146 176.888 112.146 178.904C112.146 180.92 113.78 182.554 115.796 182.554Z" fill="url(#paint39_linear_2248_1826)"/><path d="M139.539 199.549H13.0124C12.9848 199.549 13.0124 199.527 13.0124 199.5V183.368C13.0124 183.34 12.9848 183.319 13.0124 183.319H139.539C144.107 183.319 147.815 186.954 147.815 191.434C147.815 195.913 144.107 199.549 139.539 199.549Z" fill="white"/><path d="M139.528 239.578H13.0124C12.9848 239.578 13.0124 239.556 13.0124 239.529V223.402C13.0124 223.375 12.9848 223.353 13.0124 223.353H139.528C144.096 223.353 147.804 226.989 147.804 231.468C147.804 235.948 144.096 239.583 139.528 239.583V239.578Z" fill="white"/><path d="M139.539 259.594H13.0124C12.9848 259.594 13.0124 259.573 13.0124 259.546V243.418C13.0124 243.391 12.9848 243.37 13.0124 243.37H139.539C144.107 243.37 147.815 247.005 147.815 251.485C147.815 255.964 144.107 259.6 139.539 259.6V259.594Z" fill="white"/><path d="M13.0124 199.5C13.0124 199.527 12.9848 199.549 13.0124 199.549H139.539C144.107 199.549 147.815 195.913 147.815 191.434C147.815 186.954 144.107 183.319 139.539 183.319H13.0124C12.9848 183.319 13.0124 183.34 13.0124 183.368" stroke="url(#paint40_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M139.528 219.561H13.0124C12.9848 219.561 13.0124 219.539 13.0124 219.512V203.385C13.0124 203.358 12.9848 203.336 13.0124 203.336H139.528C144.096 203.336 147.804 206.971 147.804 211.451C147.804 215.93 144.096 219.566 139.528 219.566V219.561Z" fill="white"/><path d="M13.0124 219.512C13.0124 219.539 12.9848 219.561 13.0124 219.561H139.528V219.566C144.096 219.566 147.804 215.93 147.804 211.451C147.804 206.971 144.096 203.336 139.528 203.336H13.0124C12.9848 203.336 13.0124 203.358 13.0124 203.385" stroke="url(#paint41_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M13.0124 239.529C13.0124 239.556 12.9848 239.578 13.0124 239.578H139.528V239.583C144.096 239.583 147.804 235.948 147.804 231.468C147.804 226.989 144.096 223.353 139.528 223.353H13.0124C12.9848 223.353 13.0124 223.375 13.0124 223.402" stroke="url(#paint42_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M13.0124 259.546C13.0124 259.573 12.9848 259.594 13.0124 259.594H139.539V259.6C144.107 259.6 147.815 255.964 147.815 251.485C147.815 247.005 144.107 243.37 139.539 243.37H13.0124C12.9848 243.37 13.0124 243.391 13.0124 243.418" stroke="url(#paint43_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path fill-rule="evenodd" clip-rule="evenodd" d="M17 1.1056V269.421H152.02C155.989 269.421 159.206 266.204 159.206 262.235V8.29199C159.206 4.32306 155.989 1.1056 152.02 1.1056H17ZM4.58956e-06 262.243V271H17V270.527H152.02C156.599 270.527 160.312 266.814 160.312 262.235V8.29199C160.312 3.71245 156.599 0 152.02 0H17H8.29199H4.58956e-06V8.28317C1.5301e-06 8.28611 0 8.28905 0 8.29199V262.235C0 262.238 1.5301e-06 262.241 4.58956e-06 262.243Z" fill="url(#paint44_linear_2248_1826)"/>',
                "</g>"
            )
        );
    }

    function generateSVGDefs() internal pure returns (string memory svgDefs) {
        svgDefs = string(
            abi.encodePacked(
                '<svg width="160" height="271" viewBox="0 0 160 271" fill="none" xmlns="http://www.w3.org/2000/svg"><g clip-path="url(#clip0_2248_1826)">',
                '<path d="M160.156 0.573975H0.156006V270.394H160.156V0.573975Z" fill="url(#paint0_linear_2248_1826)"/><path d="M93.0162 63.0441L59.0662 91.0241L74.7662 150.304L109.716 104.284L93.0162 63.0441Z" fill="url(#paint1_linear_2248_1826)"/><path d="M92.7959 61.834L58.8459 89.814L74.5459 149.094L109.496 103.074L92.7959 61.834Z" fill="url(#paint2_linear_2248_1826)"/><path d="M42.8461 68.884L13.2761 122.254" stroke="url(#paint3_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M59.0661 89.0741L11.6161 123.414" stroke="url(#paint4_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M44.8459 70.8341L57.906 88.6941" stroke="url(#paint5_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.8462 60.8839L44.8462 68.8839L13.3462 64.3839" stroke="url(#paint6_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M81.876 -3.16602L123.356 50.694" stroke="url(#paint7_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M152.466 -3.16602L121.606 52.244" stroke="url(#paint8_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M163.086 17.6541L120.116 52.244" stroke="url(#paint9_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 48.964L91.4961 60.094" stroke="url(#paint10_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.0162 61.094L59.0662 89.074" stroke="url(#paint11_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M13.2761 124.204L74.7661 150.304" stroke="url(#paint12_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 49.964L109.716 102.334" stroke="url(#paint13_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M93.0161 63.0441L109.716 104.284" stroke="url(#paint14_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/>',
                '<path d="M59.0662 89.0741L109.716 102.334" stroke="url(#paint15_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M74.7662 152.074L59.0662 91.0239" stroke="url(#paint16_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M110.606 102.044L74.766 150.304" stroke="url(#paint17_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M122.886 49.964L163.086 97.654" stroke="url(#paint18_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M109.716 102.334L163.086 109.974" stroke="url(#paint19_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M108.846 100.834L115.846 176.834" stroke="url(#paint20_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M164.096 124.364L115.796 177.904" stroke="url(#paint21_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M73.166 149.834L115.796 178.434" stroke="url(#paint22_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M76.156 150.304L3.80603 174.194" stroke="url(#paint23_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M76.166 148.944L39.416 193.214" stroke="url(#paint24_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.904L169.666 175.744" stroke="url(#paint25_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.904L160.156 257.584" stroke="url(#paint26_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M115.796 178.434L59.0662 212.054" stroke="url(#paint27_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M0.156006 270.394L59.066 212.524" stroke="url(#paint28_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M104.186 270.484L59.0662 212.524" stroke="url(#paint29_linear_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M39.416 192.744L61.276 212.054" stroke="url(#paint30_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M39.4161 192.744L-5.52393 225.704" stroke="url(#paint31_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/>',
                '<path d="M74.7661 149.834L60.2761 212.054" stroke="url(#paint32_radial_2248_1826)" stroke-width="0.5" stroke-miterlimit="10"/><path d="M108.616 106.904C110.632 106.904 112.266 105.27 112.266 103.254C112.266 101.238 110.632 99.604 108.616 99.604C106.6 99.604 104.966 101.238 104.966 103.254C104.966 105.27 106.6 106.904 108.616 106.904Z" fill="url(#paint33_linear_2248_1826)"/><path d="M74.7661 153.954C76.7819 153.954 78.4161 152.32 78.4161 150.304C78.4161 148.288 76.7819 146.654 74.7661 146.654C72.7503 146.654 71.1161 148.288 71.1161 150.304C71.1161 152.32 72.7503 153.954 74.7661 153.954Z" fill="url(#paint34_linear_2248_1826)"/><path d="M122.496 54.134C124.512 54.134 126.146 52.4998 126.146 50.484C126.146 48.4681 124.512 46.834 122.496 46.834C120.48 46.834 118.846 48.4681 118.846 50.484C118.846 52.4998 120.48 54.134 122.496 54.134Z" fill="url(#paint35_linear_2248_1826)"/><path d="M93.016 66.694C95.0318 66.694 96.666 65.0599 96.666 63.044C96.666 61.0282 95.0318 59.394 93.016 59.394C91.0001 59.394 89.366 61.0282 89.366 63.044C89.366 65.0599 91.0001 66.694 93.016 66.694Z" fill="url(#paint36_linear_2248_1826)"/><path d="M43.4961 73.1341C45.5119 73.1341 47.1461 71.4999 47.1461 69.4841C47.1461 67.4683 45.5119 65.8341 43.4961 65.8341C41.4802 65.8341 39.8461 67.4683 39.8461 69.4841C39.8461 71.4999 41.4802 73.1341 43.4961 73.1341Z" fill="url(#paint37_linear_2248_1826)"/><path d="M59.066 94.674C61.0819 94.674 62.716 93.0399 62.716 91.024C62.716 89.0082 61.0819 87.374 59.066 87.374C57.0502 87.374 55.416 89.0082 55.416 91.024C55.416 93.0399 57.0502 94.674 59.066 94.674Z" fill="url(#paint38_linear_2248_1826)"/><path d="M115.796 182.554C117.812 182.554 119.446 180.92 119.446 178.904C119.446 176.888 117.812 175.254 115.796 175.254C113.78 175.254 112.146 176.888 112.146 178.904C112.146 180.92 113.78 182.554 115.796 182.554Z" fill="url(#paint39_linear_2248_1826)"/><path d="M139.539 199.549H13.0124C12.9848 199.549 13.0124 199.527 13.0124 199.5V183.368C13.0124 183.34 12.9848 183.319 13.0124 183.319H139.539C144.107 183.319 147.815 186.954 147.815 191.434C147.815 195.913 144.107 199.549 139.539 199.549Z" fill="white"/><path d="M139.528 239.578H13.0124C12.9848 239.578 13.0124 239.556 13.0124 239.529V223.402C13.0124 223.375 12.9848 223.353 13.0124 223.353H139.528C144.096 223.353 147.804 226.989 147.804 231.468C147.804 235.948 144.096 239.583 139.528 239.583V239.578Z" fill="white"/><path d="M139.539 259.594H13.0124C12.9848 259.594 13.0124 259.573 13.0124 259.546V243.418C13.0124 243.391 12.9848 243.37 13.0124 243.37H139.539C144.107 243.37 147.815 247.005 147.815 251.485C147.815 255.964 144.107 259.6 139.539 259.6V259.594Z" fill="white"/><path d="M13.0124 199.5C13.0124 199.527 12.9848 199.549 13.0124 199.549H139.539C144.107 199.549 147.815 195.913 147.815 191.434C147.815 186.954 144.107 183.319 139.539 183.319H13.0124C12.9848 183.319 13.0124 183.34 13.0124 183.368" stroke="url(#paint40_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M139.528 219.561H13.0124C12.9848 219.561 13.0124 219.539 13.0124 219.512V203.385C13.0124 203.358 12.9848 203.336 13.0124 203.336H139.528C144.096 203.336 147.804 206.971 147.804 211.451C147.804 215.93 144.096 219.566 139.528 219.566V219.561Z" fill="white"/><path d="M13.0124 219.512C13.0124 219.539 12.9848 219.561 13.0124 219.561H139.528V219.566C144.096 219.566 147.804 215.93 147.804 211.451C147.804 206.971 144.096 203.336 139.528 203.336H13.0124C12.9848 203.336 13.0124 203.358 13.0124 203.385" stroke="url(#paint41_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M13.0124 239.529C13.0124 239.556 12.9848 239.578 13.0124 239.578H139.528V239.583C144.096 239.583 147.804 235.948 147.804 231.468C147.804 226.989 144.096 223.353 139.528 223.353H13.0124C12.9848 223.353 13.0124 223.375 13.0124 223.402" stroke="url(#paint42_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path d="M13.0124 259.546C13.0124 259.573 12.9848 259.594 13.0124 259.594H139.539V259.6C144.107 259.6 147.815 255.964 147.815 251.485C147.815 247.005 144.107 243.37 139.539 243.37H13.0124C12.9848 243.37 13.0124 243.391 13.0124 243.418" stroke="url(#paint43_linear_2248_1826)" stroke-width="1.50292" stroke-linecap="square"/><path fill-rule="evenodd" clip-rule="evenodd" d="M17 1.1056V269.421H152.02C155.989 269.421 159.206 266.204 159.206 262.235V8.29199C159.206 4.32306 155.989 1.1056 152.02 1.1056H17ZM4.58956e-06 262.243V271H17V270.527H152.02C156.599 270.527 160.312 266.814 160.312 262.235V8.29199C160.312 3.71245 156.599 0 152.02 0H17H8.29199H4.58956e-06V8.28317C1.5301e-06 8.28611 0 8.28905 0 8.29199V262.235C0 262.238 1.5301e-06 262.241 4.58956e-06 262.243Z" fill="url(#paint44_linear_2248_1826)"/>',
                "</g>"
            )
        );
    }

    function generateTokenAmountText(SVGParams memory params) internal pure returns (string memory svg) {
        string memory fontSize = "12";
        uint256 tokenAmountRounded = params.tokenAmount;

        // round down tokenAmount to the nearest 2 decimal place
        if (params.tokenAmount > 1e16) {
            tokenAmountRounded = params.tokenAmount - (params.tokenAmount % 1e16);
        }

        DecimalString.Result memory decimalString =
            DecimalString.decimalString(tokenAmountRounded, params.liquidTokenDecimal, false);

        if (decimalString.length < 8) {
            fontSize = "19.9008";
        } else if (decimalString.length < 12) {
            fontSize = "15";
        }

        svg = string(
            abi.encodePacked(
                '<text fill="white" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="',
                fontSize,
                '" font-weight="bold" letter-spacing="0em"><tspan x="24.8761" y="28.0227">',
                params.tokenSymbol,
                " </tspan></text>",
                '<text fill="white" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="',
                fontSize,
                '" font-weight="bold" letter-spacing="0em"><tspan x="24.8761" y="51.0227">',
                decimalString.result,
                "</tspan></text>"
            )
        );
    }

    function generateliquidTokenAmount(SVGParams memory params) internal pure returns (string memory svg) {
        uint256 liquidTokenAmountRounded = params.liquidTokenAmount;

        // round down tokenAmount to the nearest 2 decimal place
        if (params.liquidTokenAmount > 1e16) {
            liquidTokenAmountRounded = params.liquidTokenAmount - (params.liquidTokenAmount % 1e16);
        }

        DecimalString.Result memory decimalString =
            DecimalString.decimalString(liquidTokenAmountRounded, params.liquidTokenDecimal, false);

        svg = string(
            abi.encodePacked(
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" font-weight="bold" letter-spacing="0em"><tspan x="26.0507" y="253.486">LETH amount:</tspan></text>',
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" letter-spacing="0em"><tspan x="74.0565" y="253.486">',
                decimalString.result,
                "</tspan></text>"
            )
        );
    }

    function generateExchangeRateText(SVGParams memory params) internal pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" font-weight="bold" letter-spacing="0em"><tspan x="26.0507" y="233.447">Exchange rate:</tspan></text>',
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" letter-spacing="0em"><tspan x="76.0565" y="233.447">',
                params.exchangeRate,
                " ",
                params.tokenSymbol,
                "</tspan></text>"
            )
        );
    }

    function generateNFTOwnerInfo(SVGParams memory params) internal pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                '<text transform="matrix(0 1 -1 0 12.7783 14.0253)" fill="white" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" font-weight="bold" letter-spacing="0em"><tspan x="0" y="5.75781">',
                params.owner,
                " ",
                params.liquidTokenSymbol,
                "</tspan></text>"
            )
        );
    }

    function generateUnlockEndTime(NFTSVG.SVGParams memory params) internal pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" font-weight="bold" letter-spacing="0em"><tspan x="26.0507" y="213.408">Est. unlock date:</tspan></text>',
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" letter-spacing="0em"><tspan x="82.0565" y="213.408">',
                params.unlockEndTime,
                "</tspan></text>"
            )
        );
    }

    function generateBatchNo(NFTSVG.SVGParams memory params) internal pure returns (string memory svg) {
        svg = string(
            abi.encodePacked(
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" font-weight="bold" letter-spacing="0em"><tspan x="26.0507" y="193.369">Batch:</tspan></text>',
                '<text fill="black" xml:space="preserve" style="white-space: pre" font-family="Arial" font-size="6.51267" letter-spacing="0em"><tspan x="50.0565" y="193.369">',
                params.batchNo.toString(),
                "</tspan></text>"
            )
        );
    }
}
