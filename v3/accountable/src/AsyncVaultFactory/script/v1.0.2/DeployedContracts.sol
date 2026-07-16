// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library DeployedContracts {
    // Monad Testnet (Chain ID: 10143)
    // Deployed at block: 596739
    address constant MONAD_TESTNET_FEE_MANAGER = 0x28B322a4eF95cdfEcDb87f8011F8E8F3fA168D6b;
    address constant MONAD_TESTNET_ASYNC_VAULT_FACTORY = 0x8f82a072a48DA917e711B6D624A2a156e5F42F4b;
    address constant MONAD_TESTNET_REWARDS_FACTORY = 0xBC97B5bC7E0E00445c8C75A4812CDd7184752588;
    address constant MONAD_TESTNET_GLOBAL_REGISTRY = 0x4DE9B4d7b70d1680cD8E3A2C60717cBbe6014991;
    address constant MONAD_TESTNET_FIXED_TERM_IMPL = 0x39948942F375Aa50E3DF485B16b520491191A3F4;
    address constant MONAD_TESTNET_OPEN_TERM_IMPL = 0x0D2C8F073c354e5B1306be1a31c36158bBfc225b;
    address constant MONAD_TESTNET_FIXED_TERM_FACTORY = 0xB1A9fB0035D02f3b9aD8A0C1C377483e82AC7941;
    address constant MONAD_TESTNET_OPEN_TERM_FACTORY = 0x59B0b84371BB3261FAD538C512eFFFc414CC1725;

    // Monad Mainnet
    address constant MONAD_MAINNET_FEE_MANAGER = 0x4DE9B4d7b70d1680cD8E3A2C60717cBbe6014991;
    address constant MONAD_MAINNET_ASYNC_VAULT_FACTORY = 0xeE004AEF79cb14BF31BFbFB14346E01fB7e5a2e8;
    address constant MONAD_MAINNET_REWARDS_FACTORY = 0x1106a70223e98E2b1807bf3e12698aFe2C5693e6;
    address constant MONAD_MAINNET_GLOBAL_REGISTRY = 0xf786154e56e5c88Ce984800dEa71B48EA4FFAbfE;
    address constant MONAD_MAINNET_FIXED_TERM_IMPL = 0xD0A53e724EA9CB041e30f0243E3c84bdea238Dfa;
    address constant MONAD_MAINNET_OPEN_TERM_IMPL = 0x59B0b84371BB3261FAD538C512eFFFc414CC1725;
    address constant MONAD_MAINNET_FIXED_TERM_FACTORY = 0x8a5Caf00C3EB20aEC11Fc35C153a8601Cd127fEd;
    address constant MONAD_MAINNET_OPEN_TERM_FACTORY = 0x606556A6B544ecDcbf15aF73A63B67516dc16Ad7;

    // Sepolia
    address constant SEPOLIA_FEE_MANAGER = 0xDe276ED44284F12eb92C106a103132F11DB50daF;
    address constant SEPOLIA_ASYNC_VAULT_FACTORY = 0x69B981a46d19c247f6BeF709733E7FEaFaa0228c;
    address constant SEPOLIA_REWARDS_FACTORY = 0xb1E5ef10e9c113aB6F5a10F3Fc289b200378acEd;
    address constant SEPOLIA_GLOBAL_REGISTRY = 0x6F49d9e84b39DA4386aD09A8164c1b8D84741DEE;
    address constant SEPOLIA_FIXED_TERM_IMPL = 0xa88D2775b93f6f35A32e861654F5f9C312dB8CA6;
    address constant SEPOLIA_OPEN_TERM_IMPL = 0xd189bFf657c65A59009887381C03ca1BCa42C199;
    address constant SEPOLIA_FIXED_TERM_FACTORY = 0x4A790d8D3A3f902F4451A9b8b308efa795351924;
    address constant SEPOLIA_OPEN_TERM_FACTORY = 0xbd3cB171202e7C9fD177ddbd076F34b913a5Dddf;

    // Ethereum Mainnet
    address constant ETHEREUM_FEE_MANAGER = 0x0D2C8F073c354e5B1306be1a31c36158bBfc225b;
    address constant ETHEREUM_ASYNC_VAULT_FACTORY = 0xB1A9fB0035D02f3b9aD8A0C1C377483e82AC7941;
    address constant ETHEREUM_REWARDS_FACTORY = 0xa0aE7Ec6F93e55160F3f79840068549e8ca031eF;
    address constant ETHEREUM_GLOBAL_REGISTRY = 0x59B0b84371BB3261FAD538C512eFFFc414CC1725;
    address constant ETHEREUM_FIXED_TERM_IMPL = 0x6c8a37841316f94856af4409e4101c10527Dd6C1;
    address constant ETHEREUM_OPEN_TERM_IMPL = 0xf251a8700B22c8d1ddB2CdeBe82bB53583E115a5;
    address constant ETHEREUM_FIXED_TERM_FACTORY = 0x333a12e2B519DA16EBE75012d54574C16ef4463f;
    address constant ETHEREUM_OPEN_TERM_FACTORY = 0xDAc0e7EffB16B249d1Bb672D25D7827481Be2081;

    // Arbitrum Mainnet
    address constant ARBITRUM_FEE_MANAGER = 0xEb0e36Fc2c1E3Ff80c6697f5d0E6E10Eb3C0b8d7;
    address constant ARBITRUM_ASYNC_VAULT_FACTORY = 0x70Fd9E510aA905f2D2AE717645EB45Da2349F4B6;
    address constant ARBITRUM_REWARDS_FACTORY = 0x06D13e462A78132ED78D4c0906FF81C3cFa41E12;
    address constant ARBITRUM_GLOBAL_REGISTRY = 0xb7A12C5607dA59ae63f7C6E2e227d4b30893b89C;
    address constant ARBITRUM_FIXED_TERM_IMPL = 0xEF93238597ef28A1cb641F57187A037DA075BEfF;
    address constant ARBITRUM_OPEN_TERM_IMPL = 0x62897cc31cc523f911DF72bF3a196C97abf98fB4;
    address constant ARBITRUM_FIXED_TERM_FACTORY = 0x981b020D56F91cf66A874aC9685B57CA1583E110;
    address constant ARBITRUM_OPEN_TERM_FACTORY = 0x2bf017013DF2fbb3F5cd0184881F68346691e107;

    // Bob Mainnet
    address constant BOB_FEE_MANAGER = 0xbe987ae41A8433091AF63491B920112218fADc72;
    address constant BOB_ASYNC_VAULT_FACTORY = 0x65E2644A5F9B63F2e54313aDA986a2B2d13F2e9C;
    address constant BOB_REWARDS_FACTORY = 0x83C63fCa26877512adCFC59a66B31E4A7cEC4a8C;
    address constant BOB_GLOBAL_REGISTRY = 0x6D1F1246E48a25d478ba761A5546B6C6ae6b84B2;
    address constant BOB_FIXED_TERM_IMPL = 0x9CbfEf20267e8B4b73fB5902F0c98e525848517f;
    address constant BOB_OPEN_TERM_IMPL = 0x1cdAE2CA7d6B30e2c61CF3CA5128c998915763dE;
    address constant BOB_FIXED_TERM_FACTORY = 0xeaF7515F3Be8F77124C6D97EEf2aB2EbC5811EE1;
    address constant BOB_OPEN_TERM_FACTORY = 0x041a3b6D8A51F4cB915e014d11224c2f443D4352;

    // Citrea Testnet (Chain ID: 5115)
    // Deployed at block: 20104664
    address constant CITREA_TESTNET_FEE_MANAGER = 0xBC97B5bC7E0E00445c8C75A4812CDd7184752588;
    address constant CITREA_TESTNET_ASYNC_VAULT_FACTORY = 0xe30118eb87169B94E8419872364F53c3Da351ac7;
    address constant CITREA_TESTNET_REWARDS_FACTORY = 0x4DE9B4d7b70d1680cD8E3A2C60717cBbe6014991;
    address constant CITREA_TESTNET_GLOBAL_REGISTRY = 0x1106a70223e98E2b1807bf3e12698aFe2C5693e6;
    address constant CITREA_TESTNET_GLOBAL_REGISTRY_IMPL = 0xeE004AEF79cb14BF31BFbFB14346E01fB7e5a2e8;
    address constant CITREA_TESTNET_FIXED_TERM_IMPL = 0xB1A9fB0035D02f3b9aD8A0C1C377483e82AC7941;
    address constant CITREA_TESTNET_OPEN_TERM_IMPL = 0xa0aE7Ec6F93e55160F3f79840068549e8ca031eF;
    address constant CITREA_TESTNET_FIXED_TERM_FACTORY = 0xD0A53e724EA9CB041e30f0243E3c84bdea238Dfa;
    address constant CITREA_TESTNET_OPEN_TERM_FACTORY = 0xbB49B419eEA95EAe6efA1289Bb211bD73A1222dE;

    // Citrea Mainnet (Chain ID: 4114)
    // Deployed at block: 1893317
    address constant CITREA_MAINNET_FEE_MANAGER = 0x1106a70223e98E2b1807bf3e12698aFe2C5693e6;
    address constant CITREA_MAINNET_ASYNC_VAULT_FACTORY = 0x5E8BF7084cbdfadC313F21777A87efBAd93F650E;
    address constant CITREA_MAINNET_REWARDS_FACTORY = 0xf786154e56e5c88Ce984800dEa71B48EA4FFAbfE;
    address constant CITREA_MAINNET_GLOBAL_REGISTRY = 0x39948942F375Aa50E3DF485B16b520491191A3F4;
    address constant CITREA_MAINNET_GLOBAL_REGISTRY_IMPL = 0x02d652005Cc1eb9C8A7bB55C008cb0dA16F82934;
    address constant CITREA_MAINNET_FIXED_TERM_IMPL = 0x8a5Caf00C3EB20aEC11Fc35C153a8601Cd127fEd;
    address constant CITREA_MAINNET_OPEN_TERM_IMPL = 0xbB49B419eEA95EAe6efA1289Bb211bD73A1222dE;
    address constant CITREA_MAINNET_FIXED_TERM_FACTORY = 0x1D75cE92CDb9De7a8e21576E4a9dD91E6a01C87b;
    address constant CITREA_MAINNET_OPEN_TERM_FACTORY = 0x6c8a37841316f94856af4409e4101c10527Dd6C1;

    function getFixedTermFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FIXED_TERM_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_FIXED_TERM_FACTORY; // Monad Mainnet
        if (chainId == 11155111) return SEPOLIA_FIXED_TERM_FACTORY;
        if (chainId == 1) return ETHEREUM_FIXED_TERM_FACTORY; // Ethereum Mainnet
        if (chainId == 42161) return ARBITRUM_FIXED_TERM_FACTORY;
        if (chainId == 60808) return BOB_FIXED_TERM_FACTORY; // Bob Mainnet
        if (chainId == 5115) return CITREA_TESTNET_FIXED_TERM_FACTORY; // Citrea Testnet
        if (chainId == 4114) return CITREA_MAINNET_FIXED_TERM_FACTORY; // Citrea Mainnet
        revert("Unsupported network");
    }

    function getOpenTermFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_OPEN_TERM_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_OPEN_TERM_FACTORY;
        if (chainId == 11155111) return SEPOLIA_OPEN_TERM_FACTORY;
        if (chainId == 1) return ETHEREUM_OPEN_TERM_FACTORY;
        if (chainId == 42161) return ARBITRUM_OPEN_TERM_FACTORY;
        if (chainId == 60808) return BOB_OPEN_TERM_FACTORY;
        if (chainId == 5115) return CITREA_TESTNET_OPEN_TERM_FACTORY;
        if (chainId == 4114) return CITREA_MAINNET_OPEN_TERM_FACTORY;
        revert("Unsupported network");
    }

    function getFeeManager(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FEE_MANAGER;
        if (chainId == 143) return MONAD_MAINNET_FEE_MANAGER;
        if (chainId == 11155111) return SEPOLIA_FEE_MANAGER;
        if (chainId == 1) return ETHEREUM_FEE_MANAGER;
        if (chainId == 42161) return ARBITRUM_FEE_MANAGER;
        if (chainId == 60808) return BOB_FEE_MANAGER;
        if (chainId == 5115) return CITREA_TESTNET_FEE_MANAGER;
        if (chainId == 4114) return CITREA_MAINNET_FEE_MANAGER;
        revert("Unsupported network");
    }

    function getGlobalRegistry(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_GLOBAL_REGISTRY;
        if (chainId == 143) return MONAD_MAINNET_GLOBAL_REGISTRY;
        if (chainId == 11155111) return SEPOLIA_GLOBAL_REGISTRY;
        if (chainId == 1) return ETHEREUM_GLOBAL_REGISTRY;
        if (chainId == 42161) return ARBITRUM_GLOBAL_REGISTRY;
        if (chainId == 60808) return BOB_GLOBAL_REGISTRY;
        if (chainId == 5115) return CITREA_TESTNET_GLOBAL_REGISTRY;
        if (chainId == 4114) return CITREA_MAINNET_GLOBAL_REGISTRY;
        revert("Unsupported network");
    }

    function getAsyncVaultFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_ASYNC_VAULT_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_ASYNC_VAULT_FACTORY;
        if (chainId == 11155111) return SEPOLIA_ASYNC_VAULT_FACTORY;
        if (chainId == 1) return ETHEREUM_ASYNC_VAULT_FACTORY;
        if (chainId == 42161) return ARBITRUM_ASYNC_VAULT_FACTORY;
        if (chainId == 60808) return BOB_ASYNC_VAULT_FACTORY;
        if (chainId == 5115) return CITREA_TESTNET_ASYNC_VAULT_FACTORY;
        if (chainId == 4114) return CITREA_MAINNET_ASYNC_VAULT_FACTORY;
        revert("Unsupported network");
    }

    function getRewardsFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_REWARDS_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_REWARDS_FACTORY;
        if (chainId == 11155111) return SEPOLIA_REWARDS_FACTORY;
        if (chainId == 1) return ETHEREUM_REWARDS_FACTORY;
        if (chainId == 42161) return ARBITRUM_REWARDS_FACTORY;
        if (chainId == 60808) return BOB_REWARDS_FACTORY;
        if (chainId == 5115) return CITREA_TESTNET_REWARDS_FACTORY;
        if (chainId == 4114) return CITREA_MAINNET_REWARDS_FACTORY;
        revert("Unsupported network");
    }

    function getFixedTermImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FIXED_TERM_IMPL;
        if (chainId == 143) return MONAD_MAINNET_FIXED_TERM_IMPL;
        if (chainId == 11155111) return SEPOLIA_FIXED_TERM_IMPL;
        if (chainId == 1) return ETHEREUM_FIXED_TERM_IMPL;
        if (chainId == 42161) return ARBITRUM_FIXED_TERM_IMPL;
        if (chainId == 60808) return BOB_FIXED_TERM_IMPL;
        if (chainId == 5115) return CITREA_TESTNET_FIXED_TERM_IMPL;
        if (chainId == 4114) return CITREA_MAINNET_FIXED_TERM_IMPL;
        revert("Unsupported network");
    }

    function getOpenTermImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_OPEN_TERM_IMPL;
        if (chainId == 143) return MONAD_MAINNET_OPEN_TERM_IMPL;
        if (chainId == 11155111) return SEPOLIA_OPEN_TERM_IMPL;
        if (chainId == 1) return ETHEREUM_OPEN_TERM_IMPL;
        if (chainId == 42161) return ARBITRUM_OPEN_TERM_IMPL;
        if (chainId == 60808) return BOB_OPEN_TERM_IMPL;
        if (chainId == 5115) return CITREA_TESTNET_OPEN_TERM_IMPL;
        if (chainId == 4114) return CITREA_MAINNET_OPEN_TERM_IMPL;
        revert("Unsupported network");
    }
}
