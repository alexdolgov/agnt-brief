# Agentic Audit Brief: ENKI Protocol

## Project Overview

- Project: ENKI Protocol (`enki-protocol`)
- Website: [https://www.enkixyz.com/mint](https://www.enkixyz.com/mint)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.805Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, metis
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $235,206.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 12 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (2 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Config | unknown | metis | n/a | [`0x217368262b094cfc15ef7202f76ac4faad420513`](./contracts/metis-1088/0x217368262b094cfc15ef7202f76ac4faad420513/) | ⚠️ Unaudited |
| Dealer | unknown | ethereum | n/a | [`0x159a9fa80516f3779d29c0ec05521bee26650a2e`](./contracts/ethereum-1/0x159a9fa80516f3779d29c0ec05521bee26650a2e/) | ⚠️ Unaudited |
| EMetis | unknown | metis | n/a | [`0x97a2de3a09f4a4229369ee82c7f76be1a5564661`](./contracts/metis-1088/0x97a2de3a09f4a4229369ee82c7f76be1a5564661/) | ⚠️ Unaudited |
| EMetisMinter | unknown | metis | n/a | [`0x6a58f4b127ccc522c5ad6eff2b67d1dd8c51538d`](./contracts/metis-1088/0x6a58f4b127ccc522c5ad6eff2b67d1dd8c51538d/) | ⚠️ Unaudited |
| ENKI | unknown | metis | n/a | [`0x096a84536ab84e68ee210561ffd3a038e79736f1`](./contracts/metis-1088/0x096a84536ab84e68ee210561ffd3a038e79736f1/) | ⚠️ Unaudited |
| ENKITreasury | unknown | metis | n/a | [`0x93b171deae9c5ea23335ca0c59639c2330b56d96`](./contracts/metis-1088/0x93b171deae9c5ea23335ca0c59639c2330b56d96/) | ⚠️ Unaudited |
| InviterNFT | unknown | metis | n/a | [`0x153694e11768a59c7af7d00a960f70cc6307d76e`](./contracts/metis-1088/0x153694e11768a59c7af7d00a960f70cc6307d76e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | metis | n/a | [`0x1d9c0db3937ad9346ae6b921638bc090736564c0`](./contracts/metis-1088/0x1d9c0db3937ad9346ae6b921638bc090736564c0/) | ⚠️ Unaudited |
| RedemptionQueue | unknown | metis | n/a | [`0x5f31e5f22729d58c66147e57f6013315509b5960`](./contracts/metis-1088/0x5f31e5f22729d58c66147e57f6013315509b5960/) | ⚠️ Unaudited |
| RewardDispatcher | unknown | metis | n/a | [`0x06d51063df7842295ea9131432db77285c329e89`](./contracts/metis-1088/0x06d51063df7842295ea9131432db77285c329e89/) | ⚠️ Unaudited |
| SeMetis | unknown | metis | n/a | [`0x9efb0501019e536c70c77c22170f2eb07c420a91`](./contracts/metis-1088/0x9efb0501019e536c70c77c22170f2eb07c420a91/) | ⚠️ Unaudited |
| SequencerAgent | unknown | ethereum | n/a | [`0x7ad9864d900b0ec7b7d0d2bda55cce091778f4b4`](./contracts/ethereum-1/0x7ad9864d900b0ec7b7d0d2bda55cce091778f4b4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | metis | n/a | [`0x13c0ccc4c21a1aa082ab92ca515fe36f514c8cd7`](./contracts/metis-1088/0x13c0ccc4c21a1aa082ab92ca515fe36f514c8cd7/) | ⚠️ Unaudited |
| Vesting | unknown | metis | n/a | [`0x72405496730fc3d38fca77dc67f3c7ecc18273dd`](./contracts/metis-1088/0x72405496730fc3d38fca77dc67f3c7ecc18273dd/) | ⚠️ Unaudited |

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
| [DL audit link](http://odex.vip/?sign=9c65ba809188969ca834a3499bca3464) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x217368262b094cfc15ef7202f76ac4faad420513`](./contracts/metis-1088/0x217368262b094cfc15ef7202f76ac4faad420513/) | Config | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x159a9fa80516f3779d29c0ec05521bee26650a2e`](./contracts/ethereum-1/0x159a9fa80516f3779d29c0ec05521bee26650a2e/) | Dealer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x97a2de3a09f4a4229369ee82c7f76be1a5564661`](./contracts/metis-1088/0x97a2de3a09f4a4229369ee82c7f76be1a5564661/) | EMetis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6a58f4b127ccc522c5ad6eff2b67d1dd8c51538d`](./contracts/metis-1088/0x6a58f4b127ccc522c5ad6eff2b67d1dd8c51538d/) | EMetisMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x096a84536ab84e68ee210561ffd3a038e79736f1`](./contracts/metis-1088/0x096a84536ab84e68ee210561ffd3a038e79736f1/) | ENKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x93b171deae9c5ea23335ca0c59639c2330b56d96`](./contracts/metis-1088/0x93b171deae9c5ea23335ca0c59639c2330b56d96/) | ENKITreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x153694e11768a59c7af7d00a960f70cc6307d76e`](./contracts/metis-1088/0x153694e11768a59c7af7d00a960f70cc6307d76e/) | InviterNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5f31e5f22729d58c66147e57f6013315509b5960`](./contracts/metis-1088/0x5f31e5f22729d58c66147e57f6013315509b5960/) | RedemptionQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x06d51063df7842295ea9131432db77285c329e89`](./contracts/metis-1088/0x06d51063df7842295ea9131432db77285c329e89/) | RewardDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x9efb0501019e536c70c77c22170f2eb07c420a91`](./contracts/metis-1088/0x9efb0501019e536c70c77c22170f2eb07c420a91/) | SeMetis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ad9864d900b0ec7b7d0d2bda55cce091778f4b4`](./contracts/ethereum-1/0x7ad9864d900b0ec7b7d0d2bda55cce091778f4b4/) | SequencerAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x72405496730fc3d38fca77dc67f3c7ecc18273dd`](./contracts/metis-1088/0x72405496730fc3d38fca77dc67f3c7ecc18273dd/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20229] DL audit link

Fork inheritance lineage and inherited audits are included when available.
