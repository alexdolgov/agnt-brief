# Agentic Audit Brief: LiquidLoans

## Project Overview

- Project: LiquidLoans (`liquidloans`)
- Website: [https://www.liquidloans.io](https://www.liquidloans.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.095Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: base
- Contract surface: 21 unique implementations (41 raw deployments)
- DeFi Llama TVL: $3,339,450.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 21 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (basemath, liquidloansbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/20 (50.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/21
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 41
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 35.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 7 | 33.3% | 2021-01 |
| Halborn | Tier 2 | 6 | 28.6% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | core_logic | base | n/a | 2 deployments: base [`0x5ff161b090fa731e6d403e5d1b37a2ef30ee8fb2`](./contracts/base-8453/0x5ff161b090fa731e6d403e5d1b37a2ef30ee8fb2/); base `0xa7d587fe21392fa6c2c4a0a3357ec8937b393044` | ✅ Audited |
| BorrowerOperations | core_logic | base | n/a | 2 deployments: base [`0x3c7f9041f3043cbb38fdbf244cb0d0f9d0eeef8b`](./contracts/base-8453/0x3c7f9041f3043cbb38fdbf244cb0d0f9d0eeef8b/); base `0x7f6ba848b5dab6ada942f599882bc391cd85f4d6` | ✅ Audited |
| CommunityIssuance | unknown | base | n/a | 2 deployments: base [`0x025853fafb436ee00542c414bc0292bf5cae2903`](./contracts/base-8453/0x025853fafb436ee00542c414bc0292bf5cae2903/); base `0x40d561a42b36d1906acf0af5edc7896989f39db5` | ✅ Audited |
| DefaultPool | core_logic | base | n/a | 2 deployments: base [`0x529ad5e88c8f53ce6a18b6e874a69c91c53a585e`](./contracts/base-8453/0x529ad5e88c8f53ce6a18b6e874a69c91c53a585e/); base `0xdb7fed419a72129fbaf5d61e612a96db5cba7f0a` | ✅ Audited |
| GasPool | core_logic | base | n/a | 2 deployments: base [`0x9ebd99538d7bfd01247ebaedbfe3302f60cc6cde`](./contracts/base-8453/0x9ebd99538d7bfd01247ebaedbfe3302f60cc6cde/); base `0xb242c806197a6f490d1d7d2939d8b6d35236478f` | ✅ Audited |
| LockupContract | unknown | base | n/a | 2 deployments: base [`0x0e97a8a5a3b25f1a4a1e133360c5e2622a453a96`](./contracts/base-8453/0x0e97a8a5a3b25f1a4a1e133360c5e2622a453a96/); base `0xc0a202b38ecdaca1d9fe8c25feea4f3b97641dd0` | ✅ Audited |
| LockupContractCreator | unknown | base | n/a | 2 deployments: base [`0x57ed23f9d729031886ece75c31aef3f41bd58b3f`](./contracts/base-8453/0x57ed23f9d729031886ece75c31aef3f41bd58b3f/); base `0xe0117aa03cc9afa7f960d52cbc15201c9b3c5ca1` | ✅ Audited |
| LockupContractFactory | registry | base | n/a | 2 deployments: base [`0xcc296fb3c1d477129e0d5cfcb4a840f46781aa7e`](./contracts/base-8453/0xcc296fb3c1d477129e0d5cfcb4a840f46781aa7e/); base `0xdfb36345c8d6f993d0a0763ec9f4927582182d27` | ✅ Audited |
| PriceFeed | operational_periphery | base | n/a | 2 deployments: base [`0x76ada222f62d4709cfcbf5caf57ce8350277d278`](./contracts/base-8453/0x76ada222f62d4709cfcbf5caf57ce8350277d278/); base `0xc32a3db099cc73a5cea079f10f9d65d6988ac70d` | ✅ Audited |
| StabilityPool | core_logic | base | n/a | 2 deployments: base [`0x391dc22eecf3f973993d0ecb6eafb1b7927fa6ed`](./contracts/base-8453/0x391dc22eecf3f973993d0ecb6eafb1b7927fa6ed/); base `0x76826f9be2bbfefac089e9ef016b7e749a4f500e` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollSurplusPool | core_logic | base | n/a | 2 deployments: base [`0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09`](./contracts/base-8453/0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09/); base `0xfc952a253b1deeec66dbd05f9130f34cece76e9a` | ⚠️ Unaudited |
| ERC20Mock | token | base | n/a | 2 deployments: base [`0xa16770020925f504d9446adf218e91d56833c9af`](./contracts/base-8453/0xa16770020925f504d9446adf218e91d56833c9af/); base `0xf3c951dfc50dd4c2fb81bd853d7893d00405ad6d` | ⚠️ Unaudited |
| HintHelpers | periphery | base | n/a | 2 deployments: base [`0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456`](./contracts/base-8453/0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456/); base `0x53c4279ced8f64eccaad0a957d1842eb6304df37` | ⚠️ Unaudited |
| LOANStaking | unknown | base | n/a | 2 deployments: base [`0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e`](./contracts/base-8453/0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e/); base `0xdc4675e45e05629911deadb7eb123fd8dc2462b0` | ⚠️ Unaudited |
| LOANToken | token | base | n/a | 2 deployments: base [`0x00fce0bb56105164a960fccb6e5e23e502fb88bb`](./contracts/base-8453/0x00fce0bb56105164a960fccb6e5e23e502fb88bb/); base `0x68b8102d404c46b5b4adfcaeeeee415ecfe4203f` | ⚠️ Unaudited |
| LockupAirdrop | unknown | base | n/a | 2 deployments: base [`0x567e6039c035eec2b95410290de48f78e862e61d`](./contracts/base-8453/0x567e6039c035eec2b95410290de48f78e862e61d/); base `0x98485c8924ef4f280350a869b45493c825a4e108` | ⚠️ Unaudited |
| MultiVaultGetter | core_logic | base | n/a | 2 deployments: base [`0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0`](./contracts/base-8453/0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0/); base `0x9a4ac6b4d13dca4083c5225aaad4beede088f016` | ⚠️ Unaudited |
| SortedVaults | core_logic | base | n/a | 2 deployments: base [`0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20`](./contracts/base-8453/0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20/); base `0xb4d37992785aca0f2029b97ffaf6541eeeb7e52a` | ⚠️ Unaudited |
| Uniswappool | core_logic | base | n/a | [`0x57139483191cd26474c6a26f83ecb89c242d0375`](./contracts/base-8453/0x57139483191cd26474c6a26f83ecb89c242d0375/) | ⚠️ Unaudited |
| USDLToken | token | base | n/a | 2 deployments: base [`0x46ee4379844a3b1866a546a9be8d47695e9a53c1`](./contracts/base-8453/0x46ee4379844a3b1866a546a9be8d47695e9a53c1/); base `0x78e8cf657742e10eac8f64007615aa741fc76414` | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | 2 deployments: base [`0x6b2983e7d345eea1c385468bc110df94eba4029d`](./contracts/base-8453/0x6b2983e7d345eea1c385468bc110df94eba4029d/); base `0x6c4d82ae688f66beceac77f512ef48b8318fbdc6` | ⚠️ Unaudited |

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
| [Liquid_Loans_Protocol_Smart_Contract_Security_Assessment_Report_Halborn.pdf](https://llprod-resource.s3.ap-southeast-2.amazonaws.com/Audit/Liquid_Loans_Protocol_Smart_Contract_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | contract_name | 14 | high |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Halborn+Audit+Report+-+Liquid+Loans+on+Base.pdf](https://llprod-resource.s3.ap-southeast-2.amazonaws.com/Audit/Base/Halborn+Audit+Report+-+Liquid+Loans+on+Base.pdf) | Halborn | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09`](./contracts/base-8453/0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09/) | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa16770020925f504d9446adf218e91d56833c9af`](./contracts/base-8453/0xa16770020925f504d9446adf218e91d56833c9af/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456`](./contracts/base-8453/0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e`](./contracts/base-8453/0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e/) | LOANStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00fce0bb56105164a960fccb6e5e23e502fb88bb`](./contracts/base-8453/0x00fce0bb56105164a960fccb6e5e23e502fb88bb/) | LOANToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x567e6039c035eec2b95410290de48f78e862e61d`](./contracts/base-8453/0x567e6039c035eec2b95410290de48f78e862e61d/) | LockupAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0`](./contracts/base-8453/0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0/) | MultiVaultGetter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20`](./contracts/base-8453/0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20/) | SortedVaults | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46ee4379844a3b1866a546a9be8d47695e9a53c1`](./contracts/base-8453/0x46ee4379844a3b1866a546a9be8d47695e9a53c1/) | USDLToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6b2983e7d345eea1c385468bc110df94eba4029d`](./contracts/base-8453/0x6b2983e7d345eea1c385468bc110df94eba4029d/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=6, extraction_exact=14

Zero-match audit list:

- [2672] www.coinspect.com/blog/liquity-audit

Fork inheritance lineage and inherited audits are included when available.
