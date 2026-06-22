# Agentic Audit Brief: Kodiak

⚠️ Lifecycle status: DECLINING - TVL dropped 51.4% over 90 days

## Project Overview

- Project: Kodiak (`kodiak`)
- Website: [https://kodiak.finance/](https://kodiak.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T17:16:22.760Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: berachain
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $20,611,038.00
- On-chain TVL (included contracts): $15,857,871.38
- TVL by chain: Berachain $15,857,871.38

## Project Description

Kodiak is a Berachain-native liquidity platform with multiple product components, including DEX/AMM infrastructure, Islands liquidity-management vaults, Panda Factory launch infrastructure, Perps, Validator-related components, and Baults. Its contract surface should be modeled from validated Kodiak-owned Berachain deployments and audit-scoped Kodiak contracts, not from generic upstream DEX names or unrelated multi-chain deployments.

### Architecture

The Kodiak Perps family relies on shared infrastructure such as proxy contracts (ArcProxy, BerryMaster, TransparentUpgradeableProxy) for upgradeability and governance controllers (FarmV2Controller, FarmV3Controller) to manage farming strategies. Liquidity pools and vaults interact with staking tokens and reward distributors to facilitate yield generation across multiple chains.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,857,871.38
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 6 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $15,857,871.38 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KodiakToken | token | berachain | n/a | [`0xc0d1ac...7e21df`](./contracts/berachain-80094/0xc0d1ac00a30fa4e30e44afc7313d6312c87e21df/) | ⚠️ Unaudited |
| KodiakRewards | unknown | berachain | n/a | [`0xbc3dfe...eaf6af`](./contracts/berachain-80094/0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af/) | ⚠️ Unaudited |
| TokenMigrator | token | berachain | n/a | [`0x88eb43...de8210`](./contracts/berachain-80094/0x88eb43086eddf189856af7b00a09259598de8210/) | ⚠️ Unaudited |
| XKodiakToken | token | berachain | n/a | [`0x040ea7...c04677`](./contracts/berachain-80094/0x040ea7d4b559357425407fdfc3c774c5dfc04677/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2Fs1TqcqIFZ5UkYF7iD5Nt%2Fkodiak_A3_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FierRx3DPkFpZU4OY3fB5%2Fkodiak_A1_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FSz7GaLLOLF7H4FmxpGTR%2Fkodiak_A2_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEGTuI70lM40vmr8YwZQT%2F%5BKALOS%5D%20KODIAK%20Audit%20Report%20(ENG).pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEi2WQL3ewlsPDWDnlV9D%2FAstraSec-AuditReport-Kodiak-Bault.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FHLRHY2QFxlXLD1Yxcqku%2FAstraSec-AuditReport-Kodiak-DEX.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Audits](https://documentation.kodiak.finance/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0xc0d1ac...7e21df`](./contracts/berachain-80094/0xc0d1ac00a30fa4e30e44afc7313d6312c87e21df/) | KodiakToken | token | $15,857,871.38 | Verified native implementation with $15,857,871.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xbc3dfe...eaf6af`](./contracts/berachain-80094/0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af/) | KodiakRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x88eb43...de8210`](./contracts/berachain-80094/0x88eb43086eddf189856af7b00a09259598de8210/) | TokenMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x040ea7...c04677`](./contracts/berachain-80094/0x040ea7d4b559357425407fdfc3c774c5dfc04677/) | XKodiakToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3261] Rendered PDF capture
- [3262] Rendered PDF capture
- [3264] Rendered PDF capture
- [16516] Rendered PDF capture
- [16518] Rendered PDF capture
- [16519] Rendered PDF capture
- [16520] Audits

Fork inheritance lineage and inherited audits are included when available.
