// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.17;

import { Strategy } from "contracts/Strategy.sol";
import { TraderV0InitializerParams } from "contracts/trader/trader/ITraderV0.sol";

contract DeployerStrategy {
    function deploy(string calldata symbol, address[] calldata allowedSpenders, address[] calldata allowedTokens, uint256 feePerformance, uint256 feeFixed) public returns (address) {
        address[] memory facets = new address[](31);
        facets[0] = 0x2EDaC6d40008F3E4D88eFd72Bc325286EeB42bF3; // TraderFacet
        facets[1] = 0xaeb2232051cADe83ee2f7A7c2bb81aDd262b878F; // GMX_Swap
        facets[2] = 0x79752ceAa827DF52B730093b8ed25395Cd0916bd; // GMX_PositionRouter
        facets[3] = 0xB4Eb023F4fB37Fa0f4B18E3b2514d8b5dC9BAb28; // GMX_OrderBook
        facets[4] = 0x31E24aB0f3eC6C80CE9a7764F704037DA3143dA2; // GMX_GLP
        facets[5] = 0x9a6F5f8363B0a33a8aCD806d597a73B8E7485133; // Camelot_LP
        facets[6] = 0xd0B8a8803A0E8F3a460538b4dED5963946D02369; // Camelot_NFTPool
        facets[7] = 0xd8afcFb5e939A05af3E7FAeFe52D3f53eE107f2C; // Camelot_NitroPool
        facets[8] = 0x6479D116F1f9904641b47d63dA0BaBAc0FD2404D; // Camelot_Swap
        facets[9] = 0x6e2BA75Ccf5559390BD0E45E79B1160Ad7f121cd; // Camelot_V3LP
        facets[10] = 0x01779021cd688f7755648c46C651BF90bFbA071d; // Camelot_V3Swap
        facets[11] = 0x1777f3fa45537981602E67b277f7c3bE5949B4F8; // Camelot_Storage
        facets[12] = 0x15C22076663f11953ceb9d9631A7df0cD2bC7F75; // Lyra_Storage
        facets[13] = 0xEFE465692a1C3CBB61D990764DfB3B12cA1D41B1; // Lyra_LP
        facets[14] = 0xB1d29441a145527960c81025C2326949D8526C8b; // Lyra_Options
        facets[15] = 0x71b749Ec30B1dD7B12A4716402b102A8196Eef7D; // Lyra_Rewards
        facets[16] = 0x24529D0825d8CCD6f93fBF516258b9281284F920; // Aave_Lending
        facets[17] = 0x4869855B35F69191f0E3A179cF689a675c17D911; // TraderJoe_Swap
        facets[18] = 0x2BF5E2AF85b7C3c4C119c1680a488A9cfb01FD1E; // TraderJoe_Legacy_LP
        facets[19] = 0x349f734Ff449ef379e437D8bfEd89423Dc2Db215; // TraderJoe_LP
        facets[20] = 0x97D8EB5C7cdcED3E80Aa8aE5d6A34Cc62A11C39f; // Inch_Swap
        facets[21] = 0x399A67D9864A6b3184b9d0EbF93a5c35eb30B6e6; // Inch_LimitOrder
        facets[22] = 0x25384D61dfFedA009FdD47411F7fbd251dC1414E; // Rysk_LP
        facets[23] = 0xC384e139C51Ccc0eC65C62c5ADC88947d0260946; // Rysk_Options
        facets[24] = 0xa7d239EaC98220AD5abc65FF9A72a6a42B320cDA; // WETH
        facets[25] = 0x324026080CD6B82B50e6bA703a3093bA468070a7; // Rodeo
        facets[26] = 0x2c963Cb927E0EB8ee3BF8e58C25302eDcE70f407; // GMXV2
        facets[27] = 0x62AB51DAB0Bafc863014fFe15EA3b0f4Fc9D38D9; // Dolomite
        facets[28] = 0xc8071aD5560904B3b721e7E5d29742F523a69111; // D2
        facets[29] = 0xCeCb4265029ab12867e1902B7ea7A08B2e9D89ed; // Pendle
        facets[30] = 0x60e162b0759B41a61cfdA3116D24675e4784EF92; // Silo

        address[] memory assets = new address[](7);
        address[] memory oracles = new address[](7);
        assets[0] = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8; // USDC.e
        oracles[0] = 0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3;
        assets[1] = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831; // USDC
        oracles[1] = 0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3;
        assets[2] = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1; // WETH
        oracles[2] = 0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612;
        assets[3] = 0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f; // WBTC
        oracles[3] = 0xd0C7101eACbB49F3deCcCc166d238410D6D46d57;
        assets[4] = 0x912CE59144191C1204E64559FE8253a0e49E6548; // ARB
        oracles[4] = 0xb2A824043730FE05F3DA2efaFa1CBbe83fa548D6;
        assets[5] = 0xfc5A1A6EB076a2C7aD06eD22C90d7E710E35ad0a; // GMX
        oracles[5] = 0xDB98056FecFff59D032aB628337A4887110df3dB;
        assets[6] = 0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8; // PENDLE
        oracles[6] = 0x66853E19d73c0F9301fe099c324A1E9726953433;

        address s = address(new Strategy(
            facets,
            TraderV0InitializerParams(symbol, allowedTokens, allowedSpenders, feePerformance, feeFixed),
            assets,
            oracles
        ));
        s.call(abi.encodeWithSignature("grantRole(bytes32,address)", msg.sender));
        s.call(abi.encodeWithSignature("renounceRole(bytes32)", bytes32(0)));
        s.call(abi.encodeWithSignature("renounceRole(bytes32)", 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63));
        return s;
    }
}
