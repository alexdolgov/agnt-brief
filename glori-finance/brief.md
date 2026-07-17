# Agentic Audit Brief: Glori Finance

## Project Overview

- Project: Glori Finance (`glori-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.692Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum
- Contract surface: 19 unique implementations (20 raw deployments)
- DeFi Llama TVL: $42.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 22 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cdelegationstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 20 (2 live, 18 unknown).
- Excluded by liveness: 51 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 19
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardDistributor | unknown | arbitrum | n/a | [`0xd31adbefac6eada396cab001d21ccfd816438e66`](./contracts/arbitrum-42161/0xd31adbefac6eada396cab001d21ccfd816438e66/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | [`0xdf74d76e25fab06c2cdba4ebb0e6c82823378bd4`](./contracts/arbitrum-42161/0xdf74d76e25fab06c2cdba4ebb0e6c82823378bd4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x0b44401329674b829ff7129c610dece3be32d8be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1342a0513729568048460553cf51d9165a4f64bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x253a77c83c1cdf475f68021039aad1650fba2a34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x264370f0d6fa714fcfbc11e9d1574c136de3ee0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29dfba641bcf4fb4906159bb494265ae42b6a300` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3593d5f425ee7077c40e60660fe1f64623c0bce6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x399206ae2243b128f0c94ee9f77586a1aed71381`; arbitrum `0xe207050db69898061b44d5040217d3ef9e2250ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48a030483c200468d4b0001deac75c0506caa66c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d6b9be9bd883b019afb62362f763fa27715f12a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d6c5ff96e6f1abd3b5d6949b1af00e3f2827d01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fc50432b6b07d90a8762dd87b901a8a2d6a08f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcac9f5b0d6d0419afb4a8ebc7a37abed1b65b189` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd25e9ad86368506050d563e1d2f0fad12988013e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5c12ff7a356375502d9960ea68068b2da669c65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee88c298d7f7b03ae83f49d69edde1a07901470b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf21e2b994431b55fc04102c62847ac7dcc261c65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffba9b3f7bf5efe2627cb90b4ddf0266f01e33c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_glorifinance_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_glorifinance_v1.0-signed.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xdf74d76e25fab06c2cdba4ebb0e6c82823378bd4`](./contracts/arbitrum-42161/0xdf74d76e25fab06c2cdba4ebb0e6c82823378bd4/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
