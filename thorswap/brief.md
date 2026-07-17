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
| TSAggregatorGeneric | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c`](./contracts/ethereum-1/0x0ccd5dd5bcf1af77dc358d1e2f06ee880ef63c3c/); ethereum `0x5727d8982723310f907483f9806221ecac7cd2ab`; ethereum `0x77cdf20e2442cd38c0a704e370fe8a75107abd95`; ethereum `0x97fce421db341038d599097493362346ce26cffc`; ethereum `0xd31f7e39afecec4855fecc51b693f9a0cec49fd2` | ✅ Audited |
| TSAggregatorTokenTransferProxy | token | base | n/a | 4 deployments: ethereum `0xf892fef9da200d9e84c9b0647ecff0f34633abe8`; base [`0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a`](./contracts/base-8453/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/); arbitrum `0x5786efdb788466456a59d3bd7abef0ec42bef9ce`; arbitrum `0x8baf33e755ee29e5e37f370a11a0a889dac5d5f7` | ✅ Audited |
| vTHOR | unknown | ethereum | n/a | [`0x815c23eca83261b6ec689b60cc4a58b54bc24d8d`](./contracts/ethereum-1/0x815c23eca83261b6ec689b60cc4a58b54bc24d8d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SingleStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6755630c583f12ffbd10568eb633c0319db34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/); ethereum `0xae1fc3947ee83aeb3b7fec237bcc1d194c88bc24` | ⚠️ Unaudited |
| SKChainflipHyperLiquid_V1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/); arbitrum `0x199dab33f5d39f186f26a4aa30892e37c9a90d40`; arbitrum `0x78fd322bb51407849c7acc789be5e6e86639d799` | ⚠️ Unaudited |
| ThorToken | token | ethereum | n/a | [`0xa5f2211b9b8170f694421f2046281775e8468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/); ethereum `0xb54147e6031086ed015602248e0cc34e64c0d25f` | ⚠️ Unaudited |
| TSAggregatorChainflip_V1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x029c7a9098d6efa723df308d3278211cd68b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/); ethereum `0xd917c32cfa50b0fca692a208118afe4d1d06f1f1` | ⚠️ Unaudited |
| TSAggregatorChainflip_V2 | unknown | ethereum | n/a | [`0xe797be356f833972fcc631b86ce30951e499ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | ⚠️ Unaudited |
| TSAggregatorChainflip_V3 | unknown | ethereum | n/a | [`0x1047156a1a152672e287e7dfc9487c3566bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | arbitrum | n/a | 4 deployments: base `0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f`; base `0xb1970f2157a1b24d40f98b252f4f60b45c7aaeed`; arbitrum [`0x6e5add41c751e89432cda5763156a3f41f1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/); arbitrum `0xfa3f3348a2765ec19d1598ad446e2ab463d01e9a` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | arbitrum | n/a | [`0x50cbe1330100df9086f6fbc994a300b75dd78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | ⚠️ Unaudited |
| TSAggregatorWoofi | unknown | base | n/a | 3 deployments: base [`0x30912b38618d3d37de3191a4ffe982c65a9aec2e`](./contracts/base-8453/0x30912b38618d3d37de3191a4ffe982c65a9aec2e/); arbitrum `0xcd6f8b17d19077f7f5a8fa30c9b645b689626ceb`; avalanche `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | ethereum | n/a | [`0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | ethereum | n/a | [`0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | ⚠️ Unaudited |
| TSSwapGeneric | unknown | ethereum | n/a | 2 deployments: ethereum [`0x213255345a740324cbce0242e32076ab735906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/); ethereum `0x8ca20a36989b6d6738b466e526272c8bfd5601ed` | ⚠️ Unaudited |
| TSWrapperLedger_V1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e006856aa4ee2e0158a1fe2158df5b37378fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/); ethereum `0xe4e8313abbadc8e18543ec9528f67fde2e44d3d6` | ⚠️ Unaudited |
| TSWrapperTCRouterV4_V1 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x84fda63c0769b2478865074a0479d28f1a6003a2`](./contracts/ethereum-1/0x84fda63c0769b2478865074a0479d28f1a6003a2/); ethereum `0x94b7f2145c328dab2ec56ab982cab95f00941ae7`; ethereum `0xa701ec1ca9fdcfb4ded00cba3071f7329bffa454`; ethereum `0xc4a1d21313fc0e78cf0a8cdcc46bda5ae9fa0653`; ethereum `0xdd40f17b848ce3a30b4f71652535e744f45fa5a3` | ⚠️ Unaudited |
| uTHOR | unknown | ethereum | n/a | [`0x34deff97889f3a6a483e3b9255cafcb9a6e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | ⚠️ Unaudited |
| yTHOR | unknown | ethereum | n/a | [`0x8793cd69895c45b2d2474236b3cb28fc5c764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x32459c0efbc3645df0614e3287714e36b02b6e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f02745badeae8738104931cfd864d33fdb52310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8235a713b64c4278a2ab2d81f88536e16ec65078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8526cec1d97a68c0e69420488d04dec5f101b46e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2ae034488275a9fa83be1e35c4e70dc42774311` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb60edcaf0b5da43f0a2e16fdb65cead8fa870fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb73b8e66196f2af0762833304e3f15db2e8df0c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2b2793314d317c14dd58b80468db9eb162fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1092980cec8c464a62d0f6ff3293deaf817c256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec8bb792c7620ee16c8e37cea94badeaf29df06c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb4db2fd17bee53f1b491292423c7dc7274bf6d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x082f52eeac890248f00a24b4ddec6efb55b61850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30912b38618d3d37de3191a4ffe982c65a9aec2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b08b8abbb2a59c19e680628f5aa7024ca783d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80d86b9c920c0c23501a4e81d4cf5dbf230d2dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa68cf21b8040a2cc0ef78443997448fe4ea9e9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd46ee26b56f28e8a4a83ed853c47b51935dc48ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc01894a2559417f08edaf5f3b3adfaa89d28c8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebc5e938d3f53d61c286a40e4042957c96be4654` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17e7e5016ac1d4527f211bebf5b11fe36bda7d10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55cf4d1e35221f0a7ef3f5d1ce5a07e3ecdb25b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8772b3a6c87dc23bf6ab93c5f04e3f87da0e9606` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbd658862518ec05fb99e8e993fdb502cd795bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf02f7a22ed0e9a1469c81f2d8419508a5910b0af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6755630c583f12ffbd10568eb633c0319db34922`](./contracts/ethereum-1/0x6755630c583f12ffbd10568eb633c0319db34922/) | SingleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5`](./contracts/arbitrum-42161/0x00503ae0caefdec6d4ff54e4746f8e7543cf4cd5/) | SKChainflipHyperLiquid_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5f2211b9b8170f694421f2046281775e8468044`](./contracts/ethereum-1/0xa5f2211b9b8170f694421f2046281775e8468044/) | ThorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223`](./contracts/ethereum-1/0x0c3c9e5d9b08131dbd82a8648a23592b4dda2223/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029c7a9098d6efa723df308d3278211cd68b05ed`](./contracts/ethereum-1/0x029c7a9098d6efa723df308d3278211cd68b05ed/) | TSAggregatorChainflip_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe797be356f833972fcc631b86ce30951e499ecdc`](./contracts/ethereum-1/0xe797be356f833972fcc631b86ce30951e499ecdc/) | TSAggregatorChainflip_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1047156a1a152672e287e7dfc9487c3566bfd1f5`](./contracts/ethereum-1/0x1047156a1a152672e287e7dfc9487c3566bfd1f5/) | TSAggregatorChainflip_V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e5add41c751e89432cda5763156a3f41f1b17ac`](./contracts/arbitrum-42161/0x6e5add41c751e89432cda5763156a3f41f1b17ac/) | TSAggregatorGeneric_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50cbe1330100df9086f6fbc994a300b75dd78012`](./contracts/arbitrum-42161/0x50cbe1330100df9086f6fbc994a300b75dd78012/) | TSAggregatorUniswapV3_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30912b38618d3d37de3191a4ffe982c65a9aec2e`](./contracts/base-8453/0x30912b38618d3d37de3191a4ffe982c65a9aec2e/) | TSAggregatorWoofi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a`](./contracts/ethereum-1/0x5505be604dfa8a1ad402a71f8a357fba47f9bf5a/) | TSAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7`](./contracts/ethereum-1/0x546e7b1f4b4df6cdb19fbddff325133ebfe04ba7/) | TSFeeDistributor_V3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213255345a740324cbce0242e32076ab735906e2`](./contracts/ethereum-1/0x213255345a740324cbce0242e32076ab735906e2/) | TSSwapGeneric | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e006856aa4ee2e0158a1fe2158df5b37378fb40`](./contracts/ethereum-1/0x5e006856aa4ee2e0158a1fe2158df5b37378fb40/) | TSWrapperLedger_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84fda63c0769b2478865074a0479d28f1a6003a2`](./contracts/ethereum-1/0x84fda63c0769b2478865074a0479d28f1a6003a2/) | TSWrapperTCRouterV4_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34deff97889f3a6a483e3b9255cafcb9a6e03588`](./contracts/ethereum-1/0x34deff97889f3a6a483e3b9255cafcb9a6e03588/) | uTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8793cd69895c45b2d2474236b3cb28fc5c764775`](./contracts/ethereum-1/0x8793cd69895c45b2d2474236b3cb28fc5c764775/) | yTHOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
