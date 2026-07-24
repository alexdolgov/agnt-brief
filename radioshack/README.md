# Agentic Audit Brief: RadioShack

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: RadioShack (`radioshack`)
- Website: [https://radioshack.org/](https://radioshack.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, cronos, ethereum, fantom, optimism, polygon
- Contract surface: 360 unique implementations (360 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $440,907.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RadioShack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, bsc, cronos, ethereum, fantom, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 353 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 305
- Unique implementations: 360
- Raw deployments: 360
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532a59c28469684316fabdaf81b67664a18839f0` | ⚠️ Unaudited |
| Bitcoin100000K | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42d0437e6512f110199e8bd619d64ea64049d38` | ⚠️ Unaudited |
| BuildToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b59f981730c6257df57cf6f0d98283749a9eeb` | ⚠️ Unaudited |
| CARROT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9ee2adc33350bd89369e424e01bb2156df7b04e` | ⚠️ Unaudited |
| CHAPTER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874000d720dcbf7feef7347fe80c731c00e70efa` | ⚠️ Unaudited |
| CHORUS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5421f0dfcd30fc433fbecb8ccd87e17d43c03cf` | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x239089e5c3f2506c77e1e6704ad62d37143949bf` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038ee16bc19e362cc5ba1915f32a3a6717047287` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1437d78cf4f0d2ddffd15d01047a3140be6c4d` | ⚠️ Unaudited |
| DollarOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c70a4623a9b9510e16c4d9a530d117cc275ddd` | ⚠️ Unaudited |
| DreamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f171afa137875bb631e7ea3cbdb4a295acf333` | ⚠️ Unaudited |
| Farms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070c026511c8972938069286bac74f23bcb1d235` | ⚠️ Unaudited |
| FORMULA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f0925c18aa0d0c00d55a2555e3aa7347e337376` | ⚠️ Unaudited |
| iCollateralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03c70a4623a9b9510e16c4d9a530d117cc275ddd` | ⚠️ Unaudited |
| JACKET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0988bd97fe801bd7960a3a6ccdad49deae728d` | ⚠️ Unaudited |
| LaunchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0cfc52767599dd07885697e14b1a08a4f8978e` | ⚠️ Unaudited |
| LAYOUT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbd6015306d860c1b048715797d06634c42db32d` | ⚠️ Unaudited |
| MATERIAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0effba87d0507876f3c669b611225a031941b936` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5657def64768972a997891f922b521c0736f3b1` | ⚠️ Unaudited |
| MOUNTAIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944ab22938acd82ed204766b2d7faa631171a562` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07609dd4980c5f6951d38ca161eb8afbeec6ca2c` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0a8822202ad830dd1a6c8afe1e343151714c5b6` | ⚠️ Unaudited |
| MUSEUM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0470ede87dc392285c4587dbed62b1fa37ec5c6` | ⚠️ Unaudited |
| NewWorldOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c2999c8b2adf4abc835cc63209533973718eb1` | ⚠️ Unaudited |
| NWORoboticsBilling | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed4a655f622c09332fa7a67e3f449fe591bc9f6` | ⚠️ Unaudited |
| NWOStatePayout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a61de7e9c23ae1e93f291712e0d41c5dc2ad01` | ⚠️ Unaudited |
| PBLCTreasureMultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a192bff3fe6edbbb1f663624421b2c1144d900` | ⚠️ Unaudited |
| PcsPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038ee16bc19e362cc5ba1915f32a3a6717047287` | ⚠️ Unaudited |
| PoliticoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffbd6b41b802550c57d4661d81a1700a502f2ab` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x261845d1d274f542867f78be7be90510fd4899bf` | ⚠️ Unaudited |
| ProximaCentauri | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7383a4f602b64c9eb8bad7a2cb5631416a7d44` | ⚠️ Unaudited |
| RadioStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a55abd871a8a5aa973980ac5f4e7b9e732532c0` | ⚠️ Unaudited |
| RadioToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-252243 | `0x02bfd11499847003de5f0f5aa081c43854d48815` | ⚠️ Unaudited |
| RBABY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f48d04025d537498e34a41db53b4e872f3dca07` | ⚠️ Unaudited |
| RBRIAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e9284dab829961c0964fc849cf93f1ba1695ee` | ⚠️ Unaudited |
| RDFC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b107389b5c6e08958d59490fe70307aba96afa` | ⚠️ Unaudited |
| REMEDY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc15504ed6e2bb2460750150433320068500ede64` | ⚠️ Unaudited |
| RewardRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | ⚠️ Unaudited |
| REXO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5aa389da4d357ffe7ab4606522dab2067a9a13` | ⚠️ Unaudited |
| RSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f6cb7c6dd1c7144129cd64022b9ff537458094` | ⚠️ Unaudited |
| ShackStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d97df7dc98e97da0c14ffb27adf00fda0245dd` | ⚠️ Unaudited |
| ShackToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f018e73c185ab23647c82bd039e762813877f0e` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | ⚠️ Unaudited |
| ShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | ⚠️ Unaudited |
| StakePBLCNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50202d4e2c96e11ed54f94e4f376d194901901e3` | ⚠️ Unaudited |
| StakeSTATE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1502fb51a6bf1884b33dcda38958e8c1e818146e` | ⚠️ Unaudited |
| STATEActivationBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d348a2f85bd60da448a1eccbfef9c5b26ba20d` | ⚠️ Unaudited |
| TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087` | ⚠️ Unaudited |
| TreasureContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff3a0fb729c66c185056972a8c39164b529d866` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f70b82c4031f7b5ee841aaa3a9ba4369f816586` | ⚠️ Unaudited |
| TreasuryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0` | ⚠️ Unaudited |
| UNIFORM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3018234c038d524147ff47148baa8381306f28cf` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef0153590d4a762f129dcf3c59186d91365e4e1` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68797130d8e63745761c524c33121fdd7290cb72` | ⚠️ Unaudited |
| ZapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0616bd64fdc6fbe68c1c2e8f8224af0427857407` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (305)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d4d700e04dccb0bef8b8fcb54a6cdd5c9518bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13111a7150614af6809c2b42849701d9b84bdb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a1badaf880e8bdefb54563df16534f9e17ac74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed30153aac25b80faa299d26655e41714a1732e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c8db9058ee969b4dc0bf603f99f9b1c2dbd1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e541650baf0edde752499bbc8f79285bffee8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302ba14f379b872272393ec23bfd70667fa098a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3457daebddf86f6b7fb3f8fba93d5aada6c75baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37129b96896891e56bc099540fe7d1841005a367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e747b459981d06f70be99f6aedbb4e8f26d0066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fdb1b92a649fb6a64ef1511d3ba5bf60044838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55dcff319871a589d7559808d609fe5bb832f4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582add991cca266bd0057b302e561bb0614b6a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5843cc743a2ffcdaf1e3f90bd0fc245f31446d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588a1d1b5f3aef4fe0f509e60896c561fa076c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e8aec7c538ded87fc4c54f3fe67b21660308cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f8d60bd555563ec15ac9abba85ad52a0a16e7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab837f3dea4fe89a879b4fe7248a1c221a1be64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b407a39e6502c3355f78d591711fdd127e6e2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ef8851228c2c315961814e53c552aa5fb0a6b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75eb2e23bc4f2563c3c7d7f18a705dd5d4f14f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77819fbb53b9765ceb9ffe704e7d835d1b8cf81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7953c852304813a71a21d8729adae82e8e1b6441` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a5d3a9dcd33cb8d527f7b5f96eb4fef43d55636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b24f9f01079262353f3e7d50da9c4632c185db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d24ac561a335e610174bd8bfe93f955d1c0c317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885fc9843cd54e91e673f7c02b539a7b6ae8ef0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886b9bb49a6e8d4b76567c8bc33e94f7a8537960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a165fc647985dd9eff924aff80832f1e5901597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b928dff2223b863d7168f09728012f7887cbb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902574f60cff347170f04a4f512c5f8b290ea73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90c46172db25916345e61a6d88a8ad1c76cba164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f22bf997a79127deacb3bd8fc712404d6409b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e354a2050dd24a971db602737994acad8a5d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9ffb18d19cc2ac379f6b512e11034c30b09e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd0342fc5f66ea8f4e7257d6d9d0cfaddd5467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d506bf018fde28c6443664615ea240dca0035eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ef87ba6eec990e44f1bb56676c65fd8f5bb5770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3138c75d8068e4ee8d946ba9600578824c80107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68f454e1e298ac5db69aba9e22d1d19c7a5f593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9103837c4ae0faee5929ce5969d633feba16f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4bb93c07aae242db3202451f24890569793d1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3e39a7da290263a74338fd45ff71f482ae123a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce6d1047e30bc5666df158ad570a7df6f0e2529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef0047253f3991773ac1797557a3dde7ba23eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3abffcca5a9870510d3869f86340145effd7d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7c6bf833d2e1c4911754e37d06f7d66b227fae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84d8af5434b751b9cc44a9fd1e5bdc4d3bc07ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87f0a3f3671f7d01278625561dc6e284b62dae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18fd8dd44ce07849e2d739703e88bc99c355035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd1d9f049e7454e90e194f93dcd1ed4df22f16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1d0ad1aa256834d849b6e954be15e0e7d46767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78e4322bd3256589133b6e85ec523e63fc212cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebfe1738daecf6bab322825eaaf235fb2ae4c42b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2d8f29fd944f16e987de50cebe245d426f0b429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c85aa8d48ba8bcaa4424ce8f121f8a62d59002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e7ddd562fa902e0e32ad00743a3eb2f5ee4ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c2b386ff5df088ac717ab0010587bad3bc1ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x038ee16bc19e362cc5ba1915f32a3a6717047287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05d4d700e04dccb0bef8b8fcb54a6cdd5c9518bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0cb48f50e2edcd4023a1bd015326c4dfa1de509c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13111a7150614af6809c2b42849701d9b84bdb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1556e2d8ff76dfbc5946ae18260e78a6ed745fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b429f416dc733d766ec2bcbd4a37c0d23602e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1cb72b46350f21e98995293bedf1b6af3b2656ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32961831ec907b5dfa784d691f587fc8fbb93b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40f294615a264ef53062805d60eff3d93763650c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57b963fbb8e4bfb6d9047ac6d5ed183fbe6e7397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6458df5d764284346c19d88a104fd3d692471499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66f31345cb9477b427a1036d43f923a557c432a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73159bb46befdec16a94a2ee056dd5b0a2c2a58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x754b8955a07bdcda1476018fd84c608eda124aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x760eb950b718f51efe6405c6c18bf979e32287e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x822be0563b923dabffcd1080c762722336bcdfd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x853dab28a0985aa55e14baaf499cf16e7250ba07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99bfdee8d6abba65acc70d1b96b457b38a78affd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ad274e20a153451775ff29d546949a254c4a1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9bd0342fc5f66ea8f4e7257d6d9d0cfaddd5467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4acaf871759bc0f6f1ca0bd3819e7fafe8b7acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5f634c44f4a8a187ee03df1a8a39e4928cadb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb045a5010089b53ecf6d08ef85eac77897864ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9028590e4fcc0015c1907c4e11708e5911d54eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3abffcca5a9870510d3869f86340145effd7d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc69d44efd880e274da90dedc4c4a9b8adf37fe78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc724ec30b202d885f1349aa740be3132fdd61a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc6b9eed17aff79e86b5fedabfd46bcce572ba97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfce125584a1d0c77cea78a267a521d8aa9af525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3046bcdfca6f114d8c0b46fdb049f7b49261cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde1d0ad1aa256834d849b6e954be15e0e7d46767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe4de4b87345815c71aa843ea4841bcdc682637bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3c85aa8d48ba8bcaa4424ce8f121f8a62d59002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6fefabe5034b4ac95e9ed4e99bfc1a688278a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf790ff41ffc2b9a4fe203485fd9b431b13ee7a1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf965579c83ea3f18284723a4c7e0788bd9a375fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff3ae4d3f1dd772d295614c82ed79958748153e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09973679206a7be156a2d6b07ca700c5f1fd90fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x132dc5ecb48cad0ede1cd1878904ac71dd418f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1556e2d8ff76dfbc5946ae18260e78a6ed745fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23b4b734e6329e558088ed7516b4ae8c72ec0f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28f8f49a61a05a0e9d70689062c6932bad54e90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bdcb1dbf3a50b6ebad3184113bdd0a052836aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cf63899478322e18ca92bbfb15fd6edbb5edf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f1b1662a895c6ba01a99dcaf56778e7d77e5609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3018234c038d524147ff47148baa8381306f28cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x30807d3b851a31d62415b8bb7af7dca59390434a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32961831ec907b5dfa784d691f587fc8fbb93b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x352dcf5430b326f580f313ea68de94b57afa64a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3532ad52e9042aeca767fce63855dee873e247c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f8a1a41f547882e233d52846bcee54d7f6076d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42586ef4495bb512a86cf7496f6ef85ae7d69a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c1540a1d797ae62f864523ed5de51f47f2731a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57b963fbb8e4bfb6d9047ac6d5ed183fbe6e7397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x610d1f2819c4a11006dc040453299d8b95dceebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x618113a21169df05bacf980fc00938643d54b058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d08e24a0892c27524822456dc3e93a7d104c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6458df5d764284346c19d88a104fd3d692471499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71bcc0bf974aae8cc55d033c17d50486fc77e3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73159bb46befdec16a94a2ee056dd5b0a2c2a58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73abaccfa5d4f7d44a87f11a31ed42be58ef00e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x754b8955a07bdcda1476018fd84c608eda124aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78dbb73c0e1b97a6a19ea7005188b8a4e1ae7c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a6501b94825435c6a8733d963a70cb46a712f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b24f9f01079262353f3e7d50da9c4632c185db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d63d4cf63bfaeb75f23b860a42b72110a8ee911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x802e042b8c1846732b543e5cd66f78bba36f9994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83b27de2fca046fa63a11c7ce7743de33ec58822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x885fc9843cd54e91e673f7c02b539a7b6ae8ef0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9656ffb76f07563ab8b62aded39e4f2d0c1d9cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x971795f366ffbe6807287702d17f26f30b9680d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99bfdee8d6abba65acc70d1b96b457b38a78affd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ebc66050299803f6309ad8428fb3e7e3523214c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4acaf871759bc0f6f1ca0bd3819e7fafe8b7acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5f634c44f4a8a187ee03df1a8a39e4928cadb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6097a4dbef3eb44c50bad6286a5ed2bc4418aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacc89554fb28a94e5578d8a1b04e88aa7788d261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf696c66059f7658541392be5daae4f03e8bca22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0384c595353709f2d16febd74580a59ed93511a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6cc6a7b7228fa9e309026d66ecb75d197e0c649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9e9284dab829961c0964fc849cf93f1ba1695ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf5d97df0e871de38b66e2fdd3654778bbef77e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc44e0e62567828922c14f19ac7814349c1bc70e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc542d0d534b84192843491d832688afc820047a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc724ec30b202d885f1349aa740be3132fdd61a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd287c89e3e0725e1db140fa0afbdb75508587f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3046bcdfca6f114d8c0b46fdb049f7b49261cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3ce2fc22a5ed33dd2a6b1bdc9ab72e696d57f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5e263321c265a001d894f8611b6824cac1f8bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd71590d2cd1160978501c6f218e886859bd7ac93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde7d1ce109236b12809c45b23d22f30dba0ef424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5bbb701302322acb3504d4a260eec8dc4a36263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe79a1163a95734ccfbd006cbaaba954f3e846beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea0f3fb07427ae9ade43880aba6ddd2e61f40dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeea68a1729b099524fb0c5d481b1cbd0d2ddf507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf53a4d8339834db9e5629e57d0b115567683348b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff3ae4d3f1dd772d295614c82ed79958748153e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c26da3860bcd7a2b61e9c1ed19a413167366b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cb48f50e2edcd4023a1bd015326c4dfa1de509c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12c8cce9b6385e65f0c18363c9417153f9ac3980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13111a7150614af6809c2b42849701d9b84bdb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14d44d59886d6949cdd83ed4659fc39969d28d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x199589a5f8bbca049c154ff83f3e60198230c2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d72b58d2b73942451b1d0dfe2b6ef2c5a52a301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e541650baf0edde752499bbc8f79285bffee8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f1b1662a895c6ba01a99dcaf56778e7d77e5609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x302ba14f379b872272393ec23bfd70667fa098a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3457daebddf86f6b7fb3f8fba93d5aada6c75baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37129b96896891e56bc099540fe7d1841005a367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b71b62497ce5690c2a5b043afc0cc2f33d3187e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x408cb48c074d513849384841e6c5c88f5cb77414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4282c5e73d9570c628a4e79f1de4293bbf926f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45fdb1b92a649fb6a64ef1511d3ba5bf60044838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55dcff319871a589d7559808d609fe5bb832f4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ef0153590d4a762f129dcf3c59186d91365e4e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x610d1f2819c4a11006dc040453299d8b95dceebf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x613a489785c95afeb3b404cc41565ccff107b6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66f31345cb9477b427a1036d43f923a557c432a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6865bc167016ec79c89b03fce536f0c4bae0eeda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68797130d8e63745761c524c33121fdd7290cb72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e65ae5572df196fae40be2545ebc2a9a24eace9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71bcc0bf974aae8cc55d033c17d50486fc77e3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73159bb46befdec16a94a2ee056dd5b0a2c2a58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x744bfe82454c33ffa78d7d516a611384c8c2c518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x754b8955a07bdcda1476018fd84c608eda124aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75eb2e23bc4f2563c3c7d7f18a705dd5d4f14f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77819fbb53b9765ceb9ffe704e7d835d1b8cf81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7953c852304813a71a21d8729adae82e8e1b6441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b24f9f01079262353f3e7d50da9c4632c185db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d24ac561a335e610174bd8bfe93f955d1c0c317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d9c524f126ee04c77cd33a7460cab7971adb8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x802e042b8c1846732b543e5cd66f78bba36f9994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x853dab28a0985aa55e14baaf499cf16e7250ba07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x875e6506bc226625ff9142dc43b6e1f79020c12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b928dff2223b863d7168f09728012f7887cbb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c523cc197810591c483ec6dd2238a5284a636c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d2eb22d288d568f346b576314931957fb73cd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90c46172db25916345e61a6d88a8ad1c76cba164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90ca8b7a5b88795acf37b95befefbaca02c5c7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92f22bf997a79127deacb3bd8fc712404d6409b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930d7a7b57d4ce910789fa7defdb4cf7bf34dd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98bc31df56f117fef4761bd463759f8e734d5e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99bfdee8d6abba65acc70d1b96b457b38a78affd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bd0342fc5f66ea8f4e7257d6d9d0cfaddd5467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d506bf018fde28c6443664615ea240dca0035eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e8c85c40001a7264a1a1b11999f8f7b0503d60a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3138c75d8068e4ee8d946ba9600578824c80107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4a775446a6cc0b940d2cdf4d256526f4f3e704f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa607bc91c790e08eb41c013fde05a9482f2eaab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa633141a50cd5fa33831ca7a7f2fa8e3d3ea4079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa992822e96972da35cb54ec818bc3577f821426c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaab1c90b253d5a9a3e4ac5af757589a1cdac5b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad9103837c4ae0faee5929ce5969d633feba16f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0384c595353709f2d16febd74580a59ed93511a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb045a5010089b53ecf6d08ef85eac77897864ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2a1bd7ee19e245601505c3a218f5ab3d3fc1bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb404eddce75fbe99820937adcd0b6c1f859d7ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb66930d1299eaf9f6b8354c539e5f83b75794ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9028590e4fcc0015c1907c4e11708e5911d54eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3abffcca5a9870510d3869f86340145effd7d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc69d44efd880e274da90dedc4c4a9b8adf37fe78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc87f0a3f3671f7d01278625561dc6e284b62dae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3046bcdfca6f114d8c0b46fdb049f7b49261cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd46dbdd0756fbcbe15fcaa6b4c5c49024901e026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4de4b87345815c71aa843ea4841bcdc682637bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe78e4322bd3256589133b6e85ec523e63fc212cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe94845ac6782a2e71c407abe4d5201445c26a62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed6eac32bed39471b8bc0e27b7217ab6f1f49698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee8001822c0c2021bf7e3666bf5d7af2ffa96c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0470ede87dc392285c4587dbed62b1fa37ec5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf790ff41ffc2b9a4fe203485fd9b431b13ee7a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9c2b386ff5df088ac717ab0010587bad3bc1ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfecab684fa0f7cf8cbc22dffc26a051087e6e4a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf899e3909b4492859d44260e1de41a9e663e70f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d4d700e04dccb0bef8b8fcb54a6cdd5c9518bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08849dd8c9b4298c2308dfe9195de0f940b4c0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d44d59886d6949cdd83ed4659fc39969d28d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1556e2d8ff76dfbc5946ae18260e78a6ed745fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b429f416dc733d766ec2bcbd4a37c0d23602e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cb72b46350f21e98995293bedf1b6af3b2656ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bcd1d8ea08b16eab11ad4bd50aa277441a43755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36f29b5ce6e782e5525942e9babccc0cb2df94a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e2b85ea6315068ab0d380b441644c0c88654baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40f294615a264ef53062805d60eff3d93763650c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x588a1d1b5f3aef4fe0f509e60896c561fa076c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f018e73c185ab23647c82bd039e762813877f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f8d60bd555563ec15ac9abba85ad52a0a16e7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66f31345cb9477b427a1036d43f923a557c432a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ef8851228c2c315961814e53c552aa5fb0a6b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70238e09e6e32faacfda77aa853a4cf90382ec4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x754b8955a07bdcda1476018fd84c608eda124aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7953c852304813a71a21d8729adae82e8e1b6441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a6501b94825435c6a8733d963a70cb46a712f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x822be0563b923dabffcd1080c762722336bcdfd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x853dab28a0985aa55e14baaf499cf16e7250ba07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad274e20a153451775ff29d546949a254c4a1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa29b6852abb74b8f94d1fac7b1757cb49558c49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa633141a50cd5fa33831ca7a7f2fa8e3d3ea4079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb045a5010089b53ecf6d08ef85eac77897864ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0eec39c010ba504594a31cb93d96dbd2d6c4b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4bb93c07aae242db3202451f24890569793d1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9028590e4fcc0015c1907c4e11708e5911d54eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba14032e9362eeb7dcbea7a6f895a316ea0a8042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc23d0f885c043fde33d81cf9dfe18300bcdeca88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3abffcca5a9870510d3869f86340145effd7d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccf20b9e1b1636f64b571c615124135c380ba6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce694e24aa602c8685da3ad51f8213de317b6ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd17a8f6c9b68faeb839280295fea82751f4231e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd390facd59ef9abd22bebb9f2446a68f3f868e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7a5197b78e6c139531c3d2ff064215902b72c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9c176d20066b74453c3d7d67c6d2d0013ebdf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde1d0ad1aa256834d849b6e954be15e0e7d46767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf965579c83ea3f18284723a4c7e0788bd9a375fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9c2b386ff5df088ac717ab0010587bad3bc1ab1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 299
- Live contracts: 0
- Unknown liveness contracts: 299
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=299

Showing first 200 of 299 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x05d4d700e04dccb0bef8b8fcb54a6cdd5c9518bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x13111a7150614af6809c2b42849701d9b84bdb31` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x16a1badaf880e8bdefb54563df16534f9e17ac74` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1ed30153aac25b80faa299d26655e41714a1732e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x29c8db9058ee969b4dc0bf603f99f9b1c2dbd1e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x2e541650baf0edde752499bbc8f79285bffee8a6` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x302ba14f379b872272393ec23bfd70667fa098a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3457daebddf86f6b7fb3f8fba93d5aada6c75baf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x37129b96896891e56bc099540fe7d1841005a367` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3e747b459981d06f70be99f6aedbb4e8f26d0066` | non_address_book | unknown | unknown | unverified | n/a | `0x392c92cd7760ffe97ccd918f192294641d74687f` |
| unverified unclassified | UnnamedContract<br>`0x43bc055a39b40e39d64419f3bc1ae3bc5a3e2087` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x45fdb1b92a649fb6a64ef1511d3ba5bf60044838` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x55dcff319871a589d7559808d609fe5bb832f4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x582add991cca266bd0057b302e561bb0614b6a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x5843cc743a2ffcdaf1e3f90bd0fc245f31446d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x588a1d1b5f3aef4fe0f509e60896c561fa076c57` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x5e8aec7c538ded87fc4c54f3fe67b21660308cf4` | non_address_book | unknown | unknown | unverified | n/a | `0x4f125e835bbc9bbb77607c66de6d0d32339b936c` |
| unverified unclassified | UnnamedContract<br>`0x5f8d60bd555563ec15ac9abba85ad52a0a16e7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6ab837f3dea4fe89a879b4fe7248a1c221a1be64` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6b407a39e6502c3355f78d591711fdd127e6e2bb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6ef8851228c2c315961814e53c552aa5fb0a6b0b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x75eb2e23bc4f2563c3c7d7f18a705dd5d4f14f23` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x77819fbb53b9765ceb9ffe704e7d835d1b8cf81e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7953c852304813a71a21d8729adae82e8e1b6441` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7b24f9f01079262353f3e7d50da9c4632c185db0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7d24ac561a335e610174bd8bfe93f955d1c0c317` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x885fc9843cd54e91e673f7c02b539a7b6ae8ef0e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x886b9bb49a6e8d4b76567c8bc33e94f7a8537960` | non_address_book | unknown | unknown | unverified | n/a | `0x4f125e835bbc9bbb77607c66de6d0d32339b936c` |
| unverified unclassified | UnnamedContract<br>`0x8a165fc647985dd9eff924aff80832f1e5901597` | non_address_book | unknown | unknown | unverified | n/a | `0x4f125e835bbc9bbb77607c66de6d0d32339b936c` |
| unverified unclassified | UnnamedContract<br>`0x8b928dff2223b863d7168f09728012f7887cbb57` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x902574f60cff347170f04a4f512c5f8b290ea73b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x90c46172db25916345e61a6d88a8ad1c76cba164` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x92f22bf997a79127deacb3bd8fc712404d6409b3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x98e354a2050dd24a971db602737994acad8a5d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9a9ffb18d19cc2ac379f6b512e11034c30b09e94` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9bd0342fc5f66ea8f4e7257d6d9d0cfaddd5467d` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9d506bf018fde28c6443664615ea240dca0035eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9ef87ba6eec990e44f1bb56676c65fd8f5bb5770` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa3138c75d8068e4ee8d946ba9600578824c80107` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa68f454e1e298ac5db69aba9e22d1d19c7a5f593` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xad9103837c4ae0faee5929ce5969d633feba16f1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb4bb93c07aae242db3202451f24890569793d1a1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xbc3e39a7da290263a74338fd45ff71f482ae123a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xbce6d1047e30bc5666df158ad570a7df6f0e2529` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xbef0047253f3991773ac1797557a3dde7ba23eb5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc3abffcca5a9870510d3869f86340145effd7d89` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc7c6bf833d2e1c4911754e37d06f7d66b227fae7` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc84d8af5434b751b9cc44a9fd1e5bdc4d3bc07ae` | non_address_book | unknown | unknown | unverified | n/a | `0x4f125e835bbc9bbb77607c66de6d0d32339b936c` |
| unverified unclassified | UnnamedContract<br>`0xc87f0a3f3671f7d01278625561dc6e284b62dae9` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd18fd8dd44ce07849e2d739703e88bc99c355035` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xdcd1d9f049e7454e90e194f93dcd1ed4df22f16d` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xde1d0ad1aa256834d849b6e954be15e0e7d46767` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xe78e4322bd3256589133b6e85ec523e63fc212cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xebfe1738daecf6bab322825eaaf235fb2ae4c42b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf2d8f29fd944f16e987de50cebe245d426f0b429` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf3c85aa8d48ba8bcaa4424ce8f121f8a62d59002` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf7e7ddd562fa902e0e32ad00743a3eb2f5ee4ad0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf9c2b386ff5df088ac717ab0010587bad3bc1ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x038ee16bc19e362cc5ba1915f32a3a6717047287` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x05d4d700e04dccb0bef8b8fcb54a6cdd5c9518bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0cb48f50e2edcd4023a1bd015326c4dfa1de509c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x13111a7150614af6809c2b42849701d9b84bdb31` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1556e2d8ff76dfbc5946ae18260e78a6ed745fed` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1b429f416dc733d766ec2bcbd4a37c0d23602e19` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1cb72b46350f21e98995293bedf1b6af3b2656ab` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x32961831ec907b5dfa784d691f587fc8fbb93b00` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x40f294615a264ef53062805d60eff3d93763650c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x57b963fbb8e4bfb6d9047ac6d5ed183fbe6e7397` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6458df5d764284346c19d88a104fd3d692471499` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x66f31345cb9477b427a1036d43f923a557c432a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x73159bb46befdec16a94a2ee056dd5b0a2c2a58f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x754b8955a07bdcda1476018fd84c608eda124aca` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x760eb950b718f51efe6405c6c18bf979e32287e2` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x822be0563b923dabffcd1080c762722336bcdfd8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x853dab28a0985aa55e14baaf499cf16e7250ba07` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x99bfdee8d6abba65acc70d1b96b457b38a78affd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9ad274e20a153451775ff29d546949a254c4a1bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9bd0342fc5f66ea8f4e7257d6d9d0cfaddd5467d` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa4acaf871759bc0f6f1ca0bd3819e7fafe8b7acb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa5f634c44f4a8a187ee03df1a8a39e4928cadb37` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb045a5010089b53ecf6d08ef85eac77897864ae3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb9028590e4fcc0015c1907c4e11708e5911d54eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc3abffcca5a9870510d3869f86340145effd7d89` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc69d44efd880e274da90dedc4c4a9b8adf37fe78` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc724ec30b202d885f1349aa740be3132fdd61a83` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xcc6b9eed17aff79e86b5fedabfd46bcce572ba97` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xcfce125584a1d0c77cea78a267a521d8aa9af525` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd3046bcdfca6f114d8c0b46fdb049f7b49261cdf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xde1d0ad1aa256834d849b6e954be15e0e7d46767` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xe4de4b87345815c71aa843ea4841bcdc682637bb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf3c85aa8d48ba8bcaa4424ce8f121f8a62d59002` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf6fefabe5034b4ac95e9ed4e99bfc1a688278a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf790ff41ffc2b9a4fe203485fd9b431b13ee7a1e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf965579c83ea3f18284723a4c7e0788bd9a375fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xff3ae4d3f1dd772d295614c82ed79958748153e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0404084e0e63eb98766a4540a0ac6b0fbf17d155` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x09973679206a7be156a2d6b07ca700c5f1fd90fe` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x132dc5ecb48cad0ede1cd1878904ac71dd418f72` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1556e2d8ff76dfbc5946ae18260e78a6ed745fed` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x18a1ea69a50a85752b7bc204a2c45a95ce6e429d` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x23b4b734e6329e558088ed7516b4ae8c72ec0f7a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x28f8f49a61a05a0e9d70689062c6932bad54e90a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x2bdcb1dbf3a50b6ebad3184113bdd0a052836aa3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x2cf63899478322e18ca92bbfb15fd6edbb5edf85` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x2f1b1662a895c6ba01a99dcaf56778e7d77e5609` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3018234c038d524147ff47148baa8381306f28cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x32961831ec907b5dfa784d691f587fc8fbb93b00` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x352dcf5430b326f580f313ea68de94b57afa64a8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3532ad52e9042aeca767fce63855dee873e247c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3f8a1a41f547882e233d52846bcee54d7f6076d7` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x42586ef4495bb512a86cf7496f6ef85ae7d69a64` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x48a57756b14ab02549f6e4cc50ab72e8f7aad7a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x4c1540a1d797ae62f864523ed5de51f47f2731a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x57b963fbb8e4bfb6d9047ac6d5ed183fbe6e7397` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x610d1f2819c4a11006dc040453299d8b95dceebf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x618113a21169df05bacf980fc00938643d54b058` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x63d08e24a0892c27524822456dc3e93a7d104c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6458df5d764284346c19d88a104fd3d692471499` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x71bcc0bf974aae8cc55d033c17d50486fc77e3ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x73159bb46befdec16a94a2ee056dd5b0a2c2a58f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x73abaccfa5d4f7d44a87f11a31ed42be58ef00e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x754b8955a07bdcda1476018fd84c608eda124aca` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x78dbb73c0e1b97a6a19ea7005188b8a4e1ae7c31` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7a6501b94825435c6a8733d963a70cb46a712f46` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7b24f9f01079262353f3e7d50da9c4632c185db0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x7d63d4cf63bfaeb75f23b860a42b72110a8ee911` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x802e042b8c1846732b543e5cd66f78bba36f9994` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x83b27de2fca046fa63a11c7ce7743de33ec58822` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x885fc9843cd54e91e673f7c02b539a7b6ae8ef0e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9656ffb76f07563ab8b62aded39e4f2d0c1d9cad` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x971795f366ffbe6807287702d17f26f30b9680d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x99bfdee8d6abba65acc70d1b96b457b38a78affd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x9ebc66050299803f6309ad8428fb3e7e3523214c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa4acaf871759bc0f6f1ca0bd3819e7fafe8b7acb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa5f634c44f4a8a187ee03df1a8a39e4928cadb37` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xa6097a4dbef3eb44c50bad6286a5ed2bc4418aa2` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xacc89554fb28a94e5578d8a1b04e88aa7788d261` | non_address_book | unknown | unknown | unverified | n/a | `0xb11479bae358e4f5f19bd35dbf5863e20e7330c2` |
| unverified unclassified | UnnamedContract<br>`0xaf696c66059f7658541392be5daae4f03e8bca22` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb0384c595353709f2d16febd74580a59ed93511a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb6cc6a7b7228fa9e309026d66ecb75d197e0c649` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xb9e9284dab829961c0964fc849cf93f1ba1695ee` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xbaf5d97df0e871de38b66e2fdd3654778bbef77e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc0bb819b0acdeb933a58b32a4bff43af4cac1aea` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc44e0e62567828922c14f19ac7814349c1bc70e0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc542d0d534b84192843491d832688afc820047a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc724ec30b202d885f1349aa740be3132fdd61a83` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xc976b9b6dc086af05b273d786f04cf73ec7bd479` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd287c89e3e0725e1db140fa0afbdb75508587f12` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd3046bcdfca6f114d8c0b46fdb049f7b49261cdf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd3ce2fc22a5ed33dd2a6b1bdc9ab72e696d57f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd5e263321c265a001d894f8611b6824cac1f8bcd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xd71590d2cd1160978501c6f218e886859bd7ac93` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xde7d1ce109236b12809c45b23d22f30dba0ef424` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xe5bbb701302322acb3504d4a260eec8dc4a36263` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xe79a1163a95734ccfbd006cbaaba954f3e846beb` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xea0f3fb07427ae9ade43880aba6ddd2e61f40dde` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xeea68a1729b099524fb0c5d481b1cbd0d2ddf507` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xf53a4d8339834db9e5629e57d0b115567683348b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0xff3ae4d3f1dd772d295614c82ed79958748153e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x01f4af873f0cbd914deaa3ab95d2fa1b7d4c86c0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0a8ab428fd0a5f3dd849f9e9ef38c2b2894cea10` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x0c26da3860bcd7a2b61e9c1ed19a413167366b4c` | non_address_book | unknown | unknown | unverified | n/a | `0x28e7798848ec2f8e6462c80a151f533155872e0a` |
| unverified unclassified | UnnamedContract<br>`0x0cb48f50e2edcd4023a1bd015326c4dfa1de509c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x12c8cce9b6385e65f0c18363c9417153f9ac3980` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x13111a7150614af6809c2b42849701d9b84bdb31` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x14d44d59886d6949cdd83ed4659fc39969d28d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x153f0e24bc761f456cc121d443f2af761ad9d2dd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x199589a5f8bbca049c154ff83f3e60198230c2a8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x1d72b58d2b73942451b1d0dfe2b6ef2c5a52a301` | non_address_book | unknown | unknown | unverified | n/a | `0x28e7798848ec2f8e6462c80a151f533155872e0a` |
| unverified unclassified | UnnamedContract<br>`0x2e541650baf0edde752499bbc8f79285bffee8a6` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x2f1b1662a895c6ba01a99dcaf56778e7d77e5609` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x302ba14f379b872272393ec23bfd70667fa098a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3457daebddf86f6b7fb3f8fba93d5aada6c75baf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x37129b96896891e56bc099540fe7d1841005a367` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x3b71b62497ce5690c2a5b043afc0cc2f33d3187e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x408cb48c074d513849384841e6c5c88f5cb77414` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x4282c5e73d9570c628a4e79f1de4293bbf926f0b` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x45fdb1b92a649fb6a64ef1511d3ba5bf60044838` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x55a5334d1a402383c5a8c622301ea00cc8cd1681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x55dcff319871a589d7559808d609fe5bb832f4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x5ef0153590d4a762f129dcf3c59186d91365e4e1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x610d1f2819c4a11006dc040453299d8b95dceebf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x66e8617d1df7ab523a316a6c01d16aa5bed93681` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x66f31345cb9477b427a1036d43f923a557c432a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x6865bc167016ec79c89b03fce536f0c4bae0eeda` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |
| unverified unclassified | UnnamedContract<br>`0x68797130d8e63745761c524c33121fdd7290cb72` | non_address_book | unknown | unknown | unverified | n/a | `0x1e7b390149abb3b891e0a7027e111188032d4540` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/radioshack](https://skynet.certik.com/projects/radioshack) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20983] skynet.certik.com/projects/radioshack — no match: Extracted from CertiK Skynet page for RadioShack. Only two files explicitly listed as audited. Date from 'Last Audit was delivered on 5/25/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/radioshack | Ownable | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/radioshack | SafeMath | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 305 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20983] skynet.certik.com/projects/radioshack

Fork inheritance lineage and inherited audits are included when available.
