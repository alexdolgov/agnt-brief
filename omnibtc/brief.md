# Agentic Audit Brief: OmniBTC

## Project Overview

- Project: OmniBTC (`omnibtc`)
- Website: [https://www.omnibtc.finance](https://www.omnibtc.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.972Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 50 unique implementations (50 raw deployments)
- DeFi Llama TVL: $1,856,125.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 25 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (swapper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 50 (10 live, 40 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 10 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 50
- Raw deployments: 50
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
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
| CCTPFacet | unknown | arbitrum | n/a | [`0x452b5f476f4fa706a80c513c52729e47150d343c`](./contracts/arbitrum-42161/0x452b5f476f4fa706a80c513c52729e47150d343c/) | ⚠️ Unaudited |
| CelerFacet | unknown | arbitrum | n/a | [`0x930b39ecea81678a5033aa3c9cc1f804ffee004e`](./contracts/arbitrum-42161/0x930b39ecea81678a5033aa3c9cc1f804ffee004e/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | [`0xdae4db475aca613a5e2dc5fc304da7e962b3cead`](./contracts/arbitrum-42161/0xdae4db475aca613a5e2dc5fc304da7e962b3cead/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | n/a | [`0xe4d1ebf03742a8238b546980261507fde0113d37`](./contracts/arbitrum-42161/0xe4d1ebf03742a8238b546980261507fde0113d37/) | ⚠️ Unaudited |
| GenericSwapFacet | unknown | arbitrum | n/a | [`0x6aa49fa53d372329de88160017f9ca7c5d3338be`](./contracts/arbitrum-42161/0x6aa49fa53d372329de88160017f9ca7c5d3338be/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | n/a | [`0xad85421c47e9b830602deb83fcf149c2a1f0e8a9`](./contracts/arbitrum-42161/0xad85421c47e9b830602deb83fcf149c2a1f0e8a9/) | ⚠️ Unaudited |
| StargateFacet | unknown | arbitrum | n/a | [`0x2967e7bb9daa5711ac332caf874bd47ef99b3820`](./contracts/arbitrum-42161/0x2967e7bb9daa5711ac332caf874bd47ef99b3820/) | ⚠️ Unaudited |
| StargateFacet | unknown | arbitrum | n/a | [`0x96568bf35abeeb6c39910f6672f8e3fbeb1db303`](./contracts/arbitrum-42161/0x96568bf35abeeb6c39910f6672f8e3fbeb1db303/) | ⚠️ Unaudited |
| SystemPortal | unknown | arbitrum | n/a | [`0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5`](./contracts/arbitrum-42161/0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5/) | ⚠️ Unaudited |
| WithdrawFacet | operational_periphery | arbitrum | n/a | [`0xa7487a536968be0d563901aeb3fc07b099e2fb04`](./contracts/arbitrum-42161/0xa7487a536968be0d563901aeb3fc07b099e2fb04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xaa8b23b45cb51ce8f49d7757ff27ba397d05b6fc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x233ddece6a96c49ece6ad9ae820690fe62a28975` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0519147e1a604f764c0dca833671f5283c618f23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3eb696184b8927d677d8ab390a26563de4798c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68953027738216a63b39d55b18c02fed5c329dfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01ebb222c04894fc402f8772d2bf2b19d2eea607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x041fb4b5d44b3140728fa9d53e86d7bb78a97048` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x098d26e4d2e98c1dde14c543eb6804fd98af9cb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0de3b65d0433be67aeb9b21cdbfedda65c32f2b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x135557d220cc24e09e82b3a4c4c526138b9d3824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13ee92dfca712cd3623b2a9ecf3a8f6723674aaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14bd8ebbd9ff6e8ef0a8d3e87b7685edd2b2ebcd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ec3c04992dd9f475ca9012760fc8092898f18e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ff10daeb7a33f6cd17f9dc98d0ceefca1c8fa08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26bda683f874e7ae3e3a5d3fad44bcb82a7c107c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c71e71aef2e68c2cc87498dab3278104cfbaf4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3177d291386899f0674ef494015e132e54b7a973` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c15055bf8146e2bf904dacf71b53cc3779bf49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d6cab4f234736b9e149e709ce6f45ce04a11ce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ddc3b4474dc79fbeaf5807bf5f502f74adac84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fbc3bafecb66b02742332cc31a8f8115dccfef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53ecc006a0073b3351e9e38d94f052e3864c7935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5af12a3fbeeb89c21699aced9615848a3c2d4f4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66f440252fe99454df8f8e1eb7743ea08fe7d8e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a818191418a052b0ef0e29f15d7ff07142fe9be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f5b4bc793ae7213564501ab22c714e39f5d2bac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76376c35a5c3b850676e5fb32b576651b675de3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0bfaa350b29eab5f8ef9c82dc20ee93bb88b477` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4c264f16dc2973532e7161eebcb02ceebd7d210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb647e037df9e22c49f9ccde908fb14426aff39db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba661e8482d62d3b33751961780df04aab373ea5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbca5b60d5e2f2319d87b0f3e6c3ee5b56d918fdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd43e7d93f56269d70305355191605bbd5a1674a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7026de1e1b80175d1fdb094ce36f90a25f18505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe37890304741ced9daebcee614810f9848df8c39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe443419f1cc87cfc6b1544ce66e9d30e567dd771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5d17c849d3af19ba4618d1cbfafb0491871288f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9c84769159cae653e4ed6f51ef652ad73903c1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebb6a1d17ae9a276ede95bf6b8fc6527fa2df737` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc44c290e66e79ae208d998635f6fc24837f3c554` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sui-AMM-swap_Contracts_Audit_Report.pdf](https://github.com/OmniBTC/Sui-AMM-swap/blob/main/Sui-AMM-swap_Contracts_Audit_Report.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [audit-reports (GitHub directory)](https://github.com/GEBcore/audit-reports) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Audit-Report-BEVM-v1.0.pdf](https://github.com/btclayer2/audit-reports/blob/main/Audit-Report-BEVM-v1.0.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [audit-reports.md](https://documents.geb.network/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x452b5f476f4fa706a80c513c52729e47150d343c`](./contracts/arbitrum-42161/0x452b5f476f4fa706a80c513c52729e47150d343c/) | CCTPFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x930b39ecea81678a5033aa3c9cc1f804ffee004e`](./contracts/arbitrum-42161/0x930b39ecea81678a5033aa3c9cc1f804ffee004e/) | CelerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdae4db475aca613a5e2dc5fc304da7e962b3cead`](./contracts/arbitrum-42161/0xdae4db475aca613a5e2dc5fc304da7e962b3cead/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4d1ebf03742a8238b546980261507fde0113d37`](./contracts/arbitrum-42161/0xe4d1ebf03742a8238b546980261507fde0113d37/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6aa49fa53d372329de88160017f9ca7c5d3338be`](./contracts/arbitrum-42161/0x6aa49fa53d372329de88160017f9ca7c5d3338be/) | GenericSwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xad85421c47e9b830602deb83fcf149c2a1f0e8a9`](./contracts/arbitrum-42161/0xad85421c47e9b830602deb83fcf149c2a1f0e8a9/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5`](./contracts/arbitrum-42161/0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5/) | SystemPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa7487a536968be0d563901aeb3fc07b099e2fb04`](./contracts/arbitrum-42161/0xa7487a536968be0d563901aeb3fc07b099e2fb04/) | WithdrawFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20905] Sui-AMM-swap_Contracts_Audit_Report.pdf
- [20906] audit-reports (GitHub directory)
- [20907] Audit-Report-BEVM-v1.0.pdf
- [20908] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
