# Agentic Audit Brief: Bridge Mutual

## Project Overview

- Project: Bridge Mutual (`bridge-mutual`)
- Website: [https://www.bridgemutual.io](https://www.bridgemutual.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.568Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc, ethereum, polygon
- Contract surface: 36 unique implementations (45 raw deployments)
- DeFi Llama TVL: $77,204.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 15 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 45 (18 live, 27 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/9 (22.2%)
- Deployed-live implementations: 9 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 36
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 22.2% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CapitalPool | core_logic | ethereum | n/a | [`0x426f72ab027da5f5a462d377a5eb057f63082b02`](./contracts/ethereum-1/0x426f72ab027da5f5a462d377a5eb057f63082b02/) | ✅ Audited |
| PolicyBookRegistry | registry | ethereum | n/a | [`0xff13c3d2c7931e86e13c993a8cb02d68848f9613`](./contracts/ethereum-1/0xff13c3d2c7931e86e13c993a8cb02d68848f9613/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BMIStaking | unknown | ethereum | n/a | [`0x55978a6f6a4cfa00d5a8b442e93e42c025d0890c`](./contracts/ethereum-1/0x55978a6f6a4cfa00d5a8b442e93e42c025d0890c/) | ⚠️ Unaudited |
| BMIToken | token | ethereum | n/a | [`0x725c263e32c72ddc3a19bea12c5a0479a81ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | ⚠️ Unaudited |
| BSCstarterFactory | unknown | bsc | n/a | 6 deployments: bsc [`0x0470aac988fd03bbbde2cc5e84b0d603eff216da`](./contracts/bsc-56/0x0470aac988fd03bbbde2cc5e84b0d603eff216da/); bsc `0x34cc2a333d4a6086726b3d84220ea15d78ca1962`; bsc `0x5ff9b47ef2b27d2ea1c889274ac67f815033cc7b`; bsc `0xf3f75d2611c9f76ee52409a92f9f53a8afdd0c61`; bsc `0xfaa2a89eba59242b73dbaf563bba8629664d7eb5`; bsc `0xfcf9f7ae5dd93e0449be8d71a6d372a685f58f8c` | ⚠️ Unaudited |
| BSCstarterInfo | unknown | bsc | n/a | 3 deployments: bsc [`0x135c2c8956af96c41ac6bf7ae76e2bccd526fdbe`](./contracts/bsc-56/0x135c2c8956af96c41ac6bf7ae76e2bccd526fdbe/); bsc `0x290c23e0fbf8beb4090b4d89431558914bedf62d`; bsc `0x45dbe7568e2a40ee31a76e712825248612cfb4a8` | ⚠️ Unaudited |
| BSCstarterStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x36fdeffdd191d99e246946595ad88ad408e3806d`](./contracts/bsc-56/0x36fdeffdd191d99e246946595ad88ad408e3806d/); bsc `0x808aceb7adc3d64f912e88b061e89eea2540b979`; bsc `0xabfefc9d9e73d1d295b12859b057e6f5b9852e5a` | ⚠️ Unaudited |
| STARToken | token | bsc | n/a | [`0x31d0a7ada4d4c131eb612db48861211f63e57610`](./contracts/bsc-56/0x31d0a7ada4d4c131eb612db48861211f63e57610/) | ⚠️ Unaudited |
| STARTPresale | unknown | bsc | n/a | [`0x2019459b04e37436e7edc3d5d6346453d08606fe`](./contracts/bsc-56/0x2019459b04e37436e7edc3d5d6346453d08606fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PolicyBookRegistry | registry | polygon | n/a | `0xab7c7356f706954c3c926a690e96c7b65fa76116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345b7a2b085abdb135d39cbc20346ce9c74859de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6cd4f7a051224cdb21c97bafc45d24eb180111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672d60f6643491c07bca7dfa9dbacbade16103b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b1dbf35039999f3748f2c983a6081f58acb21e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c06eb3d14acb3989ff95d064f91fbd0756f5038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x333f8247e9fc5a2bea75e91df7810add7ed487e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38211a229fae996233ff30edcf4c5323d8ec8e0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43a953884f7c2bb63f74f921b266f5174195afe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b2ec01a407275dbef4841c205d7adba99cb2b3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d4a87f146e5a85bf5127928bfca39f09c9462d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6252cf2c732baa59d151a573be0fd67d94852ca9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b53ff294c7bfe5d32d4ca2fdc8bdb06688a3cac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8049c8a1a4e54e448b7f17bce50c3f2e14a9248e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87ff73daeb1c8af5fb658b743a81ae7c05e9af98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93c8e0bab1c154f7b9082dd1529ade812df7bd9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d4510f17143557d274132161dd672c296537938` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8366962617efb8c2a0bc4e4e4c1ddde996987a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafa54fe84ee9b1fffc941e698576840adf3e3ff6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb333ab545ad69e5cafe7855ce0df0d1bad98f34c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbde3e18689d644eaa10bcae0d2bf6b41a3263cf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2cb78242448ebe2a72387c151395fa89889fee6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc51001cadca74fed7d1c809940610639ff3916ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd29728314a570e61be858e7e712f2da78af85990` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6bc81bfef8bfb7b298762d0b97236f5579a7b1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda7decd4dc868efd3d797c6eafe64699fb893cc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7e6c329852d26531244259d0356935d90a9232d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [60da267d76850e5acfe4e4c2_Bridge Mutual SC Audit_ ZOkyo.pdf](https://uploads-ssl.webflow.com/5fac3e348dbd5932a7578690/60da267d76850e5acfe4e4c2_Bridge%20Mutual%20SC%20Audit_%20ZOkyo.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |
| [diligence.security/audits/2021/03/bridge-mutual](https://diligence.security/audits/2021/03/bridge-mutual) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x55978a6f6a4cfa00d5a8b442e93e42c025d0890c`](./contracts/ethereum-1/0x55978a6f6a4cfa00d5a8b442e93e42c025d0890c/) | BMIStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x725c263e32c72ddc3a19bea12c5a0479a81ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | BMIToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0470aac988fd03bbbde2cc5e84b0d603eff216da`](./contracts/bsc-56/0x0470aac988fd03bbbde2cc5e84b0d603eff216da/) | BSCstarterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x135c2c8956af96c41ac6bf7ae76e2bccd526fdbe`](./contracts/bsc-56/0x135c2c8956af96c41ac6bf7ae76e2bccd526fdbe/) | BSCstarterInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x36fdeffdd191d99e246946595ad88ad408e3806d`](./contracts/bsc-56/0x36fdeffdd191d99e246946595ad88ad408e3806d/) | BSCstarterStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31d0a7ada4d4c131eb612db48861211f63e57610`](./contracts/bsc-56/0x31d0a7ada4d4c131eb612db48861211f63e57610/) | STARToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2019459b04e37436e7edc3d5d6346453d08606fe`](./contracts/bsc-56/0x2019459b04e37436e7edc3d5d6346453d08606fe/) | STARTPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [12865] diligence.security/audits/2021/03/bridge-mutual

Fork inheritance lineage and inherited audits are included when available.
