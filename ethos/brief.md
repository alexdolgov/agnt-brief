# Agentic Audit Brief: Ethos

## Project Overview

- Project: Ethos (`ethos`)
- Website: [https://www.ethos.network/](https://www.ethos.network/)
- Lifecycle: active (Tier 0, 66.2% below peak)
- Generated: 2026-06-10T23:15:04.870Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: base, ethereum
- Contract surface: 27 unique implementations (64 raw deployments)
- DeFi Llama TVL: $1,889,821.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ethos is a decentralized social finance (SoFi) protocol that enables users to build on-chain reputation, vouch for others, and participate in reputation-based markets. It provides a suite of smart contracts for identity, attestations, reviews, voting, and economic incentives like bonding and slashing.

### Architecture

The Contracts and Ownership family provides shared infrastructure (profiles, attestations, reviews, votes) that underpins both Ethos Markets and Ethos Network. ReputationMarket and EthosVouch rely on identity and attestation contracts to function, while governance is managed via the Safe Harbor multisig.

## Audit Coverage Summary

- Verified implementations audited: 6/20 (30.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 27
- Raw deployments: 64
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 30.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 6 | 30.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EthosAttestation | unknown | base | 4 deployments: base [`0x18e765...73aade`](./contracts/base-8453/0x18e76564ecaabde4665b753197df7e514973aade/); base `0x27499d...9d3c14`; base `0x493153...2128c6`; base `0xaf35ee...8e1386` | ✅ Audited |
| EthosDiscussion | unknown | base | 4 deployments: base [`0x249357...662f42`](./contracts/base-8453/0x24935729bbff8d4c6210d769eb058a1733662f42/); base `0x2820b3...04e801`; base `0x7fdac5...7e74c9`; base `0x89fb1c...e2e2f0` | ✅ Audited |
| EthosProfile | unknown | base | 5 deployments: base [`0x1d073a...126c6f`](./contracts/base-8453/0x1d073a9cb370dd94496f921c17b591cac8126c6f/); base `0x209820...252a36`; base `0x266171...369e3a`; base `0x311df4...fc255c`; base `0xd31d64...a1e3aa` | ✅ Audited |
| EthosReview | unknown | base | 4 deployments: base [`0x3dc215...bb31bd`](./contracts/base-8453/0x3dc2154b35e737dade925893e23068fbb3bb31bd/); base `0x6af8b0...e0af03`; base `0x6d3a8f...aff325`; base `0xf64108...4a83dc` | ✅ Audited |
| EthosVouch | unknown | base | 6 deployments: base [`0x5a9149...7ae9c3`](./contracts/base-8453/0x5a914935c56a9f62417726064a9a9aed5d7ae9c3/); base `0x879989...b99d18`; base `0xb7866c...fa53bd`; base `0xbbbdbe...827c47`; base `0xd89e6b...9a6fdd`; base `0xebe137...892801` | ✅ Audited |
| ReputationMarket | unknown | base | 4 deployments: base [`0xa65e32...32d164`](./contracts/base-8453/0xa65e325f3b788085739b5a0ab366b323d832d164/); base `0xbad687...87cd9c`; base `0xc26f33...e059bf`; base `0xe0da0e...bc7505` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ContractAddressManager | governance | base | 2 deployments: base [`0xc31252...0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/); base `0xe6f811...0b7436` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | 2 deployments: base [`0x78c322...c536a1`](./contracts/base-8453/0x78c322314013b5658536929e823be260f9c536a1/); base `0xbfced9...9e0ec9` | ⚠️ Unaudited |
| EthosBond | unknown | base | 2 deployments: base [`0x21380b...28384a`](./contracts/base-8453/0x21380b24ee8b4a8d809a5049d0a9ac047828384a/); base `0xda592a...6d749a` | ⚠️ Unaudited |
| EthosBroker | unknown | base | 2 deployments: base [`0x5fab43...edc7e7`](./contracts/base-8453/0x5fab43b6e906f05d5d5e9d4b0582dd7b4eedc7e7/); base `0x6045d0...4aa9bd` | ⚠️ Unaudited |
| EthosListingPass | unknown | base | 2 deployments: base [`0xada5a6...923c54`](./contracts/base-8453/0xada5a6e455cb93e8a934d09eb564ff465d923c54/); base `0xd998f8...d94d60` | ⚠️ Unaudited |
| EthosProject | unknown | base | 2 deployments: base [`0x8b92d2...731c35`](./contracts/base-8453/0x8b92d27846559abd7cee0c01435a35f3d7731c35/); base `0xf00b5c...6aeda4` | ⚠️ Unaudited |
| EthosSlash | unknown | base | 3 deployments: base [`0xb2c41d...634a59`](./contracts/base-8453/0xb2c41deba270e1ea6abbe0e2fa70432630634a59/); base `0xb51b4a...dc1f1b`; base `0xe4c8fc...28dc73` | ⚠️ Unaudited |
| EthosVote | unknown | base | 5 deployments: base [`0x405f85...2c8429`](./contracts/base-8453/0x405f85b6670f205252f14064c70b9a980a2c8429/); base `0x6f75bf...49d136`; base `0x744bd5...e4b317`; base `0x89e6ff...60c2ed`; base `0xfe086e...2d1d59` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x9c9825...78e946`](./contracts/ethereum-1/0x9c98258da66ed095948ce4774e541c9fe978e946/) | ⚠️ Unaudited |
| InteractionControl | unknown | base | 2 deployments: base [`0x0a31c9...db4ce5`](./contracts/base-8453/0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5/); base `0x4fa643...c38b61` | ⚠️ Unaudited |
| ReverseAuction | unknown | base | 2 deployments: base [`0x323a83...43ca2a`](./contracts/base-8453/0x323a8314362a4ce13e26cf67e3590989d143ca2a/); base `0xd56695...ecd194` | ⚠️ Unaudited |
| SafeL2 | unknown | base | 2 deployments: base [`0x7a20d9...31c131`](./contracts/base-8453/0x7a20d99307172d8f6b80bf1e904bbf069c31c131/); base `0xb4a9bc...cb4774` | ⚠️ Unaudited |
| SafeProxy | unknown | base | [`0x72f04d...81018d`](./contracts/base-8453/0x72f04d999e12d456fe7ee0acaa345124a081018d/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | base | 2 deployments: base [`0x0992bb...7b5b10`](./contracts/base-8453/0x0992bb163b8f5615258defe98fb8bd63327b5b10/); base `0x78a32a...da7f57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x1a574e...d63b11` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x354fb4...d29186` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a9271...22f3f9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x789888...f241ce` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7c7ad8...cdfbe0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcaa2dc...9860a9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8385e...852e3c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report.pdf (also discovered via alternate URL)](https://github.com/sherlock-audit/2024-10-ethos-network-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 27 | high |
| [Smart Contract Audits](https://whitepaper.ethos.network/security/smart-contract-audits.md) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xc31252...0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/) | ContractAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x405f85...2c8429`](./contracts/base-8453/0x405f85b6670f205252f14064c70b9a980a2c8429/) | EthosVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a31c9...db4ce5`](./contracts/base-8453/0x0a31c99b8edd563cdf01534a82956eda5cdb4ce5/) | InteractionControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x323a83...43ca2a`](./contracts/base-8453/0x323a8314362a4ce13e26cf67e3590989d143ca2a/) | ReverseAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0992bb...7b5b10`](./contracts/base-8453/0x0992bb163b8f5615258defe98fb8bd63327b5b10/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 7 |

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
