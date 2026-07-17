# Agentic Audit Brief: opulous

## Project Overview

- Project: opulous (`opulous`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.122Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 11 unique implementations (11 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (iescrow). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Edge | unknown | arbitrum | n/a | [`0xfd77834e613d616b70be2a765fb3e81ee07905ee`](./contracts/arbitrum-42161/0xfd77834e613d616b70be2a765fb3e81ee07905ee/) | ⚠️ Unaudited |
| Escrow | unknown | arbitrum | n/a | [`0x00984f16c73b68cab1857893725f6a0060876c14`](./contracts/arbitrum-42161/0x00984f16c73b68cab1857893725f6a0060876c14/) | ⚠️ Unaudited |
| LotteryInteractions | unknown | arbitrum | n/a | [`0x2550f2d15e3c8b1f0e422d9f8b8ac5bc9b73b587`](./contracts/arbitrum-42161/0x2550f2d15e3c8b1f0e422d9f8b8ac5bc9b73b587/) | ⚠️ Unaudited |
| MFTsV2 | unknown | arbitrum | n/a | [`0x22e59b5bcfc7d9077f4f2fae5b71f7108f62c2e9`](./contracts/arbitrum-42161/0x22e59b5bcfc7d9077f4f2fae5b71f7108f62c2e9/) | ⚠️ Unaudited |
| OpulStaking | unknown | arbitrum | n/a | [`0x1c6b0023f62e35fc8b7dbcd2837c2125fd376a81`](./contracts/arbitrum-42161/0x1c6b0023f62e35fc8b7dbcd2837c2125fd376a81/) | ⚠️ Unaudited |
| OVAULTStakingV2 | unknown | arbitrum | n/a | [`0x82b5392eadf2bf073c59bb2eeb456248a092725b`](./contracts/arbitrum-42161/0x82b5392eadf2bf073c59bb2eeb456248a092725b/) | ⚠️ Unaudited |
| ProxyWrapper | unknown | arbitrum | n/a | [`0x1faf032b1cceb1cbbd0ee693ff20f7b0f657cea0`](./contracts/arbitrum-42161/0x1faf032b1cceb1cbbd0ee693ff20f7b0f657cea0/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0x002679fe4259666a4517853d45cebbca828d4250`](./contracts/arbitrum-42161/0x002679fe4259666a4517853d45cebbca828d4250/) | ⚠️ Unaudited |
| TestToken | unknown | arbitrum | n/a | [`0x80840f918e325f4a198e214fa46885fce198fece`](./contracts/arbitrum-42161/0x80840f918e325f4a198e214fa46885fce198fece/) | ⚠️ Unaudited |
| Tickets | unknown | arbitrum | n/a | [`0x2008f1233fed129f49478e6746abd21107a8549a`](./contracts/arbitrum-42161/0x2008f1233fed129f49478e6746abd21107a8549a/) | ⚠️ Unaudited |
| Withdraw | unknown | arbitrum | n/a | [`0x0d543bc09f2179c51eb643e0de301088c1cac558`](./contracts/arbitrum-42161/0x0d543bc09f2179c51eb643e0de301088c1cac558/) | ⚠️ Unaudited |

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
| arbitrum | [`0xfd77834e613d616b70be2a765fb3e81ee07905ee`](./contracts/arbitrum-42161/0xfd77834e613d616b70be2a765fb3e81ee07905ee/) | Edge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00984f16c73b68cab1857893725f6a0060876c14`](./contracts/arbitrum-42161/0x00984f16c73b68cab1857893725f6a0060876c14/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2550f2d15e3c8b1f0e422d9f8b8ac5bc9b73b587`](./contracts/arbitrum-42161/0x2550f2d15e3c8b1f0e422d9f8b8ac5bc9b73b587/) | LotteryInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22e59b5bcfc7d9077f4f2fae5b71f7108f62c2e9`](./contracts/arbitrum-42161/0x22e59b5bcfc7d9077f4f2fae5b71f7108f62c2e9/) | MFTsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c6b0023f62e35fc8b7dbcd2837c2125fd376a81`](./contracts/arbitrum-42161/0x1c6b0023f62e35fc8b7dbcd2837c2125fd376a81/) | OpulStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82b5392eadf2bf073c59bb2eeb456248a092725b`](./contracts/arbitrum-42161/0x82b5392eadf2bf073c59bb2eeb456248a092725b/) | OVAULTStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1faf032b1cceb1cbbd0ee693ff20f7b0f657cea0`](./contracts/arbitrum-42161/0x1faf032b1cceb1cbbd0ee693ff20f7b0f657cea0/) | ProxyWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002679fe4259666a4517853d45cebbca828d4250`](./contracts/arbitrum-42161/0x002679fe4259666a4517853d45cebbca828d4250/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x80840f918e325f4a198e214fa46885fce198fece`](./contracts/arbitrum-42161/0x80840f918e325f4a198e214fa46885fce198fece/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2008f1233fed129f49478e6746abd21107a8549a`](./contracts/arbitrum-42161/0x2008f1233fed129f49478e6746abd21107a8549a/) | Tickets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d543bc09f2179c51eb643e0de301088c1cac558`](./contracts/arbitrum-42161/0x0d543bc09f2179c51eb643e0de301088c1cac558/) | Withdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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
