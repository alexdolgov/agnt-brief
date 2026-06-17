# Agentic Audit Brief: EverRise

⚠️ Lifecycle status: DECLINING - TVL dropped 53.0% over 90 days

## Project Overview

- Project: EverRise (`everrise`)
- Website: [https://www.everrise.com](https://www.everrise.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:40.412Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 39 unique implementations (78 raw deployments)
- DeFi Llama TVL: $643,730.60
- On-chain TVL (included contracts): $23,073,647.25
- TVL by chain: Avalanche $21,534,575.07 | Bsc $1,539,072.18

## Project Description

EverRise is a multi-chain DeFi security and dApp ecosystem centered on the RISE token. Its product suite includes security-focused and utility dApps for token projects and users, with cross-chain bridging as one component of the broader EverRise ecosystem rather than the sole protocol purpose.

### Architecture

The EverRise family provides foundational bridging and liquidity infrastructure, while RISE, DEFIDO, VOLT, and VOLT (OLD) are token-specific families that likely interact with EverRise's bridges and liquidity pools. Shared infrastructure includes Uniswap and Joe factories and pairs used across multiple token families.

## Contract Surface Quality

- Indexed contracts: 472; live-surface contracts included: 78 (71 live, 7 unknown).
- Excluded by liveness: 392 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 25/83.

## Audit Coverage Summary

- Verified implementations audited: 0/34 (0.0%)
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 39
- Raw deployments: 78
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,073,647.25
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $23,073,647.25 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JoeToken | token | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| CellToken | token | bsc | n/a | [`0xf3e144...934346`](./contracts/bsc-56/0xf3e1449ddb6b218da2c9463d4594ceccc8934346/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | unit-24545 (9 proxies) | 9 deployments: avalanche [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| DiamondQ | unknown | bsc | n/a | [`0xbd573d...4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | ⚠️ Unaudited |
| EFT | unknown | bsc | n/a | [`0xb72962...b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | ⚠️ Unaudited |
| EverOwn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/); bsc `0x89dd30...abe0f4`; polygon `0x7dd45e...62fdef` | ⚠️ Unaudited |
| EverRise | unknown | bsc | n/a | 2 deployments: bsc [`0xc17c30...810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/); polygon [`0xc17c30...810ca3`](./contracts/polygon-137/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseAvax | unknown | avalanche | n/a | [`0xc17c30...810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseLib | unknown | ethereum | unit-24544 | [`0xc17c30...810ca3`](./contracts/ethereum-1/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | unit-24548 | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | unit-24549 | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | unit-24547 | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | bsc | n/a | [`0xc46fe5...7bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| Momento | unknown | ethereum | n/a | [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/) | ⚠️ Unaudited |
| MRC20 | unknown | polygon | n/a | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | ⚠️ Unaudited |
| MTGY | unknown | ethereum | n/a | 2 deployments: ethereum [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/); bsc [`0x025c9f...c8ca23`](./contracts/bsc-56/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | ⚠️ Unaudited |
| MUSO | unknown | bsc | n/a | [`0xc08e10...3a2dd1`](./contracts/bsc-56/0xc08e10b7eb0736368a0b92ee7a140ec8c63a2dd1/) | ⚠️ Unaudited |
| PabloEscoMars | unknown | bsc | n/a | [`0xa03c49...fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| Spooky | unknown | bsc | n/a | 2 deployments: bsc [`0x612e35...8ddc93`](./contracts/bsc-56/0x612e353a8595f0481e6ddf507935e897c38ddc93/); bsc `0x7818bd...eed948` | ⚠️ Unaudited |
| SpookyShiba | unknown | bsc | n/a | [`0xed74bc...4334a4`](./contracts/bsc-56/0xed74bc5dc139356e08de28143996f5ef6e4334a4/) | ⚠️ Unaudited |
| SpookyShiba_V2 | unknown | bsc | n/a | [`0x9c2b1b...1bf25a`](./contracts/bsc-56/0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | avalanche | n/a | 25 deployments: avalanche [`0x02d632...cab641`](./contracts/avalanche-43114/0x02d632ba7f2a046817af67ef7b279080d3cab641/); avalanche `0x089ec7...c22dcc`; avalanche `0x10f672...cb5029`; avalanche `0x23eb41...18f628`; avalanche `0x2aa5ee...75d2da`; avalanche `0x3dca53...a60a63`; avalanche `0x3e9263...ff864d`; avalanche `0x5da155...5405ca`; avalanche `0x66b145...f3142d`; avalanche `0x670968...198eec`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x81a003...98237e`; avalanche `0x952d82...56d57e`; avalanche `0x971156...997c50`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9eb54a...793200`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xb2d98a...191cf1`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xd60366...fa5360`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9` | ⚠️ Unaudited |
| UniswapV2Factory | registry | polygon | n/a | 2 deployments: ethereum `0x5c69be...c5aa6f`; polygon [`0x575737...d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xf3c62d...c224e2`](./contracts/polygon-137/0xf3c62dbbfec92a2e73d676d62ebec06a6bc224e2/) | ⚠️ Unaudited |
| Uptrend | unknown | bsc | n/a | [`0xc4ed75...552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | ⚠️ Unaudited |
| veRise | unknown | bsc | n/a | 2 deployments: bsc [`0xdba7b2...072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); avalanche [`0xdba7b2...072f1b`](./contracts/avalanche-43114/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xf51576...95d61c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x152ee6...e61be3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x595036...f4d32b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xde62a6...299383` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22a8e3...b6477d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/everrise) | CertiK | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf) | chainsulting | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [audit.md](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | token | $20,849,952.95 | Verified native implementation with $20,849,952.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf3e144...934346`](./contracts/bsc-56/0xf3e1449ddb6b218da2c9463d4594ceccc8934346/) | CellToken | token | $1,539,072.18 | Verified native implementation with $1,539,072.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/) | EverOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc17c30...810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc17c30...810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRiseAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc17c30...810ca3`](./contracts/ethereum-1/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRiseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/) | Momento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | MTGY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc08e10...3a2dd1`](./contracts/bsc-56/0xc08e10b7eb0736368a0b92ee7a140ec8c63a2dd1/) | MUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02d632...cab641`](./contracts/avalanche-43114/0x02d632ba7f2a046817af67ef7b279080d3cab641/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdba7b2...072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | veRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 11 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3046] DL audit link
- [14288] 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf
- [14289] audit.md

Fork inheritance lineage and inherited audits are included when available.
