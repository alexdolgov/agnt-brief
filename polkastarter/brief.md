# Agentic Audit Brief: Polkastarter

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Polkastarter (`polkastarter`)
- Website: [https://polkastarter.com/#upcoming-projects](https://polkastarter.com/#upcoming-projects)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-29T12:31:08.629Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,996,295.21
- On-chain TVL (included contracts): $9,606,725.61
- TVL by chain: Ethereum $9,606,725.61

## Project Description

Polkastarter is a decentralized launchpad platform that enables early-stage blockchain projects to raise capital through token sales. It provides a permissionless environment for fundraising and token distribution.

### Architecture

The project consists of a single product family centered around the POLS token, with no additional contracts or families to relate.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 21
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 17 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PolkastarterToken | token | ethereum | [`0x83e6f1...c3d5aa`](./contracts/ethereum-1/0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PolkastarterDistributionContract | unknown | ethereum | [`0xa8ff9e...165e04`](./contracts/ethereum-1/0xa8ff9e209e70ccbde820b75c51ece964ee165e04/) | ⚠️ Unaudited |

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
| [APPLICATION.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/APPLICATION.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BASE_SWAP.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/BASE_SWAP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDOSTAKING.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/IDOSTAKING.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NETWORK.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/NETWORK.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NFT_SWAP.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/NFT_SWAP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NUMBERS.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/NUMBERS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/polkastarter/polkastarter-js/blob/master/docs/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SIGNER.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/SIGNER.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [STAKING.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/STAKING.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SWAP.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/SWAP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WALLET.md](https://github.com/polkastarter/polkastarter-js/blob/master/docs/WALLET.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [MythX_95814d21d1b04aad491b65fc.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/MythX_95814d21d1b04aad491b65fc.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [PolsStake-deployment-bscMain.md](https://github.com/polkastarter/staking-pols/blob/main/docs/PolsStake-deployment-bscMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PolsStake-deployment-ethMain.md](https://github.com/polkastarter/staking-pols/blob/main/docs/PolsStake-deployment-ethMain.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deployments_mainnet.md](https://github.com/polkastarter/staking-pols/blob/main/docs/deployments_mainnet.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [manual-testing.md](https://github.com/polkastarter/staking-pols/blob/main/docs/manual-testing.md) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [deployment-sepolia.md](https://github.com/polkastarter/random-seed/blob/main/docs/deployment-sepolia.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deployments.md](https://github.com/polkastarter/random-seed/blob/main/docs/deployments.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa8ff9e...165e04`](./contracts/ethereum-1/0xa8ff9e209e70ccbde820b75c51ece964ee165e04/) | PolkastarterDistributionContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [8138] APPLICATION.md
- [8139] BASE_SWAP.md
- [8140] IDOSTAKING.md
- [8141] NETWORK.md
- [8142] NFT_SWAP.md
- [8143] NUMBERS.md
- [8144] README.md
- [8145] SIGNER.md
- [8146] STAKING.md
- [8147] SUMMARY.md
- [8148] SWAP.md
- [8149] WALLET.md
- [8150] 38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf
- [8151] MythX_95814d21d1b04aad491b65fc.pdf
- [8152] PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf
- [8153] PolsStake-deployment-bscMain.md
- [8154] PolsStake-deployment-ethMain.md
- [8156] manual-testing.md
- [8158] deployment-sepolia.md
- [8159] deployments.md

Fork inheritance lineage and inherited audits are included when available.
