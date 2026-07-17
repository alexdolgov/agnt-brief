# Agentic Audit Brief: RadioShack

## Project Overview

- Project: RadioShack (`radioshack`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.511Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 55 unique implementations (55 raw deployments)
- DeFi Llama TVL: $440,907.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 51 project-authored contract(s) across 5 chain(s); 29 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 55 (54 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/50 (0.0%)
- Deployed-live implementations: 54 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 55
- Raw deployments: 55
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATH | unknown | ethereum | n/a | [`0x532a59c28469684316fabdaf81b67664a18839f0`](./contracts/ethereum-1/0x532a59c28469684316fabdaf81b67664a18839f0/) | ⚠️ Unaudited |
| Bitcoin100000K | unknown | ethereum | n/a | [`0xd42d0437e6512f110199e8bd619d64ea64049d38`](./contracts/ethereum-1/0xd42d0437e6512f110199e8bd619d64ea64049d38/) | ⚠️ Unaudited |
| BuildToken | unknown | ethereum | n/a | [`0x57b59f981730c6257df57cf6f0d98283749a9eeb`](./contracts/ethereum-1/0x57b59f981730c6257df57cf6f0d98283749a9eeb/) | ⚠️ Unaudited |
| CARROT | unknown | bsc | n/a | [`0xd9ee2adc33350bd89369e424e01bb2156df7b04e`](./contracts/bsc-56/0xd9ee2adc33350bd89369e424e01bb2156df7b04e/) | ⚠️ Unaudited |
| CHAPTER | unknown | ethereum | n/a | [`0x874000d720dcbf7feef7347fe80c731c00e70efa`](./contracts/ethereum-1/0x874000d720dcbf7feef7347fe80c731c00e70efa/) | ⚠️ Unaudited |
| CHORUS | unknown | bsc | n/a | [`0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf`](./contracts/bsc-56/0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf/) | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | polygon | n/a | [`0x239089e5c3f2506c77e1e6704ad62d37143949bf`](./contracts/polygon-137/0x239089e5c3f2506c77e1e6704ad62d37143949bf/) | ⚠️ Unaudited |
| CollateralReserve | unknown | avalanche | n/a | [`0x038ee16bc19e362cc5ba1915f32a3a6717047287`](./contracts/avalanche-43114/0x038ee16bc19e362cc5ba1915f32a3a6717047287/) | ⚠️ Unaudited |
| Dollar | unknown | avalanche | n/a | [`0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d`](./contracts/avalanche-43114/0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d/) | ⚠️ Unaudited |
| DollarOracle | unknown | ethereum | n/a | [`0x03c70a4623a9b9510e16c4d9a530d117cc275ddd`](./contracts/ethereum-1/0x03c70a4623a9b9510e16c4d9a530d117cc275ddd/) | ⚠️ Unaudited |
| DreamToken | unknown | bsc | n/a | [`0x02f171afa137875bb631e7ea3cbdb4a295acf333`](./contracts/bsc-56/0x02f171afa137875bb631e7ea3cbdb4a295acf333/) | ⚠️ Unaudited |
| Farms | unknown | bsc | n/a | [`0x070c026511c8972938069286bac74f23bcb1d235`](./contracts/bsc-56/0x070c026511c8972938069286bac74f23bcb1d235/) | ⚠️ Unaudited |
| FORMULA | unknown | polygon | n/a | [`0x8f0925c18aa0d0c00d55a2555e3aa7347e337376`](./contracts/polygon-137/0x8f0925c18aa0d0c00d55a2555e3aa7347e337376/) | ⚠️ Unaudited |
| iCollateralOracle | unknown | polygon | n/a | [`0x03c70a4623a9b9510e16c4d9a530d117cc275ddd`](./contracts/polygon-137/0x03c70a4623a9b9510e16c4d9a530d117cc275ddd/) | ⚠️ Unaudited |
| JACKET | unknown | bsc | n/a | [`0x4f0988bd97fe801bd7960a3a6ccdad49deae728d`](./contracts/bsc-56/0x4f0988bd97fe801bd7960a3a6ccdad49deae728d/) | ⚠️ Unaudited |
| LaunchToken | unknown | ethereum | n/a | [`0x1b0cfc52767599dd07885697e14b1a08a4f8978e`](./contracts/ethereum-1/0x1b0cfc52767599dd07885697e14b1a08a4f8978e/) | ⚠️ Unaudited |
| LAYOUT | unknown | polygon | n/a | [`0xfbd6015306d860c1b048715797d06634c42db32d`](./contracts/polygon-137/0xfbd6015306d860c1b048715797d06634c42db32d/) | ⚠️ Unaudited |
| MATERIAL | unknown | bsc | n/a | [`0x0effba87d0507876f3c669b611225a031941b936`](./contracts/bsc-56/0x0effba87d0507876f3c669b611225a031941b936/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | polygon | n/a | [`0xb5657def64768972a997891f922b521c0736f3b1`](./contracts/polygon-137/0xb5657def64768972a997891f922b521c0736f3b1/) | ⚠️ Unaudited |
| MOUNTAIN | unknown | bsc | n/a | [`0x944ab22938acd82ed204766b2d7faa631171a562`](./contracts/bsc-56/0x944ab22938acd82ed204766b2d7faa631171a562/) | ⚠️ Unaudited |
| Multicall | unknown | ethereum | n/a | [`0x07609dd4980c5f6951d38ca161eb8afbeec6ca2c`](./contracts/ethereum-1/0x07609dd4980c5f6951d38ca161eb8afbeec6ca2c/) | ⚠️ Unaudited |
| Multicall2 | unknown | optimism | n/a | [`0xd0a8822202ad830dd1a6c8afe1e343151714c5b6`](./contracts/optimism-10/0xd0a8822202ad830dd1a6c8afe1e343151714c5b6/) | ⚠️ Unaudited |
| MUSEUM | unknown | avalanche | n/a | [`0xf0470ede87dc392285c4587dbed62b1fa37ec5c6`](./contracts/avalanche-43114/0xf0470ede87dc392285c4587dbed62b1fa37ec5c6/) | ⚠️ Unaudited |
| NewWorldOrder | unknown | ethereum | n/a | [`0x00c2999c8b2adf4abc835cc63209533973718eb1`](./contracts/ethereum-1/0x00c2999c8b2adf4abc835cc63209533973718eb1/) | ⚠️ Unaudited |
| NWORoboticsBilling | unknown | ethereum | n/a | [`0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6`](./contracts/ethereum-1/0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6/) | ⚠️ Unaudited |
| NWOStatePayout | unknown | ethereum | n/a | [`0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01`](./contracts/ethereum-1/0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01/) | ⚠️ Unaudited |
| PBLCTreasureMultiClaim | unknown | ethereum | n/a | [`0xb2a192bff3fe6edbbb1f663624421b2c1144d900`](./contracts/ethereum-1/0xb2a192bff3fe6edbbb1f663624421b2c1144d900/) | ⚠️ Unaudited |
| PcsPairOracle | unknown | ethereum | n/a | [`0x038ee16bc19e362cc5ba1915f32a3a6717047287`](./contracts/ethereum-1/0x038ee16bc19e362cc5ba1915f32a3a6717047287/) | ⚠️ Unaudited |
| PoliticoinToken | unknown | ethereum | n/a | [`0x6ffbd6b41b802550c57d4661d81a1700a502f2ab`](./contracts/ethereum-1/0x6ffbd6b41b802550c57d4661d81a1700a502f2ab/) | ⚠️ Unaudited |
| Pool | unknown | bsc | n/a | [`0x261845d1d274f542867f78be7be90510fd4899bf`](./contracts/bsc-56/0x261845d1d274f542867f78be7be90510fd4899bf/) | ⚠️ Unaudited |
| ProximaCentauri | unknown | ethereum | n/a | [`0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44`](./contracts/ethereum-1/0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44/) | ⚠️ Unaudited |
| RadioStaking | unknown | avalanche | n/a | [`0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0`](./contracts/avalanche-43114/0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0/) | ⚠️ Unaudited |
| RadioToken | unknown | avalanche | n/a | [`0x02bfd11499847003de5f0f5aa081c43854d48815`](./contracts/avalanche-43114/0x02bfd11499847003de5f0f5aa081c43854d48815/) | ⚠️ Unaudited |
| RBABY | unknown | bsc | n/a | [`0x9f48d04025d537498e34a41db53b4e872f3dca07`](./contracts/bsc-56/0x9f48d04025d537498e34a41db53b4e872f3dca07/) | ⚠️ Unaudited |
| RBRIAR | unknown | ethereum | n/a | [`0xb9e9284dab829961c0964fc849cf93f1ba1695ee`](./contracts/ethereum-1/0xb9e9284dab829961c0964fc849cf93f1ba1695ee/) | ⚠️ Unaudited |
| RDFC | unknown | bsc | n/a | [`0x73b107389b5c6e08958d59490fe70307aba96afa`](./contracts/bsc-56/0x73b107389b5c6e08958d59490fe70307aba96afa/) | ⚠️ Unaudited |
| REMEDY | unknown | polygon | n/a | [`0xc15504ed6e2bb2460750150433320068500ede64`](./contracts/polygon-137/0xc15504ed6e2bb2460750150433320068500ede64/) | ⚠️ Unaudited |
| RewardRepository | unknown | ethereum | n/a | [`0x0404084e0e63eb98766a4540a0ac6b0fbf17d155`](./contracts/ethereum-1/0x0404084e0e63eb98766a4540a0ac6b0fbf17d155/) | ⚠️ Unaudited |
| REXO | unknown | ethereum | n/a | [`0x6c5aa389da4d357ffe7ab4606522dab2067a9a13`](./contracts/ethereum-1/0x6c5aa389da4d357ffe7ab4606522dab2067a9a13/) | ⚠️ Unaudited |
| RSTATE | unknown | ethereum | n/a | [`0xd0f6cb7c6dd1c7144129cd64022b9ff537458094`](./contracts/ethereum-1/0xd0f6cb7c6dd1c7144129cd64022b9ff537458094/) | ⚠️ Unaudited |
| ShackStaking | unknown | polygon | n/a | [`0x01d97df7dc98e97da0c14ffb27adf00fda0245dd`](./contracts/polygon-137/0x01d97df7dc98e97da0c14ffb27adf00fda0245dd/) | ⚠️ Unaudited |
| ShackToken | unknown | ethereum | n/a | [`0x5f018e73c185ab23647c82bd039e762813877f0e`](./contracts/ethereum-1/0x5f018e73c185ab23647c82bd039e762813877f0e/) | ⚠️ Unaudited |
| Share | unknown | ethereum | n/a | [`0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d`](./contracts/ethereum-1/0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d/) | ⚠️ Unaudited |
| ShareOracle | unknown | polygon | n/a | [`0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d`](./contracts/polygon-137/0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d/) | ⚠️ Unaudited |
| StakePBLCNFT | unknown | ethereum | n/a | [`0x50202d4e2c96e11ed54f94e4f376d194901901e3`](./contracts/ethereum-1/0x50202d4e2c96e11ed54f94e4f376d194901901e3/) | ⚠️ Unaudited |
| StakeSTATE | unknown | ethereum | n/a | [`0x1502fb51a6bf1884b33dcda38958e8c1e818146e`](./contracts/ethereum-1/0x1502fb51a6bf1884b33dcda38958e8c1e818146e/) | ⚠️ Unaudited |
| STATEActivationBuyback | unknown | ethereum | n/a | [`0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d`](./contracts/ethereum-1/0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d/) | ⚠️ Unaudited |
| TokenOracle | unknown | polygon | n/a | [`0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087`](./contracts/polygon-137/0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087/) | ⚠️ Unaudited |
| TreasureContract | unknown | ethereum | n/a | [`0xdff3a0fb729c66c185056972a8c39164b529d866`](./contracts/ethereum-1/0xdff3a0fb729c66c185056972a8c39164b529d866/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586`](./contracts/ethereum-1/0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586/) | ⚠️ Unaudited |
| TreasuryPolicy | unknown | ethereum | n/a | [`0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0`](./contracts/ethereum-1/0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0/) | ⚠️ Unaudited |
| UNIFORM | unknown | polygon | n/a | [`0x3018234c038d524147ff47148baa8381306f28cf`](./contracts/polygon-137/0x3018234c038d524147ff47148baa8381306f28cf/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | optimism | n/a | [`0x5ef0153590d4a762f129dcf3c59186d91365e4e1`](./contracts/optimism-10/0x5ef0153590d4a762f129dcf3c59186d91365e4e1/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | optimism | n/a | [`0x68797130d8e63745761c524c33121fdd7290cb72`](./contracts/optimism-10/0x68797130d8e63745761c524c33121fdd7290cb72/) | ⚠️ Unaudited |
| ZapPool | unknown | polygon | n/a | [`0x0616bd64fdc6fbe68c1c2e8f8224af0427857407`](./contracts/polygon-137/0x0616bd64fdc6fbe68c1c2e8f8224af0427857407/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/radioshack](https://skynet.certik.com/projects/radioshack) | CertiK | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x532a59c28469684316fabdaf81b67664a18839f0`](./contracts/ethereum-1/0x532a59c28469684316fabdaf81b67664a18839f0/) | ATH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd42d0437e6512f110199e8bd619d64ea64049d38`](./contracts/ethereum-1/0xd42d0437e6512f110199e8bd619d64ea64049d38/) | Bitcoin100000K | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57b59f981730c6257df57cf6f0d98283749a9eeb`](./contracts/ethereum-1/0x57b59f981730c6257df57cf6f0d98283749a9eeb/) | BuildToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9ee2adc33350bd89369e424e01bb2156df7b04e`](./contracts/bsc-56/0xd9ee2adc33350bd89369e424e01bb2156df7b04e/) | CARROT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x874000d720dcbf7feef7347fe80c731c00e70efa`](./contracts/ethereum-1/0x874000d720dcbf7feef7347fe80c731c00e70efa/) | CHAPTER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf`](./contracts/bsc-56/0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf/) | CHORUS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x239089e5c3f2506c77e1e6704ad62d37143949bf`](./contracts/polygon-137/0x239089e5c3f2506c77e1e6704ad62d37143949bf/) | CollateralRatioPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x038ee16bc19e362cc5ba1915f32a3a6717047287`](./contracts/avalanche-43114/0x038ee16bc19e362cc5ba1915f32a3a6717047287/) | CollateralReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d`](./contracts/avalanche-43114/0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d/) | Dollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03c70a4623a9b9510e16c4d9a530d117cc275ddd`](./contracts/ethereum-1/0x03c70a4623a9b9510e16c4d9a530d117cc275ddd/) | DollarOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02f171afa137875bb631e7ea3cbdb4a295acf333`](./contracts/bsc-56/0x02f171afa137875bb631e7ea3cbdb4a295acf333/) | DreamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x070c026511c8972938069286bac74f23bcb1d235`](./contracts/bsc-56/0x070c026511c8972938069286bac74f23bcb1d235/) | Farms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8f0925c18aa0d0c00d55a2555e3aa7347e337376`](./contracts/polygon-137/0x8f0925c18aa0d0c00d55a2555e3aa7347e337376/) | FORMULA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03c70a4623a9b9510e16c4d9a530d117cc275ddd`](./contracts/polygon-137/0x03c70a4623a9b9510e16c4d9a530d117cc275ddd/) | iCollateralOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f0988bd97fe801bd7960a3a6ccdad49deae728d`](./contracts/bsc-56/0x4f0988bd97fe801bd7960a3a6ccdad49deae728d/) | JACKET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0cfc52767599dd07885697e14b1a08a4f8978e`](./contracts/ethereum-1/0x1b0cfc52767599dd07885697e14b1a08a4f8978e/) | LaunchToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfbd6015306d860c1b048715797d06634c42db32d`](./contracts/polygon-137/0xfbd6015306d860c1b048715797d06634c42db32d/) | LAYOUT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0effba87d0507876f3c669b611225a031941b936`](./contracts/bsc-56/0x0effba87d0507876f3c669b611225a031941b936/) | MATERIAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb5657def64768972a997891f922b521c0736f3b1`](./contracts/polygon-137/0xb5657def64768972a997891f922b521c0736f3b1/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x944ab22938acd82ed204766b2d7faa631171a562`](./contracts/bsc-56/0x944ab22938acd82ed204766b2d7faa631171a562/) | MOUNTAIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf0470ede87dc392285c4587dbed62b1fa37ec5c6`](./contracts/avalanche-43114/0xf0470ede87dc392285c4587dbed62b1fa37ec5c6/) | MUSEUM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c2999c8b2adf4abc835cc63209533973718eb1`](./contracts/ethereum-1/0x00c2999c8b2adf4abc835cc63209533973718eb1/) | NewWorldOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6`](./contracts/ethereum-1/0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6/) | NWORoboticsBilling | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01`](./contracts/ethereum-1/0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01/) | NWOStatePayout | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2a192bff3fe6edbbb1f663624421b2c1144d900`](./contracts/ethereum-1/0xb2a192bff3fe6edbbb1f663624421b2c1144d900/) | PBLCTreasureMultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038ee16bc19e362cc5ba1915f32a3a6717047287`](./contracts/ethereum-1/0x038ee16bc19e362cc5ba1915f32a3a6717047287/) | PcsPairOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ffbd6b41b802550c57d4661d81a1700a502f2ab`](./contracts/ethereum-1/0x6ffbd6b41b802550c57d4661d81a1700a502f2ab/) | PoliticoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x261845d1d274f542867f78be7be90510fd4899bf`](./contracts/bsc-56/0x261845d1d274f542867f78be7be90510fd4899bf/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44`](./contracts/ethereum-1/0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44/) | ProximaCentauri | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0`](./contracts/avalanche-43114/0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0/) | RadioStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02bfd11499847003de5f0f5aa081c43854d48815`](./contracts/avalanche-43114/0x02bfd11499847003de5f0f5aa081c43854d48815/) | RadioToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9f48d04025d537498e34a41db53b4e872f3dca07`](./contracts/bsc-56/0x9f48d04025d537498e34a41db53b4e872f3dca07/) | RBABY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9e9284dab829961c0964fc849cf93f1ba1695ee`](./contracts/ethereum-1/0xb9e9284dab829961c0964fc849cf93f1ba1695ee/) | RBRIAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73b107389b5c6e08958d59490fe70307aba96afa`](./contracts/bsc-56/0x73b107389b5c6e08958d59490fe70307aba96afa/) | RDFC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc15504ed6e2bb2460750150433320068500ede64`](./contracts/polygon-137/0xc15504ed6e2bb2460750150433320068500ede64/) | REMEDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0404084e0e63eb98766a4540a0ac6b0fbf17d155`](./contracts/ethereum-1/0x0404084e0e63eb98766a4540a0ac6b0fbf17d155/) | RewardRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5aa389da4d357ffe7ab4606522dab2067a9a13`](./contracts/ethereum-1/0x6c5aa389da4d357ffe7ab4606522dab2067a9a13/) | REXO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0f6cb7c6dd1c7144129cd64022b9ff537458094`](./contracts/ethereum-1/0xd0f6cb7c6dd1c7144129cd64022b9ff537458094/) | RSTATE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01d97df7dc98e97da0c14ffb27adf00fda0245dd`](./contracts/polygon-137/0x01d97df7dc98e97da0c14ffb27adf00fda0245dd/) | ShackStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f018e73c185ab23647c82bd039e762813877f0e`](./contracts/ethereum-1/0x5f018e73c185ab23647c82bd039e762813877f0e/) | ShackToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d`](./contracts/ethereum-1/0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d`](./contracts/polygon-137/0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d/) | ShareOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50202d4e2c96e11ed54f94e4f376d194901901e3`](./contracts/ethereum-1/0x50202d4e2c96e11ed54f94e4f376d194901901e3/) | StakePBLCNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1502fb51a6bf1884b33dcda38958e8c1e818146e`](./contracts/ethereum-1/0x1502fb51a6bf1884b33dcda38958e8c1e818146e/) | StakeSTATE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d`](./contracts/ethereum-1/0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d/) | STATEActivationBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087`](./contracts/polygon-137/0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087/) | TokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdff3a0fb729c66c185056972a8c39164b529d866`](./contracts/ethereum-1/0xdff3a0fb729c66c185056972a8c39164b529d866/) | TreasureContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586`](./contracts/ethereum-1/0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0`](./contracts/ethereum-1/0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0/) | TreasuryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3018234c038d524147ff47148baa8381306f28cf`](./contracts/polygon-137/0x3018234c038d524147ff47148baa8381306f28cf/) | UNIFORM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0616bd64fdc6fbe68c1c2e8f8224af0427857407`](./contracts/polygon-137/0x0616bd64fdc6fbe68c1c2e8f8224af0427857407/) | ZapPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20983] skynet.certik.com/projects/radioshack

Fork inheritance lineage and inherited audits are included when available.
