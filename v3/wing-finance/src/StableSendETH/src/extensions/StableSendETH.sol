// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {StableSend} from "../StableSend.sol";

/// @notice StableSend for ETH Mainnet with preset price feeds for common tokens
contract StableSendETH is StableSend {
    constructor() {
        // COMP
        priceFeeds[0xc00e94Cb662C3520282E6f5717214004A7f26888] = 0xdbd020CAeF83eFd542f4De03e3cF0C28A4428bd5;
        // UNI
        priceFeeds[0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984] = 0x553303d460EE0afB37EdFf9bE42922D8FF63220e;
        // WETH
        priceFeeds[0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2] = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419;
        // USDC
        priceFeeds[0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48] = 0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6;
        // AAVE
        priceFeeds[0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9] = 0x547a514d5e3769680Ce22B2361c10Ea13619e8a9;
        // DAI
        priceFeeds[0x6B175474E89094C44Da98b954EedeAC495271d0F] = 0xAed0c38402a5d19df6E4c03F4E2DceD6e29c1ee9;
        // LIDO
        priceFeeds[0x5A98FcBEA516Cf06857215779Fd812CA3beF1B32] = 0x4e844125952D32AcdF339BE976c98E22F6F318dB;
    }
}
