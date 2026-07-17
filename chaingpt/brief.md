# Agentic Audit Brief: ChainGPT

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.213Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, avalanche, base, bsc, ethereum, polygon
- Contract surface: 82 unique implementations (88 raw deployments)
- DeFi Llama TVL: $1,846,519.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 8 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 88 (9 live, 79 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 7 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 82
- Raw deployments: 88
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 14.3% | 2026-01 |
| yAudit | Tier 2 | 1 | 14.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainGPT | unknown | bsc | n/a | [`0x9840652dc04fb9db2c43853633f0f62be6f00f98`](./contracts/bsc-56/0x9840652dc04fb9db2c43853633f0f62be6f00f98/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DCBLiqLocker | unknown | bsc | n/a | [`0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5`](./contracts/bsc-56/0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | n/a | [`0x5b1e724b79087dae13517612a1e6575e9d340cfb`](./contracts/bsc-56/0x5b1e724b79087dae13517612a1e6575e9d340cfb/) | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | [`0x3a53269cae3281155e51d06ffe14fde8dc3662f7`](./contracts/bsc-56/0x3a53269cae3281155e51d06ffe14fde8dc3662f7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a`](./contracts/bsc-56/0xf276bf68dde58904439f11f6ed1511e89a7f5a4a/) | ⚠️ Unaudited |
| TokenSaleFactory | registry | base | n/a | 6 deployments: bsc `0x8c0ccc1a481ecddd368dbc97110f4baf88017139`; bsc `0xb13adc62601879e2abf02d34c9fc2aeb4fa9aa0e`; bsc `0xc0b58952ce4b2d0c9dc9ae70ef462621fd4fc82b`; base [`0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/); base `0x2c75445a19aa00ceee2098f9263408b9b59eede9`; base `0x9670f62a59f68ddd52496f09f6ab90a96c0669fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x62a402def6ca37e9ca7a544be34954748088ccee`](./contracts/bsc-56/0x62a402def6ca37e9ca7a544be34954748088ccee/); bsc `0xc6a52f207a99e0cb40b74fabcd0b91340d711911` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa433b2748d718108323316f460f449453c36420e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x047656bfd9a1aa8a34209f68fa5c29e480610758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d6088645b16a83cc72af309c3ba0251bce3bab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07b904ccc97acb75ea86981feec9daf7cbbf09a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bb670b01d0055cfab20776e6fc3c80bf4cbcb0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d2238f162ab6fb7c68d889b689022d7fe9c8407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ed8f6b529c549e54d3ab3f4407f74a8454354bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x133b18d68ea1aa07412d97fb7b50b16440fb7666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c9c5b548685e9e93fcd426aea74f1ebd0bd04d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c45f20e41f1ff77fd30d9c2b264b599e22a36b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x359993ad6a9ff0e6ad327ad6d32448defbd0c001` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46e9ded7b61b642f7859d3c517edb4c2f78a37a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4baf0f58f43f58e94296d5a45d8b4228bfeff4bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x570182f4a0ee6bc4748436076e37714fc3552b21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ae752de27655b8bd313d913b4498cb8464b5256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b6b1c33d0ecc0cda24b4e7ee18bc8205f044b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fc22396a063cabb5e09ba6ba449c9646155ed3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65307cc6a13fc70ce694a1bec4f778951cfd2d82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ad2718806bcc6f8a7967d3edd010dd0b7339d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x710814039f8441ddc9b9f84800ed20161f96b748` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71d2e518cbab9d9ab0f81d3893399777457943f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73c2443f0177741695604f09bfb44854caf882ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fedc89ff7475a15ff9ff81de4c4dbda49d82e7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dca8fd543822ef9e24f464dee83ec6109a8a373` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0fb7f722d9be6f98feb7ea21efb536ae1655b3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2aadde8bf7f2b4ee3dd9e012dfbaf366a81de99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58b13b29af0bf744e5502f26112d37b4c216f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa622e907dcecac945c03b595e807f764dde369ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabc831f8da7773ee1fb6b3fd362af9583b1b173b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4d0ce2e9f6d93cddcf07f582a2dc56da810b30f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc263365d628568c23d61bdda24c8eb27cef4e917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb5787786d954b253cac257515681a4565c76c2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfab58a47421e10397e8a057e1c5dcde1097a6a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaa38673f02c01379dfb5745a1685f48d852b280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea22b1dec8eddab57178a659bee8c886f29f122e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84403ad7ac26665092b84aa11776b17f5b81339` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdc70a6cb9ec8211eb8ec44fa954ab2643da0324` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c75445a19aa00ceee2098f9263408b9b59eede9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32496c27872117208ea4fc34e488a3df60d8f411` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94054198451827e35a67ac71117813ba5c325e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9670f62a59f68ddd52496f09f6ab90a96c0669fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ed70f9bb21db354441c55c3703a5109634a2b38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa44b38ce42b1aff4fbb94941c85d502d3f89b777` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa89eae18d1eb371c15e4a61848c31eb3dc32b796` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5df66f5f94f324475df9083f38e8d1983f1a02b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe09c2b6ce23c666d21205665fbdf7d55b4e42e46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4d3032c2be3f39488bfcd502ef1d09143e9d71e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cd66d345220887f487ed312b6e5a6ea19318193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x291889f889b9d245e7c100a1b087c0d56c2375f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32496c27872117208ea4fc34e488a3df60d8f411` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76de829480ba7815b77e9c896b5cd2afafee4d35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87307c1802e0edb633868b16a0601147ae6aa68c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96420f4e63cbc1cd9841ccf256a5727f1353db1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9349e46b558d127af69e725d6517c1ccd2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf967a49f87a6f264581e5843f341d2528f2651d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb5cd8426fbc3b1f2ea4b113a5a37752b3098c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cd66d345220887f487ed312b6e5a6ea19318193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x291889f889b9d245e7c100a1b087c0d56c2375f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d47310bb0c6a9d4ae2a1d6625ec0bee4f473bb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacaff3d8fcf67f4a67d8c0d9b146e32cb4a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb9667bcbd04bd4f2c1f2fcd14995bd3d00c5655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9349e46b558d127af69e725d6517c1ccd2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb5cd8426fbc3b1f2ea4b113a5a37752b3098c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d47310bb0c6a9d4ae2a1d6625ec0bee4f473bb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacaff3d8fcf67f4a67d8c0d9b146e32cb4a2eec7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sample of Audit Report](https://app.chaingpt.org/assets/files/ExampleAudit.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/).](https://skynet.certik.com/projects/chaingpt) | CertiK | Audit | 2026-01 | fresh | Direct | contract_name | 1 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5`](./contracts/bsc-56/0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5/) | DCBLiqLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b1e724b79087dae13517612a1e6575e9d340cfb`](./contracts/bsc-56/0x5b1e724b79087dae13517612a1e6575e9d340cfb/) | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a53269cae3281155e51d06ffe14fde8dc3662f7`](./contracts/bsc-56/0x3a53269cae3281155e51d06ffe14fde8dc3662f7/) | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9`](./contracts/base-8453/0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9/) | TokenSaleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
