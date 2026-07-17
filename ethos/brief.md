# Agentic Audit Brief: Ethos

## Project Overview

- Project: Ethos (`ethos`)
- Website: [https://www.ethos.network/](https://www.ethos.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.594Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: base
- Contract surface: 17 unique implementations (23 raw deployments)
- DeFi Llama TVL: $1,339,833.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SoFi. Structurally: 16 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (common, signaturecontrol). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 23 (15 live, 8 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/7 (28.6%)
- Deployed-live implementations: 9 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 17
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 28.6% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 20.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EthosProfile | unknown | base | n/a | 2 deployments: base [`0x2661710d76c872681efc25300de84138a6369e3a`](./contracts/base-8453/0x2661710d76c872681efc25300de84138a6369e3a/); base `0x311df4d62055064b3047e3535b81f33eeffc255c` | ✅ Audited |
| EthosVouch | unknown | base | n/a | 4 deployments: base [`0x5a914935c56a9f62417726064a9a9aed5d7ae9c3`](./contracts/base-8453/0x5a914935c56a9f62417726064a9a9aed5d7ae9c3/); base `0xb7866ca9e586118fb7a97b5f198776f86afa53bd`; base `0xbbbdbebc1ad8e1081b31d341123577f1a5827c47`; base `0xebe137ea60f980f40fd30e763d09b9c0ce892801` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ContractAddressManager | governance | base | n/a | 2 deployments: base [`0xc31252d6be0252018f1b12def25f6582db0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/); base `0xe6f811d8aed56d68d2b8658e01519069470b7436` | ⚠️ Unaudited |
| EthosBond | unknown | base | n/a | [`0x21380b24ee8b4a8d809a5049d0a9ac047828384a`](./contracts/base-8453/0x21380b24ee8b4a8d809a5049d0a9ac047828384a/) | ⚠️ Unaudited |
| EthosSlash | unknown | base | n/a | [`0xb51b4a6622d591785abcee24060796c5e5dc1f1b`](./contracts/base-8453/0xb51b4a6622d591785abcee24060796c5e5dc1f1b/) | ⚠️ Unaudited |
| EthosVote | unknown | base | n/a | [`0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59`](./contracts/base-8453/0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59/) | ⚠️ Unaudited |
| InteractionControl | unknown | base | n/a | [`0x4fa6432cd0e2f2b4310c27d80c9726ea41c38b61`](./contracts/base-8453/0x4fa6432cd0e2f2b4310c27d80c9726ea41c38b61/) | ⚠️ Unaudited |
| SafeL2 | unknown | base | n/a | 2 deployments: base [`0x7a20d99307172d8f6b80bf1e904bbf069c31c131`](./contracts/base-8453/0x7a20d99307172d8f6b80bf1e904bbf069c31c131/); base `0xb4a9bc5fb037ebd805a405f2b53cfadf4bcb4774` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x72f04d999e12d456fe7ee0acaa345124a081018d`](./contracts/base-8453/0x72f04d999e12d456fe7ee0acaa345124a081018d/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | base | n/a | [`0x78a32a705bfc1600e0a2e056316e44877bda7f57`](./contracts/base-8453/0x78a32a705bfc1600e0a2e056316e44877bda7f57/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x1a574edc919ddb2ceb192f3623b68ff1c5d63b11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354fb4d1e6751dd7f73943f9ebc032d521d29186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a9271fe639edd6bfed95357955a378de122f3f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x789888ce1e09f3822218eaaef70a6c51b3f241ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c7ad8d1a255e1aef9d8f77ee13f107d49cdfbe0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcaa2dccd4a863f31d66b289a00825f61a49860a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8385ee87471215f56ccd34b1f2b1ee7cb852e3c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report.pdf](https://github.com/sherlock-audit/2024-11-ethos-network-ii-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [smart-contract-audits.md](https://whitepaper.ethos.network/security/smart-contract-audits.md) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xc31252d6be0252018f1b12def25f6582db0f3e9a`](./contracts/base-8453/0xc31252d6be0252018f1b12def25f6582db0f3e9a/) | ContractAddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21380b24ee8b4a8d809a5049d0a9ac047828384a`](./contracts/base-8453/0x21380b24ee8b4a8d809a5049d0a9ac047828384a/) | EthosBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb51b4a6622d591785abcee24060796c5e5dc1f1b`](./contracts/base-8453/0xb51b4a6622d591785abcee24060796c5e5dc1f1b/) | EthosSlash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59`](./contracts/base-8453/0xfe086ebd36209bcbbbbe6c4e9af36365222d1d59/) | EthosVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fa6432cd0e2f2b4310c27d80c9726ea41c38b61`](./contracts/base-8453/0x4fa6432cd0e2f2b4310c27d80c9726ea41c38b61/) | InteractionControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78a32a705bfc1600e0a2e056316e44877bda7f57`](./contracts/base-8453/0x78a32a705bfc1600e0a2e056316e44877bda7f57/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [2947] smart-contract-audits.md

Fork inheritance lineage and inherited audits are included when available.
