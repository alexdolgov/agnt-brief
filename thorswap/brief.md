# Agentic Audit Brief: THORSwap

## Project Overview

- Project: THORSwap (`thorswap`)
- Website: [https://www.thorswap.finance/](https://www.thorswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.463Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 48 unique implementations (71 raw deployments)
- DeFi Llama TVL: $10,172,556.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 29 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (owners, tsaggregator_v5, tsaggregator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 71 (43 live, 28 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/20 (15.0%)
- Deployed-live implementations: 20 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/20
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 48
- Raw deployments: 71
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 15.0% | 2022-04 |
| PeckShield | Tier 2 | 2 | 10.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TSAggregatorGeneric | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0ccd5d...f63c3c`](./contracts/ethereum-1/0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c/); ethereum `0x5727d8...7cd2ab`; ethereum `0x77cdf2...7abd95`; ethereum `0x97fce4...26cffc`; ethereum `0xd31f7e...c49fd2` | ✅ Audited |
| TSAggregatorTokenTransferProxy | token | base | n/a | 4 deployments: ethereum `0xf892fe...33abe8`; base [`0x5505be...f9bf5a`](./contracts/base-8453/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/); arbitrum `0x5786ef...bef9ce`; arbitrum `0x8baf33...c5d5f7` | ✅ Audited |
| vTHOR | unknown | ethereum | n/a | [`0x815c23...c24d8d`](./contracts/ethereum-1/0x815c23eca83261b6ec689b60cc4a58b54bc24d8d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SingleStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/); ethereum `0xae1fc3...88bc24` | ⚠️ Unaudited |
| SKChainflipHyperLiquid_V1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x00503a...cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/); arbitrum `0x199dab...a90d40`; arbitrum `0x78fd32...39d799` | ⚠️ Unaudited |
| ThorToken | token | ethereum | n/a | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/); ethereum `0xb54147...c0d25f` | ⚠️ Unaudited |
| TSAggregatorChainflip_V1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x029c7a...8b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/); ethereum `0xd917c3...06f1f1` | ⚠️ Unaudited |
| TSAggregatorChainflip_V2 | unknown | ethereum | n/a | [`0xe797be...99ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | ⚠️ Unaudited |
| TSAggregatorChainflip_V3 | unknown | ethereum | n/a | [`0x104715...bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | arbitrum | n/a | 4 deployments: base `0xaa68cf...ea9e9f`; base `0xb1970f...7aaeed`; arbitrum [`0x6e5add...1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/); arbitrum `0xfa3f33...d01e9a` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | arbitrum | n/a | [`0x50cbe1...d78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | ⚠️ Unaudited |
| TSAggregatorWoofi | unknown | base | n/a | 3 deployments: base [`0x30912b...9aec2e`](./contracts/base-8453/0x30912b38618d3d37de3191a4ffe982c65a9aec2e/); arbitrum `0xcd6f8b...626ceb`; avalanche `0x5505be...f9bf5a` | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | ethereum | n/a | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | ethereum | n/a | [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | ⚠️ Unaudited |
| TSSwapGeneric | unknown | ethereum | n/a | 2 deployments: ethereum [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/); ethereum `0x8ca20a...5601ed` | ⚠️ Unaudited |
| TSWrapperLedger_V1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e0068...78fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/); ethereum `0xe4e831...44d3d6` | ⚠️ Unaudited |
| TSWrapperTCRouterV4_V1 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x84fda6...6003a2`](./contracts/ethereum-1/0x84fda63c0769b2478865074a0479d28f1a6003a2/); ethereum `0x94b7f2...941ae7`; ethereum `0xa701ec...ffa454`; ethereum `0xc4a1d2...fa0653`; ethereum `0xdd40f1...5fa5a3` | ⚠️ Unaudited |
| uTHOR | unknown | ethereum | n/a | [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | ⚠️ Unaudited |
| yTHOR | unknown | ethereum | n/a | [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x32459c...2b6e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f0274...b52310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8235a7...c65078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8526ce...01b46e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2ae03...774311` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb60edc...870fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb73b8e...8df0c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2b279...2fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd10929...17c256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec8bb7...9df06c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb4db2...4bf6d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x082f52...b61850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17e7e5...da7d10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30912b...9aec2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b08b8...783d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5505be...f9bf5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55cf4d...db25b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80d86b...0d2dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa68cf...ea9e9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd46ee2...dc48ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc0189...d28c8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebc5e9...be4654` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf02f7a...10b0af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17e7e5...da7d10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55cf4d...db25b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8772b3...0e9606` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbd658...795bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf02f7a...10b0af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x675563...b34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/) | SingleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00503a...cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/) | SKChainflipHyperLiquid_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5f221...468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ThorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3c9e...da2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029c7a...8b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/) | TSAggregatorChainflip_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe797be...99ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | TSAggregatorChainflip_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x104715...bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | TSAggregatorChainflip_V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e5add...1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/) | TSAggregatorGeneric_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50cbe1...d78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | TSAggregatorUniswapV3_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30912b...9aec2e`](./contracts/base-8453/0x30912b38618d3d37de3191a4ffe982c65a9aec2e/) | TSAggregatorWoofi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5505be...f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | TSAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x546e7b...e04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | TSFeeDistributor_V3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213255...5906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/) | TSSwapGeneric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e0068...78fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/) | TSWrapperLedger_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84fda6...6003a2`](./contracts/ethereum-1/0x84fda63c0769b2478865074a0479d28f1a6003a2/) | TSWrapperTCRouterV4_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34deff...e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | uTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8793cd...764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | yTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
