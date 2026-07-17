# Agentic Audit Brief: Punks Terminal

## Project Overview

- Project: Punks Terminal (`punks-terminal`)
- Website: [https://punks.lightyear.build/stash](https://punks.lightyear.build/stash)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.281Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: ethereum
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,331,494.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 10 project-authored contract(s) across 1 chain(s); 4 ERC721 NFTs; built on solady.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 8 cross-contract reference(s). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 13
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CryptoPunks721 | unknown | ethereum | n/a | [`0x000000000000003607fce1ac9e043a86675c5c2f`](./contracts/ethereum-1/0x000000000000003607fce1ac9e043a86675c5c2f/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | n/a | [`0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| PunkTransferHelper | periphery | ethereum | n/a | [`0x000000000000748d91de137891483c6f2f312272`](./contracts/ethereum-1/0x000000000000748d91de137891483c6f2f312272/) | ⚠️ Unaudited |
| Stash | unknown | ethereum | n/a | 8 deployments: ethereum [`0x00000000000060d035a8002956b5fb02e3968eec`](./contracts/ethereum-1/0x00000000000060d035a8002956b5fb02e3968eec/); ethereum `0x32b26224a937c9de1efc0cbbad71c835b8f90d7e`; ethereum `0x436f079edb456f7feb36ebfef59467ea22b8f6fc`; ethereum `0xa3c22ee54e4dce534229bcdd71c346bc1e3a6f23`; ethereum `0xccb0082ff1d696b8a996e8db81fe9ac39ed1e925`; ethereum `0xe4f74112b54e7261903baedb941797be296460ce`; ethereum `0xf30c1e83e91d17f259cdca5a819bc8ad9173090f`; ethereum `0xf78baae3e2c597ac7f994106e8914ecf6cb8c860` | ⚠️ Unaudited |
| StashFactory | registry | ethereum | n/a | [`0x000000000000a6fa31f5fc51c1640aac76866750`](./contracts/ethereum-1/0x000000000000a6fa31f5fc51c1640aac76866750/) | ⚠️ Unaudited |
| WrappedPunk | unknown | ethereum | n/a | [`0xb7f7f6c52f2e2fdb1963eab30438024864c313f6`](./contracts/ethereum-1/0xb7f7f6c52f2e2fdb1963eab30438024864c313f6/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x000000000000003607fce1ac9e043a86675c5c2f`](./contracts/ethereum-1/0x000000000000003607fce1ac9e043a86675c5c2f/) | CryptoPunks721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | CryptoPunksMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000000000748d91de137891483c6f2f312272`](./contracts/ethereum-1/0x000000000000748d91de137891483c6f2f312272/) | PunkTransferHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000000060d035a8002956b5fb02e3968eec`](./contracts/ethereum-1/0x00000000000060d035a8002956b5fb02e3968eec/) | Stash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000000000a6fa31f5fc51c1640aac76866750`](./contracts/ethereum-1/0x000000000000a6fa31f5fc51c1640aac76866750/) | StashFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7f7f6c52f2e2fdb1963eab30438024864c313f6`](./contracts/ethereum-1/0xb7f7f6c52f2e2fdb1963eab30438024864c313f6/) | WrappedPunk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
