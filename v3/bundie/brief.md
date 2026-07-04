# Agentic Audit Brief: Bundie

## Project Overview

- Project: Bundie (`bundie`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.314Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, avalanche, base, optimism, scroll
- Contract surface: 84 unique implementations (176 raw deployments)
- DeFi Llama TVL: $41.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 12 project-authored contract(s) across 4 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (ownable2step, timelockupgrade, vault). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 176; live-surface contracts included: 172 (94 live, 78 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/14 (57.1%)
- Deployed-live implementations: 14 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/15
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 84
- Raw deployments: 176
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 53.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountManager | governance | arbitrum | n/a | 5 deployments: optimism `0x95cecc...a1fb06`; base `0x69c01e...f0a4e7`; arbitrum [`0x0e9aa7...e096cf`](./contracts/arbitrum-42161/0x0e9aa7015773785c1a9db9d2a8756c952be096cf/); avalanche `0x9673fc...5ea9c5`; scroll `0x2e70d2...b1ecfb` | ✅ Audited |
| BridgeManager | operational_periphery | arbitrum | n/a | 4 deployments: optimism `0xb4b991...dfa690`; base `0x55c30a...11bcd2`; arbitrum [`0x51b711...9ae936`](./contracts/arbitrum-42161/0x51b7112651867c7d6bc3d9e928f1b0e1839ae936/); avalanche `0xf203f6...37c9b5` | ✅ Audited |
| ERC4626 | unknown | optimism | n/a | 5 deployments: optimism [`0x426c01...515af9`](./contracts/optimism-10/0x426c010123a6301a3ba4b874d4b2127c10515af9/); base `0x7a668c...0f9d3c`; base `0xb3eec1...e2a842`; arbitrum `0x788f48...e02614`; avalanche `0x53e970...809b04` | ✅ Audited |
| ERC7540 | unknown | avalanche | n/a | 4 deployments: optimism `0xf9e124...327ecf`; base `0x74f191...c403c4`; arbitrum `0xa330d1...1ce705`; avalanche [`0x48b51c...ff821e`](./contracts/avalanche-43114/0x48b51c3be76b05bfd94621d857c29ff4eeff821e/) | ✅ Audited |
| FeeManager | governance | base | n/a | 4 deployments: optimism `0xcf1ecc...1ec42e`; base [`0x66cf76...bdf16a`](./contracts/base-8453/0x66cf76f346dd051849028bbef61a8f5c33bdf16a/); arbitrum `0x8f7175...acabc7`; avalanche `0x7cdd1e...e40c2f` | ✅ Audited |
| FeeManagerFactory | registry | base | n/a | 4 deployments: optimism `0x4add05...cd28fc`; base [`0x47565e...751b0e`](./contracts/base-8453/0x47565e3fcd37a2cee1401adda7c2d05df8751b0e/); arbitrum `0x56c5ff...feb6b4`; avalanche `0x8f1e79...c5842a` | ✅ Audited |
| RouterManager | adapter | optimism | n/a | 5 deployments: optimism [`0x38ba8b...f4ce26`](./contracts/optimism-10/0x38ba8ba3002a1d1984de2ec511d3c9ffb3f4ce26/); base `0x7b8af9...75d93d`; arbitrum `0x92bf97...7c255d`; avalanche `0x479328...88ddb3`; scroll `0xfc309e...4953f9` | ✅ Audited |
| VaultManager | core_logic | arbitrum | n/a | 4 deployments: optimism `0xd158c6...e4f938`; base `0x40d67f...1b1bd9`; arbitrum [`0x101ac7...137996`](./contracts/arbitrum-42161/0x101ac7546e60401e52450e4af291a7396d137996/); avalanche `0x59e6b4...0357c7` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MyOVaultComposer | core_logic | arbitrum | n/a | 25 deployments: arbitrum [`0x044272...ef49b1`](./contracts/arbitrum-42161/0x04427241a1d5bff7d9bd2446dfe55a07d6ef49b1/); arbitrum `0x0cded3...0b9d25`; arbitrum `0x119084...759a41`; arbitrum `0x296d9f...7cc49b`; arbitrum `0x3329b3...b43a09`; arbitrum `0x382908...c4da5a`; arbitrum `0x3925e5...c14f17`; arbitrum `0x3f7996...bf26f7`; arbitrum `0x43f950...5474c9`; arbitrum `0x508ae7...03c11c`; arbitrum `0x534ad6...dc2a4c`; arbitrum `0x569631...d4200f`; arbitrum `0x5dd777...d769d0`; arbitrum `0x61dcd2...9a7e7d`; arbitrum `0x69a848...0ac94c`; arbitrum `0x6f094e...b01925`; arbitrum `0x7cb662...c8bbbb`; arbitrum `0x954a3d...d265d7`; arbitrum `0x9736a1...99a0f4`; arbitrum `0xbdda29...049ede`; arbitrum `0xc5725c...2089b1`; arbitrum `0xc5f998...2f4b67`; arbitrum `0xcaac59...4cbcfb`; arbitrum `0xe01046...542044`; arbitrum `0xef4426...3eeb4c` | ⚠️ Unaudited |
| Relayer | unknown | optimism | n/a | 2 deployments: optimism [`0x996441...f3c7aa`](./contracts/optimism-10/0x9964411e45d8a47d6907dc2daa0a78644af3c7aa/); optimism `0xd23f23...39f37b` | ⚠️ Unaudited |
| Relayer | unknown | base | n/a | 2 deployments: base [`0x0d0a61...755018`](./contracts/base-8453/0x0d0a61b76a8b893aaa58405669d85b3ee6755018/); base `0x26e550...21ae87` | ⚠️ Unaudited |
| Relayer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8c03ef...926075`](./contracts/arbitrum-42161/0x8c03ef8d41ea5f2fdd7b1890c36ea69832926075/); arbitrum `0xc42969...dad4e8` | ⚠️ Unaudited |
| Relayer | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0e256d...441335`](./contracts/avalanche-43114/0x0e256d69c288f7459f0309abbf1d950c5b441335/); avalanche `0xa9ffe9...07473e` | ⚠️ Unaudited |
| USDtzOFTAdapter | unknown | base | n/a | 6 deployments: base [`0x0b56ba...04b31f`](./contracts/base-8453/0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f/); base `0x0b994b...cb5400`; base `0x2fa264...0b155c`; base `0x897450...2dea27`; base `0x8f1e79...c5842a`; base `0xd158c6...e4f938` | ⚠️ Unaudited |
| wstUSRComposer | unknown | base | n/a | 33 deployments: optimism `0x0cded3...0b9d25`; optimism `0x382908...c4da5a`; base [`0x007077...33af4f`](./contracts/base-8453/0x007077340cef49d914ae5f799659299f7f33af4f/); base `0x0ba2de...3a4f8d`; base `0x0c6146...c8ee33`; base `0x0fa466...f0945b`; base `0x119084...759a41`; base `0x2b0b1f...80ecfb`; base `0x2b33dd...cf0de1`; base `0x30ed8f...d4f92e`; base `0x343f8a...77789e`; base `0x387ea2...a0f11f`; base `0x426c01...515af9`; base `0x443de1...acf409`; base `0x4494ad...0468a1`; base `0x49d7cd...802a27`; base `0x5029fa...6404e7`; base `0x7971ff...516505`; base `0x7e2858...a99559`; base `0x844749...e5219f`; base `0x8507b4...8ce10f`; base `0x8d55c1...724dff`; base `0x97560d...a9ff86`; base `0x9bae80...b52116`; base `0x9c9220...6c0d24`; base `0xb7e710...d1a4b4`; base `0xba09a5...5a6132`; base `0xcc0607...e33a80`; base `0xd4d452...4739ad`; base `0xd5a2d4...ef3ffb`; base `0xdb4877...97de2a`; base `0xf706dc...775c49`; avalanche `0x382908...c4da5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0xd4b09e...08eaa4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfc82e1...ac7990` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x003c93...52f949` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13359b...aeca78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x175835...1acb6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ae953...2f3e89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f2c9e...baf9e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20ca26...bb5549` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372dd3...cc7a44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x548a8b...533bbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x569631...d4200f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c9303...811c07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62bfa6...68d191` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6537e5...beb18b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d4a89...386ed9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776aeb...5869ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78939c...0f3f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7cdd1e...e40c2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851e91...c32be7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x856e6f...fb8d8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89da77...0e3795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x928cc7...f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa24892...6b52c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabcf53...4c51b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac287c...7a74b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf8a3c...307d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9615a...34bb4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9621a...52311a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1a3b8...a259be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc45a32...d93ce9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0a682...969784` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf12f7a...81655e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc744f...f61d5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b994b...cb5400` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20a9c5...becd09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20f54a...60f874` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2440dc...1a1fa9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x311444...9b4838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x316421...529c4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x457500...587e3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53e970...809b04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59e6b4...0357c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6453ec...81fa63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9049e3...af6017` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x928cc7...f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95cecc...a1fb06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x979076...e44573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99e65b...cf7622` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f7078...bfdc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xada327...48723a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3c8c4...4b2f8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8f56f...77928c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9eea0...f79ac6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4b09e...08eaa4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd75215...769aef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde16cf...535e88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef8a22...a3ed45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2ace0...615cf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5458d...1e3539` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc82e1...ac7990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcc92b...a09ff1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b56ba...04b31f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cded3...0b9d25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2fa264...0b155c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3132fe...9d60fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x569631...d4200f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x928cc7...f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4b09e...08eaa4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc82e1...ac7990` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026.04.09 - Final - Bundie Collaborative Audit Report 1775738963.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.04.09%20-%20Final%20-%20Bundie%20Collaborative%20Audit%20Report%201775738963.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Fork inheritance lineage and inherited audits are included when available.
