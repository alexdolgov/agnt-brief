# Agentic Audit Brief: Gamma

⚠️ Lifecycle status: DECLINING - TVL dropped 24.2% over 90 days

## Project Overview

- Project: Gamma (`gamma`)
- Website: [https://www.gamma.xyz](https://www.gamma.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-28T23:59:11.650Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-81b9
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, celo, ethereum, fantom, gnosis, kava, linea, manta, mantle, metis, mode, moonbeam, optimism, polygon, polygon-zkevm, scroll, sonic, unichain
- Contract surface: 467 unique implementations (2560 raw deployments)
- DeFi Llama TVL: $3,713,256.19
- On-chain TVL (included contracts): $24,284.66
- TVL by chain: Ethereum $24,284.66

## Project Description

Gamma is a decentralized liquidity management protocol that optimizes Uniswap V3 positions through automated vaults (Hypervisors) and provides limit order functionality. It also features a governance token (GAMMA) and a staking derivative (xGAMMA) for fee distribution.

### Architecture

The Token family's GAMMA and xGAMMA tokens are used within the Gamma family's MultiFeeDistribution contracts to distribute protocol fees to stakers. The Gamma family relies on HypeRegistry contracts to track and manage Hypervisor vaults and other components across multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 31/105 (29.5%)
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 15
- Unverified implementations: 362
- Unique implementations: 467
- Raw deployments: 2560
- Audits discovered: 33
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): $24,284.66
- Latest audit: 2026-03 (fresh)
- Staleness: 2 fresh, 8 aging, 10 stale, 13 unknown
- Tier 1 coverage: 4.8% (ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $24,284.66 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 29 | 27.6% | 2026-03 |
| OpenZeppelin | Tier 1 | 3 | 2.9% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 1.9% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ClearingV3 | unknown | bsc | 3 deployments: bsc [`0x67c676...863710`](./contracts/bsc-56/0x67c676bbe4a8087a16b38ed9254c6f49ce863710/); bsc `0xba4335...c273c7`; berachain `0xe8d5de...9f497d` | ✅ Audited |
| ClearingV3NFPM | unknown | avalanche | 4 deployments: avalanche [`0x27cf9c...ee9375`](./contracts/avalanche-43114/0x27cf9c13de312a077d991e8bc5e4e6e6c2ee9375/); avalanche `0x8e6249...1997f8`; avalanche `0xd42096...6197c3`; berachain `0xbb0433...fe268c` | ✅ Audited |
| DepositLogic | unknown | polygon | 5 deployments: bsc `0x53d601...a03ca2`; unichain `0x831642...fecbd4`; unichain `0x9224a2...c8dbc7`; polygon [`0x536f96...c04656`](./contracts/polygon-137/0x536f968424060d516a82c646e1a2c703a3c04656/); base `0x5d1b42...7fd298` | ✅ Audited |
| GammaLens | periphery | berachain | 3 deployments: berachain [`0x27ffa4...0e8660`](./contracts/berachain-80094/0x27ffa4221a52b02ecc67c5b199007010b90e8660/); berachain `0x2dbafd...87715f`; berachain `0xba1af4...4bc858` | ✅ Audited |
| Hypervisor | unknown | metis | 233 deployments: ethereum `0x033d2e...bf2143`; ethereum `0x33412f...31dbb4`; ethereum `0x336d7e...cf146f`; ethereum `0x34b954...7a2b28`; ethereum `0x388a39...98e22c`; ethereum `0x39b96f...16013c`; ethereum `0x3f805d...9ce953`; ethereum `0x46b760...82aca3`; ethereum `0x4d7f0f...d0c832`; ethereum `0x51bbf7...808865`; ethereum `0x55eed1...76da7b`; ethereum `0x586880...f8ef13`; ethereum `0x5d40e4...493b74`; ethereum `0x5e6c48...f11660`; ethereum `0x64fcdd...3d4efb`; ethereum `0x704ece...c01dbe`; ethereum `0x85a532...dc6b37`; ethereum `0x85cbed...a8a70c`; ethereum `0x8cd73c...4e77f1`; ethereum `0x96a8ba...4d6d75`; ethereum `0x96c105...97c085`; ethereum `0xa1c739...26daa5`; ethereum `0xa625ea...a5c276`; ethereum `0xac571c...b1d02f`; ethereum `0xb542f4...09f5fa`; ethereum `0xbe51c2...3a0ce6`; ethereum `0xc86b1e...bc1153`; ethereum `0xd29a17...70857a`; ethereum `0xe065ff...d57ba1`; ethereum `0xebae3c...b98659`; ethereum `0xee768e...0352b5`; ethereum `0xf00fa5...58fa7f`; ethereum `0xf0a9f5...b29bca`; ethereum `0xf178d8...ce41c5`; ethereum `0xf19f91...81a458`; ethereum `0xf402ce...adbd9b`; ethereum `0xf6eeca...c7927c`; ethereum `0xf94431...06920f`; bsc `0x62b249...974bfd`; gnosis `0x055522...c068b9`; gnosis `0x116dee...d1b0c3`; gnosis `0x216d3d...416ebb`; gnosis `0x2577d8...800691`; gnosis `0x31547c...8bd607`; gnosis `0x447643...d397d9`; gnosis `0x47e385...4a7c38`; gnosis `0x6d257b...da5aa7`; gnosis `0x7ec87b...ef91c1`; gnosis `0x7eccd6...8fbcce`; gnosis `0x8be859...28e262`; gnosis `0x8f249c...785f1d`; gnosis `0xcf4a87...f7ab93`; gnosis `0xd3c480...28a7f0`; gnosis `0xdb7608...b3bc34`; gnosis `0xf1ac4c...e037ec`; gnosis `0xf66da0...b40578`; polygon `0x9ca705...ae9151`; sonic `0x2ea8a8...927cbc`; sonic `0x2fa5e2...203aa4`; sonic `0x2fcc0d...36a46f`; sonic `0x318e37...ae7cfc`; sonic `0x392aeb...40a596`; sonic `0x3cf539...ce11a1`; sonic `0x447643...d397d9`; sonic `0x6d257b...da5aa7`; sonic `0x6e9d70...4cbb4c`; sonic `0x9d4472...359ffa`; sonic `0xbbcd75...110a3b`; sonic `0xbc7d3b...c574e2`; sonic `0xbd3332...fe26be`; sonic `0xc225fa...9e4dfe`; sonic `0xc9ae8d...33caa7`; sonic `0xcc8657...f06bb9`; sonic `0xe44536...fd3cbb`; sonic `0xf0cecc...205342`; sonic `0xffd2e5...2aaa2d`; manta `0x020dc3...394a05`; manta `0x099dd2...6cc182`; manta `0x0d8f8e...4a380f`; manta `0x0e854c...89664d`; manta `0x22c0e5...5baf71`; manta `0x258d48...b200f2`; manta `0x279560...e4c499`; manta `0x2eab29...85ca37`; manta `0x2fface...27973d`; manta `0x4850d9...2a7326`; manta `0x5accda...f04501`; manta `0x67a79c...163a9d`; manta `0x6c3846...297717`; manta `0x6d5c54...5cd683`; manta `0x78727b...692279`; manta `0x89bd07...493344`; manta `0x91fa32...8eb698`; manta `0x98a694...4418b2`; manta `0x9d4472...359ffa`; manta `0x9e8244...c94644`; manta `0xa6e267...d32319`; manta `0xb833e6...6ffef2`; manta `0xbbcd75...110a3b`; manta `0xc40f63...e90702`; manta `0xc47812...7fd581`; manta `0xd2dfbc...0511b6`; manta `0xdf0b9b...dd54c4`; manta `0xe75490...bd68e1`; manta `0xf0cecc...205342`; metis [`0x015b8a...3dbaff`](./contracts/metis-1088/0x015b8a7698148271dc95635e32a6a76d723dbaff/); metis `0x055522...c068b9`; metis `0x1f54f4...097b7a`; metis `0x317a0d...d890c0`; metis `0x343ca5...7f26a2`; metis `0x3d2277...9fdf09`; metis `0x447643...d397d9`; metis `0x6d257b...da5aa7`; metis `0x711fa5...21c31e`; metis `0x7eccd6...8fbcce`; metis `0xa6b3ce...8473ad`; metis `0xcd5a60...70f2c8`; metis `0xdb7608...b3bc34`; moonbeam `0x01710a...fbc61e`; moonbeam `0x05d5b6...07e37f`; moonbeam `0x15f0b8...bc073d`; moonbeam `0x1a7ce3...bdd404`; moonbeam `0x1c1dbd...90b0cc`; moonbeam `0x1e86a5...3286f6`; moonbeam `0x2a0785...3efba1`; moonbeam `0x2eab29...85ca37`; moonbeam `0x3273c1...b2c7e5`; moonbeam `0x382065...fdea4c`; moonbeam `0x3fbefe...b3d120`; moonbeam `0x3fe6f2...4d6f15`; moonbeam `0x5ac782...b5e9be`; moonbeam `0x683292...161300`; moonbeam `0x77a2af...b9493a`; moonbeam `0x7bfb66...75699e`; moonbeam `0x7e1c83...6860c9`; moonbeam `0x824c2e...b22451`; moonbeam `0x8cacde...528cac`; moonbeam `0xa35377...fae691`; moonbeam `0xa6e267...d32319`; moonbeam `0xa79d88...638485`; moonbeam `0xb11bcb...f13286`; moonbeam `0xb5db9a...f92224`; moonbeam `0xb692b0...55a0c5`; moonbeam `0xc01f26...e85eed`; moonbeam `0xc27ddd...099881`; moonbeam `0xc62697...85ef39`; moonbeam `0xc91ed9...6786ab`; moonbeam `0xc9591e...64150d`; moonbeam `0xcc8657...f06bb9`; moonbeam `0xd2dfbc...0511b6`; moonbeam `0xe34379...beb079`; moonbeam `0xf9adaa...26baaa`; moonbeam `0xfc13eb...153621`; mantle `0x1ee3ae...6726ad`; mantle `0x2e18b8...95b96c`; mantle `0x561f5c...9270ee`; mantle `0x6e9d70...4cbb4c`; mantle `0x753325...388b1a`; mantle `0xa18d30...41da2f`; mantle `0xc01f26...e85eed`; mantle `0xd6cc4a...25f517`; mantle `0xde7421...783922`; mantle `0xf44cec...812ead`; mantle `0xf8a024...d729ca`; mantle `0xfe4bb9...510c66`; mode `0x139269...38d1b8`; mode `0x2fcc0d...36a46f`; mode `0x6d257b...da5aa7`; mode `0x7eccd6...8fbcce`; mode `0xbc7d3b...c574e2`; mode `0xd6cc4a...25f517`; mode `0xf3b112...0d4f60`; mode `0xf44cec...812ead`; celo `0x1e2d8f...df35dd`; celo `0x22ae0d...990b1f`; celo `0x34c14d...09068e`; celo `0x5eeca9...2afbf2`; celo `0x6002d7...c31908`; celo `0x789bc4...7da1e1`; celo `0x897d90...bf605c`; celo `0xc9a3ee...3ce187`; celo `0xe34379...beb079`; celo `0xfb3a24...896167`; avalanche `0x11c401...47853d`; avalanche `0x1e86a5...3286f6`; avalanche `0x2a0785...3efba1`; avalanche `0x38f611...57b35f`; avalanche `0xc27ddd...099881`; avalanche `0xc91ed9...6786ab`; avalanche `0xfc13eb...153621`; berachain `0x06895d...c547b8`; berachain `0x08c0fe...a84481`; berachain `0x1559d1...392e55`; berachain `0x31547c...8bd607`; berachain `0x57c41f...38af85`; berachain `0x7a58c0...c9e5b2`; berachain `0x7d4506...4d0ef5`; berachain `0x7ef5e8...2e51cc`; berachain `0x829432...a39d86`; berachain `0x8be859...28e262`; berachain `0xb5d462...986e90`; berachain `0xc88699...937486`; berachain `0xcffbfd...560d35`; berachain `0xecfa9c...993f17`; berachain `0xf2ed3e...fcbf8c`; blast `0x016fcf...a9a593`; blast `0x1de562...78693a`; blast `0x1ee3ae...6726ad`; blast `0x20be92...e5f92f`; blast `0x3dae80...fbeb2e`; blast `0x3f0395...8aee4f`; blast `0x4c8e32...733dff`; blast `0x4cf9a2...d60f3d`; blast `0x66f82e...f03a5b`; blast `0x74584d...609be5`; blast `0x753325...388b1a`; blast `0x7d4506...4d0ef5`; blast `0x7e35e1...8af150`; blast `0x7ec87b...ef91c1`; blast `0x8ef383...4bf9b6`; blast `0x98a694...4418b2`; blast `0x9e7cf4...8fec4a`; blast `0xa35377...fae691`; blast `0xb5f3a1...d24691`; blast `0xb65372...be3120`; blast `0xc62697...85ef39`; blast `0xd6cc4a...25f517`; blast `0xe76796...98be6e`; blast `0xe7b226...176a49`; blast `0xe7db86...9cde7d`; blast `0xecfa9c...993f17`; blast `0xf8a024...d729ca`; blast `0xf9f1ac...ba2918` | ✅ Audited |
| HypervisorFactory | registry | ethereum | 3 deployments: ethereum [`0x33d306...b7f514`](./contracts/ethereum-1/0x33d3067516783bc8391c1833877bb2cb6eb7f514/); ethereum `0x9b737f...03e4e3`; ethereum `0xd12fa3...860929` | ✅ Audited |
| HypervisorNFPM | unknown | berachain | 18 deployments: avalanche `0x22e5fe...a630df`; avalanche `0x337518...775340`; avalanche `0x37937d...89fd54`; avalanche `0x45ef94...f74b34`; avalanche `0x5b8ba3...b35329`; avalanche `0x5dfdb2...cf5b99`; avalanche `0x7abf35...19bc1f`; avalanche `0x90872e...ce1d39`; avalanche `0x91bc75...5ab053`; avalanche `0x98c7ee...3da625`; avalanche `0xb8fb40...bf41e2`; avalanche `0xbd5b93...662e4f`; avalanche `0xd173f8...de4358`; avalanche `0xe058e1...e07ddc`; berachain [`0x00f262...d2fd49`](./contracts/berachain-80094/0x00f26251d7079ff8825b98d6bd66936ebbd2fd49/); berachain `0x38379b...9d66fa`; berachain `0x9d2ef0...1ef352`; berachain `0xc21a11...1a9f3f` | ✅ Audited |
| LBPDeploymentLib | unknown | unichain | 2 deployments: unichain [`0x81f9d0...4a03d7`](./contracts/unichain-130/0x81f9d0e1a606e6bab5ba3b2e7a601ef3234a03d7/); unichain `0xc06bde...864dc0` | ✅ Audited |
| LimitOrderHook | unknown | unichain | 5 deployments: bsc `0xa9bc29...6f80c0`; unichain [`0x2016c0...da40c0`](./contracts/unichain-130/0x2016c0e4f8bb1d6fea777dc791be919e2eda40c0/); polygon `0xc773b9...fc00c0`; base `0x9d11f9...7ec0c0`; arbitrum `0xd73339...6500c0` | ✅ Audited |
| LimitOrderLens | periphery | arbitrum | 143 deployments: bsc `0x5c356a...f55383`; bsc `0x86c495...0dac37`; unichain `0x033409...99e5c9`; unichain `0x080f35...cea253`; unichain `0x082a4a...866187`; unichain `0x110b91...7d5404`; unichain `0x11f15a...683bf3`; unichain `0x13a00b...1fc73d`; unichain `0x1f7d40...fa4704`; unichain `0x23b252...bd7583`; unichain `0x24153f...8efb6f`; unichain `0x24b0a1...e01935`; unichain `0x254047...7dc499`; unichain `0x278880...987d43`; unichain `0x27d2fb...3e022f`; unichain `0x283497...c73815`; unichain `0x2839b1...56d070`; unichain `0x2ff54d...da99d0`; unichain `0x30ceb4...4fa0d5`; unichain `0x327c65...6db54a`; unichain `0x3e79a7...17b081`; unichain `0x424f8f...a681f5`; unichain `0x437032...8768b1`; unichain `0x4391a6...8bcb8b`; unichain `0x448391...85208f`; unichain `0x44ed19...0cbeaa`; unichain `0x59401b...e3f9e5`; unichain `0x5ad410...11fcd1`; unichain `0x5c1cba...892f85`; unichain `0x5cc4d7...f3a1e0`; unichain `0x5d1a44...6d8ee4`; unichain `0x5d4512...e1650f`; unichain `0x5e863b...e65d17`; unichain `0x5e9f01...085986`; unichain `0x62b249...974bfd`; unichain `0x636983...d282ab`; unichain `0x71ee6d...552517`; unichain `0x74ab82...7939c5`; unichain `0x76a4ad...f3eb3e`; unichain `0x7c4891...b8a25c`; unichain `0x8e62ae...356fe3`; unichain `0x953f20...4bbe6e`; unichain `0x979012...d019eb`; unichain `0x98e93e...06b3bb`; unichain `0x9bc7c4...0eb755`; unichain `0xa0c9d8...004c0e`; unichain `0xa0f80f...c4c295`; unichain `0xa88ee5...c8192a`; unichain `0xb0fc2d...32e6c3`; unichain `0xb22d8d...9954b8`; unichain `0xb22d8f...d18272`; unichain `0xb622e2...93ecfb`; unichain `0xb881fe...12d037`; unichain `0xb907c8...90e211`; unichain `0xba7eb8...cef50d`; unichain `0xbc7bd2...f916b0`; unichain `0xbf3e88...d804c7`; unichain `0xc2e0e3...9ab00a`; unichain `0xc38dee...65f848`; unichain `0xc636f8...e54265`; unichain `0xc8b1ee...a9a63b`; unichain `0xc97b1f...cd866a`; unichain `0xcb6a6c...8df920`; unichain `0xd0e1e7...aea2b1`; unichain `0xd2d297...20db4f`; unichain `0xd5cd27...17957b`; unichain `0xd71195...c49c75`; unichain `0xe61b51...9a0d59`; unichain `0xe91488...c820d8`; unichain `0xe94ed1...e36a45`; unichain `0xed3f6c...b3d26e`; unichain `0xf1c411...eb826e`; unichain `0xf368d4...8312fa`; unichain `0xf41c6e...7ed7e5`; unichain `0xf72c52...19eb21`; unichain `0xf788d9...d12e23`; unichain `0xfa8e72...547903`; unichain `0xfc281d...53a197`; unichain `0xfc9101...409cea`; unichain `0xfcda76...d9836e`; unichain `0xfeac7b...a8bb1b`; polygon `0xa9b9b8...4bb0c5`; polygon `0xc8da58...5f6959`; polygon `0xfec81f...96658e`; base `0x030b73...fbe783`; base `0x05a608...dddecd`; base `0x082286...719688`; base `0x0855b1...28f7a4`; base `0x0cc256...126db1`; base `0x11b5b6...5ddc41`; base `0x1e18a5...a7689d`; base `0x24c1c7...e8398f`; base `0x28bd3f...f20186`; base `0x2dc3fc...e4d15a`; base `0x540e64...6cf14f`; base `0x56dbae...718d0a`; base `0x572954...21fbc4`; base `0x59dc20...0e5a23`; base `0x628a82...529ff2`; base `0x638b88...3fb6d7`; base `0x692e60...3aa82e`; base `0x6c4651...31dc5d`; base `0x778673...b75895`; base `0x883135...81c0d8`; base `0x8f6bac...294535`; base `0x912916...80f5ba`; base `0x93dd7d...c0a2ff`; base `0x96e445...686cbd`; base `0x9ed988...7c8d0f`; base `0xaf74ea...ebc6c4`; base `0xb448c7...8d764a`; base `0xb55c1d...f2553c`; base `0xb713d6...2f4150`; base `0xb9b7e1...3e473e`; base `0xba0fe0...52741e`; base `0xbea137...1c172d`; base `0xbedba5...d06974`; base `0xc0413f...57b924`; base `0xc1835b...9bbb1a`; base `0xc21e5d...f7c7ec`; base `0xc38dee...65f848`; base `0xc8607d...0b9525`; base `0xc8da58...5f6959`; base `0xcc5a96...f431f5`; base `0xcd46be...d1cb7e`; base `0xda490e...d09331`; base `0xe0c4b7...3fbc13`; base `0xe774c6...7ab5a0`; base `0xe7f3f5...7ac5b9`; base `0xed4355...fd746e`; base `0xf3dffe...d021ff`; base `0xfc9101...409cea`; base `0xfcb871...3958e2`; arbitrum [`0x009528...8ac824`](./contracts/arbitrum-42161/0x009528340fd69814182d904d70deec21048ac824/); arbitrum `0x2a7bb0...6125db`; arbitrum `0x2af0f8...475643`; arbitrum `0x49ec13...4b5ea9`; arbitrum `0x536f96...c04656`; arbitrum `0x5c356a...f55383`; arbitrum `0x883135...81c0d8`; arbitrum `0x96e445...686cbd`; arbitrum `0xaea3a2...1044d4`; arbitrum `0xb0617d...8c1184` | ✅ Audited |
| LimitOrderManager | governance | base | 80 deployments: bsc `0x464efb...965ae5`; unichain `0x019b7d...d63f7b`; unichain `0x03c648...320a3b`; unichain `0x05b4d4...5f54a5`; unichain `0x129024...9f129c`; unichain `0x15905b...f29f51`; unichain `0x1e4d67...4b6e20`; unichain `0x28471f...30e444`; unichain `0x2e2023...94c856`; unichain `0x3000cb...0ff303`; unichain `0x3c81b9...a9962b`; unichain `0x411f6e...b54034`; unichain `0x464efb...965ae5`; unichain `0x46a161...626be4`; unichain `0x470860...251897`; unichain `0x5c356a...f55383`; unichain `0x61cafb...46d209`; unichain `0x6a2dbd...ef9878`; unichain `0x6e91d7...ea8462`; unichain `0x7e6b29...f92b39`; unichain `0x7f48aa...2b6327`; unichain `0x817b6c...35da36`; unichain `0x8a79be...de29ee`; unichain `0x8d4684...35cf80`; unichain `0x8e41a0...1f8096`; unichain `0x8f0fdc...7e392f`; unichain `0x92bfb2...49e95c`; unichain `0x93b7cb...ad7bc2`; unichain `0x9ef35e...0310e6`; unichain `0xbbd343...b58fb8`; unichain `0xc1d358...1db931`; unichain `0xc738c5...41e821`; unichain `0xdabed9...f7d7ec`; unichain `0xdb9e24...3230da`; unichain `0xe4ca73...350f83`; unichain `0xe5dfb8...9b649b`; unichain `0xea70aa...f6d551`; unichain `0xf4b450...9da9b7`; unichain `0xf579dc...78d6cf`; unichain `0xf67d3a...f84cba`; unichain `0xf7d269...c5a36d`; unichain `0xfa2c96...38ebb8`; unichain `0xfcab97...7aa657`; polygon `0x18ed79...578373`; polygon `0x398389...64cf5a`; polygon `0x464efb...965ae5`; polygon `0x46a161...626be4`; polygon `0x55443a...a72643`; polygon `0x5c356a...f55383`; polygon `0xa566a5...d92253`; polygon `0xc38dee...65f848`; polygon `0xc7cde1...8fe517`; base [`0x005073...189118`](./contracts/base-8453/0x005073677e7a4bdccff79c355dbbb8e3cf189118/); base `0x049a72...bdf734`; base `0x0971d2...8d2335`; base `0x0ac70e...6d0065`; base `0x18db1d...8d1059`; base `0x486469...bfa860`; base `0x4ce60e...bf98e5`; base `0x552815...04f612`; base `0x5c356a...f55383`; base `0x67c676...863710`; base `0x772d8d...678e50`; base `0x77674f...22bea7`; base `0x7b3205...b0bb8a`; base `0x7c4891...b8a25c`; base `0x86b489...f8d26f`; base `0xb08536...be2f8a`; base `0xc66426...907f05`; base `0xc7cde1...8fe517`; base `0xc7dfb6...7be3c1`; base `0xde923d...e9830d`; base `0xe99ebb...3184cf`; base `0xf769c5...231d42`; base `0xfcd479...4556bc`; arbitrum `0x2ec776...117642`; arbitrum `0x428ded...ef7091`; arbitrum `0x464efb...965ae5`; arbitrum `0xe5cf83...2efca3`; arbitrum `0xf2a761...38ce80` | ✅ Audited |
| MultiPositionFactory | registry | unichain | 69 deployments: bsc `0xda490e...d09331`; unichain [`0x02c976...990201`](./contracts/unichain-130/0x02c976adce2b57f49831ddb55859dee9b8990201/); unichain `0x036c23...b58331`; unichain `0x0afbc4...b3d976`; unichain `0x0f4f0d...fc5dd7`; unichain `0x126da6...c18c23`; unichain `0x129b1f...b86d27`; unichain `0x163553...373126`; unichain `0x16a299...9d5a4a`; unichain `0x16b089...861171`; unichain `0x22151c...df1be3`; unichain `0x2c78e5...70f3ec`; unichain `0x468b9c...3f385c`; unichain `0x486f4c...16277e`; unichain `0x49ec13...4b5ea9`; unichain `0x4a8fa8...07faf3`; unichain `0x4c74b8...6c8778`; unichain `0x4d923d...0bc52f`; unichain `0x4ea869...6c6557`; unichain `0x4ed675...368d36`; unichain `0x6d8e84...bd3b9b`; unichain `0x75ab81...10c12c`; unichain `0x799d99...b13829`; unichain `0x7bd88b...777330`; unichain `0x8438fd...9c7873`; unichain `0x8c5daa...129126`; unichain `0x8f30c9...328772`; unichain `0x93d1ea...1d4ccf`; unichain `0x988e3d...2fe5f8`; unichain `0x9a70d3...416a75`; unichain `0x9ace61...f563f9`; unichain `0xa37124...1cc590`; unichain `0xa68960...f3abc9`; unichain `0xa813f5...186c3f`; unichain `0xa98b83...dee0c9`; unichain `0xac166a...4c595d`; unichain `0xae4be7...ff568c`; unichain `0xafe5e5...8d8ef4`; unichain `0xb13a62...0e514d`; unichain `0xb92973...75efc2`; unichain `0xc532d9...876c4c`; unichain `0xc66426...907f05`; unichain `0xc77287...8e50ec`; unichain `0xc920e8...3f4dd0`; unichain `0xc9d4ea...03b56b`; unichain `0xce931f...7666df`; unichain `0xce9f5f...98ea12`; unichain `0xcf457d...2f4707`; unichain `0xd25b5a...1a0189`; unichain `0xd5587d...55a2d8`; unichain `0xd6d587...419b2d`; unichain `0xdc108b...0767f4`; unichain `0xdd1670...f3af7e`; unichain `0xdda59a...459d3a`; unichain `0xe34091...938aa2`; unichain `0xe44101...149559`; unichain `0xe44599...dbd599`; unichain `0xe472ed...d0264d`; unichain `0xe50b4c...5da280`; unichain `0xe7f3f5...7ac5b9`; unichain `0xe8abdc...b69285`; unichain `0xea1b99...133ce9`; unichain `0xeb5251...120064`; unichain `0xed4355...fd746e`; unichain `0xee7eae...78e267`; unichain `0xf2d766...953446`; polygon `0xc0c06e...602560`; base `0x33d9b8...adbaf9`; arbitrum `0x252c3d...3f5d74` | ✅ Audited |
| OrderBookFactory | registry | unichain | 34 deployments: unichain [`0x022427...69bec2`](./contracts/unichain-130/0x022427912ec116f11a1cca1cce30a3fd1e69bec2/); unichain `0x0ca81a...29ef90`; unichain `0x0ecc17...c14911`; unichain `0x207b33...b96703`; unichain `0x37049f...0fbba2`; unichain `0x50d87a...ebe30d`; unichain `0x516d17...ba9803`; unichain `0x5da4f2...d5cef1`; unichain `0x5ee0fa...c4ab55`; unichain `0x6293b0...24e472`; unichain `0x6e010b...03b35c`; unichain `0x70f24a...ad54fa`; unichain `0x723fae...9bdf80`; unichain `0x758783...a8710f`; unichain `0x7a0abd...4fc79e`; unichain `0x7c2be8...e5096d`; unichain `0x82abf2...7caa99`; unichain `0x955762...b3558b`; unichain `0x972244...a3d303`; unichain `0x9e5b9c...2842e2`; unichain `0xa495ef...c77006`; unichain `0xb9edb0...245e55`; unichain `0xbc90c1...9b2d17`; unichain `0xc2768f...2fb6d6`; unichain `0xd39e43...36ce36`; unichain `0xdd7bb9...36a266`; unichain `0xef222d...4dfd86`; unichain `0xf198a9...ef676b`; unichain `0xf27da8...0d4975`; unichain `0xfd5105...8fc04a`; arbitrum `0x244cd7...fe274c`; arbitrum `0x2710b3...d2a6f8`; arbitrum `0x6730b2...14cb19`; arbitrum `0xc3d0d3...21de77` | ✅ Audited |
| PoolManagerUtils | core_logic | unichain | 5 deployments: bsc `0x82d292...6c26fa`; unichain [`0x49a4aa...390c1f`](./contracts/unichain-130/0x49a4aa8f7f9b7f2da635bd0b222434b29b390c1f/); unichain `0xc0010c...816161`; polygon `0x9ed988...7c8d0f`; base `0xb7debd...5b329c` | ✅ Audited |
| PositionLogic | unknown | polygon | 5 deployments: bsc `0x628a82...529ff2`; unichain `0x8e9a5e...7f5312`; unichain `0xfde89e...21c8af`; polygon [`0x2a7bb0...6125db`](./contracts/polygon-137/0x2a7bb046f881f27e9173f7c2066e2945cb6125db/); base `0x67a3bf...6fd6f1` | ✅ Audited |
| PositionManagement | unknown | base | 7 deployments: unichain `0x691a03...f84d7e`; unichain `0xdc64b3...d845c5`; base [`0x474140...b0e220`](./contracts/base-8453/0x474140b7eff8c89522c0a4e2a8880a6018b0e220/); base `0x771438...6f2630`; base `0x7f5e8a...9e8370`; base `0xf793e4...2a7447`; arbitrum `0xd9e45f...add906` | ✅ Audited |
| RebalanceLogic | unknown | base | 5 deployments: bsc `0x32387c...b1c60e`; unichain `0x55afba...2a57e5`; unichain `0xeaaf78...f29076`; polygon `0x2af0f8...475643`; base [`0x0e283a...a2c386`](./contracts/base-8453/0x0e283a53499d73942d434fdd79b4480a1ea2c386/) | ✅ Audited |
| RelayerDeployer | unknown | unichain | 6 deployments: unichain [`0x23eefb...646e0e`](./contracts/unichain-130/0x23eefb172dc9af998637276acdf660713e646e0e/); unichain `0x46456c...6927bb`; unichain `0x49602a...ecd9d2`; unichain `0x5bbb91...e6d153`; unichain `0x637233...19b46c`; unichain `0xff8151...548044` | ✅ Audited |
| RelayerFactory | registry | unichain | 30 deployments: bsc `0x638b88...3fb6d7`; unichain [`0x1002a4...4fd2ad`](./contracts/unichain-130/0x1002a41c5c69737cc34cc8b0d1d0403eac4fd2ad/); unichain `0x1616b3...906c58`; unichain `0x20983c...491149`; unichain `0x3973d6...ce6a5f`; unichain `0x41298b...d2fe2d`; unichain `0x4382f4...8849e0`; unichain `0x4b817b...cf61b8`; unichain `0x568be3...232571`; unichain `0x5770f6...3c2ec8`; unichain `0x6185f4...d4d593`; unichain `0x7d6531...3f304a`; unichain `0x881bb5...74b202`; unichain `0x96336d...21d8fd`; unichain `0x9eaac6...7d2c82`; unichain `0xa82eb7...f9a387`; unichain `0xaab2f3...c1a08f`; unichain `0xc91772...486352`; unichain `0xc91f93...f7dba1`; unichain `0xc97da9...718157`; unichain `0xc9e5ce...1560a9`; unichain `0xe72283...373662`; unichain `0xed72f1...dfbd3c`; unichain `0xf586c1...164670`; unichain `0xfc256b...856589`; unichain `0xfe8a10...985186`; unichain `0xff01a6...c447ff`; polygon `0xd24817...033586`; base `0xefbb86...e69dd3`; arbitrum `0x9831ea...ba5657` | ✅ Audited |
| RelayerLogic | unknown | unichain | 2 deployments: unichain [`0x5114d7...136b62`](./contracts/unichain-130/0x5114d751295ffb66680d4e9a33286469b4136b62/); unichain `0x72126a...e2abfa` | ✅ Audited |
| SuperchainLBPStrategyFactory | registry | unichain | 30 deployments: unichain [`0x08ed53...ac1062`](./contracts/unichain-130/0x08ed533b18f0b80e4ed9a15e2049836c04ac1062/); unichain `0x0dcfcf...e945b7`; unichain `0x1156a4...5ad6f9`; unichain `0x122697...387eb5`; unichain `0x164154...86a82e`; unichain `0x174303...2f71b1`; unichain `0x21a1ca...ada662`; unichain `0x2e2547...bfe823`; unichain `0x3dee56...a7e540`; unichain `0x4f79ad...0a5209`; unichain `0x562647...eaa0d9`; unichain `0x6c8f6b...57f943`; unichain `0x6d71c3...b2de8b`; unichain `0x6e096e...3df360`; unichain `0x710a6c...9480f0`; unichain `0x73a5de...c2f850`; unichain `0x780a7e...b95263`; unichain `0x8655a0...e1abf3`; unichain `0x94b798...283773`; unichain `0xa4c7df...b5efd8`; unichain `0xaaab78...790760`; unichain `0xb13310...7dce28`; unichain `0xc46741...b895d1`; unichain `0xea7b0d...01b01f`; unichain `0xf19f25...c82acf`; unichain `0xf1d780...473e4f`; unichain `0xf2ac59...4dc9e5`; unichain `0xfa332d...1127ff`; unichain `0xfa4cb2...3fc7a6`; unichain `0xfebed2...7d4c4a` | ✅ Audited |
| Swap | unknown | blast | 6 deployments: blast [`0x2fcc0d...36a46f`](./contracts/blast-81457/0x2fcc0d25c4cd2084e402c16db68fbe206a36a46f/); blast `0x961605...24f77e`; blast `0xbc7d3b...c574e2`; blast `0xc225fa...9e4dfe`; blast `0xf14fb9...61e6fc`; blast `0xf3eb61...e0c0d6` | ✅ Audited |
| TickLibrary | unknown | base | 7 deployments: unichain `0x47cf9e...127dee`; unichain `0xd37bcc...62dc2a`; base [`0x3e79a7...17b081`](./contracts/base-8453/0x3e79a7d0115f3d17e2901b19363ae403ed17b081/); base `0xa566a5...d92253`; base `0xc0148b...551158`; base `0xc0c06e...602560`; arbitrum `0x4db406...1e28ef` | ✅ Audited |
| TokenLaunchFactory | registry | unichain | 17 deployments: unichain [`0x0d8e04...a34ae9`](./contracts/unichain-130/0x0d8e0485d36dc35529cf785fce8789be88a34ae9/); unichain `0x36ab82...d0aa8f`; unichain `0x3ef8cf...b0207a`; unichain `0x45d1f7...d2140e`; unichain `0x524fa2...32feac`; unichain `0x58c39e...83c1b3`; unichain `0x738e67...085404`; unichain `0x82c7c4...79c98c`; unichain `0xad5466...002e63`; unichain `0xbcb33f...6b0309`; unichain `0xc511ae...8a9334`; unichain `0xc82178...c9a178`; unichain `0xc83ae8...73cbfb`; unichain `0xc8ba92...830800`; unichain `0xcf1948...dc7a60`; unichain `0xd8f395...154b54`; unichain `0xefff76...bf2ba5` | ✅ Audited |
| TransparentUpgradeableProxy | proxy | mantle | 56 deployments: mantle [`0x013351...a2a5ea`](./contracts/mantle-5000/0x01335163aca394fda985cf578882d544efa2a5ea/); mantle `0x02a009...16a29e`; mantle `0x0be15c...3b9f30`; mantle `0x1559d1...392e55`; mantle `0x1ae685...5490e9`; mantle `0x1f7792...d57f4f`; mantle `0x2687aa...8c36c7`; mantle `0x3ce4ee...72b11f`; mantle `0x4cb8b7...108863`; mantle `0x4dac86...e01c61`; mantle `0x5778df...4e02d0`; mantle `0x66a5d4...6d6785`; mantle `0x745cc8...b0c298`; mantle `0x808b93...b0710f`; mantle `0x85324d...e1da17`; mantle `0x94fa35...652094`; mantle `0x9789b7...d15e27`; mantle `0xa99945...18a3d9`; mantle `0xac9a83...8be6e8`; mantle `0xad039a...a97bbd`; mantle `0xb8e819...4370d6`; mantle `0xbd9a81...a01f3d`; mantle `0xc491c1...fce4ce`; mantle `0xcaadc3...f89361`; mantle `0xccb87b...609d6c`; mantle `0xcec206...4d85e3`; mantle `0xcfb62e...e39a71`; mantle `0xdb340b...f52cd6`; mantle `0xe49e28...3ed537`; mantle `0xe7f55c...fcff5d`; mantle `0xf740c9...6111bd`; mantle `0xf8e668...54c712`; mantle `0xfb877e...2019fc`; mantle `0xfcf203...21a1e5`; mantle `0xff8fae...cf45bd`; avalanche `0x03ae90...4a08cb`; avalanche `0x1983ac...ac3ba3`; avalanche `0x1e9792...65e5e0`; avalanche `0x1efb5d...bffc22`; avalanche `0x1f1ca4...ad123e`; avalanche `0x30e5c7...d2f174`; avalanche `0x562c87...504dc1`; avalanche `0x5a424f...ee0b0d`; avalanche `0x78727b...692279`; avalanche `0x7ef5e8...2e51cc`; avalanche `0x8a29a9...f38f38`; avalanche `0x8f88f9...59f8a1`; avalanche `0x976861...84a593`; avalanche `0x9d8d8b...39d967`; avalanche `0xa45f03...d47c4d`; avalanche `0xa57901...b1b148`; avalanche `0xbaaa5a...89d6fe`; avalanche `0xbe9f34...bc3426`; avalanche `0xcc65ab...f54dc3`; avalanche `0xcfbeca...a86834`; avalanche `0xfa3004...c80545` | ✅ Audited |
| UniProxyETH | unknown | avalanche | 7 deployments: bsc `0x7c4891...b8a25c`; bsc `0xc1835b...9bbb1a`; avalanche [`0x01b6f0...ab6177`](./contracts/avalanche-43114/0x01b6f06e499340b83b54fba483b15b54e9ab6177/); avalanche `0x20940e...ea5528`; avalanche `0x521916...450129`; berachain `0x2687aa...8c36c7`; berachain `0xc62697...85ef39` | ✅ Audited |
| UniProxyV2 | unknown | arbitrum | [`0xb5d3e1...fe6e40`](./contracts/arbitrum-42161/0xb5d3e19f67aee18bce0533b8304debfd06fe6e40/) | ✅ Audited |
| WithdrawLogic | operational_periphery | base | 5 deployments: bsc `0x675d7d...c97974`; unichain `0xb8e045...e4362a`; unichain `0xee5889...efacfd`; polygon `0x883135...81c0d8`; base [`0x150111...4148c3`](./contracts/base-8453/0x15011164801305a7621c0e4eed4dd97b504148c3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | [`0x4006be...93dc25`](./contracts/ethereum-1/0x4006bed7bf103d70a1c6b7f1cef4ad059193dc25/) | ⚠️ Unaudited |
| AntiBotStandardToken | token | arbitrum | [`0x418749...fc7e07`](./contracts/arbitrum-42161/0x41874907a1a5ed455da40b248dc10fe5effc7e07/) | ⚠️ Unaudited |
| AuctionStateLens | periphery | unichain | 2 deployments: unichain [`0x2c4938...4758f3`](./contracts/unichain-130/0x2c49383f8a82b5efb201571bddabb4cd294758f3/); unichain `0xdcf274...9b4dac` | ⚠️ Unaudited |
| BuybackDeployer | unknown | unichain | 14 deployments: unichain [`0x04b1b8...52b771`](./contracts/unichain-130/0x04b1b8028ffcf6a012953609ae5ab3eef152b771/); unichain `0x0f0263...4c64a6`; unichain `0x18961e...6c9b11`; unichain `0x1a52c3...e9d461`; unichain `0x32adb5...8b3b7f`; unichain `0x44834e...2316c7`; unichain `0x5dc608...332437`; unichain `0x7629f3...9996d4`; unichain `0x83109b...e60c7e`; unichain `0x989707...4d4cc0`; unichain `0xafa994...e9eaf4`; unichain `0xbb949c...3a75ee`; unichain `0xe4d9da...7325eb`; unichain `0xf9a31b...726604` | ⚠️ Unaudited |
| CallOptionFactoryDeployer | registry | unichain | 14 deployments: unichain [`0x044c32...4cd4ef`](./contracts/unichain-130/0x044c32b8a70cab92804c5f4c0b784a8ef64cd4ef/); unichain `0x233b16...ee5b90`; unichain `0x4120ca...063576`; unichain `0x4370d6...b6463c`; unichain `0x6357b2...2c1bad`; unichain `0x68ae6a...5a1157`; unichain `0x6cb770...38b4c6`; unichain `0x7d0c01...0ce162`; unichain `0x97422f...748680`; unichain `0xa3debc...6eda4b`; unichain `0xaa22cf...cc4b62`; unichain `0xdb92d3...8c89e6`; unichain `0xf89eeb...53dd66`; unichain `0xfd96bd...943eee` | ⚠️ Unaudited |
| CleopatraHypervisor | unknown | mantle | 20 deployments: mantle [`0x0180c9...9f7efa`](./contracts/mantle-5000/0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa/); mantle `0x07d5f8...21357f`; mantle `0x099dd2...6cc182`; mantle `0x224972...aa932d`; mantle `0x2dbafd...87715f`; mantle `0x5125f7...c10a54`; mantle `0x56f12f...70dc4e`; mantle `0x654fb3...38c003`; mantle `0x77a9bb...256e7c`; mantle `0x78727b...692279`; mantle `0x89bd07...493344`; mantle `0x8d0790...00464f`; mantle `0x8dfd2a...c5a374`; mantle `0x97083c...9525f1`; mantle `0xa1a3d3...90d917`; mantle `0xb26d1d...ad891f`; mantle `0xba1af4...4bc858`; mantle `0xbf44c1...2a9536`; mantle `0xc0766f...017d38`; mantle `0xfa81e2...5688d0` | ⚠️ Unaudited |
| ContinuousClearingAuctionFactory | registry | unichain | 2 deployments: unichain [`0x7916fa...09f4d4`](./contracts/unichain-130/0x7916fae61d32b9c55211b965c37bd083c909f4d4/); unichain `0x8c03ed...d10e45` | ⚠️ Unaudited |
| DelegatedAccount | core_logic | unichain | [`0x5a4b38...18bc56`](./contracts/unichain-130/0x5a4b38a6feb3d901431adf7e1d3ebfc10818bc56/) | ⚠️ Unaudited |
| DepositProxy | unknown | ethereum | 11 deployments: ethereum [`0x031464...ee2abf`](./contracts/ethereum-1/0x031464af67c612a54676dd5dd71ea86605ee2abf/); ethereum `0x1f3b71...672de2`; ethereum `0x25b2cd...4c08f1`; ethereum `0x380372...3f8a28`; ethereum `0x5fa064...0acaef`; ethereum `0x6ab5a4...bb55d2`; ethereum `0x6d25c4...c85e62`; ethereum `0x73a095...2be0d0`; ethereum `0x7cf843...2cd75f`; ethereum `0x923886...2085dd`; ethereum `0x950cc5...42db9a` | ⚠️ Unaudited |
| DynamicFeeHookRegistry | registry | unichain | 20 deployments: unichain [`0x0340e3...c77dc3`](./contracts/unichain-130/0x0340e3c5e8971daf8aff06d9c4454e3f24c77dc3/); unichain `0x094057...11fd48`; unichain `0x0b6a89...fb86e5`; unichain `0x211cfd...4b0069`; unichain `0x2f9f18...32edf7`; unichain `0x355c45...5f03ab`; unichain `0x36f7cc...30f397`; unichain `0x48128e...05f85c`; unichain `0x720314...7f5bdc`; unichain `0xbe2b05...f70b2b`; unichain `0xbeea31...306ef9`; unichain `0xceda8d...e445f0`; unichain `0xdaebe1...9db2ef`; unichain `0xe38cf4...39a3ea`; unichain `0xe8ca75...554d1d`; unichain `0xff0f21...2969df`; arbitrum `0x7fc0c8...607623`; arbitrum `0xaad422...33cb13`; arbitrum `0xadc465...95f474`; arbitrum `0xff327c...7d242a` | ⚠️ Unaudited |
| DynamicFeeLimitOrderHookRegistry | registry | unichain | 15 deployments: unichain [`0x00999a...2311b6`](./contracts/unichain-130/0x00999af6ca791696be772aa4d40739d8612311b6/); unichain `0x1163d6...a39ac4`; unichain `0x192bf4...124da6`; unichain `0x51268d...b1bda9`; unichain `0x72377a...28cac6`; unichain `0x76be14...ef1da7`; unichain `0x9b4832...c2d3d0`; unichain `0xad1f3d...a15a83`; unichain `0xd11dd2...c81a21`; unichain `0xdca67d...0fc867`; unichain `0xf8ff70...cf5797`; arbitrum `0x27612e...96f003`; arbitrum `0x95a740...5cc6fa`; arbitrum `0xccc605...a8d930`; arbitrum `0xfcb3a1...83bfac` | ⚠️ Unaudited |
| ERC20PresetMinterPauser | token | ethereum | [`0x8f82eb...1b94c9`](./contracts/ethereum-1/0x8f82eb478d02eb4cec40a0d37b083588111b94c9/) | ⚠️ Unaudited |
| Extract | unknown | ethereum | 10 deployments: ethereum [`0x34276e...0e2b94`](./contracts/ethereum-1/0x34276e77b599977fb20752d02f0c1708710e2b94/); ethereum `0x468281...e96f79`; ethereum `0x71ffa5...d8cd05`; ethereum `0x898fa6...f73086`; ethereum `0x9575fa...508b0b`; ethereum `0xb2219a...7d312b`; ethereum `0xd28c2e...4a7c18`; ethereum `0xd338d8...903e6a`; ethereum `0xf367c8...f5c72f`; ethereum `0xfbceac...e0ac64` | ⚠️ Unaudited |
| FeeRecipientV2 | operational_periphery | sonic | 12 deployments: sonic [`0x074361...da1d64`](./contracts/sonic-146/0x0743618e342f4351890e81f6815f75753cda1d64/); sonic `0x216d3d...416ebb`; sonic `0x65ac62...26680b`; sonic `0x824161...6be059`; sonic `0x8cb79d...d452ff`; sonic `0xcfd4a6...0876a8`; sonic `0xe8a656...552524`; avalanche `0x9df9f7...3e97b7`; avalanche `0xaabc1c...3f476c`; avalanche `0xfb92d3...bf2671`; berachain `0x20da82...50679a`; berachain `0x8f88f9...59f8a1` | ⚠️ Unaudited |
| Gamma | unknown | ethereum | 2 deployments: ethereum [`0x6bea7c...44e197`](./contracts/ethereum-1/0x6bea7cfef803d1e3d5f7c0103f7ded065644e197/); ethereum `0x8a539c...ed793a` | ⚠️ Unaudited |
| IncentiveMaker | unknown | berachain | [`0x2fa5e2...203aa4`](./contracts/berachain-80094/0x2fa5e2e2a49de9375047225b7cea4997e8203aa4/) | ⚠️ Unaudited |
| InitialDepositLens | periphery | bsc | 46 deployments: bsc [`0x049a72...bdf734`](./contracts/bsc-56/0x049a72032a08409712268aae1bd6f0a118bdf734/); unichain `0x1a5a1d...55c214`; unichain `0x1d37f4...c78f24`; unichain `0x24036d...f5d419`; unichain `0x2a9e31...05a4b1`; unichain `0x2aa019...8352c9`; unichain `0x2ab862...934aa9`; unichain `0x34624f...1d1013`; unichain `0x3c80d8...e22985`; unichain `0x4c3eef...53aa98`; unichain `0x4cfcc8...a7728c`; unichain `0x4f90d0...8252eb`; unichain `0x505aad...d09947`; unichain `0x52122d...b4d11d`; unichain `0x617582...84f4c9`; unichain `0x6b6741...89fc01`; unichain `0x71e852...ad4c28`; unichain `0x74efd7...07394f`; unichain `0x780ccc...c05c8c`; unichain `0x7d99bd...69c1f3`; unichain `0x86fa3e...acbf37`; unichain `0x8715d5...9cd0e7`; unichain `0x9293c5...e9c7f6`; unichain `0x99cbec...31cd36`; unichain `0x9dcf01...f1ea6a`; unichain `0xa3362a...983ca7`; unichain `0xa7cc89...4b5d1b`; unichain `0xaa5371...66eeb0`; unichain `0xb0a17c...99a7fc`; unichain `0xb51fca...218160`; unichain `0xb824bf...741e12`; unichain `0xbad1d2...0f1048`; unichain `0xbe0067...b805b5`; unichain `0xc40425...44911b`; unichain `0xd83524...d4961e`; unichain `0xdf9b14...6259cf`; unichain `0xe19057...a039ed`; unichain `0xe270e4...cdb708`; unichain `0xe2a639...6a26c8`; unichain `0xe5f396...138b90`; unichain `0xe70845...0a398a`; unichain `0xebf162...8d8cdc`; unichain `0xedb74b...0ed907`; unichain `0xf9873f...8489b7`; polygon `0x56dbae...718d0a`; base `0xa23eca...5bc912` | ⚠️ Unaudited |
| InitialDepositLensLogic | periphery | polygon | 5 deployments: bsc `0xba0fe0...52741e`; unichain `0xa40565...101ded`; unichain `0xbc19e5...970e70`; polygon [`0x428ded...ef7091`](./contracts/polygon-137/0x428dedf862f5c05f5813efa5ef54d28cc1ef7091/); base `0x9e3360...fa8d24` | ⚠️ Unaudited |
| LaunchpadOrderBookFactory | registry | unichain | 2 deployments: unichain [`0x7482fa...3c3691`](./contracts/unichain-130/0x7482facd32d2341dbc8984459be75116dc3c3691/); unichain `0xc97ead...e2af27` | ⚠️ Unaudited |
| LaunchpadPositionFactory | registry | unichain | 3 deployments: unichain [`0x44169f...b2837f`](./contracts/unichain-130/0x44169f8971cdc3f2efe434971518fb188cb2837f/); unichain `0x5d9018...b02333`; unichain `0x9bc1f3...179c4b` | ⚠️ Unaudited |
| LimitOrderLensTickLogic | periphery | arbitrum | [`0x572a98...32c22c`](./contracts/arbitrum-42161/0x572a9853be18c54b8e9924658a70f6c40932c22c/) | ⚠️ Unaudited |
| Mainframe | unknown | ethereum | [`0xf1bfb6...9bc238`](./contracts/ethereum-1/0xf1bfb6748e3362cfdbdc49377be8731c769bc238/) | ⚠️ Unaudited |
| MasterChef | unknown | manta | 7 deployments: manta [`0x3fe127...e7f918`](./contracts/manta-169/0x3fe1278d7dd785e234b9d2969c8ca7d8e1e7f918/); manta `0x6d257b...da5aa7`; manta `0xd359e0...42ae71`; moonbeam `0x451f2d...47c3a0`; moonbeam `0x97840d...d71f73`; moonbeam `0xd5f487...41f35b`; moonbeam `0xecfa9c...993f17` | ⚠️ Unaudited |
| MultiPositionLens | periphery | unichain | 3 deployments: unichain [`0x4fc42c...a14d8c`](./contracts/unichain-130/0x4fc42c016aebdf9167a19b56fc2a56785ca14d8c/); unichain `0x718378...2a59ef`; unichain `0x98cc4a...e5454f` | ⚠️ Unaudited |
| PoolFactory | registry | base | 14 deployments: unichain `0xd295e9...42a71a`; base [`0x34c2c9...647fcd`](./contracts/base-8453/0x34c2c92d01dbbe45b4542296c6730cf7d9647fcd/); base `0x3755be...9423d8`; base `0x39aacd...64c6b8`; base `0x59acf9...10afa1`; base `0x6652fc...60f554`; base `0x8099f9...42249b`; base `0x89fcac...735de0`; base `0xb54b7c...d3d96b`; base `0xb7fd7f...41fdfc`; base `0xbb8103...0d1ed7`; base `0xc0932e...19792f`; arbitrum `0xaf74ea...ebc6c4`; arbitrum `0xd6bb8d...8b3fb8` | ⚠️ Unaudited |
| PowerSwitchFactory | registry | ethereum | [`0xac01d9...5f747a`](./contracts/ethereum-1/0xac01d93be6f7acf071011954fe2d74e4755f747a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | berachain | 22 deployments: mantle `0xa0470a...2e2032`; mantle `0xcf4a87...f7ab93`; avalanche `0x0663c7...5f5331`; avalanche `0x126da3...5356eb`; avalanche `0x152bf6...a41363`; avalanche `0x1b063e...802403`; avalanche `0x336536...bc4662`; avalanche `0x34027c...05da41`; avalanche `0x5a4a03...180b58`; avalanche `0x6874bd...cb8cd0`; avalanche `0x7b31ce...58867d`; avalanche `0x82fceb...c27845`; avalanche `0xa2f65b...e67fcc`; avalanche `0xadfc52...d2513e`; avalanche `0xd96b18...5937d1`; avalanche `0xfd8662...cbfe27`; avalanche `0xfeed73...a828da`; berachain [`0x0180c9...9f7efa`](./contracts/berachain-80094/0x0180c95ef11eafc12fcaadc9c2c5af08fe9f7efa/); berachain `0x04f63f...2bbfcd`; berachain `0x551ee0...dfcf35`; berachain `0xa077e4...c28fa4`; berachain `0xa52ecc...47d7f0` | ⚠️ Unaudited |
| RebalanceSwapLogic | unknown | unichain | 5 deployments: bsc `0x471d80...db8580`; unichain [`0x0ab9cf...7330c3`](./contracts/unichain-130/0x0ab9cff1202930cfa30436bea1ac0357387330c3/); unichain `0x54e411...ec588c`; polygon `0xaf74ea...ebc6c4`; base `0x7cbefc...f755c0` | ⚠️ Unaudited |
| Registry | registry | polygon | [`0xaec731...27adfd`](./contracts/polygon-137/0xaec731f69fa39ad84c7749e913e3bc227427adfd/) | ⚠️ Unaudited |
| Rewarder | unknown | moonbeam | 9 deployments: manta `0x1e9792...65e5e0`; manta `0x2fa5e2...203aa4`; manta `0x392ac7...1e9fea`; moonbeam [`0x03ae90...4a08cb`](./contracts/moonbeam-1284/0x03ae90d6f01e05b2858dccc07daed16a244a08cb/); moonbeam `0x06895d...c547b8`; moonbeam `0x3aaaed...134869`; moonbeam `0x59822e...81f51a`; moonbeam `0x6c5095...5870a8`; moonbeam `0xa3d974...bfe1e8` | ⚠️ Unaudited |
| RewardPoolFactory | registry | ethereum | [`0x4bd940...b5a2ea`](./contracts/ethereum-1/0x4bd9401bc6ba8f2f7ec20f7f8fa2cd8f91b5a2ea/) | ⚠️ Unaudited |
| RewardsHypervisor | unknown | ethereum | 2 deployments: ethereum [`0x40d2eb...80e0bb`](./contracts/ethereum-1/0x40d2ebb9c93f64a5ec60afb3ccbf6398f680e0bb/); ethereum `0x572563...8ba7b5` | ⚠️ Unaudited |
| Router | adapter | ethereum | 18 deployments: ethereum [`0x045a63...1ccda7`](./contracts/ethereum-1/0x045a632a614e4f9e2e72672d20354bb66e1ccda7/); ethereum `0x194335...6ff9d1`; ethereum `0x1d5cc2...52a744`; ethereum `0x252541...575694`; ethereum `0x2ad5ad...af4a02`; ethereum `0x49a888...59cd93`; ethereum `0x747566...4bde92`; ethereum `0x767fff...7eae8d`; ethereum `0x81cfdc...fb2dec`; ethereum `0x86ac98...a1635c`; ethereum `0x8759e9...4adf4b`; ethereum `0x922618...1ed3ed`; ethereum `0x92d853...975b16`; ethereum `0x994303...0f38e8`; ethereum `0xca17f5...b78536`; ethereum `0xd3a7b7...e9b6d6`; ethereum `0xeb42c4...211308`; ethereum `0xf5ad91...cef3e0` | ⚠️ Unaudited |
| SendLock | unknown | berachain | [`0x3791db...c18186`](./contracts/berachain-80094/0x3791db67681ec64482b6c76fd9b5357523c18186/) | ⚠️ Unaudited |
| SimpleLens | periphery | unichain | 72 deployments: bsc `0x292218...1169ec`; unichain [`0x009528...8ac824`](./contracts/unichain-130/0x009528340fd69814182d904d70deec21048ac824/); unichain `0x0a83c7...89516c`; unichain `0x10e02f...18fa16`; unichain `0x18e499...8de701`; unichain `0x251908...3fcf80`; unichain `0x25258c...ba4af7`; unichain `0x2608ac...676e23`; unichain `0x26883f...1094b4`; unichain `0x26a089...5822a1`; unichain `0x26dfe0...ae9fe1`; unichain `0x2710b3...d2a6f8`; unichain `0x31eb98...d114eb`; unichain `0x367b52...31c95d`; unichain `0x3d1c6e...454098`; unichain `0x4023a6...624b92`; unichain `0x42c90f...8c1554`; unichain `0x53e119...1631e9`; unichain `0x5ce5a8...43b03d`; unichain `0x5d1b42...7fd298`; unichain `0x60e8ca...4517b1`; unichain `0x62651e...d161b7`; unichain `0x632d2c...69edf0`; unichain `0x6a47e3...7a788a`; unichain `0x6d648f...28fa36`; unichain `0x710ad7...277670`; unichain `0x755365...779a8d`; unichain `0x779635...c187dd`; unichain `0x7d4007...4d11b2`; unichain `0x7e16b1...0f4098`; unichain `0x80c433...5d9576`; unichain `0x80c6ba...b7e9c3`; unichain `0x83c63f...246552`; unichain `0x8523ff...4208d7`; unichain `0x902657...a85253`; unichain `0x92edd1...93b209`; unichain `0x946e7b...e0c18d`; unichain `0x985268...bc64fc`; unichain `0x99addd...cb195d`; unichain `0x9b61be...35c7f0`; unichain `0x9e7dce...6beb56`; unichain `0xa1b0c4...d0a010`; unichain `0xa24fd4...19a4f8`; unichain `0xa338d2...edad67`; unichain `0xabba8b...0df54f`; unichain `0xaf94e1...c8ff21`; unichain `0xb12f1b...3e227a`; unichain `0xb46f0a...a2e8eb`; unichain `0xb97756...04dc3e`; unichain `0xbe5fbf...eb6d72`; unichain `0xcab30a...81b1e9`; unichain `0xcb85ae...6d915b`; unichain `0xcc4733...370eba`; unichain `0xd6f305...18d251`; unichain `0xd736e4...efac31`; unichain `0xd9091f...edb7c0`; unichain `0xda290f...57c2d8`; unichain `0xdaaed9...5d9865`; unichain `0xdc0957...0331c7`; unichain `0xdeae3c...c425be`; unichain `0xe02788...fa9f43`; unichain `0xe124c8...d9b89a`; unichain `0xe177fd...77994c`; unichain `0xe3be67...7a7383`; unichain `0xe51655...884853`; unichain `0xe54b05...81250f`; unichain `0xe8949b...24d313`; unichain `0xebb431...b10bfd`; unichain `0xf0d7b4...0d180b`; unichain `0xf58d4c...fe8e94`; polygon `0xf94916...ec9360`; base `0x57c130...9f7bb0` | ⚠️ Unaudited |
| SimpleLensInMin | periphery | polygon | 5 deployments: bsc `0x72c9d4...4200eb`; unichain `0x4a2f4b...c8941a`; unichain `0x9698ab...0a2a01`; polygon [`0x0108f9...c8d9cf`](./contracts/polygon-137/0x0108f9dfc04596ce4ee55cb74ea92e5eeec8d9cf/); base `0x6eb7f0...f87fa2` | ⚠️ Unaudited |
| SimpleLensInMinPreview | periphery | base | 5 deployments: bsc `0xcab956...b9f02c`; unichain `0x683411...2fde47`; unichain `0x861992...6043f2`; polygon `0xfee3d9...763808`; base [`0x05d647...7e30a8`](./contracts/base-8453/0x05d647f51a933186d4945f2de1cad196537e30a8/) | ⚠️ Unaudited |
| SimpleLensLibrary | periphery | base | 5 deployments: bsc `0x34cf1a...be79c9`; unichain `0xa8782a...d3049c`; unichain `0xe971ee...8a8cda`; polygon `0xf2a761...38ce80`; base [`0x13f741...6f199f`](./contracts/base-8453/0x13f741012541fd57cf2056421658125b7c6f199f/) | ⚠️ Unaudited |
| SimpleLensRatioUtils | periphery | unichain | 5 deployments: bsc `0xaad45e...b57c57`; unichain [`0x53d4c1...06db0a`](./contracts/unichain-130/0x53d4c13b6d838c9b9817f582c3ce5be3b106db0a/); unichain `0x557d4c...8a4350`; polygon `0xca3324...15a8c0`; base `0x7c6ce0...beaaf0` | ⚠️ Unaudited |
| SimpleLensRatioUtilsPositions | periphery | unichain | 5 deployments: bsc `0xb7471b...b4af73`; unichain [`0x28ed6b...1f7efe`](./contracts/unichain-130/0x28ed6bacdda981c9055de8c513c4a995c81f7efe/); unichain `0xfdaa6e...48886e`; polygon `0xb0617d...8c1184`; base `0xa1b4ca...e31ca6` | ⚠️ Unaudited |
| SwapThenLimitOrderHelper | periphery | unichain | 21 deployments: unichain [`0x019f56...a033bf`](./contracts/unichain-130/0x019f567bbcfcb9d70ce15657d22098ca29a033bf/); unichain `0x19dd5a...29e164`; unichain `0x24e740...f3be4a`; unichain `0x277387...fe20e3`; unichain `0x38d472...ff4ac3`; unichain `0x3aa546...1646c9`; unichain `0x4d72c2...c2607a`; unichain `0x4f71d0...525789`; unichain `0x5aaf1b...84f946`; unichain `0x8665ee...f6d7ce`; unichain `0x8d36e2...98d2b0`; unichain `0xa5cb10...e95646`; unichain `0xb8f9dc...bfcfc5`; unichain `0xb95a04...21df00`; unichain `0xd95001...154a45`; unichain `0xd9de86...d45cc1`; unichain `0xdb9aff...d52cf7`; unichain `0xdbbb91...faea0f`; unichain `0xff19ce...14b269`; base `0xa6d830...362c49`; base `0xd1d27d...7b4354` | ⚠️ Unaudited |
| TokenFactory | registry | unichain | 2 deployments: unichain [`0x1bb667...1abab1`](./contracts/unichain-130/0x1bb66795f843d3e207664aafdd19df3ae91abab1/); unichain `0x95d9b1...1d841b` | ⚠️ Unaudited |
| TokenLaunchFactoryLens | registry | unichain | 3 deployments: unichain [`0x59d994...4d107f`](./contracts/unichain-130/0x59d994025c4c80385758538edaecdfc7ca4d107f/); unichain `0xb77ccc...7f0931`; unichain `0xcb1f5a...6ad749` | ⚠️ Unaudited |
| TokenLaunchFactoryV2 | registry | unichain | 4 deployments: unichain [`0x2cef90...3b459b`](./contracts/unichain-130/0x2cef90b7cf69eb016af4781423e11136903b459b/); unichain `0x39a343...27eb65`; unichain `0x63d381...ea6a15`; unichain `0xd8f7b6...8ae689` | ⚠️ Unaudited |
| TokenLaunchFactoryV3 | registry | unichain | 9 deployments: unichain [`0x1e3b4c...d779f8`](./contracts/unichain-130/0x1e3b4cecfa5c05fa74bdf281dfd6e368c9d779f8/); unichain `0x36589d...498283`; unichain `0x834370...f84af3`; unichain `0x992d09...42132c`; unichain `0x9f2fc3...32ad57`; unichain `0xb4e882...32d727`; unichain `0xe3c927...a6d8bb`; unichain `0xf4f9c8...de7219`; unichain `0xf92aea...f2f09a` | ⚠️ Unaudited |
| TokenVestingFactoryDeployer | operational_periphery | unichain | 14 deployments: unichain [`0x1435dd...6d7297`](./contracts/unichain-130/0x1435ddc2c8fa2400aeb94a270bf89c7f306d7297/); unichain `0x1b1d73...122fa5`; unichain `0x2eb852...32f854`; unichain `0x3faead...f04b26`; unichain `0x429de3...e8195c`; unichain `0x46cf7b...9c077e`; unichain `0x53b115...93b4b0`; unichain `0x6075c4...1dc7ae`; unichain `0x67b5e8...b98de8`; unichain `0x6ddf6a...e3344e`; unichain `0xadaab6...f76639`; unichain `0xb34818...603202`; unichain `0xb63eaa...9029b0`; unichain `0xeb1438...35d712` | ⚠️ Unaudited |
| UERC20Factory | registry | unichain | [`0xdf15f1...745be1`](./contracts/unichain-130/0xdf15f1ebd814a6eb2bb5bc9582cd1580b1745be1/) | ⚠️ Unaudited |
| UnilaunchBuybackDeployer | unknown | unichain | 5 deployments: unichain [`0x1f76d3...d846e8`](./contracts/unichain-130/0x1f76d32f063dd393bd4c3d0e179c5806b7d846e8/); unichain `0x4bc041...69c290`; unichain `0x65e29e...6286fc`; unichain `0xb38205...aa38ce`; unichain `0xcfdc82...93754c` | ⚠️ Unaudited |
| UnilaunchCallOptionFactoryDeployer | registry | unichain | 5 deployments: unichain [`0x14e8cf...4f3cb7`](./contracts/unichain-130/0x14e8cf6d5d1e83416a1984a5240105653a4f3cb7/); unichain `0x87ffe8...59dbf1`; unichain `0xa22cf8...8a2aa3`; unichain `0xe49240...9f8b30`; unichain `0xef692a...f4c641` | ⚠️ Unaudited |
| UnilaunchDelegatedAccount | core_logic | unichain | [`0x7d9f6d...622c9f`](./contracts/unichain-130/0x7d9f6d2c7f1a8efdd6074ef130b741cc5f622c9f/) | ⚠️ Unaudited |
| UnilaunchInitialDepositLens | periphery | unichain | 5 deployments: unichain [`0x1d1b7f...a9434a`](./contracts/unichain-130/0x1d1b7f5638c6444f28dcb8cb1e492a8c5ba9434a/); unichain `0x725857...a62141`; unichain `0x840287...7952c0`; unichain `0xab1bb5...0870de`; unichain `0xfa8ee7...c90628` | ⚠️ Unaudited |
| UnilaunchMultiPositionFactory | registry | unichain | 5 deployments: unichain [`0x0a79c4...707d26`](./contracts/unichain-130/0x0a79c4fdc717f5551a56b964b5c58f0b75707d26/); unichain `0x317a43...c51db2`; unichain `0x446e54...3c0d13`; unichain `0xdb7b4f...fc6f01`; unichain `0xf35813...7caead` | ⚠️ Unaudited |
| UnilaunchOrderBookFactory | registry | unichain | 5 deployments: unichain [`0x0bc272...32ef30`](./contracts/unichain-130/0x0bc272226803808b7883d2e2fa59bc138e32ef30/); unichain `0x0e8a5a...3fd334`; unichain `0x486450...09005c`; unichain `0x5502cb...0dfd4b`; unichain `0x701f03...ce4a2f` | ⚠️ Unaudited |
| UnilaunchSimpleLens | periphery | unichain | 5 deployments: unichain [`0x138093...f85adb`](./contracts/unichain-130/0x1380933d39848583010b7a651ccad7cfdaf85adb/); unichain `0x85a2f2...42aa6d`; unichain `0x98ed29...8003e8`; unichain `0xde7a0c...5a4780`; unichain `0xffc685...c287fd` | ⚠️ Unaudited |
| UnilaunchSuperchainLBPStrategyFactory | registry | unichain | 5 deployments: unichain [`0xaab276...27c6c7`](./contracts/unichain-130/0xaab276f8f02085a0971cf7f1ad562279b227c6c7/); unichain `0xc7c6a1...d357c5`; unichain `0xd9d171...efe13c`; unichain `0xe1cd68...7aa644`; unichain `0xfd6200...7fdbc0` | ⚠️ Unaudited |
| UnilaunchTokenLaunchFactory | registry | unichain | 5 deployments: unichain [`0x2462fc...ef51fd`](./contracts/unichain-130/0x2462fc6277784438305485ea7bbb6c982cef51fd/); unichain `0x777b31...b489e2`; unichain `0xa055a5...f6a764`; unichain `0xa98080...3c291c`; unichain `0xf8a424...e34a56` | ⚠️ Unaudited |
| UnilaunchTokenVestingFactoryDeployer | operational_periphery | unichain | 5 deployments: unichain [`0x00d2c1...677653`](./contracts/unichain-130/0x00d2c101532a4b62d81924b014bb1978e2677653/); unichain `0x25d8c5...ebf020`; unichain `0x2d7024...d60618`; unichain `0x41a6cd...814db1`; unichain `0x99f984...901b66` | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | 21 deployments: ethereum [`0x1b718a...fe0e1f`](./contracts/ethereum-1/0x1b718a94b0eae9b8bb5ebf3abd069b5471fe0e1f/); ethereum `0x24ccf1...61bd2e`; ethereum `0x28462a...2ea013`; ethereum `0x2b88e2...0ae7cc`; ethereum `0x3661e5...877d0e`; ethereum `0x3c2deb...b78b04`; ethereum `0x45af26...064e2f`; ethereum `0x73fd19...d3e8c5`; ethereum `0x758f70...81b4cf`; ethereum `0x76eed6...85ddcf`; ethereum `0x7d4558...fd9db3`; ethereum `0x8633c9...9c19d4`; ethereum `0x883953...996867`; ethereum `0x953c32...b51a73`; ethereum `0xa47b1d...4aa918`; ethereum `0xb3575f...d54729`; ethereum `0xc42300...d24c71`; ethereum `0xe163e3...98b836`; ethereum `0xe300a0...937623`; ethereum `0xf7e64a...8c7c8e`; ethereum `0xfcba35...289536` | ⚠️ Unaudited |
| VolatilityDynamicFeeHookRegistry | registry | unichain | 20 deployments: unichain [`0x0d9aae...860a0a`](./contracts/unichain-130/0x0d9aaed03403177383261641242db2c6b6860a0a/); unichain `0x2c4c2b...6d7495`; unichain `0x455c11...f34949`; unichain `0x490820...0099f3`; unichain `0x535260...1ca002`; unichain `0x615f00...71bcb8`; unichain `0x70be41...0197cd`; unichain `0x827f5c...676fcc`; unichain `0x9fe3c5...b80d1f`; unichain `0xac8cfd...9a7a1f`; unichain `0xac9742...36b433`; unichain `0xb131a2...88ec1c`; unichain `0xb457ef...31b0c9`; unichain `0xd2cfec...477d86`; unichain `0xd5625e...059348`; unichain `0xe22053...0ffa67`; arbitrum `0x1d1170...ca1ad3`; arbitrum `0x9a74a9...90bcdb`; arbitrum `0xb70f0d...19563c`; arbitrum `0xe8abdc...b69285` | ⚠️ Unaudited |
| VolatilityDynamicFeeLimitOrderHookRegistry | registry | unichain | 15 deployments: unichain [`0x0b8e46...4ecc01`](./contracts/unichain-130/0x0b8e46cd2fcd6d6b2eb57128fc0f540fd24ecc01/); unichain `0x1fd1be...11df2c`; unichain `0x3812ef...832948`; unichain `0x3d24c9...296c00`; unichain `0x58a118...11194a`; unichain `0x5f5839...28d4cb`; unichain `0x8544b3...d16dfa`; unichain `0x914ab7...f9d99e`; unichain `0x9f5a52...af23c9`; unichain `0xaf392e...4e1524`; unichain `0xb4843f...ca717f`; arbitrum `0x27ebbe...04c79b`; arbitrum `0x9fd99b...be9611`; arbitrum `0xba00a2...5ec8c5`; arbitrum `0xe31f0f...07d3fc` | ⚠️ Unaudited |
| VolatilityOracle | operational_periphery | unichain | 39 deployments: unichain [`0x05b84f...5f289d`](./contracts/unichain-130/0x05b84f803367cfbeeef689c83ae5708af45f289d/); unichain `0x075017...7440e5`; unichain `0x12a6b7...5f755d`; unichain `0x1382ed...94716d`; unichain `0x14e603...9d052f`; unichain `0x156133...2a7a06`; unichain `0x1f71a3...e5c0d6`; unichain `0x203d0e...960a9b`; unichain `0x2ec859...655b8b`; unichain `0x2facc6...c78734`; unichain `0x37c73e...7a5162`; unichain `0x3f8a79...1a8bf6`; unichain `0x4c69d3...6a6c50`; unichain `0x50ab70...c37945`; unichain `0x5290f9...96048b`; unichain `0x5c32af...f12350`; unichain `0x62b89b...bac066`; unichain `0x635d94...68e079`; unichain `0x66208b...c9875b`; unichain `0x70740b...33042a`; unichain `0x7ed4d3...8285e7`; unichain `0x82c505...d71954`; unichain `0x96e74b...f9dc24`; unichain `0x9db986...c9e23f`; unichain `0xa095ae...09dd58`; unichain `0xb11abd...1ad71a`; unichain `0xb275f9...886c41`; unichain `0xbfed69...3d7947`; unichain `0xc347cc...863660`; unichain `0xd2449a...0026b9`; unichain `0xd78afa...77bb6b`; unichain `0xe36a3b...75ff75`; unichain `0xeabd5e...71d186`; unichain `0xf21d25...b6b00e`; unichain `0xfc530e...a1625f`; arbitrum `0x264271...3d4334`; arbitrum `0x43b7c3...38b9f8`; arbitrum `0xbe42a3...1accc6`; arbitrum `0xd5fbd1...0d21f6` | ⚠️ Unaudited |
| xGamma | unknown | ethereum | [`0x268050...747d8c`](./contracts/ethereum-1/0x26805021988f1a45dc708b5fb75fc75f21747d8c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Admin | unknown | moonbeam | 49 deployments: ethereum `0x684ba9...e6e35f`; ethereum `0x9595f5...a8fa76`; ethereum `0x9bbbd9...0409d9`; ethereum `0xc40ccd...11b38c`; ethereum `0xe02e8a...1807f0`; ethereum `0xf009e8...5ce402`; bsc `0xa7fb2e...8b3f93`; bsc `0xf769c5...231d42`; gnosis `0x317a0d...d890c0`; gnosis `0x5accda...f04501`; gnosis `0x6e9d70...4cbb4c`; gnosis `0xf44cec...812ead`; polygon `0xdab18d...3769a9`; sonic `0x562c87...504dc1`; sonic `0x5accda...f04501`; sonic `0x78727b...692279`; sonic `0xcf4a87...f7ab93`; manta `0x38f611...57b35f`; manta `0x8421c6...921d54`; manta `0xc4e1f9...071f1c`; metis `0x2fface...27973d`; metis `0x6e9d70...4cbb4c`; moonbeam [`0x120da4...355561`](./contracts/moonbeam-1284/0x120da43ab53dc2d6aec8eb5e7b7b4f01b3355561/); moonbeam `0x317a0d...d890c0`; moonbeam `0x62f88f...13b937`; moonbeam `0x6b3d98...506fa6`; moonbeam `0xbfedaf...523b1b`; moonbeam `0xe97e64...ece31a`; mantle `0x258d48...b200f2`; mantle `0x38f611...57b35f`; mantle `0xe7db86...9cde7d`; mode `0x38f611...57b35f`; celo `0x587f9d...9c44f2`; celo `0xe64c62...8b05b0`; celo `0xf6bb34...8590f0`; avalanche `0x297378...37386e`; avalanche `0x43b47a...879b21`; avalanche `0x683292...161300`; avalanche `0xb9ce3e...f0051f`; avalanche `0xc80358...b34388`; berachain `0x2577d8...800691`; berachain `0x6e9d70...4cbb4c`; berachain `0xccb87b...609d6c`; blast `0x3a8d70...3ee972`; blast `0x7eccd6...8fbcce`; blast `0x889dc5...32e3d9`; blast `0x8a9570...4968f0`; blast `0x9039f1...4dc128`; blast `0xcf4a87...f7ab93` | ✅ Audited (bytecode match) |
| MultiFeeDistribution | unknown | avalanche | 56 deployments: mantle `0x2fa5e2...203aa4`; mantle `0x317a0d...d890c0`; mantle `0x3aaaed...134869`; mantle `0x3cf539...ce11a1`; mantle `0x3fe127...e7f918`; mantle `0x451f2d...47c3a0`; mantle `0x47db9e...3c914f`; mantle `0x62f88f...13b937`; mantle `0x6a9641...5db8fa`; mantle `0x7ec87b...ef91c1`; mantle `0xb086c1...f80995`; mantle `0xd58222...544719`; mantle `0xffcb8f...9c4a37`; avalanche [`0x05ddeb...47fa1d`](./contracts/avalanche-43114/0x05ddebfef659edd764e9df563afda9117347fa1d/); avalanche `0x1ad248...b3a4d3`; avalanche `0x2c4378...8e7233`; avalanche `0x2ff4da...cb4478`; avalanche `0x303c3b...2633b2`; avalanche `0x35e831...ddec6c`; avalanche `0x36260c...6bef58`; avalanche `0x36dddb...93ef79`; avalanche `0x3f6a52...b62360`; avalanche `0x40a780...1509aa`; avalanche `0x45a743...e49424`; avalanche `0x47ed9a...87b8f9`; avalanche `0x4a96e9...bb65be`; avalanche `0x4fa44b...befc7e`; avalanche `0x533331...87c5b6`; avalanche `0x64e146...00a7ea`; avalanche `0x7a73ca...950208`; avalanche `0x834812...aebd2f`; avalanche `0x839d5b...92c291`; avalanche `0x8550fe...cbd949`; avalanche `0x86ecf4...d6e148`; avalanche `0x8dbfe3...4dae84`; avalanche `0x93ee00...c3a2b1`; avalanche `0xa41113...090481`; avalanche `0xaf0a0f...1c738e`; avalanche `0xb072b0...c8633a`; avalanche `0xc362c8...65b112`; avalanche `0xc36eb3...704be9`; avalanche `0xce1ebe...512070`; avalanche `0xd256cc...0615c9`; avalanche `0xeba559...1b4838`; avalanche `0xf141d8...209f40`; avalanche `0xf712a5...a00f21`; avalanche `0xf9403d...141760`; avalanche `0xf9cf89...a867a5`; berachain `0x44fa59...1cecc7`; berachain `0x5e3d92...890ba5`; berachain `0x606a84...83b7fd`; berachain `0x7edaa3...0b83a9`; berachain `0x99f7a5...8c1520`; berachain `0x9e04a2...7b1703`; berachain `0xf04d67...927551`; berachain `0xf3ff11...78d71e` | ✅ Audited (bytecode match) |
| UniProxy | unknown | blast | 59 deployments: ethereum `0x1d0d7d...9e34a4`; ethereum `0x1dceb4...00c161`; ethereum `0x2ac79b...6706db`; ethereum `0x2c5114...01a111`; ethereum `0x3f100a...5a2711`; ethereum `0x6954fe...1d5de3`; ethereum `0x6f2d4c...b68319`; ethereum `0x785454...7448b3`; ethereum `0x7ab903...0ce316`; ethereum `0x82fb26...410368`; ethereum `0x9a1018...7f9c08`; ethereum `0x9ec53b...595738`; ethereum `0xc8d5da...de1c07`; ethereum `0xd4bc33...bd814b`; ethereum `0xe25811...ce869f`; ethereum `0xeb5a0f...af8c89`; gnosis `0x38f611...57b35f`; gnosis `0x89bd07...493344`; polygon `0x60f191...78e75a`; polygon `0x71fdd8...0356be`; polygon `0xbcde21...b3cfa1`; polygon `0xe96349...badbd9`; sonic `0x06895d...c547b8`; sonic `0x38f611...57b35f`; sonic `0x816907...561218`; sonic `0xcd5a60...70f2c8`; sonic `0xfa81e2...5688d0`; manta `0x6ba3a3...2ca3f6`; manta `0xf3b112...0d4f60`; manta `0xfc13eb...153621`; metis `0x0d8f8e...4a380f`; metis `0x5accda...f04501`; moonbeam `0x1e2d8f...df35dd`; moonbeam `0x34c14d...09068e`; moonbeam `0x3f474e...28d5d1`; moonbeam `0x77a9bb...256e7c`; moonbeam `0xaad476...f5e0e6`; moonbeam `0xef4f95...4c9965`; mantle `0x891edb...662a95`; mantle `0xd043c2...dc60cc`; mantle `0xde4f68...5dce72`; mantle `0xfc13eb...153621`; mode `0xfc13eb...153621`; celo `0x34c4da...2e9055`; celo `0x387854...6b3c5f`; celo `0x88ae17...93f238`; celo `0x9b50d2...8c5b2e`; celo `0xd08b59...fd89b8`; celo `0xe62c32...692df4`; avalanche `0x0bf7a4...b1e600`; avalanche `0x53bcc0...2876a0`; avalanche `0xe3f75c...44d1f2`; berachain `0xf44cec...812ead`; blast [`0x055522...c068b9`](./contracts/blast-81457/0x0555221fe56d13daf9c67275424a81f2bdc068b9/); blast `0x0fd7b2...e6896b`; blast `0xc47812...7fd581`; blast `0xca8759...d37ada`; blast `0xcd5a60...70f2c8`; blast `0xf5da15...996433` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (12)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CamelStrategy | core_logic | unichain | 63 deployments: bsc `0x2ec776...117642`; bsc `0x769197...52dc04`; unichain [`0x018c22...c69b7e`](./contracts/unichain-130/0x018c229b7cbfb1be6810891327ec5a4bdfc69b7e/); unichain `0x01c79c...9bd963`; unichain `0x0c6f8f...b4611f`; unichain `0x1001bc...534d6b`; unichain `0x1592cf...713ce0`; unichain `0x1f32c2...8c0822`; unichain `0x201ac5...a4270b`; unichain `0x2d1896...1d1e2d`; unichain `0x2e4227...8ea768`; unichain `0x3257ee...c730e1`; unichain `0x32db70...5e0025`; unichain `0x333fe5...44bb10`; unichain `0x33c990...74b25d`; unichain `0x474406...fcdc31`; unichain `0x4856a8...c14f68`; unichain `0x4c2747...6e2b88`; unichain `0x52f501...294ab8`; unichain `0x56a7b7...d2ade7`; unichain `0x594186...57fba7`; unichain `0x5bf7b7...a5cbfc`; unichain `0x60076c...c06174`; unichain `0x6061ad...89bf33`; unichain `0x653f0d...1dcb49`; unichain `0x65419d...5958ff`; unichain `0x67b8ba...3af9f1`; unichain `0x74de29...ee3533`; unichain `0x8141fe...2d0e5f`; unichain `0x86346d...8b2de3`; unichain `0x8997b6...6da80d`; unichain `0x8b8efe...b68fa7`; unichain `0x8ee0eb...81f660`; unichain `0x90e590...3298f7`; unichain `0x91bcc4...8dc088`; unichain `0x92acc6...44f0f0`; unichain `0x95e9a5...f5596a`; unichain `0xa57d16...5ecd36`; unichain `0xa723c4...7957b9`; unichain `0xb05045...59ed98`; unichain `0xbaacf8...c248c3`; unichain `0xbad544...5b70be`; unichain `0xbb96b0...fc9779`; unichain `0xbfc9e9...240b03`; unichain `0xc34d86...1a3365`; unichain `0xc67854...cd1760`; unichain `0xd120ef...c1d54e`; unichain `0xd5629e...7b711c`; unichain `0xdba3b7...663e2d`; unichain `0xdec27d...34fc37`; unichain `0xe3dd1b...c4bcd1`; unichain `0xf2275f...7e3574`; unichain `0xf2dd7d...8a88ee`; unichain `0xfbc9ad...a5b78b`; unichain `0xfe0276...9dd5e9`; polygon `0xaea3a2...1044d4`; polygon `0xd6bb8d...8b3fb8`; base `0x89a1ff...18b80c`; base `0xfda295...302fa6`; arbitrum `0x024ee9...e20349`; arbitrum `0x044f8d...e224df`; arbitrum `0xb713d6...2f4150`; arbitrum `0xd295e9...42a71a` | ⚠️ Unaudited (bytecode match) |
| Clearing | unknown | moonbeam | 15 deployments: manta `0x1e86a5...3286f6`; manta `0x32e27f...1e908f`; manta `0xf44cec...812ead`; metis `0xf44cec...812ead`; moonbeam [`0x0f548d...6e1569`](./contracts/moonbeam-1284/0x0f548d7ad1a0cb30d1872b8c18894484d76e1569/); moonbeam `0x1e9792...65e5e0`; moonbeam `0x25dd58...31cf95`; moonbeam `0x566452...36ec67`; moonbeam `0x5b8f58...8e1b7d`; moonbeam `0x7e382f...591857`; moonbeam `0xd58222...544719`; moonbeam `0xed354a...3b8bb1`; moonbeam `0xfa81e2...5688d0`; mantle `0x1e86a5...3286f6`; avalanche `0x1a0d41...b3b257` | ⚠️ Unaudited (bytecode match) |
| ClearingV2 | unknown | sonic | 28 deployments: gnosis `0x1e86a5...3286f6`; gnosis `0x78727b...692279`; sonic [`0x099dd2...6cc182`](./contracts/sonic-146/0x099dd23eaab20f5ec43f50055d6e3030c66cc182/); sonic `0x1e86a5...3286f6`; sonic `0x7e382f...591857`; sonic `0xecfa9c...993f17`; manta `0x688cb9...a1f4c7`; manta `0xb2a19f...0aec1d`; manta `0xf79abc...ee0cff`; metis `0xd359e0...42ae71`; moonbeam `0x2ecbd5...be7677`; moonbeam `0x62034f...cb97e8`; moonbeam `0xa15c28...1ea310`; mantle `0x57f32f...b43bbb`; mantle `0xb65372...be3120`; mantle `0xe495c0...2bbb00`; mode `0x1e86a5...3286f6`; avalanche `0x269f7f...944684`; avalanche `0xb0fe42...f70fb1`; avalanche `0xb1bfc4...52b536`; avalanche `0xbc73a3...efdc65`; blast [`0x099dd2...6cc182`](./contracts/blast-81457/0x099dd23eaab20f5ec43f50055d6e3030c66cc182/); blast `0x19f4eb...f79ee5`; blast `0x284fcb...1ee94a`; blast `0x447643...d397d9`; blast `0x58bfce...5240c0`; blast `0xa39faf...f86de1`; blast `0xdbce89...055ea4` | ⚠️ Unaudited (bytecode match) |
| ERC1967Proxy | proxy | arbitrum | 6 deployments: bsc `0x9aceb2...0d8cf0`; base `0x4c3eef...53aa98`; arbitrum [`0x1278fc...73bd8b`](./contracts/arbitrum-42161/0x1278fc841f1d124bdf3938e4bf6cd7107b73bd8b/); arbitrum `0x39f70d...8363a2`; arbitrum `0x477e98...cb6cac`; arbitrum `0xd27388...0fa447` | ⚠️ Unaudited (bytecode match) |
| ExponentialStrategy | core_logic | unichain | 97 deployments: bsc `0x5ffdb3...245d85`; bsc `0x87247a...862411`; unichain [`0x001e82...fb0d0e`](./contracts/unichain-130/0x001e82575850dc7f9cea5d7585ccb56afffb0d0e/); unichain `0x0cc256...126db1`; unichain `0x0e199a...dc5110`; unichain `0x13f741...6f199f`; unichain `0x171039...f4c185`; unichain `0x1726be...c0997c`; unichain `0x188a84...fb2308`; unichain `0x18bbbc...db003c`; unichain `0x1bc8c9...b8b756`; unichain `0x1c454d...3006c2`; unichain `0x1d1170...ca1ad3`; unichain `0x1e934f...f26b6b`; unichain `0x1ecd6d...d0805f`; unichain `0x1ed6d5...cb32fa`; unichain `0x217cc0...61506e`; unichain `0x22f904...5a0199`; unichain `0x266eb4...12c3f0`; unichain `0x282b9b...2c7f71`; unichain `0x370237...99fbe0`; unichain `0x383363...f3f394`; unichain `0x3b33b4...adfe99`; unichain `0x3b4707...cdbd2b`; unichain `0x41590e...60cf92`; unichain `0x443647...730e77`; unichain `0x470fa6...a86c4e`; unichain `0x477e98...cb6cac`; unichain `0x495cfc...3e067d`; unichain `0x4a7664...7e73c8`; unichain `0x551e27...bc5951`; unichain `0x5788f1...d4f60c`; unichain `0x5987b5...313761`; unichain `0x5a2958...e968d5`; unichain `0x5b3fa5...2df275`; unichain `0x5da448...cff2af`; unichain `0x5da64c...09a48a`; unichain `0x5f7efc...c17161`; unichain `0x614a0a...b3e90f`; unichain `0x63a3d9...e4edbf`; unichain `0x649c42...4a0786`; unichain `0x69b55a...879ad7`; unichain `0x6cdbbf...095f22`; unichain `0x6f1843...33845d`; unichain `0x6fcd75...fcc107`; unichain `0x7305b0...b779d3`; unichain `0x76fefa...8f24af`; unichain `0x77674f...22bea7`; unichain `0x7de18d...10fbb3`; unichain `0x7f8f40...98c584`; unichain `0x83e111...7912ca`; unichain `0x85e5f2...cdd2ca`; unichain `0x8b3754...cd5685`; unichain `0x8dd12a...572508`; unichain `0x8f6301...484bbe`; unichain `0x8f738d...a7e861`; unichain `0x94b6a6...86e643`; unichain `0x988af8...d754ec`; unichain `0x99d148...7470d7`; unichain `0x9ff2ad...9bf694`; unichain `0xa53de9...14ccb4`; unichain `0xa54567...7c141b`; unichain `0xa82fa3...e2e266`; unichain `0xac347e...6dfd97`; unichain `0xaed1ea...1f45e2`; unichain `0xafc371...605277`; unichain `0xb2f637...086214`; unichain `0xb3e241...26e760`; unichain `0xbca822...d177e3`; unichain `0xbe1bc9...f77c6e`; unichain `0xbe42a3...1accc6`; unichain `0xbf1958...fef823`; unichain `0xbf399c...084a25`; unichain `0xc3cb5b...8fbe4e`; unichain `0xcbad45...547add`; unichain `0xcd0cde...39aadb`; unichain `0xd361ce...41613a`; unichain `0xd52ef1...4ecad3`; unichain `0xd9e45f...add906`; unichain `0xdb5365...1a444e`; unichain `0xdda356...33574d`; unichain `0xe02d86...995de4`; unichain `0xe911f4...878fc2`; unichain `0xf0653d...0f1ec3`; unichain `0xf09241...3a7164`; unichain `0xf5b2c6...288a1b`; unichain `0xf63850...136109`; unichain `0xfaf0d3...8e7614`; unichain `0xfcb6c2...7bbf43`; unichain `0xfd06f9...55e076`; polygon `0x0b444d...a8e6c2`; polygon `0x937b55...1bfb59`; base `0x2122e6...338e5c`; base `0x93d1ea...1d4ccf`; arbitrum `0xcc05d2...11d217`; arbitrum `0xd67b78...eda453`; arbitrum `0xdaf6cc...257241` | ⚠️ Unaudited (bytecode match) |
| GaussianStrategy | core_logic | unichain | 97 deployments: bsc `0x96e445...686cbd`; bsc `0xc03de4...142108`; unichain [`0x08f8b4...188d8e`](./contracts/unichain-130/0x08f8b4c23c38a57f8de29e8694ead60f6f188d8e/); unichain `0x0933e3...41a349`; unichain `0x0c6021...1e4337`; unichain `0x0e38e4...67c756`; unichain `0x0e608b...f3d943`; unichain `0x1017d7...ea3845`; unichain `0x10a265...c65f3e`; unichain `0x10fe77...fc22bf`; unichain `0x13b11c...831c66`; unichain `0x140f45...7aec8f`; unichain `0x1b16f5...c7ad0e`; unichain `0x200eb0...046734`; unichain `0x217687...abe666`; unichain `0x21cac5...75cee5`; unichain `0x231ca7...8f29fc`; unichain `0x23be0e...c35666`; unichain `0x24c09e...095a44`; unichain `0x27612e...96f003`; unichain `0x293c31...d3667b`; unichain `0x29d50b...3668fc`; unichain `0x2cbca8...de722d`; unichain `0x2eac89...2fd677`; unichain `0x3381b0...fd0c9e`; unichain `0x3460e9...7e55a4`; unichain `0x393fcb...9d1dc1`; unichain `0x3943fe...fe4a36`; unichain `0x3b7e13...e6d4e5`; unichain `0x3bde00...85f5ad`; unichain `0x3cf418...f3a1f6`; unichain `0x3cf68e...5cbc1d`; unichain `0x411b51...c1feb6`; unichain `0x413898...b64fdc`; unichain `0x418f62...633d77`; unichain `0x4657f9...78b560`; unichain `0x4ef031...14a3c2`; unichain `0x52d31b...2c5da8`; unichain `0x539306...aa7029`; unichain `0x5662ab...4c3a0d`; unichain `0x572a98...32c22c`; unichain `0x57929c...c6169b`; unichain `0x57c130...9f7bb0`; unichain `0x5bf5fe...ccf775`; unichain `0x5c6a07...34d980`; unichain `0x623fe5...5f20e7`; unichain `0x6730b2...14cb19`; unichain `0x6b147c...95796b`; unichain `0x73a042...a56ba3`; unichain `0x757776...21c1b6`; unichain `0x75d063...308261`; unichain `0x765929...807c1a`; unichain `0x79a3ab...1991a7`; unichain `0x7c6ce0...beaaf0`; unichain `0x7db395...c8ff66`; unichain `0x8070de...644a95`; unichain `0x8182be...1eafa5`; unichain `0x81c4a4...d5fcfd`; unichain `0x841cb6...4a4465`; unichain `0x850ff9...0ee81a`; unichain `0x87475b...266a5a`; unichain `0x89cd65...8c8926`; unichain `0x8a7734...b39aa5`; unichain `0x9084cb...415ac0`; unichain `0x91ce20...7cd6b5`; unichain `0x94f6fc...0c1a87`; unichain `0x953973...d1b7d8`; unichain `0x9b53fa...17be68`; unichain `0x9ea19b...025a14`; unichain `0xa0010b...798aa9`; unichain `0xa090f6...0b6e01`; unichain `0xa73192...8fc07f`; unichain `0xb55c1d...f2553c`; unichain `0xb573c5...ef6d9e`; unichain `0xba0507...cdf9a6`; unichain `0xbe4f37...49dd12`; unichain `0xc118fc...6f8fd3`; unichain `0xc21d9e...aa18ba`; unichain `0xc25805...2d910a`; unichain `0xc66e93...556ca2`; unichain `0xcc33f9...6a72b0`; unichain `0xcc4fee...e8f6ff`; unichain `0xd59529...5e107b`; unichain `0xd8b08d...fe9456`; unichain `0xd91571...eb1bae`; unichain `0xdedaa7...17762a`; unichain `0xe50332...b5b38e`; unichain `0xe76723...47104b`; unichain `0xe895ea...c4c716`; unichain `0xfd9ad6...b7f6e3`; polygon `0x29febe...40b2d9`; polygon `0x5152a3...65fb4c`; base `0x4d71cc...6015f4`; base `0xabba8b...0df54f`; arbitrum `0x14db99...df3f92`; arbitrum `0x959dc8...ece50f`; arbitrum `0x9b99ae...3323fc` | ⚠️ Unaudited (bytecode match) |
| HypeRegistry | registry | avalanche | 87 deployments: ethereum `0x2e18b8...95b96c`; ethereum `0x31ccdb...f14946`; ethereum `0xa21b30...1e24ab`; ethereum `0xede66e...dc7dff`; optimism `0x617ba5...0bd289`; optimism `0xf5bfa2...70d599`; optimism `0xf802d5...4b9f33`; bsc `0x4ce60e...bf98e5`; bsc `0x8a79be...de29ee`; gnosis `0x683292...161300`; gnosis `0xc0766f...017d38`; gnosis `0xc27ddd...099881`; unichain `0x2a0785...3efba1`; polygon `0x0ac4c7...f15055`; polygon `0x7b9c2f...d7062e`; polygon `0x976861...84a593`; polygon `0xcac19d...ce832e`; sonic `0x270517...681917`; sonic `0x683292...161300`; sonic `0x7ef5e8...2e51cc`; sonic `0xb24dc8...c2ef55`; sonic `0xde4f68...5dce72`; manta `0x670003...dc6bf7`; manta `0x683292...161300`; manta `0x8a9570...4968f0`; manta `0xc27ddd...099881`; manta `0xd6cc4a...25f517`; metis `0x38f611...57b35f`; metis `0xfc13eb...153621`; moonbeam `0x1cc4ee...dbfa0f`; moonbeam `0x25ea03...258f06`; moonbeam `0x562c87...504dc1`; moonbeam `0x6002d7...c31908`; moonbeam `0x688cb9...a1f4c7`; moonbeam `0xb7dfc3...611063`; moonbeam `0xd08b59...fd89b8`; moonbeam `0xd17aa3...5c5053`; mantle `0x683292...161300`; mantle `0x849214...cd6fe6`; mantle `0xa5e900...3d8456`; mantle `0xc27ddd...099881`; base `0x1e86a5...3286f6`; base `0x339685...44aa92`; base `0x392007...7a6096`; base `0x39ce2e...4051f0`; base `0x6809f4...0e9373`; base `0x6d5c54...5cd683`; base `0x8118c3...0f0e92`; base `0x829432...a39d86`; base `0xb24dc8...c2ef55`; base `0xe1cd1c...f07784`; base `0xf1df4f...e815a6`; mode `0x683292...161300`; arbitrum `0x0f867f...e4b1d0`; arbitrum `0x166cd9...a38a27`; arbitrum `0x34ffbd...944666`; arbitrum `0x37595f...2247e9`; arbitrum `0x66cd85...a56813`; arbitrum `0xa216c2...0fe907`; celo `0x0f548d...6e1569`; avalanche [`0x04dd4b...13ab51`](./contracts/avalanche-43114/0x04dd4bd444e1fb7863787a434a31fb5f1213ab51/); avalanche `0x09a8eb...7dbbee`; avalanche `0x71ea95...3fb3e6`; avalanche `0x7e55f9...d2ecb8`; avalanche `0xa9fe99...84b915`; avalanche `0xb7f05d...b740bc`; avalanche `0xbf145c...4105e2`; linea `0x9c3e04...480836`; linea `0xa8e2fd...a43c5a`; linea `0xc27ddd...099881`; linea `0xff0d3a...a6036b`; berachain `0x116dee...d1b0c3`; berachain `0x1e86a5...3286f6`; berachain `0x9f0db1...e9a567`; berachain `0xdb7608...b3bc34`; blast `0x1e86a5...3286f6`; blast `0x38f611...57b35f`; blast `0x5accda...f04501`; blast `0x659e5a...a4b8de`; blast `0x683292...161300`; blast `0x6c5095...5870a8`; blast `0x7f8e02...b97790`; blast `0xc27ddd...099881`; blast `0xf44cec...812ead`; blast `0xfc13eb...153621`; scroll `0x0b79d5...ca3445`; scroll `0x683292...161300` | ⚠️ Unaudited (bytecode match) |
| MintableToken | unknown | mantle | 8 deployments: manta `0x3273c1...b2c7e5`; manta `0x447643...d397d9`; manta `0xcf1930...3bf228`; moonbeam `0x653f13...d81864`; moonbeam `0xd25f8f...b87916`; moonbeam `0xd4bcfc...5929bd`; moonbeam `0xf897f1...929815`; mantle [`0x280de5...35508b`](./contracts/mantle-5000/0x280de5171c9c585bd1832fb4ada548adbc35508b/) | ⚠️ Unaudited (bytecode match) |
| RebalanceProxy | unknown | berachain | 11 deployments: bsc `0xc7ec71...ad4833`; gnosis `0x3f474e...28d5d1`; sonic `0x153270...d3d29f`; sonic `0x6d5c54...5cd683`; sonic `0x7ec87b...ef91c1`; sonic `0xd5f487...41f35b`; moonbeam `0x24bdfc...f9ae90`; avalanche `0xd57f0b...2aeb76`; berachain [`0x0b79d5...ca3445`](./contracts/berachain-80094/0x0b79d5117dd22edc1e5f2649ac32746af7ca3445/); berachain `0x447643...d397d9`; berachain `0x4dac86...e01c61` | ⚠️ Unaudited (bytecode match) |
| SingleUniformStrategy | core_logic | unichain | 70 deployments: bsc `0x037ace...f8a028`; bsc `0x428ded...ef7091`; bsc `0xc8da58...5f6959`; unichain [`0x02d66a...d570e9`](./contracts/unichain-130/0x02d66aaa86b03314239d865925d1fa4115d570e9/); unichain `0x0530ce...069476`; unichain `0x0cc89e...e7b6d5`; unichain `0x0df4e8...6c9c5f`; unichain `0x0fb62d...765708`; unichain `0x150111...4148c3`; unichain `0x16aa39...09c508`; unichain `0x1b66a5...d91475`; unichain `0x2a8b07...6956d6`; unichain `0x2cc493...ae3ee7`; unichain `0x2debb9...35a05b`; unichain `0x2eb45b...9bd95e`; unichain `0x304b89...e41fa3`; unichain `0x34ad86...4ca304`; unichain `0x35286b...c1ea98`; unichain `0x3b5b36...42e585`; unichain `0x3cfece...e72c3b`; unichain `0x3f9389...18ce1b`; unichain `0x44483a...382ad5`; unichain `0x4981e4...ec733b`; unichain `0x49ae0a...870dea`; unichain `0x4c3c38...4fb879`; unichain `0x4db1fa...9b2d3f`; unichain `0x4e1942...138adc`; unichain `0x50127a...79ca8f`; unichain `0x51f7fc...de2b00`; unichain `0x55cfc2...bb23f4`; unichain `0x639e8a...fa90bb`; unichain `0x6c49f3...58f2df`; unichain `0x6e2b99...f59038`; unichain `0x71f752...1c6dc7`; unichain `0x7d507e...ca715c`; unichain `0x817ac1...bb75b5`; unichain `0x852468...298b92`; unichain `0x91c88d...0be7a0`; unichain `0x954472...86be44`; unichain `0x9bf8d6...b552c2`; unichain `0x9e7803...626c8a`; unichain `0xa168c8...30508d`; unichain `0xa2ab24...f20cd2`; unichain `0xa328b2...88dcfa`; unichain `0xa4d388...73a173`; unichain `0xadd038...3ae95d`; unichain `0xaee0ec...0eadb6`; unichain `0xb81f5a...e1dc82`; unichain `0xba422c...4f2a50`; unichain `0xbc7c1b...9df48c`; unichain `0xcc6338...429b37`; unichain `0xd01c01...263df1`; unichain `0xd4ee1e...e1df09`; unichain `0xdc9005...33a708`; unichain `0xe84895...960486`; unichain `0xe8cb08...a11655`; unichain `0xe9aceb...29b1cb`; unichain `0xee1cdc...1dbe25`; unichain `0xf6a842...6c0e35`; polygon `0x5c1cba...892f85`; polygon `0x5f4001...ea5e99`; polygon `0x6bd13b...7196be`; base `0x549e2c...f33c5b`; base `0xa450f6...a1a165`; base `0xe177fd...77994c`; base `0xf89935...d93d58`; arbitrum `0x07da74...3fb7b2`; arbitrum `0x44b859...c488aa`; arbitrum `0x751e74...6c90e5`; arbitrum `0xabf404...8f2a00` | ⚠️ Unaudited (bytecode match) |
| TriangleStrategy | core_logic | unichain | 97 deployments: bsc `0x9ed988...7c8d0f`; bsc `0xfc9101...409cea`; unichain [`0x00a6c6...436fe4`](./contracts/unichain-130/0x00a6c62a5b337e605cc178e6d84367507f436fe4/); unichain `0x030e32...cc8d37`; unichain `0x07b8e2...0b24f1`; unichain `0x07cef1...4954c3`; unichain `0x0cd379...316598`; unichain `0x11b5b6...5ddc41`; unichain `0x15ba45...607d60`; unichain `0x18dcd1...a8411b`; unichain `0x195a91...11c9ea`; unichain `0x1d1a79...e902ca`; unichain `0x1f7f98...d0759f`; unichain `0x26f2ec...a4f187`; unichain `0x271381...d295f8`; unichain `0x289407...8c1fff`; unichain `0x2a09cc...a0baad`; unichain `0x2a9b32...b9acd9`; unichain `0x2f8476...ac5aa8`; unichain `0x2fb587...76d4e4`; unichain `0x34c4e8...4a383c`; unichain `0x358d98...c90a03`; unichain `0x392fa8...c26773`; unichain `0x3dd8b6...ecb8b6`; unichain `0x3e7e3e...512b18`; unichain `0x418679...f95dfa`; unichain `0x4194e5...3495e3`; unichain `0x421a1c...60a5c2`; unichain `0x42ab89...296ac4`; unichain `0x449866...117ced`; unichain `0x4ddc35...005309`; unichain `0x4dfc6c...c5d1aa`; unichain `0x4e150c...afa2b1`; unichain `0x52a01a...05262e`; unichain `0x5b5ad7...c6b7ff`; unichain `0x5d8565...91ab72`; unichain `0x5dd287...c0c1b8`; unichain `0x5e968a...27ac04`; unichain `0x64cfd8...1ce5ff`; unichain `0x65a1c6...16273b`; unichain `0x65b641...1ba1f5`; unichain `0x6b56f3...1d340c`; unichain `0x6fb31a...bd113f`; unichain `0x744322...87d25a`; unichain `0x74f047...02d60a`; unichain `0x782893...051287`; unichain `0x7e8ebe...f081f3`; unichain `0x83bbb2...83fc8b`; unichain `0x86ef40...683113`; unichain `0x89a1ff...18b80c`; unichain `0x8cd822...4ce1dd`; unichain `0x9046a8...943bc2`; unichain `0x90a806...592c6d`; unichain `0x9683b7...7137aa`; unichain `0x9b1041...7e0a00`; unichain `0x9d487b...400c4d`; unichain `0xa2c52c...3cc477`; unichain `0xa4566e...21a09c`; unichain `0xad382e...2fe500`; unichain `0xae7bce...398ea6`; unichain `0xb0dcc4...a5a0ca`; unichain `0xb1f1c8...87d068`; unichain `0xb2c72f...50908e`; unichain `0xb4d944...1f4db8`; unichain `0xb67857...f1d925`; unichain `0xb84728...bc7b97`; unichain `0xbb2bd1...d114fa`; unichain `0xbb5c26...62c422`; unichain `0xbbc925...0ebbf8`; unichain `0xbeebaa...783c87`; unichain `0xc24cf8...095e67`; unichain `0xc5d196...592f15`; unichain `0xc72b5a...a0e14b`; unichain `0xc8f6ea...67597a`; unichain `0xca1970...cf1722`; unichain `0xcae476...90ff54`; unichain `0xcc2b53...33aa10`; unichain `0xcc4005...cd3cfe`; unichain `0xceb010...a76e32`; unichain `0xd7e754...28983d`; unichain `0xdac551...25e9fb`; unichain `0xe201e1...c63c3e`; unichain `0xe36344...6e57bd`; unichain `0xe87099...79deda`; unichain `0xebf945...33c493`; unichain `0xeeb252...6e539e`; unichain `0xeec601...625024`; unichain `0xefbb86...e69dd3`; unichain `0xfe0264...3bdead`; unichain `0xff327c...7d242a`; polygon `0xa4ae2d...610ea6`; polygon `0xb5d3e1...fe6e40`; base `0x423e8c...813c0e`; base `0xe5defe...bb9e1f`; arbitrum `0x105da8...99b123`; arbitrum `0x1632d1...fdfcca`; arbitrum `0x1c454d...3006c2` | ⚠️ Unaudited (bytecode match) |
| UniformStrategy | core_logic | unichain | 102 deployments: bsc `0x2a7bb0...6125db`; bsc `0x536f96...c04656`; bsc `0xcc5a96...f431f5`; unichain [`0x00fccd...72bcbc`](./contracts/unichain-130/0x00fccdd26f35672808ea8660e4a3a231ac72bcbc/); unichain `0x01a6aa...9d95e2`; unichain `0x05daf3...8b0092`; unichain `0x0602e0...d8ffff`; unichain `0x08090d...abcbd0`; unichain `0x0945e7...fe5140`; unichain `0x0971d2...8d2335`; unichain `0x0d9f42...23a8f5`; unichain `0x136933...5afd14`; unichain `0x1fd3e4...928ebe`; unichain `0x2024ef...938164`; unichain `0x20c96f...ae6b6d`; unichain `0x28c7e8...edc7b2`; unichain `0x2b23f2...e8a600`; unichain `0x2d7e58...47c61c`; unichain `0x30f56f...10c93d`; unichain `0x32b164...3f3c24`; unichain `0x32f52c...a2a254`; unichain `0x355dec...037ca5`; unichain `0x3958f4...c099c7`; unichain `0x3c50af...cbb5c1`; unichain `0x4080b6...3274a7`; unichain `0x409d2c...e02225`; unichain `0x43b7c3...38b9f8`; unichain `0x449702...7e0df4`; unichain `0x44b859...c488aa`; unichain `0x46cb87...36ac68`; unichain `0x473fc7...a5534b`; unichain `0x493964...3ee12c`; unichain `0x4b2300...0eaa74`; unichain `0x4d566a...c31956`; unichain `0x540e64...6cf14f`; unichain `0x56897d...82b9de`; unichain `0x5a64d5...d878c6`; unichain `0x5b2812...5a5590`; unichain `0x5fba93...68dc1b`; unichain `0x6bab37...a486b6`; unichain `0x6d04f7...10ccbb`; unichain `0x6f5882...5834bc`; unichain `0x731555...aeced2`; unichain `0x7883a0...dd30b4`; unichain `0x7a9f72...527fac`; unichain `0x7eaddb...622849`; unichain `0x823e97...441dd2`; unichain `0x82b25a...9c479e`; unichain `0x85bd0e...cd8b2d`; unichain `0x8abd33...e2934d`; unichain `0x8be7a5...cea3a3`; unichain `0x8c91f4...3f611d`; unichain `0x8d5619...ad6f84`; unichain `0x8f6086...73fc0c`; unichain `0x904121...d88bf9`; unichain `0x91ed4c...b7afae`; unichain `0x957446...3d3137`; unichain `0x969916...35bdb3`; unichain `0x972cd3...6434be`; unichain `0x97ec79...672447`; unichain `0x9b875e...1bccda`; unichain `0x9c981c...301b72`; unichain `0x9d401c...f55144`; unichain `0x9ed038...40298d`; unichain `0xa1b4ca...e31ca6`; unichain `0xa23eca...5bc912`; unichain `0xa3123d...a0aa5d`; unichain `0xa45a15...b5cc9d`; unichain `0xa880ab...717510`; unichain `0xab2f35...fb43f9`; unichain `0xb0fba7...254235`; unichain `0xb3d8e0...007155`; unichain `0xb5f95f...bdf572`; unichain `0xba00a2...5ec8c5`; unichain `0xbe9690...118099`; unichain `0xbea137...1c172d`; unichain `0xc566c7...6d5a61`; unichain `0xc9c078...bd6e2b`; unichain `0xcc9955...653b53`; unichain `0xd3e553...754f0d`; unichain `0xe3dd7c...2f8073`; unichain `0xe5cf83...2efca3`; unichain `0xe774c6...7ab5a0`; unichain `0xe7a2c0...366e8e`; unichain `0xe7eeb8...dab4dc`; unichain `0xec3851...432075`; unichain `0xf19763...1c2098`; unichain `0xf3b50f...6e10db`; unichain `0xf4544a...f87e2d`; unichain `0xf4fc01...e99813`; unichain `0xf94055...05c504`; unichain `0xfc95cf...99bc7a`; polygon `0x030b73...fbe783`; polygon `0x24c1c7...e8398f`; polygon `0xd0f38a...60b2be`; base `0x73c53d...314c4a`; base `0xb01455...841e75`; base `0xf126c5...d45812`; arbitrum `0x134e2a...0f03ba`; arbitrum `0x338178...988ed5`; arbitrum `0x55daab...e21cc3`; arbitrum `0xbab62c...a3f994` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (362)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x07432c...568ea0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5964f3...cbc670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x845112...fc4709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9be019...558103` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0108f9...c8d9cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x05eb0f...0d8495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b444d...a8e6c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x252a01...038a36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x260992...7e8adc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x274171...e797ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x295886...4f0480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x29febe...40b2d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2af0f8...475643` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37ad7d...863085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x56dbae...718d0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5c1cba...892f85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5e9a60...d98bde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61585c...83736d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f5e8a...9e8370` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x883135...81c0d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8dc449...cb53c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x937b55...1bfb59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dd4dd...ad8866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa4ae2d...610ea6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa8bb9b...d96b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaea3a2...1044d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf74ea...ebc6c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb0617d...8c1184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc0c06e...602560` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xca3324...15a8c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc4efa...956742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfd32c...a55bfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd0f38a...60b2be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd24817...033586` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6bb8d...8b3fb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdddcde...68e879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde923d...e9830d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf2a761...38ce80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf94916...ec9360` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa2f9e...55cb29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfdafe1...70dea3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfee3d9...763808` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x082286...719688` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x0f6a25...8b3993` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x10c25b...c34e5d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x1169de...5133cc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x1a3bfe...2b1c01` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x1be011...16122a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x20c63c...01715b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x24f8a8...7f79c4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x2aa815...d91700` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x2f0f77...b3d3b3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x2fe0a6...840ace` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x361ffa...662fee` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3761ee...8066ea` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3957dd...9cf0e6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x39a89c...db7ce7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3d1431...a277cd` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x417c9c...dbd275` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x4753e1...a36cf8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x4bf75c...8959a9` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x510735...85d3b1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x5783d5...a66081` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x58f40e...3324a3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x5eaca9...f803ae` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x600344...767537` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x605b24...000229` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6c7596...b238cc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6d720d...fb5150` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6e5400...38b42b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x6e87ec...965c1f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x745731...f2470b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x786f6d...26920d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x79f85a...726ac0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x7bf1c0...9bfd3e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x7c3306...35dcc0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x7cf6bb...0d6f26` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x7fd328...320849` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x800669...30fffc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x805c10...8279ae` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x809e4f...6ac8ef` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x829da5...c77795` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x886895...04c161` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x8bd030...6ae47f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x8d1ce4...8f5624` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x8db387...80eb91` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x8e71aa...ba4b32` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x909829...c09f9d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x92c1ba...f8a025` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9a4212...126e0f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9cc8d4...d37e97` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9f62e7...13507c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xa0deeb...842fff` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xaa6af3...6c6dea` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xaf6d41...f2f848` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xb01455...841e75` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xb02819...3e4557` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xb8f6eb...6bc688` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xbbf070...b73da9` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc0932e...19792f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc09f07...9ad354` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc24673...451e1a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc3b081...fd669c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc79037...c036c1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xc7fa5c...e013b5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xcb38c5...a7d21f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xcbdd41...5e6d0a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xccd1fa...458fff` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xcd351e...ff4c79` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xd0deac...de1e24` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xd62d5a...b7329b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xd8a247...814f00` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xdaa3b0...6d30d5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xdc9abd...54a091` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe5a99e...6544bf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe5defe...bb9e1f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe8a0f4...4622a3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe8e8e8...798533` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe95503...23636d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xea1dec...62776a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xedf402...17c949` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xf0acc7...343487` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xf29b78...52f335` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x09eb6f...9dea15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1193a4...baf9ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x134e2a...0f03ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x14db99...df3f92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1632d1...fdfcca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1b35f4...55539e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x252c3d...3f5d74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2de5f8...3475f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x310b41...39d327` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x32253b...041a29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x572954...21fbc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5e9f01...085986` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x66272d...9f3f26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x67eee4...d8ec8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x718378...2a59ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x751e74...6c90e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x778673...b75895` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f6816...d33d8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x87833b...5ad0f3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x95be42...bd4846` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x97140b...5b7c07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x979012...d019eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9831ea...ba5657` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9aceb2...0d8cf0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9ef35e...0310e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa0c9d8...004c0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa54567...7c141b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xac13f4...335cfc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb448c7...8d764a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xba0507...cdf9a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc0148b...551158` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc8607d...0b9525` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc937c3...3e227e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcc4efa...956742` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd295e9...42a71a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd305ae...62799e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd64bd5...acd8f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd66083...8d256c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd67b78...eda453` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdf3631...0407ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe99ebb...3184cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee0fb7...3597e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf793e4...2a7447` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x015b8a...3dbaff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xd925a1...723f33` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf874d4...4f9aca` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x17a7e6...4e2164` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x3ae59b...e63a96` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xcf1930...3bf228` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xd08b59...fd89b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xf9adaa...26baaa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xff8fae...cf45bd` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x683292...161300` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xf14fb9...61e6fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1f1808...ce4be1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x22cbd4...72f679` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x279560...e4c499` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x55eaa7...52f2bc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x711fa5...21c31e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7e382f...591857` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x848019...89ad77` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9aad09...e7b325` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb833e6...6ffef2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbb575a...904f2a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe75490...bd68e1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x07b8e2...0b24f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a83c7...89516c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x18a07e...72a930` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1fd3e4...928ebe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2596e8...66d48a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25f60b...caf6f2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x27134d...358c0f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e4227...8ea768` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x304b89...e41fa3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x33e964...6455bd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3dd8b6...ecb8b6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x404dc8...8e005f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x41677f...2b0524` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4f6201...64a7ba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x54eaf5...77adfb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x54fd10...72461a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60e8ca...4517b1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x623fe5...5f20e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65a1c6...16273b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6b443a...9dfd7d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7682bb...ef7647` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b5005...888d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8235c5...23a280` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x893726...c7f585` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8b3754...cd5685` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x923df6...01d79c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x972387...49e91d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9b504a...ce9fe8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9e265a...5f47b3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa338d2...edad67` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4ff01...5cbfcc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa5fbdd...e38157` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac166a...4c595d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb76bd...f2d19f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc1a75d...226dbf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc40425...44911b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcde8d3...6b111d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce9f5f...98ea12` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8858b...85371b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd6ee7...9f38e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe19e00...9da0d3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf68717...8f63f5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf9873f...8489b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe0276...9dd5e9` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x1e9792...65e5e0` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x32e27f...1e908f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xc27ddd...099881` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0080d7...83ac46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x030e32...cc8d37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x036c23...b58331` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x064238...86d4ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x09eb6f...9dea15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b35f4...55539e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bcc00...807f6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1d889b...3fe91d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dae6e...84c31a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e1677...424973` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ea745...551595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x282b4a...570d48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x286870...c0d94c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x289407...8c1fff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ab0fb...e2c87e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2bf669...783671` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2de5f8...3475f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32253b...041a29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x356666...26c12e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x38abaf...963905` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x396428...a005c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d1c6e...454098` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ee902...af37e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41cf34...99eb0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x423051...ab32a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x486f4c...16277e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4884a3...16b908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d923d...0bc52f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f9d54...be83b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x540e64...6cf14f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5e9f01...085986` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x604e3f...aab20c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x62651e...d161b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66272d...9f3f26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x778673...b75895` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d4007...4d11b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7db395...c8ff66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7e2b70...0ba547` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8438fd...9c7873` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x856064...e446cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x858fe2...29e700` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8affb2...cd4016` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8e30a0...86cf0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95be42...bd4846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x965c9f...287cf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x97140b...5b7c07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x979012...d019eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ab43f...eac57a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d401c...f55144` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9ef35e...0310e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f470e...2f7c3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa0c9d8...004c0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa21aec...f45923` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xabb925...64ae3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae4be7...ff568c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb028cb...4abfc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb448c7...8d764a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7cff7...913165` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbbacb4...395b95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbe9207...bebab7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbeebaa...783c87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0148b...551158` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2b966...692e46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc3cb5b...8fbe4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc46e17...dc5036` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc77287...8e50ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc8607d...0b9525` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce247f...79ed29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd305ae...62799e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd55d52...e2d6ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd64bd5...acd8f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7c156...126b38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8b08d...fe9456` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe15f83...035eb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3a619...84ce66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3fe4b...c1575a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe76723...47104b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe95b4f...473f7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe99ebb...3184cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeaeb45...606dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec3851...432075` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec8a10...1bca26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xecd1e4...f8dd98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf793e4...2a7447` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfd06f9...55e076` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe252c...02f365` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8b6e73...5fd45c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x012f34...777391` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x08c0fe...a84481` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b4603...255d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0dfc5e...f0931d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19ccd7...7849ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x57c41f...38af85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x57f32f...b43bbb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d66ac...1bd46c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x77cf3c...a5cc4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84f1f9...f63655` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8bdedc...84c4a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ef383...4bf9b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x911bfb...5c8886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x938a81...87bccb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x94d026...a7a2ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9e7cf4...8fec4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9f817e...a50c34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa163c5...576f9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa37d32...9dc348` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3d107...3c8584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8fe1c...341447` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac419b...0677b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5d462...986e90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce8f3d...eac4f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd69120...8d4f4a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe2a816...58b28e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xea392b...1c31b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xedfe13...e32fc3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee40b8...64df20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef757d...fdbc58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf30b4f...2f8866` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfa81e2...5688d0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2fcc0d...36a46f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x961605...24f77e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbc7d3b...c574e2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc225fa...9e4dfe` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdbce89...055ea4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf14fb9...61e6fc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf3eb61...e0c0d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xfc13eb...153621` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [AE_Gamma_audit_09_03_22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/AE_Gamma_audit_09_03_22.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 341 | high |
| [Bailsec - Gamma - Vaults - Final Report.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/Bailsec%20-%20Gamma%20-%20Vaults%20-%20Final%20Report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 84 | high |
| [ConsenSys-Diligence-Audit-28-03-22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/ConsenSys-Diligence-Audit-28-03-22.pdf) | Consensys Diligence | Audit | 2022-02 | stale | Direct | contract_name | 290 | high |
| [Gamma_Position_Managers_report.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/Gamma_Position_Managers_report.pdf) | unknown | Audit | 2025-07 | fresh | Direct | contract_name | 93 | high |
| [REP-Hypervisor-2021-07-07.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/REP-Hypervisor-2021-07-07.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 236 | high |
| [Gamma_LimitOrders_Report.pdf](https://github.com/GammaStrategies/gamma-univ4-limit-order-hook/blob/main/audits/Gamma_LimitOrders_Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 99 | high |
| [report-competition-gamma.pdf](https://github.com/GammaStrategies/gamma-univ4-limit-order-hook/blob/main/audits/report-competition-gamma.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 242 | medium |
| [Gamma_Gamma_MultiPositionManager_report.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/audits/Gamma_Gamma_MultiPositionManager_report.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 215 | high |
| [2017-03.md (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2017-03.md) | OpenZeppelin | Audit | 2017-03 | stale | Direct | n/a | 0 | n/a |
| [2018-10.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2018-10.pdf) | OpenZeppelin | Audit | 2018-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-Checkpoints.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2022-10-Checkpoints.pdf) | OpenZeppelin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-ERC4626.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2023-05-v4.9.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2023-05-v4.9.pdf) | OpenZeppelin | Audit | 2023-05 | stale | Direct | contract_name|n/a | 85 | high |
| [2023-10-v5.0.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2023-10-v5.0.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [2024-10-v5.1.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2024-10-v5.1.pdf) | OpenZeppelin | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/openzeppelin-contracts-upgradeable/audits/README.md) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [ABDKAudit.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/permit2/audits/ABDKAudit.pdf) | ABDK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Chainsecurity Audit.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/permit2/audits/Chainsecurity%20Audit.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v6-Fixed-Point-Solutions.pdf (also discovered via alternate URL)](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/permit2/lib/solmate/audits/v6-Fixed-Point-Solutions.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Known_Effects_of_Hook_Permissions.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/Known_Effects_of_Hook_Permissions.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [DRAFT_Certora_audit_core.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/audits/DRAFT_Certora_audit_core.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpenZeppelin_audit_core.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrailOfBits_audit_core.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-v4.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/whitepaper/whitepaper-v4.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-zh.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/lib/v4-periphery/lib/v4-core/docs/whitepaper/whitepaper-zh.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| unichain | [`0x2c4938...4758f3`](./contracts/unichain-130/0x2c49383f8a82b5efb201571bddabb4cd294758f3/) | AuctionStateLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x04b1b8...52b771`](./contracts/unichain-130/0x04b1b8028ffcf6a012953609ae5ab3eef152b771/) | BuybackDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x044c32...4cd4ef`](./contracts/unichain-130/0x044c32b8a70cab92804c5f4c0b784a8ef64cd4ef/) | CallOptionFactoryDeployer | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x018c22...c69b7e`](./contracts/unichain-130/0x018c229b7cbfb1be6810891327ec5a4bdfc69b7e/) | CamelStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031464...ee2abf`](./contracts/ethereum-1/0x031464af67c612a54676dd5dd71ea86605ee2abf/) | DepositProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0340e3...c77dc3`](./contracts/unichain-130/0x0340e3c5e8971daf8aff06d9c4454e3f24c77dc3/) | DynamicFeeHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x00999a...2311b6`](./contracts/unichain-130/0x00999af6ca791696be772aa4d40739d8612311b6/) | DynamicFeeLimitOrderHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x001e82...fb0d0e`](./contracts/unichain-130/0x001e82575850dc7f9cea5d7585ccb56afffb0d0e/) | ExponentialStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34276e...0e2b94`](./contracts/ethereum-1/0x34276e77b599977fb20752d02f0c1708710e2b94/) | Extract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x08f8b4...188d8e`](./contracts/unichain-130/0x08f8b4c23c38a57f8de29e8694ead60f6f188d8e/) | GaussianStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x049a72...bdf734`](./contracts/bsc-56/0x049a72032a08409712268aae1bd6f0a118bdf734/) | InitialDepositLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1bfb6...9bc238`](./contracts/ethereum-1/0xf1bfb6748e3362cfdbdc49377be8731c769bc238/) | Mainframe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac01d9...5f747a`](./contracts/ethereum-1/0xac01d93be6f7acf071011954fe2d74e4755f747a/) | PowerSwitchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0ab9cf...7330c3`](./contracts/unichain-130/0x0ab9cff1202930cfa30436bea1ac0357387330c3/) | RebalanceSwapLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaec731...27adfd`](./contracts/polygon-137/0xaec731f69fa39ad84c7749e913e3bc227427adfd/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bd940...b5a2ea`](./contracts/ethereum-1/0x4bd9401bc6ba8f2f7ec20f7f8fa2cd8f91b5a2ea/) | RewardPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40d2eb...80e0bb`](./contracts/ethereum-1/0x40d2ebb9c93f64a5ec60afb3ccbf6398f680e0bb/) | RewardsHypervisor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045a63...1ccda7`](./contracts/ethereum-1/0x045a632a614e4f9e2e72672d20354bb66e1ccda7/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x009528...8ac824`](./contracts/unichain-130/0x009528340fd69814182d904d70deec21048ac824/) | SimpleLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x28ed6b...1f7efe`](./contracts/unichain-130/0x28ed6bacdda981c9055de8c513c4a995c81f7efe/) | SimpleLensRatioUtilsPositions | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x02d66a...d570e9`](./contracts/unichain-130/0x02d66aaa86b03314239d865925d1fa4115d570e9/) | SingleUniformStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x019f56...a033bf`](./contracts/unichain-130/0x019f567bbcfcb9d70ce15657d22098ca29a033bf/) | SwapThenLimitOrderHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1bb667...1abab1`](./contracts/unichain-130/0x1bb66795f843d3e207664aafdd19df3ae91abab1/) | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x2cef90...3b459b`](./contracts/unichain-130/0x2cef90b7cf69eb016af4781423e11136903b459b/) | TokenLaunchFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1e3b4c...d779f8`](./contracts/unichain-130/0x1e3b4cecfa5c05fa74bdf281dfd6e368c9d779f8/) | TokenLaunchFactoryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1435dd...6d7297`](./contracts/unichain-130/0x1435ddc2c8fa2400aeb94a270bf89c7f306d7297/) | TokenVestingFactoryDeployer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x00a6c6...436fe4`](./contracts/unichain-130/0x00a6c62a5b337e605cc178e6d84367507f436fe4/) | TriangleStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x00fccd...72bcbc`](./contracts/unichain-130/0x00fccdd26f35672808ea8660e4a3a231ac72bcbc/) | UniformStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1f76d3...d846e8`](./contracts/unichain-130/0x1f76d32f063dd393bd4c3d0e179c5806b7d846e8/) | UnilaunchBuybackDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x14e8cf...4f3cb7`](./contracts/unichain-130/0x14e8cf6d5d1e83416a1984a5240105653a4f3cb7/) | UnilaunchCallOptionFactoryDeployer | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1d1b7f...a9434a`](./contracts/unichain-130/0x1d1b7f5638c6444f28dcb8cb1e492a8c5ba9434a/) | UnilaunchInitialDepositLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0a79c4...707d26`](./contracts/unichain-130/0x0a79c4fdc717f5551a56b964b5c58f0b75707d26/) | UnilaunchMultiPositionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0bc272...32ef30`](./contracts/unichain-130/0x0bc272226803808b7883d2e2fa59bc138e32ef30/) | UnilaunchOrderBookFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x138093...f85adb`](./contracts/unichain-130/0x1380933d39848583010b7a651ccad7cfdaf85adb/) | UnilaunchSimpleLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x2462fc...ef51fd`](./contracts/unichain-130/0x2462fc6277784438305485ea7bbb6c982cef51fd/) | UnilaunchTokenLaunchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x00d2c1...677653`](./contracts/unichain-130/0x00d2c101532a4b62d81924b014bb1978e2677653/) | UnilaunchTokenVestingFactoryDeployer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b718a...fe0e1f`](./contracts/ethereum-1/0x1b718a94b0eae9b8bb5ebf3abd069b5471fe0e1f/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0d9aae...860a0a`](./contracts/unichain-130/0x0d9aaed03403177383261641242db2c6b6860a0a/) | VolatilityDynamicFeeHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0b8e46...4ecc01`](./contracts/unichain-130/0x0b8e46cd2fcd6d6b2eb57128fc0f540fd24ecc01/) | VolatilityDynamicFeeLimitOrderHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x05b84f...5f289d`](./contracts/unichain-130/0x05b84f803367cfbeeef689c83ae5708af45f289d/) | VolatilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 377 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 24
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8, medium=1
- Match method counts: extraction_exact=1685

Zero-match audit list:

- [8025] 2017-03.md
- [8026] 2018-10.pdf
- [8027] 2022-10-Checkpoints.pdf
- [8028] 2022-10-ERC4626.pdf
- [8030] 2023-10-v5.0.pdf
- [8031] 2024-10-v5.1.pdf
- [8032] README.md
- [8043] DRAFT_ABDK_audit_periphery_universal_router.pdf
- [8044] DRAFT_Spearbit_audit_periphery.pdf
- [8045] OpenZeppelin_audit_periphery_universal_router.pdf
- [8046] ABDKAudit.pdf
- [8047] Chainsecurity Audit.pdf
- [8050] v6-Fixed-Point-Solutions.pdf
- [8051] Known_Effects_of_Hook_Permissions.pdf
- [8052] DRAFT_ABDK_audit_core.pdf
- [8053] DRAFT_Certora_audit_core.pdf
- [8054] DRAFT_Spearbit_audit_core.pdf
- [8055] OpenZeppelin_audit_core.pdf
- [8056] TrailOfBits_audit_core.pdf
- [8057] whitepaper-v4.pdf
- [8058] whitepaper-zh.pdf
- [8068] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8069] 0002-metadata-manifest-and-pull-command.md
- [8070] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
