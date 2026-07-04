# Agentic Audit Brief: Clober

## Project Overview

- Project: Clober (`clober`)
- Website: [https://clober.io](https://clober.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:40.327Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 13 unique implementations (20 raw deployments)
- DeFi Llama TVL: $483,404.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 20 (16 live, 4 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/9 (100.0%)
- Deployed-live implementations: 9 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/9
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 20
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HickupHH | Tier 2 | 7 | 77.8% | 2026-02 |
| unknown | Tier 2 | 4 | 44.4% | 2024-11 |
| yAudit | Tier 2 | 2 | 22.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookManager | governance | base | n/a | [`0x8ca3a6...380112`](./contracts/base-8453/0x8ca3a6f4a6260661fcb9a25584c796a1fa380112/) | ✅ Audited |
| Controller | governance | base | n/a | [`0x2610dc...520bca`](./contracts/base-8453/0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca/) | ✅ Audited |
| LiquidityVault | unknown | base | n/a | 2 deployments: base [`0x5b351c...8c06b5`](./contracts/base-8453/0x5b351c9eed322616f76b8669176412e1808c06b5/); base `0xfe87e2...83a76d` | ✅ Audited |
| LiquidityVault | unknown | base | n/a | 2 deployments: base [`0xbfd645...189449`](./contracts/base-8453/0xbfd645ffb504e968ae53869c9fdcbcb8d1189449/); base `0xca1f6e...c0b834` | ✅ Audited |
| Minter | operational_periphery | base | n/a | 2 deployments: base [`0x2092a5...0c59d1`](./contracts/base-8453/0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1/); base `0xc8f98f...5f098f` | ✅ Audited |
| Operator | unknown | base | n/a | 2 deployments: base [`0x00f7a0...308625`](./contracts/base-8453/0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625/); base `0x82b54a...25a563` | ✅ Audited |
| Operator | unknown | base | n/a | 2 deployments: base [`0x7ba560...cb63fb`](./contracts/base-8453/0x7ba560d09bd5379216f1e4393906701210cb63fb/); base `0xe5141a...8d1a8b` | ✅ Audited |
| SimpleOracleStrategy | unknown | base | n/a | 2 deployments: base [`0x063150...b5fb58`](./contracts/base-8453/0x063150b24807e836eacf8c8420b8922d10b5fb58/); base `0x454b85...6fe892` | ✅ Audited |
| SimpleOracleStrategy | unknown | base | n/a | 2 deployments: base [`0x2913c4...b9246a`](./contracts/base-8453/0x2913c40db3509a4bc3059ba79c5c6013efb9246a/); base `0x29e071...5f2777` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x000000...64c133` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6657d1...be8ccc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x976f96...cd1efd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc23995...3e5ccc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Clober_Rebalancer_v03.pdf](https://github.com/clober-dex/clober-rebalancer/blob/master/audits/Clober_Rebalancer_v03.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 4 | high |
| [Clober_V2.pdf](https://github.com/clober-dex/v2-core/blob/master/audits/Clober_V2.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | HickupHH | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf](https://docs.clober.io/assets/files/2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf) | HickupHH | Audit | 2026-02 | fresh | Direct | contract_name | 12 | high |
| [Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf](https://docs.clober.io/assets/files/Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf](https://docs.clober.io/assets/files/SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf) | Spearbit | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf](https://docs.clober.io/assets/files/Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=6, extraction_exact=20

Zero-match audit list:

- [12926] SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf

Fork inheritance lineage and inherited audits are included when available.
