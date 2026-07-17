# Agentic Audit Brief: cate-ventures

## Project Overview

- Project: cate-ventures (`cate-ventures`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.090Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 10 unique implementations (10 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 10 contract(s).

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0x71ec358dae4dd1450b6937b6129d4e98f6ac8a51`](./contracts/bsc-56/0x71ec358dae4dd1450b6937b6129d4e98f6ac8a51/) | ⚠️ Unaudited |
| Cate | unknown | bsc | n/a | [`0x451329f2fcb88c398a4cdd4a8a98780b4d62873c`](./contracts/bsc-56/0x451329f2fcb88c398a4cdd4a8a98780b4d62873c/) | ⚠️ Unaudited |
| Catecoin | unknown | bsc | n/a | [`0x033fc59d6b53ae24d60ec003188fcc4b4ea42b12`](./contracts/bsc-56/0x033fc59d6b53ae24d60ec003188fcc4b4ea42b12/) | ⚠️ Unaudited |
| CateSwap | unknown | bsc | n/a | [`0x70a8d7274c5c9a0f2f3ffb0b7fc6a9fd859bc051`](./contracts/bsc-56/0x70a8d7274c5c9a0f2f3ffb0b7fc6a9fd859bc051/) | ⚠️ Unaudited |
| Catpay | unknown | bsc | n/a | [`0x0611686a2558de495617685b3da12448657170fe`](./contracts/bsc-56/0x0611686a2558de495617685b3da12448657170fe/) | ⚠️ Unaudited |
| Descrow | unknown | bsc | n/a | [`0x7e2d71ce3fab563a5a7fca7754e95e962a1e7201`](./contracts/bsc-56/0x7e2d71ce3fab563a5a7fca7754e95e962a1e7201/) | ⚠️ Unaudited |
| Escrow20230224 | unknown | bsc | n/a | [`0x2484be64a481198ba1e29d7330285366b92d08db`](./contracts/bsc-56/0x2484be64a481198ba1e29d7330285366b92d08db/) | ⚠️ Unaudited |
| NFTCATE | unknown | bsc | n/a | [`0x2f9fbb154e6c3810f8b2d786cb863f8893e43354`](./contracts/bsc-56/0x2f9fbb154e6c3810f8b2d786cb863f8893e43354/) | ⚠️ Unaudited |
| NFTMeme | unknown | bsc | n/a | [`0x7c331ffd3eb1fc89a7562258597225cc5cc48f7e`](./contracts/bsc-56/0x7c331ffd3eb1fc89a7562258597225cc5cc48f7e/) | ⚠️ Unaudited |
| StakingAnyToken | unknown | bsc | n/a | [`0x12915a22fa6a8f8b68d96ab4c04eb3ebd26cbdaf`](./contracts/bsc-56/0x12915a22fa6a8f8b68d96ab4c04eb3ebd26cbdaf/) | ⚠️ Unaudited |

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
| bsc | [`0x71ec358dae4dd1450b6937b6129d4e98f6ac8a51`](./contracts/bsc-56/0x71ec358dae4dd1450b6937b6129d4e98f6ac8a51/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x451329f2fcb88c398a4cdd4a8a98780b4d62873c`](./contracts/bsc-56/0x451329f2fcb88c398a4cdd4a8a98780b4d62873c/) | Cate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x033fc59d6b53ae24d60ec003188fcc4b4ea42b12`](./contracts/bsc-56/0x033fc59d6b53ae24d60ec003188fcc4b4ea42b12/) | Catecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x70a8d7274c5c9a0f2f3ffb0b7fc6a9fd859bc051`](./contracts/bsc-56/0x70a8d7274c5c9a0f2f3ffb0b7fc6a9fd859bc051/) | CateSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0611686a2558de495617685b3da12448657170fe`](./contracts/bsc-56/0x0611686a2558de495617685b3da12448657170fe/) | Catpay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e2d71ce3fab563a5a7fca7754e95e962a1e7201`](./contracts/bsc-56/0x7e2d71ce3fab563a5a7fca7754e95e962a1e7201/) | Descrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2484be64a481198ba1e29d7330285366b92d08db`](./contracts/bsc-56/0x2484be64a481198ba1e29d7330285366b92d08db/) | Escrow20230224 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f9fbb154e6c3810f8b2d786cb863f8893e43354`](./contracts/bsc-56/0x2f9fbb154e6c3810f8b2d786cb863f8893e43354/) | NFTCATE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c331ffd3eb1fc89a7562258597225cc5cc48f7e`](./contracts/bsc-56/0x7c331ffd3eb1fc89a7562258597225cc5cc48f7e/) | NFTMeme | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12915a22fa6a8f8b68d96ab4c04eb3ebd26cbdaf`](./contracts/bsc-56/0x12915a22fa6a8f8b68d96ab4c04eb3ebd26cbdaf/) | StakingAnyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
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
