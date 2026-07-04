# Agentic Audit Brief: Atlantis

⚠️ Lifecycle status: DEAD - TVL dropped 56.8% over 90 days

## Project Overview

- Project: Atlantis (`atlantis`)
- Website: [https://www.atlantisprotocol.so/swap](https://www.atlantisprotocol.so/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:04.222Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: sonic
- Contract surface: 17 unique implementations (19 raw deployments)
- DeFi Llama TVL: $10,116.36
- On-chain TVL (included contracts): $6,773.01
- TVL by chain: Sonic $6,773.01

## Project Description

Dexs. Structurally: 23 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 7 common project-authored base contract(s) (peripheryimmutablestate, multicall, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 45; live-surface contracts included: 19 (11 live, 8 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/7 (42.9%)
- Deployed-live implementations: 9 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 17
- Raw deployments: 19
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 33.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AQUAToken | token | sonic | n/a | [`0x9138a8...7599d9`](./contracts/sonic-146/0x9138a8733dce2e877f430b7500e3c229ad7599d9/) | ✅ Audited |
| AtlantisStaking | unknown | sonic | n/a | [`0x601993...39e63b`](./contracts/sonic-146/0x601993f292db6eceb6bc29becf928d874639e63b/) | ✅ Audited |
| xAQUAToken | token | sonic | n/a | [`0x4e0bd8...9c4e84`](./contracts/sonic-146/0x4e0bd8bd175bd3ba4d20e068a56ea213289c4e84/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | unknown | sonic | n/a | 2 deployments: sonic [`0x3799d0...220ddd`](./contracts/sonic-146/0x3799d0bf541266b23c22b70d23f74bf886220ddd/); sonic `0x88284d...595150` | ⚠️ Unaudited |
| AlgebraFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x30f37e...bde73a`](./contracts/sonic-146/0x30f37e24105c25752aec8508fb4a0f0e9bbde73a/); sonic `0x7c8396...2f1a1b` | ⚠️ Unaudited |
| DividendsV2 | unknown | sonic | n/a | [`0x46b6d5...a8164b`](./contracts/sonic-146/0x46b6d5732d1b86f4fac7572efb675afbaba8164b/) | ⚠️ Unaudited |
| Faucet | unknown | sonic | n/a | [`0x7aabe8...069a11`](./contracts/sonic-146/0x7aabe848f8feb04dcfb410bcb88c129e6a069a11/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | [`0xd817f4...08b60d`](./contracts/sonic-146/0xd817f470bcf8f5489f801c3b79969b090508b60d/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | [`0xc8a68b...ef808d`](./contracts/sonic-146/0xc8a68bbc6f1b2ff03837f5a98b94be0066ef808d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x23a40b...dfe36d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eb4fc...c7ea7f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x41ecf1...e38526` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45f9e1...79511b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x937826...36197b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa384b0...a03d4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeac93d...a01728` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xed4ee1...68b8f3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/KboRABceyMllFm7vMRLZ/uploads/schKQ6l6avq9x3Aldvfd/Bailsec - Atlantis - Final Report.pdf](https://3468129680-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FKboRABceyMllFm7vMRLZ%2Fuploads%2FschKQ6l6avq9x3Aldvfd%2FBailsec%20-%20Atlantis%20-%20Final%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x3799d0...220ddd`](./contracts/sonic-146/0x3799d0bf541266b23c22b70d23f74bf886220ddd/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x30f37e...bde73a`](./contracts/sonic-146/0x30f37e24105c25752aec8508fb4a0f0e9bbde73a/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x46b6d5...a8164b`](./contracts/sonic-146/0x46b6d5732d1b86f4fac7572efb675afbaba8164b/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7aabe8...069a11`](./contracts/sonic-146/0x7aabe848f8feb04dcfb410bcb88c129e6a069a11/) | Faucet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
