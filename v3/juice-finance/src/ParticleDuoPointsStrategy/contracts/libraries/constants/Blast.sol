// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

/// Constants relevant to Blast mainnet and protocols deployed on it.

library BlastConst {
    address internal constant BLAST_YIELD = 0x4300000000000000000000000000000000000002;
    address internal constant BLAST_POINTS = 0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800;

    address internal constant USDB = 0x4300000000000000000000000000000000000003;
    address internal constant WETH = 0x4300000000000000000000000000000000000004;

    address internal constant JUICE = 0x818a92bc81Aad0053d72ba753fb5Bc3d0C5C0923;
    address internal constant JUICE_WETH_LP = 0x4E4B4A3111d128628c427E78a2abAd1635fE6542;

    address internal constant WASABI_JUICE_VAULT = 0x73EC6a715805236176dE2468318f6920eFeD9d74;
    address internal constant WASABI_USDB_VAULT = 0x4BeD2A922654cAcC2Be974689619768FaBF24855;
    address internal constant WASABI_WETH_VAULT = 0x8E2b50413a53F50E2a059142a9be060294961e40;

    address internal constant EZETH = 0x2416092f143378750bb29b79eD961ab195CcEea5;

    address internal constant HYPERLOCK_ERC20_POINTS_DEPOSIT = 0xC3EcaDB7a5faB07c72af6BcFbD588b7818c4a40e;
    address internal constant HYPERLOCK_ERC721_POINTS_DEPOSIT = 0xc28EffdfEF75448243c1d9bA972b97e32dF60d06;
}

library KelpConst {
    /// @notice Pool for minting wrsETH.
    /// https://blastscan.io/address/0x1558959f1a032F83f24A14Ff539944A926C51bdf.
    address internal constant POOL = 0x1558959f1a032F83f24A14Ff539944A926C51bdf;

    address internal constant WRSETH = 0xe7903B1F75C534Dd8159b313d92cDCfbC62cB3Cd;
}

library EtherfiConst {
    address internal constant WEETH = 0x04C0599Ae5A44757c0af6F9eC3b93da8976c150A;

    /// @notice Pool for minting weETH.
    /// https://blastscan.io/address/0x52c4221Cb805479954CDE5accfF8C4DcaF96623B.
    address internal constant SYNC_POOL = 0x52c4221Cb805479954CDE5accfF8C4DcaF96623B;
}

library RingConst {
    /// @notice Wrapped token for USDB.
    address internal constant FW_USDB = 0x866f2C06B83Df2ed7Ca9C2D044940E7CD55a06d6;
    /// @notice Wrapped token for WETH.
    address internal constant FW_WETH = 0x66714DB8F3397c767d0A602458B5b4E3C0FE7dd1;
    /// @notice Wrapped token factory.
    address internal constant FEW_FACTORY = 0x455b20131D59f01d082df1225154fDA813E8CeE9;

    address internal constant SWAP_V2_FACTORY = 0x24F5Ac9A706De0cF795A8193F6AB3966B14ECfE6;
    address internal constant SWAP_V2_ROUTER = 0x7001F706ACB6440d17cBFaD63Fa50a22D51696fF;
}

library MunchableConst {
    address internal constant TOKEN = 0x6e47dfc37bf60b6b4b4A13ee73c2b32C0e2b5BDc;
    address internal constant NFT = 0xd8261B960e74228Dfcdd8c7C9200D8879527bF4a;
    address internal constant LOCKDROP = 0x29958E8E4d8a9899CF1a0aba5883DBc7699a5E1F;
    address internal constant CLAIM = 0x42A2e06885F415274Ef70e6D493BB821296b63B6;
    address internal constant ACCOUNT_MANAGER = 0x16347c28F7ae71aE985F861382d94bECb99EE2A0;
}

library ThrusterConst {
    address internal constant FACTORY_V3 = 0x71b08f13B3c3aF35aAdEb3949AFEb1ded1016127;
    address internal constant ROUTER_V3 = 0x337827814155ECBf24D20231fCA4444F530C0555;
    address internal constant NONFUNGIBLE_POSITION_MANAGER = 0x434575EaEa081b735C985FA9bf63CD7b87e227F9;
    address internal constant QUOTER_V2 = 0x3b299f65b47c0bfAEFf715Bc73077ba7A0a685bE;
}
