// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        uint64 chainSelector;
        address router;
        address rmnProxy;
        address tokenAdminRegistry;
        address registryModuleOwnerCustom;
        address link;
        uint256 confirmations;
        string nativeCurrencySymbol;
    }

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getEthereumSepoliaConfig();
        } else if (block.chainid == 1) {
            activeNetworkConfig = getEthereumMainnetConfig();
        } else if (block.chainid == 421614) {
            activeNetworkConfig = getArbitrumSepolia();
        } else if (block.chainid == 43113) {
            activeNetworkConfig = getAvalancheFujiConfig();
        } else if (block.chainid == 84532) {
            activeNetworkConfig = getBaseSepoliaConfig();
        } else if (block.chainid == 8453) {
            activeNetworkConfig = getBaseMainnetConfig();
        } else if (block.chainid == 80002) {
            activeNetworkConfig = getPolygonAmoyConfig();
        } else if (block.chainid == 763373) {
            activeNetworkConfig = getInkSepoliaConfig();
        } else if (block.chainid == 57073) {
            activeNetworkConfig = getInkMainnetConfig();
        } else if (block.chainid == 31337) {
            activeNetworkConfig = getAnvilConfig();
        } else {
            revert("Unsupported network");
        }
    }

    function getEthereumSepoliaConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 16015286601757825753,
            router: 0x0BF3dE8c5D3e8A2B34D2BEeB17ABfCeBaf363A59,
            rmnProxy: 0xba3f6251de62dED61Ff98590cB2fDf6871FbB991,
            tokenAdminRegistry: 0x95F29FEE11c5C55d26cCcf1DB6772DE953B37B82,
            registryModuleOwnerCustom: 0x62e731218d0D47305aba2BE3751E7EE9E5520790,
            link: 0x779877A7B0D9E8603169DdbD7836e478b4624789,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getArbitrumSepolia() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 3478487238524512106,
            router: 0x2a9C5afB0d0e4BAb2BCdaE109EC4b0c4Be15a165,
            rmnProxy: 0x9527E2d01A3064ef6b50c1Da1C0cC523803BCFF2,
            tokenAdminRegistry: 0x8126bE56454B628a88C17849B9ED99dd5a11Bd2f,
            registryModuleOwnerCustom: 0xE625f0b8b0Ac86946035a7729Aba124c8A64cf69,
            link: 0xb1D4538B4571d411F07960EF2838Ce337FE1E80E,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getAvalancheFujiConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 14767482510784806043,
            router: 0xF694E193200268f9a4868e4Aa017A0118C9a8177,
            rmnProxy: 0xAc8CFc3762a979628334a0E4C1026244498E821b,
            tokenAdminRegistry: 0xA92053a4a3922084d992fD2835bdBa4caC6877e6,
            registryModuleOwnerCustom: 0x97300785aF1edE1343DB6d90706A35CF14aA3d81,
            link: 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846,
            confirmations: 2,
            nativeCurrencySymbol: "AVAX"
        });
    }

    function getBaseSepoliaConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 10344971235874465080,
            router: 0xD3b06cEbF099CE7DA4AcCf578aaebFDBd6e88a93,
            rmnProxy: 0x99360767a4705f68CcCb9533195B761648d6d807,
            tokenAdminRegistry: 0x736D0bBb318c1B27Ff686cd19804094E66250e17,
            registryModuleOwnerCustom: 0x8A55C61227f26a3e2f217842eCF20b52007bAaBe,
            link: 0xE4aB69C077896252FAFBD49EFD26B5D171A32410,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getPolygonAmoyConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 16281711391670634445,
            router: 0x9C32fCB86BF0f4a1A8921a9Fe46de3198bb884B2,
            rmnProxy: 0x7c1e545A40750Ee8761282382D51E017BAC68CBB,
            tokenAdminRegistry: 0x1e73f6842d7afDD78957ac143d1f315404Dd9e5B,
            registryModuleOwnerCustom: 0x84ad5890A63957C960e0F19b0448A038a574936B,
            link: 0x0Fd9e8d3aF1aaee056EB9e802c3A762a667b1904,
            confirmations: 2,
            nativeCurrencySymbol: "POL"
        });
    }

    function getEthereumMainnetConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 5009297550715157269,
            router: 0x80226fc0Ee2b096224EeAc085Bb9a8cba1146f7D,
            rmnProxy: 0x411dE17f12D1A34ecC7F45f49844626267c75e81,
            tokenAdminRegistry: 0xb22764f98dD05c789929716D677382Df22C05Cb6,
            registryModuleOwnerCustom: 0x4855174E9479E211337832E109E7721d43A4CA64,
            link: 0x514910771AF9Ca656af840dff83E8264EcF986CA,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getBaseMainnetConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 15971525489660198786,
            router: 0x881e3A65B4d4a04dD529061dd0071cf975F58bCD,
            rmnProxy: 0xC842c69d54F83170C42C4d556B4F6B2ca53Dd3E8,
            tokenAdminRegistry: 0x6f6C373d09C07425BaAE72317863d7F6bb731e37,
            registryModuleOwnerCustom: 0xAFEd606Bd2CAb6983fC6F10167c98aaC2173D77f,
            link: 0x88Fb150BDc53A65fe94Dea0c9BA0a6dAf8C6e196,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getInkSepoliaConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 9763904284804119144,
            router: 0x17fCda531D8E43B4e2a2A2492FBcd4507a1685A1,
            rmnProxy: 0x84017cfddD12D319E5bBf090e0de6d55B78160Cb,
            tokenAdminRegistry: 0x3A849a05a590FeaEf26c2d425241A2BF29307161,
            registryModuleOwnerCustom: 0xaB018890bBdDf9B80E21d1c335c5f6acdbE0f5D6,
            link: 0x3423C922911956b1Ccbc2b5d4f38216a6f4299b4,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getInkMainnetConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 3461204551265785888,
            router: 0xca7c90A52B44E301AC01Cb5EB99b2fD99339433A,
            rmnProxy: 0x3A293fa336E118900AD0f2EcfeC0DAa6A4DeDaA1,
            tokenAdminRegistry: 0xEb062d21c713A3d940BB0FaECFdC387d6Ea23697,
            registryModuleOwnerCustom: 0x04c5046A1f4E3fFf094c26dFCAA75eF293932f18,
            link: 0x71052BAe71C25C78E37fD12E5ff1101A71d9018F,
            confirmations: 2,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getAnvilConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            chainSelector: 16015286601757825753,
            router: 0x1111111111111111111111111111111111111111,
            rmnProxy: 0x2222222222222222222222222222222222222222,
            tokenAdminRegistry: 0x3333333333333333333333333333333333333333,
            registryModuleOwnerCustom: 0x4444444444444444444444444444444444444444,
            link: 0x5555555555555555555555555555555555555555,
            confirmations: 1,
            nativeCurrencySymbol: "ETH"
        });
    }

    function getNetworkConfig(uint256 chainId) public pure returns (NetworkConfig memory) {
        if (chainId == 11155111) {
            return getEthereumSepoliaConfig();
        } else if (chainId == 1) {
            return getEthereumMainnetConfig();
        } else if (chainId == 421614) {
            return getArbitrumSepolia();
        } else if (chainId == 43113) {
            return getAvalancheFujiConfig();
        } else if (chainId == 84532) {
            return getBaseSepoliaConfig();
        } else if (chainId == 8453) {
            return getBaseMainnetConfig();
        } else if (chainId == 80002) {
            return getPolygonAmoyConfig();
        } else if (chainId == 763373) {
            return getInkSepoliaConfig();
        } else if (chainId == 57073) {
            return getInkMainnetConfig();
        } else if (chainId == 31337) {
            return getAnvilConfig();
        } else {
            revert("Unsupported chain ID");
        }
    }
}
