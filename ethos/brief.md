# Agentic Audit Brief: Ethos

## Project Overview

- Project: Ethos (`ethos`)
- Website: [https://www.ethos.network/](https://www.ethos.network/)
- Lifecycle: active (Tier 0, 66.2% below peak)
- Generated: 2026-06-17T07:00:49.553Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 14 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,434,785.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ethos is a decentralized social finance (SoFi) protocol that enables users to build on-chain reputation, vouch for others, and participate in reputation-based markets. It provides a suite of smart contracts for identity, attestations, reviews, voting, and economic incentives like bonding and slashing.

### Architecture

The Contracts and Ownership family provides shared infrastructure (profiles, attestations, reviews, votes) that underpins both Ethos Markets and Ethos Network. ReputationMarket and EthosVouch rely on identity and attestation contracts to function, while governance is managed via the Safe Harbor multisig.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 19 (0 live, 19 unknown).
- Excluded by liveness: 1 inactive, 44 singleton, 0 uninitialized.
- Deployment units: 0/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/9 (22.2%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 19
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 22.2% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 22.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EthosProfile | unknown | base | n/a | [`0x311df4...fc255c`](./contracts/base-8453/0x311df4d62055064b3047e3535b81f33eeffc255c/) | ✅ Audited |
| EthosVouch | unknown | base | n/a | 2 deployments: base [`0xb7866c...fa53bd`](./contracts/base-8453/0xb7866ca9e586118fb7a97b5f198776f86afa53bd/); base `0xbbbdbe...827c47` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ContractAddressManager | governance | base | n/a | 2 deployments: base [`0xc31252...0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/); base `0xe6f811...0b7436` | ⚠️ Unaudited |
| EthosSlash | unknown | base | n/a | [`0xb51b4a...dc1f1b`](./contracts/base-8453/0xb51b4a6622d591785abcee24060796c5e5dc1f1b/) | ⚠️ Unaudited |
| EthosVote | unknown | base | n/a | [`0xfe086e...2d1d59`](./contracts/base-8453/0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59/) | ⚠️ Unaudited |
| InteractionControl | unknown | base | n/a | 2 deployments: base [`0x0a31c9...db4ce5`](./contracts/base-8453/0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5/); base `0x4fa643...c38b61` | ⚠️ Unaudited |
| SafeL2 | unknown | base | unit-29920 (2 proxies) | 2 deployments: base [`0x7a20d9...31c131`](./contracts/base-8453/0x7a20d99307172d8f6b80bf1e904bbf069c31c131/); base `0xb4a9bc...cb4774` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x72f04d...81018d`](./contracts/base-8453/0x72f04d999e12d456fe7ee0acaa345124a081018d/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | base | n/a | 2 deployments: base [`0x0992bb...7b5b10`](./contracts/base-8453/0x0992bb163b8f5615258defe98fb8bd63327b5b10/); base `0x78a32a...da7f57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x1a574e...d63b11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354fb4...d29186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a9271...22f3f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x789888...f241ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcaa2dc...9860a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report.pdf (also discovered via alternate URL)](https://github.com/sherlock-audit/2024-11-ethos-network-ii-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 3 | high |
| [Smart Contract Audits](https://whitepaper.ethos.network/security/smart-contract-audits.md) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xc31252...0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/) | ContractAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb51b4a...dc1f1b`](./contracts/base-8453/0xb51b4a6622d591785abcee24060796c5e5dc1f1b/) | EthosSlash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfe086e...2d1d59`](./contracts/base-8453/0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59/) | EthosVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a31c9...db4ce5`](./contracts/base-8453/0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5/) | InteractionControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0992bb...7b5b10`](./contracts/base-8453/0x0992bb163b8f5615258defe98fb8bd63327b5b10/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=31

Zero-match audit list:

- [2947] Smart Contract Audits

Fork inheritance lineage and inherited audits are included when available.
