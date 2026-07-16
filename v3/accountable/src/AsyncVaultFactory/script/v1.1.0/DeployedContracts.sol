// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library DeployedContracts {
    // Monad Testnet (Chain ID: 10143)

    /// Protocol contracts (UUPS Proxies)
    address constant MONAD_TESTNET_FEE_MANAGER = 0x5EEC8421384382E8AB15aEa8388F67648775A770;
    address constant MONAD_TESTNET_GLOBAL_REGISTRY = 0x1b007f09A77F5f09F21f1dfB29af4A4A805dC0d4;
    /// Implementation contracts
    address constant MONAD_TESTNET_FIXED_TERM_IMPL = 0x571FD629b76d23d59059BCCA40BdCAcf02F55cfD;
    address constant MONAD_TESTNET_OPEN_TERM_IMPL = 0x5483f61f31739e6bc7c0296FABe2c9b15B5B6c02;
    address constant MONAD_TESTNET_YIELD_STRATEGY_IMPL = 0x6a616DB322B5A9F582E8bD3dD950EACc2Af25006;
    address constant MONAD_TESTNET_DVN_PUBLISHER_IMPL = 0x52d9a5d9ee50Cc3Fc237927235Bf0bF4Ed667094;
    /// Strategy Factories
    address constant MONAD_TESTNET_ASYNC_VAULT_FACTORY = 0x4e57f79075Bc3d5c585459fc5DAAA88dB89ac7BD;
    address constant MONAD_TESTNET_REWARDS_FACTORY = 0x623930a4668d3893ADfe52636EEA78850E506f4C;
    address constant MONAD_TESTNET_FIXED_TERM_FACTORY = 0x3F9205e35A8AA24EC2834AC8AC607D03767F7fF0;
    address constant MONAD_TESTNET_OPEN_TERM_FACTORY = 0x474bc53727F012524ADF1a916dfCBB57a60ebff7;
    address constant MONAD_TESTNET_YIELD_STRATEGY_FACTORY = 0xf6e12165348d4067F673a80b4ddE1f5b3874a2BE;
    address constant MONAD_TESTNET_DVN_PUBLISHER_FACTORY = 0x2BbEF7AA782c68b203c95330Eabc6156086B020F;
    /// Standalone contract
    address constant MONAD_TESTNET_ATOMIC_BATCHER = 0xE62CBe2CE758F3063221b414d78AccC647077F7a;

    // Monad Mainnet (Chain ID: 143)

    /// Protocol contracts (UUPS Proxies)
    address constant MONAD_MAINNET_FEE_MANAGER = 0x0E503d4B0d463855E819D7201f6BD2604d423C4C;
    address constant MONAD_MAINNET_GLOBAL_REGISTRY = 0x6436E1F2edC981B69A3B0F396924ceC01DC617Af;
    /// Implementation contracts
    address constant MONAD_MAINNET_FIXED_TERM_IMPL = 0xBfA433003C9f8aBeD1537826FE74C21DF2762454;
    address constant MONAD_MAINNET_OPEN_TERM_IMPL = 0x62D83E8d579EC3b5911f29e02c70f4130092EdD1;
    address constant MONAD_MAINNET_YIELD_STRATEGY_IMPL = 0x1E05BeDB3Ea09a145BAe551Ec93B49385BA689Da;
    address constant MONAD_MAINNET_DVN_PUBLISHER_IMPL = 0x6ECdAb6FCeb475d4F091267428E069506396d4D1;
    /// Strategy Factories
    address constant MONAD_MAINNET_ASYNC_VAULT_FACTORY = 0xabCCE3f78a591c1C734CB16b6Ea56DFF3985953c;
    address constant MONAD_MAINNET_REWARDS_FACTORY = 0xC7C08f9c7F9B9BC0022e90869eF59FD72598bE08;
    address constant MONAD_MAINNET_FIXED_TERM_FACTORY = 0x2f5CAc28cf80D465d7C8D67a49c8e36710a4B83B;
    address constant MONAD_MAINNET_OPEN_TERM_FACTORY = 0x4927Ce3402035b801A1bEdDC498b7fb2fe9eA181;
    address constant MONAD_MAINNET_YIELD_STRATEGY_FACTORY = 0x9f1EB2be7b6a7e611c270bbdb0A3358786769518;
    address constant MONAD_MAINNET_DVN_PUBLISHER_FACTORY = 0x24c27eA8965C70670857E9ec9f18E9eAb7607C42;
    /// Standalone contract
    address constant MONAD_MAINNET_ATOMIC_BATCHER = 0x84B4138fBAfE5306889120fc701087331076ED81;

    // Ethereum Mainnet (Chain ID: 1) — Block 24419686

    /// Protocol contracts (UUPS Proxies)
    address constant ETHEREUM_FEE_MANAGER = 0x25cf00Fce3368b7145A5CCc2989233DFdCDE9C24;
    address constant ETHEREUM_GLOBAL_REGISTRY = 0xA330BEF5d7E1B5c059d24cF0251eF41556312470;
    /// Implementation contracts
    address constant ETHEREUM_FIXED_TERM_IMPL = 0x00e8Fe8dC7e96dBC021b843ee8411F95c0890e4c;
    address constant ETHEREUM_OPEN_TERM_IMPL = 0x831d06ce29Df7aA3701bae5D75658AD590EFe70f;
    address constant ETHEREUM_YIELD_STRATEGY_IMPL = 0x2F278D98CaEab97d2F2Aee809915c2fF79A5b767;
    address constant ETHEREUM_DVN_PUBLISHER_IMPL = 0x0F3c90758a0C04Edd544248b38C257a1d4D6Fda6;
    /// Strategy Factories
    address constant ETHEREUM_ASYNC_VAULT_FACTORY = 0x859A15b7c2b4fD0641424342130f2B073a115Dc4;
    address constant ETHEREUM_REWARDS_FACTORY = 0xd291C33001bC676fc39D83c5Dc1D9D53fFc55F7a;
    address constant ETHEREUM_FIXED_TERM_FACTORY = 0x2A7F22f81A3d301b8f0EAf4f09a78558c91Fc69a;
    address constant ETHEREUM_OPEN_TERM_FACTORY = 0xB4082B8126AF8B5345CfB159AC5d4b4F05F54bC5;
    address constant ETHEREUM_YIELD_STRATEGY_FACTORY = 0xC0f778b51bF9751BBccBF4e78A107026aDaDbe43;
    address constant ETHEREUM_DVN_PUBLISHER_FACTORY = 0x0a2a9eCf70E6feC00A53D3Ec000aC97f260D9f86;
    /// Standalone contract
    address constant ETHEREUM_ATOMIC_BATCHER = 0x35C7171dB2BD8164a36c3aE93eF9d4FB4Cc08777;

    // Katana (Chain ID: 747474) — Block 23904954

    /// Protocol contracts (UUPS Proxies)
    address constant KATANA_FEE_MANAGER = 0x25cf00Fce3368b7145A5CCc2989233DFdCDE9C24;
    address constant KATANA_GLOBAL_REGISTRY = 0xA330BEF5d7E1B5c059d24cF0251eF41556312470;
    /// Implementation contracts
    address constant KATANA_FIXED_TERM_IMPL = 0x00e8Fe8dC7e96dBC021b843ee8411F95c0890e4c;
    address constant KATANA_OPEN_TERM_IMPL = 0x831d06ce29Df7aA3701bae5D75658AD590EFe70f;
    address constant KATANA_YIELD_STRATEGY_IMPL = 0x2F278D98CaEab97d2F2Aee809915c2fF79A5b767;
    address constant KATANA_DVN_PUBLISHER_IMPL = 0x0F3c90758a0C04Edd544248b38C257a1d4D6Fda6;
    /// Strategy Factories
    address constant KATANA_ASYNC_VAULT_FACTORY = 0x859A15b7c2b4fD0641424342130f2B073a115Dc4;
    address constant KATANA_REWARDS_FACTORY = 0xd291C33001bC676fc39D83c5Dc1D9D53fFc55F7a;
    address constant KATANA_FIXED_TERM_FACTORY = 0x2A7F22f81A3d301b8f0EAf4f09a78558c91Fc69a;
    address constant KATANA_OPEN_TERM_FACTORY = 0xB4082B8126AF8B5345CfB159AC5d4b4F05F54bC5;
    address constant KATANA_YIELD_STRATEGY_FACTORY = 0xC0f778b51bF9751BBccBF4e78A107026aDaDbe43;
    address constant KATANA_DVN_PUBLISHER_FACTORY = 0x0a2a9eCf70E6feC00A53D3Ec000aC97f260D9f86;
    /// Standalone contract
    address constant KATANA_ATOMIC_BATCHER = 0x35C7171dB2BD8164a36c3aE93eF9d4FB4Cc08777;

    // Citrea Mainnet (Chain ID: 4114)

    /// Protocol contracts (UUPS Proxies)
    address constant CITREA_FEE_MANAGER = 0x0E503d4B0d463855E819D7201f6BD2604d423C4C;
    address constant CITREA_GLOBAL_REGISTRY = 0x6436E1F2edC981B69A3B0F396924ceC01DC617Af;
    /// Implementation contracts
    address constant CITREA_FEE_MANAGER_IMPL = 0x13f12a4F960FaEC311dB695C6Bb891ce28d668aE;
    address constant CITREA_GLOBAL_REGISTRY_IMPL = 0xE5ED0a8eEfbe3053B84499892fAfae82Be781D52;
    address constant CITREA_FIXED_TERM_IMPL = 0xBfA433003C9f8aBeD1537826FE74C21DF2762454;
    address constant CITREA_OPEN_TERM_IMPL = 0x62D83E8d579EC3b5911f29e02c70f4130092EdD1;
    address constant CITREA_YIELD_STRATEGY_IMPL = 0x1E05BeDB3Ea09a145BAe551Ec93B49385BA689Da;
    address constant CITREA_DVN_PUBLISHER_IMPL = 0x6ECdAb6FCeb475d4F091267428E069506396d4D1;
    /// Strategy Factories
    address constant CITREA_ASYNC_VAULT_FACTORY = 0xabCCE3f78a591c1C734CB16b6Ea56DFF3985953c;
    address constant CITREA_REWARDS_FACTORY = 0xC7C08f9c7F9B9BC0022e90869eF59FD72598bE08;
    address constant CITREA_FIXED_TERM_FACTORY = 0x2f5CAc28cf80D465d7C8D67a49c8e36710a4B83B;
    address constant CITREA_OPEN_TERM_FACTORY = 0x4927Ce3402035b801A1bEdDC498b7fb2fe9eA181;
    address constant CITREA_YIELD_STRATEGY_FACTORY = 0x9f1EB2be7b6a7e611c270bbdb0A3358786769518;
    address constant CITREA_DVN_PUBLISHER_FACTORY = 0x24c27eA8965C70670857E9ec9f18E9eAb7607C42;
    /// Standalone contract
    address constant CITREA_ATOMIC_BATCHER = 0x84B4138fBAfE5306889120fc701087331076ED81;

    function getFixedTermFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FIXED_TERM_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_FIXED_TERM_FACTORY;
        if (chainId == 1) return ETHEREUM_FIXED_TERM_FACTORY;
        if (chainId == 747474) return KATANA_FIXED_TERM_FACTORY;
        if (chainId == 4114) return CITREA_FIXED_TERM_FACTORY;
        revert("Unsupported network");
    }

    function getOpenTermFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_OPEN_TERM_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_OPEN_TERM_FACTORY;
        if (chainId == 1) return ETHEREUM_OPEN_TERM_FACTORY;
        if (chainId == 747474) return KATANA_OPEN_TERM_FACTORY;
        if (chainId == 4114) return CITREA_OPEN_TERM_FACTORY;
        revert("Unsupported network");
    }

    function getYieldStrategyFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_YIELD_STRATEGY_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_YIELD_STRATEGY_FACTORY;
        if (chainId == 1) return ETHEREUM_YIELD_STRATEGY_FACTORY;
        if (chainId == 747474) return KATANA_YIELD_STRATEGY_FACTORY;
        if (chainId == 4114) return CITREA_YIELD_STRATEGY_FACTORY;
        revert("Unsupported network");
    }

    function getDvnPublisherFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_DVN_PUBLISHER_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_DVN_PUBLISHER_FACTORY;
        if (chainId == 1) return ETHEREUM_DVN_PUBLISHER_FACTORY;
        if (chainId == 747474) return KATANA_DVN_PUBLISHER_FACTORY;
        if (chainId == 4114) return CITREA_DVN_PUBLISHER_FACTORY;
        revert("Unsupported network");
    }

    function getFeeManager(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FEE_MANAGER;
        if (chainId == 143) return MONAD_MAINNET_FEE_MANAGER;
        if (chainId == 1) return ETHEREUM_FEE_MANAGER;
        if (chainId == 747474) return KATANA_FEE_MANAGER;
        if (chainId == 4114) return CITREA_FEE_MANAGER;
        revert("Unsupported network");
    }

    function getGlobalRegistry(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_GLOBAL_REGISTRY;
        if (chainId == 143) return MONAD_MAINNET_GLOBAL_REGISTRY;
        if (chainId == 1) return ETHEREUM_GLOBAL_REGISTRY;
        if (chainId == 747474) return KATANA_GLOBAL_REGISTRY;
        if (chainId == 4114) return CITREA_GLOBAL_REGISTRY;
        revert("Unsupported network");
    }

    function getAsyncVaultFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_ASYNC_VAULT_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_ASYNC_VAULT_FACTORY;
        if (chainId == 1) return ETHEREUM_ASYNC_VAULT_FACTORY;
        if (chainId == 747474) return KATANA_ASYNC_VAULT_FACTORY;
        if (chainId == 4114) return CITREA_ASYNC_VAULT_FACTORY;
        revert("Unsupported network");
    }

    function getRewardsFactory(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_REWARDS_FACTORY;
        if (chainId == 143) return MONAD_MAINNET_REWARDS_FACTORY;
        if (chainId == 1) return ETHEREUM_REWARDS_FACTORY;
        if (chainId == 747474) return KATANA_REWARDS_FACTORY;
        if (chainId == 4114) return CITREA_REWARDS_FACTORY;
        revert("Unsupported network");
    }

    function getFixedTermImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_FIXED_TERM_IMPL;
        if (chainId == 143) return MONAD_MAINNET_FIXED_TERM_IMPL;
        if (chainId == 1) return ETHEREUM_FIXED_TERM_IMPL;
        if (chainId == 747474) return KATANA_FIXED_TERM_IMPL;
        if (chainId == 4114) return CITREA_FIXED_TERM_IMPL;
        revert("Unsupported network");
    }

    function getOpenTermImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_OPEN_TERM_IMPL;
        if (chainId == 143) return MONAD_MAINNET_OPEN_TERM_IMPL;
        if (chainId == 1) return ETHEREUM_OPEN_TERM_IMPL;
        if (chainId == 747474) return KATANA_OPEN_TERM_IMPL;
        if (chainId == 4114) return CITREA_OPEN_TERM_IMPL;
        revert("Unsupported network");
    }

    function getYieldStrategyImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_YIELD_STRATEGY_IMPL;
        if (chainId == 143) return MONAD_MAINNET_YIELD_STRATEGY_IMPL;
        if (chainId == 1) return ETHEREUM_YIELD_STRATEGY_IMPL;
        if (chainId == 747474) return KATANA_YIELD_STRATEGY_IMPL;
        if (chainId == 4114) return CITREA_YIELD_STRATEGY_IMPL;
        revert("Unsupported network");
    }

    function getDvnPublisherImpl(uint256 chainId) internal pure returns (address) {
        if (chainId == 10143) return MONAD_TESTNET_DVN_PUBLISHER_IMPL;
        if (chainId == 143) return MONAD_MAINNET_DVN_PUBLISHER_IMPL;
        if (chainId == 1) return ETHEREUM_DVN_PUBLISHER_IMPL;
        if (chainId == 747474) return KATANA_DVN_PUBLISHER_IMPL;
        if (chainId == 4114) return CITREA_DVN_PUBLISHER_IMPL;
        revert("Unsupported network");
    }
}
