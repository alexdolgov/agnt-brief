# Agentic Audit Brief: Domination Finance

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: active (Tier 0, 54.9% below peak)
- Generated: 2026-05-25T02:21:46.791Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, boba, ethereum, polygon
- Contract surface: 30 unique implementations (112 raw deployments)
- DeFi Llama TVL: $1,271,583.75
- On-chain TVL (included contracts): $1,229,718.65
- TVL by chain: Base $1,229,718.65

## Project Description

Domination Finance is a decentralized derivatives protocol that enables users to trade long/short pairs on asset dominance metrics. It provides vaults for liquidity, price oracles, and automated trading infrastructure across multiple chains.

### Architecture

The 'Contract Addresses' family provides the core trading engine and vaults, which rely on the 'Smart Contract Architecture' family for governance, registries, and oracle services. The 'Domination Finance' family consists of individual market pairs that are created and managed by the core trading contracts.

## Audit Coverage Summary

- Verified implementations audited: 15/20 (75.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 30
- Raw deployments: 112
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 15 | 75.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DomfiVault | core_logic | base | 9 deployments: base [`0x19954e...4ca0c2`](./contracts/base-8453/0x19954ec2363ef593354ebec10e553ca45c4ca0c2/); base `0x4ddbe7...fe6012`; base `0x97d18f...04890e`; base `0x9d3e27...96ee16`; base `0xa19408...b8c2fb`; base `0xb097cd...2c5bbd`; base `0xb25952...ee9b29`; base `0xcdacfa...342b8f`; base `0xe2c590...92b219` | ✅ Audited |
| DomfiLockedDepositNft | token | base | 4 deployments: base [`0x117651...ecbf85`](./contracts/base-8453/0x11765119ec66fb434447fd56e9041746c8ecbf85/); base `0x1b50c9...9d7d52`; base `0x63d7f6...0514da`; base `0xe2ea29...425adf` | ✅ Audited |
| DomfiOpenPnl | unknown | base | 6 deployments: base [`0x4dff17...6c1fb1`](./contracts/base-8453/0x4dff17f1549342c8eedd142aa9af136ff56c1fb1/); base `0x68e190...bbe648`; base `0x70c161...c97b8b`; base `0x7ae386...f5bc66`; base `0xf004d9...b2c6ac`; base `0xf7ebd8...560a06` | ✅ Audited |
| DomfiOracle | operational_periphery | base | 4 deployments: base [`0x1ab9c3...3b8d4d`](./contracts/base-8453/0x1ab9c3a2e1a09f2d06bf4a75d1721c7e113b8d4d/); base `0x953ee2...096a09`; base `0xa371d5...78b9cc`; base `0xaffc3b...fb8379` | ✅ Audited |
| DomfiPairInfos | periphery | base | 8 deployments: base [`0x14a6da...507dcb`](./contracts/base-8453/0x14a6da0a766f010c22011d45de70846ebe507dcb/); base `0x256fd2...fa2059`; base `0x2b37dd...cae34d`; base `0x53917e...aafe48`; base `0x7d05e7...4db35a`; base `0x933318...19c2b5`; base `0xb2c18e...90a1d2`; base `0xcc4e84...4d217d` | ✅ Audited |
| DomfiPairsStorage | registry | base | 8 deployments: base [`0x444079...4f9be1`](./contracts/base-8453/0x444079ddcafd4fee3812e2ff79c5f74a1f4f9be1/); base `0x6f642d...f50f53`; base `0x77b1e6...53b6dd`; base `0x9c1b8d...ada97c`; base `0xc7610d...bf161b`; base `0xdac263...fa79a6`; base `0xe7554b...f132d9`; base `0xf23a52...4914a0` | ✅ Audited |
| DomfiPriceRouter | operational_periphery | base | 6 deployments: base [`0x168b28...2c78ee`](./contracts/base-8453/0x168b28e24f3c5a84fa7016cc458563447b2c78ee/); base `0x237623...a278fb`; base `0x6aa35a...890e2b`; base `0x9c726b...014cec`; base `0xd03c9b...123195`; base `0xded453...d2eb65` | ✅ Audited |
| DomfiPrivatePriceUpKeep | operational_periphery | base | 8 deployments: base [`0x1b11c2...4d40f2`](./contracts/base-8453/0x1b11c2b9ff9bab88dc10c1890f9a5bd1ba4d40f2/); base `0x2a0362...02af06`; base `0x82db80...d8e2a2`; base `0x84d29e...006fb1`; base `0x8ca1e0...a0c9b9`; base `0xb57849...a8759a`; base `0xd00de4...f15226`; base `0xdf425e...10c292` | ✅ Audited |
| DomfiRegistry | registry | base | 4 deployments: base [`0x6641bb...efd3d1`](./contracts/base-8453/0x6641bb66e9e3d158d12b18f7a684b37232efd3d1/); base `0xe43836...881103`; base `0xf44ebe...d4c483`; base `0xfa4209...f59d45` | ✅ Audited |
| DomfiTimelockOwner | governance | base | 4 deployments: base [`0x0d3c94...668235`](./contracts/base-8453/0x0d3c9454837c9e7ab60c34084fb502371d668235/); base `0x9986b8...3b3044`; base `0xf29541...72b796`; base `0xfcad85...556097` | ✅ Audited |
| DomfiTradesUpKeep | unknown | base | 6 deployments: base [`0x1e7dd9...9f92aa`](./contracts/base-8453/0x1e7dd9d0f317af14a58dcd87487b1399f79f92aa/); base `0x3259f1...b3a1fc`; base `0x361873...e26c8c`; base `0x7e13e9...985a54`; base `0x991336...7d3135`; base `0xbb5577...04dca7` | ✅ Audited |
| DomfiTrading | unknown | base | 8 deployments: base [`0x01fa77...65837f`](./contracts/base-8453/0x01fa770f432965163cc9a06a89205b05e165837f/); base `0x0eb882...0c3e8e`; base `0x7447cb...db9445`; base `0x8c44be...8d303f`; base `0x8d15ed...e6a18e`; base `0xb3963a...4d12a9`; base `0xb7dce4...19ce13`; base `0xc402de...1b0a9a` | ✅ Audited |
| DomfiTradingCallbacks | unknown | base | 6 deployments: base [`0x468bdf...1c7ebd`](./contracts/base-8453/0x468bdf906454aae6e15b1180aaad8dd9141c7ebd/); base `0x571697...7c6809`; base `0x6baae8...d3d608`; base `0x837a6e...15343f`; base `0x98ee34...c50c84`; base `0xcf14ae...e388a2` | ✅ Audited |
| DomfiTradingStorage | unknown | base | 2 deployments: base [`0x35f5ad...1936c1`](./contracts/base-8453/0x35f5adb0657d5ece6fda86a1b0a1128b271936c1/); base `0x608ff9...42cc24` | ✅ Audited |
| DomfiVerifier | periphery | base | 4 deployments: base [`0x0c6a46...722d0c`](./contracts/base-8453/0x0c6a461aadbf4fc4e245fb1ea05eacd4c7722d0c/); base `0x350bf8...1da27e`; base `0x49d577...c1d1df`; base `0xdf2b2f...832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Distributor | operational_periphery | base | [`0x74fded...7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | ⚠️ Unaudited |
| IncentiveToken | token | base | [`0x7a0d8c...a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | ⚠️ Unaudited |
| LongShortPair | unknown | polygon | 6 deployments: ethereum `0x3e75dc...f9567d`; ethereum `0x94e653...17efdf`; ethereum `0xd3a0e0...fc50e0`; polygon [`0x12cce4...0be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/); polygon `0x277132...644100`; polygon `0x514b3c...20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 4 deployments: base [`0x24c087...9d28b2`](./contracts/base-8453/0x24c0871d7aac057c6c9190f60e48f3b9fa9d28b2/); base `0x6b82fc...46d34b`; base `0x7cc253...ad21af`; base `0xa758f0...95c478` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | 3 deployments: base [`0x8a74fd...ce1a2a`](./contracts/base-8453/0x8a74fdc40bc376cc3b6d539c5c1dd03435ce1a2a/); base `0xc804e3...2b4d91`; base `0xd1465a...185dd5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | boba | `0x156a45...f30bec` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x3c77d0...961c03` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x5b9f3b...c67589` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x6caffb...3ce20f` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0xcab14a...17a18e` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0xf123b6...a102d6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46ef4b...7fdd4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x899716...7a9d97` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xddce47...683177` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf34f4f...5fca38` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Download full report (PDF)](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | 87 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x74fded...7b89da`](./contracts/base-8453/0x74fdedbd9792adcea1af9be840a840b6cc7b89da/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a0d8c...a2d4e8`](./contracts/base-8453/0x7a0d8c95d52d27b9d581275300e56a7dc8a2d4e8/) | IncentiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12cce4...0be116`](./contracts/polygon-137/0x12cce472430f7f5071375cc0a1aab717310be116/) | LongShortPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=87

Fork inheritance lineage and inherited audits are included when available.
