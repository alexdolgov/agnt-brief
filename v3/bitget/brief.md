# Agentic Audit Brief: Bitget

## Project Overview

- Project: Bitget (`bitget`)
- Website: [https://www.bitget.com](https://www.bitget.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.781Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $4,911,781,736.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 23 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | arbitrum | n/a | [`0x3e5161...fc4a51`](./contracts/arbitrum-42161/0x3e516184686ffb009ce9f77d67dececb2afc4a51/) | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | arbitrum | n/a | [`0x3e0730...af74ea`](./contracts/arbitrum-42161/0x3e0730775a8568e3773a496e0a65438bd1af74ea/) | ⚠️ Unaudited |
| ChefIncentivesController | unknown | arbitrum | n/a | [`0x287ff9...f0db32`](./contracts/arbitrum-42161/0x287ff908b4db0b29b65b8442b0a5840455f0db32/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | arbitrum | n/a | [`0x00ff3b...3a9577`](./contracts/arbitrum-42161/0x00ff3b408cdbb79c32683aa7b6e4ecb7a33a9577/) | ⚠️ Unaudited |
| LendingPool | unknown | arbitrum | n/a | [`0xab843b...8534d6`](./contracts/arbitrum-42161/0xab843bec136e848fc47f0eb24902b61f158534d6/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | arbitrum | n/a | [`0x8d4757...d52832`](./contracts/arbitrum-42161/0x8d475766ab187acf6238ae45fff213fa19d52832/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | arbitrum | n/a | [`0x397824...9e83ae`](./contracts/arbitrum-42161/0x397824e7b156f57263aea72ff61ea860289e83ae/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | arbitrum | n/a | [`0xb8b4db...55c608`](./contracts/arbitrum-42161/0xb8b4dbcbf943f21ca956a8cfeeea917d1855c608/) | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | arbitrum | n/a | [`0x6e2b55...66b32d`](./contracts/arbitrum-42161/0x6e2b5533729b1f67d7e60bcb89ccbc3f5f66b32d/) | ⚠️ Unaudited |
| LendingRateOracle | unknown | arbitrum | n/a | [`0x1fab9a...3d7ecb`](./contracts/arbitrum-42161/0x1fab9ae08e670f853158e40bfc6a5e0b3c3d7ecb/) | ⚠️ Unaudited |
| Leverager | unknown | arbitrum | n/a | [`0x5682a3...be3b1b`](./contracts/arbitrum-42161/0x5682a39078edce41a65f1bd8733bf9ca2bbe3b1b/) | ⚠️ Unaudited |
| MasterChef | unknown | arbitrum | n/a | [`0x854775...783a95`](./contracts/arbitrum-42161/0x854775e2607a65321476f7f40d4dd33ada783a95/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | arbitrum | n/a | [`0xefab5c...a23a82`](./contracts/arbitrum-42161/0xefab5c6f57f301f87875b3270bb4659e27a23a82/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | arbitrum | n/a | [`0xc2054a...455c13`](./contracts/arbitrum-42161/0xc2054a8c33bfce28de8af4af548c48915c455c13/) | ⚠️ Unaudited |
| QuickLock | unknown | arbitrum | n/a | [`0x75206c...921bad`](./contracts/arbitrum-42161/0x75206c2a29b646706c8856df0e8acaea38921bad/) | ⚠️ Unaudited |
| RadiantToken | unknown | arbitrum | n/a | [`0x01a01d...67f6ba`](./contracts/arbitrum-42161/0x01a01deaf702e960d91151de6113e1fc4667f6ba/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | arbitrum | n/a | [`0x0f9819...c1772b`](./contracts/arbitrum-42161/0x0f9819516eadfc947e652710e3dbf738d6c1772b/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x0b6f13...1dc7a9`](./contracts/arbitrum-42161/0x0b6f135db3a621ab9041ac261276d8f38e1dc7a9/) | ⚠️ Unaudited |
| TokenVesting | unknown | arbitrum | n/a | [`0x5a88e4...d15740`](./contracts/arbitrum-42161/0x5a88e473fa2f4012e6c1b730dd070e4b15d15740/) | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | unknown | arbitrum | n/a | [`0x80c641...20fc31`](./contracts/arbitrum-42161/0x80c64191944a53ee1deabb6705b50fea8620fc31/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | arbitrum | n/a | [`0x3b6176...bc504b`](./contracts/arbitrum-42161/0x3b6176cae0bfa63d9f8c8561cebe3e19c1bc504b/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | arbitrum | n/a | [`0xe36d52...75c621`](./contracts/arbitrum-42161/0xe36d523ad4febaa09b9bc043999252f96375c621/) | ⚠️ Unaudited |
| WETHGateway | unknown | arbitrum | n/a | [`0xebf974...385e9a`](./contracts/arbitrum-42161/0xebf9746af2c757a20db467b007f4fa6317385e9a/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
