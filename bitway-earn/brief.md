# Agentic Audit Brief: Bitway Earn

## Project Overview

- Project: Bitway Earn (`bitway-earn`)
- Website: [https://bitway.com/](https://bitway.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:48.504Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 7 unique implementations (29 raw deployments)
- DeFi Llama TVL: $60,030,218.45
- On-chain TVL (included contracts): $136,353,317.08
- TVL by chain: Bsc $136,353,317.08

## Project Description

Bitway Earn is a DeFi protocol on BSC categorized by DefiLlama as Basis Trading and positioned as a capital/yield gateway. Its observed contract surface includes vault, token, token-lock, and proxy-based token/stablecoin components. Specific claims that vaults execute delta-neutral positions or issue LP share tokens should be omitted unless supported by verified documentation, audit scope, or source code.

### Architecture

The Bitway Earn family provides the core infrastructure including the stablecoin proxy and LP tokens, while the Strategy family contains a specialized vault that likely plugs into the same LP token and withdrawal mechanisms. Both families share the same operational periphery contracts for managing user deposits and redemptions.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 29
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $136,353,317.08
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitwayToken | token | bsc | n/a | 3 deployments: bsc [`0x32e060...3270e0`](./contracts/bsc-56/0x32e060f88398d16b086e5040566cb1897d3270e0/); bsc `0x3a63de...16d25d`; bsc `0x444045...35acaa` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 4 deployments: bsc [`0x1f0681...538188`](./contracts/bsc-56/0x1f068133a960ecf58f938164e0fd5364cb538188/); bsc `0x3db84f...fffee1`; bsc `0x5c4a69...d52bd1`; bsc `0xb82e32...ae3b63` | ⚠️ Unaudited |
| BitwayOFTAdapter | adapter | bsc | n/a | [`0x76d775...0f1e50`](./contracts/bsc-56/0x76d77531258b4dddfa4087e97a6c89bc0f0f1e50/) | ⚠️ Unaudited |
| BitwayTokenLock | token | bsc | n/a | 4 deployments: bsc [`0x4e1743...c81b73`](./contracts/bsc-56/0x4e1743201775794e313dd621dfe89c61eec81b73/); bsc `0xca5715...879832`; bsc `0xd15f47...da1b4c`; bsc `0xfa0f1a...665c90` | ⚠️ Unaudited |
| LPToken | token | bsc | n/a | 12 deployments: bsc [`0x2a0109...65dbee`](./contracts/bsc-56/0x2a0109ac682794b78a9715568abac9d60665dbee/); bsc `0x4effb6...b106d5`; bsc `0x66f2c4...c5370e`; bsc `0x73af54...2ba3a1`; bsc `0x8042c9...3ef00a`; bsc `0x82356c...a8ef71`; bsc `0x8a928c...713386`; bsc `0xaa3d25...ffffb7`; bsc `0xb5c361...2307f9`; bsc `0xccafb7...ed2fd2`; bsc `0xd8a246...08d813`; bsc `0xeebfe7...68229b` | ⚠️ Unaudited |
| WithdrawVault | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x2b8464...f157cb`](./contracts/bsc-56/0x2b8464ffb2b77de64cfefdeb00ad925576f157cb/); bsc `0xb466f0...c07f9b`; bsc `0xeff69f...21f09d`; bsc `0xfc8e6b...1d04ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xcfd67d...7c3415` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FfD8mPTvBi8WxzPI8e7EV%2FBlocksec_Bitway_Earn_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2Fop9YWYBDnxCa0YeBdf8t%2FSalus_BitwayEarn_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FCHW9zrkYycSoPABMSaSk%2FSalus_Bitway_Token_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4674] DL audit link
- [4675] DL audit link
- [4676] DL audit link

Fork inheritance lineage and inherited audits are included when available.
