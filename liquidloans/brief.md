# Agentic Audit Brief: LiquidLoans

## Project Overview

- Project: LiquidLoans (`liquidloans`)
- Website: [https://www.liquidloans.io](https://www.liquidloans.io)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-11T00:40:52.529Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: base
- Contract surface: 20 unique implementations (39 raw deployments)
- DeFi Llama TVL: $3,917,338.83
- On-chain TVL (included contracts): $3,041,629.65
- TVL by chain: Base $3,041,629.65

## Project Description

LiquidLoans is a collateralized debt position (CDP) protocol live on Base and PulseChain that allows users to deposit ETH and PLS collateral and borrow the stablecoin USDL. It manages vaults, liquidations, and stability mechanisms to maintain the peg and solvency of the system.

### Architecture

The LiquidLoans family shares a single set of core logic contracts that manage vaults, pools, and stability. Supporting contracts like PriceFeed and LockupContractFactory provide oracle data and lockup functionality used across the core operations.

## Audit Coverage Summary

- Verified implementations audited: 6/20 (30.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 39
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $3,041,629.65
- Latest audit: 2025-11 (fresh)
- Staleness: 1 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 30.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CommunityIssuance | unknown | base | 2 deployments: base [`0x025853...ae2903`](./contracts/base-8453/0x025853fafb436ee00542c414bc0292bf5cae2903/); base `0x40d561...f39db5` | ✅ Audited |
| LockupContract | unknown | base | 2 deployments: base [`0x0e97a8...453a96`](./contracts/base-8453/0x0e97a8a5a3b25f1a4a1e133360c5e2622a453a96/); base `0xc0a202...641dd0` | ✅ Audited |
| LockupContractCreator | unknown | base | 2 deployments: base [`0x57ed23...d58b3f`](./contracts/base-8453/0x57ed23f9d729031886ece75c31aef3f41bd58b3f/); base `0xe0117a...3c5ca1` | ✅ Audited |
| LockupContractFactory | registry | base | 2 deployments: base [`0xcc296f...81aa7e`](./contracts/base-8453/0xcc296fb3c1d477129e0d5cfcb4a840f46781aa7e/); base `0xdfb363...182d27` | ✅ Audited |
| PriceFeed | operational_periphery | base | 2 deployments: base [`0x76ada2...77d278`](./contracts/base-8453/0x76ada222f62d4709cfcbf5caf57ce8350277d278/); base `0xc32a3d...8ac70d` | ✅ Audited |
| StabilityPool | core_logic | base | 2 deployments: base [`0x391dc2...7fa6ed`](./contracts/base-8453/0x391dc22eecf3f973993d0ecb6eafb1b7927fa6ed/); base `0x76826f...4f500e` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ActivePool | core_logic | base | 2 deployments: base [`0x5ff161...ee8fb2`](./contracts/base-8453/0x5ff161b090fa731e6d403e5d1b37a2ef30ee8fb2/); base `0xa7d587...393044` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | base | 2 deployments: base [`0x3c7f90...eeef8b`](./contracts/base-8453/0x3c7f9041f3043cbb38fdbf244cb0d0f9d0eeef8b/); base `0x7f6ba8...85f4d6` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | base | 2 deployments: base [`0xf9dea0...c18d09`](./contracts/base-8453/0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09/); base `0xfc952a...e76e9a` | ⚠️ Unaudited |
| DefaultPool | core_logic | base | 2 deployments: base [`0x529ad5...3a585e`](./contracts/base-8453/0x529ad5e88c8f53ce6a18b6e874a69c91c53a585e/); base `0xdb7fed...ba7f0a` | ⚠️ Unaudited |
| ERC20Mock | token | base | 2 deployments: base [`0xa16770...33c9af`](./contracts/base-8453/0xa16770020925f504d9446adf218e91d56833c9af/); base `0xf3c951...05ad6d` | ⚠️ Unaudited |
| GasPool | core_logic | base | 2 deployments: base [`0x9ebd99...cc6cde`](./contracts/base-8453/0x9ebd99538d7bfd01247ebaedbfe3302f60cc6cde/); base `0xb242c8...36478f` | ⚠️ Unaudited |
| HintHelpers | periphery | base | 2 deployments: base [`0x3e30a6...f6f456`](./contracts/base-8453/0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456/); base `0x53c427...04df37` | ⚠️ Unaudited |
| LOANStaking | unknown | base | 2 deployments: base [`0x9e991a...dc649e`](./contracts/base-8453/0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e/); base `0xdc4675...2462b0` | ⚠️ Unaudited |
| LOANToken | token | base | 2 deployments: base [`0x00fce0...fb88bb`](./contracts/base-8453/0x00fce0bb56105164a960fccb6e5e23e502fb88bb/); base `0x68b810...e4203f` | ⚠️ Unaudited |
| MultiVaultGetter | core_logic | base | 2 deployments: base [`0x7bddc6...ec13d0`](./contracts/base-8453/0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0/); base `0x9a4ac6...88f016` | ⚠️ Unaudited |
| SortedVaults | core_logic | base | 2 deployments: base [`0x6f2b22...dd2b20`](./contracts/base-8453/0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20/); base `0xb4d379...b7e52a` | ⚠️ Unaudited |
| Uniswappool | core_logic | base | [`0x571394...2d0375`](./contracts/base-8453/0x57139483191cd26474c6a26f83ecb89c242d0375/) | ⚠️ Unaudited |
| USDLToken | token | base | 2 deployments: base [`0x46ee43...9a53c1`](./contracts/base-8453/0x46ee4379844a3b1866a546a9be8d47695e9a53c1/); base `0x78e8cf...c76414` | ⚠️ Unaudited |
| VaultManager | core_logic | base | 2 deployments: base [`0x6b2983...a4029d`](./contracts/base-8453/0x6b2983e7d345eea1c385468bc110df94eba4029d/); base `0x6c4d82...8fbdc6` | ⚠️ Unaudited |

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
| [read and download here](https://llprod-resource.s3.ap-southeast-2.amazonaws.com/Audit/Liquid_Loans_Protocol_Smart_Contract_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-07 | stale | Direct | contract_name | 10 | high |
| [Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Coinspect](https://www.coinspect.com/blog/liquity-audit) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [read and download here](https://llprod-resource.s3.ap-southeast-2.amazonaws.com/Audit/Base/Halborn+Audit+Report+-+Liquid+Loans+on+Base.pdf) | Halborn | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x5ff161...ee8fb2`](./contracts/base-8453/0x5ff161b090fa731e6d403e5d1b37a2ef30ee8fb2/) | ActivePool | core_logic | $3,041,629.65 | Verified native implementation with $3,041,629.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3c7f90...eeef8b`](./contracts/base-8453/0x3c7f9041f3043cbb38fdbf244cb0d0f9d0eeef8b/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf9dea0...c18d09`](./contracts/base-8453/0xf9dea0ff3d899b39ae5ea7ff79965f2675c18d09/) | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x529ad5...3a585e`](./contracts/base-8453/0x529ad5e88c8f53ce6a18b6e874a69c91c53a585e/) | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9ebd99...cc6cde`](./contracts/base-8453/0x9ebd99538d7bfd01247ebaedbfe3302f60cc6cde/) | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e30a6...f6f456`](./contracts/base-8453/0x3e30a6625b95cbb9f4ee03bef83a81f652f6f456/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e991a...dc649e`](./contracts/base-8453/0x9e991a40e7d08b8a85ad51a0d00b921b92dc649e/) | LOANStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00fce0...fb88bb`](./contracts/base-8453/0x00fce0bb56105164a960fccb6e5e23e502fb88bb/) | LOANToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bddc6...ec13d0`](./contracts/base-8453/0x7bddc61c2d3de2c48a37e6ae74b93d7888ec13d0/) | MultiVaultGetter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f2b22...dd2b20`](./contracts/base-8453/0x6f2b2218cc4ffb87d09ee8b3f6543e3d4cdd2b20/) | SortedVaults | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46ee43...9a53c1`](./contracts/base-8453/0x46ee4379844a3b1866a546a9be8d47695e9a53c1/) | USDLToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6b2983...a4029d`](./contracts/base-8453/0x6b2983e7d345eea1c385468bc110df94eba4029d/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=12

Zero-match audit list:

- [2671] Trail of Bits
- [2672] Coinspect

Fork inheritance lineage and inherited audits are included when available.
