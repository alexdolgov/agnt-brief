# Agentic Audit Brief: K2

## Project Overview

- Project: K2 (`k2`)
- Website: [https://opengdp.network/](https://opengdp.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:17.620Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 32 unique implementations (48 raw deployments)
- DeFi Llama TVL: $3,494,251.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (semver). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 44 (31 live, 13 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 32
- Raw deployments: 48
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14d25e...a9a837`](./contracts/ethereum-1/0x14d25e9632a628a986343d8f603f64c464a9a837/); ethereum `0xf2c899...26e8c9` | ⚠️ Unaudited |
| Claim | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f1976...35e3ba`](./contracts/ethereum-1/0x2f197670fcf3d952be099d8559e80a3a1535e3ba/); ethereum `0x3f71b5...a3863d` | ⚠️ Unaudited |
| DelegationSupervisor | core_logic | ethereum | n/a | [`0xafa904...4449e0`](./contracts/ethereum-1/0xafa904152e04abff56701223118be2832a4449e0/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x28a227...abb920`](./contracts/ethereum-1/0x28a227d4faf0f4f75897438e24c43ef1cdabb920/) | ⚠️ Unaudited |
| KarakNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x47c92a...97e09b`](./contracts/ethereum-1/0x47c92a446596aff7480bca7bddb3230e6a97e09b/); ethereum `0x5f7645...84a106` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | [`0x19a1c2...80495a`](./contracts/ethereum-1/0x19a1c224107e0498229ddb68b1d8ecf3a980495a/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x9bffa6...77022d`](./contracts/ethereum-1/0x9bffa66a8fcaad7ac9ea7c7d4b9a6fc46777022d/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55d588...ee0f94`](./contracts/ethereum-1/0x55d588941f90fb8a71fe1442acc2af6d5eee0f94/); ethereum `0x56e511...ea21f0` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x952851...e7491e`](./contracts/ethereum-1/0x952851cecb07705a5bb483c1ce080f97e1e7491e/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0xba61f2...4b48a3`](./contracts/ethereum-1/0xba61f25dd9f2d5f02d01b1c2c1c5f0b14c4b48a3/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x0a2334...731637`](./contracts/ethereum-1/0x0a23342520aa8ca963c4201801f4d3e95e731637/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b0aea...01c7a6`](./contracts/ethereum-1/0x7b0aea1b0889378af4caf0ed59df1d7b6a01c7a6/); ethereum `0xa41502...962c8d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xf04a74...9c13db`](./contracts/ethereum-1/0xf04a74899ff4c4410faf3b5faa29b8fd199c13db/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32a5a8...03c4fd`](./contracts/ethereum-1/0x32a5a89ea2d0fc4128bb975ff63589090003c4fd/); ethereum `0x5cdaa3...352630` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0xeece9c...47ea73`](./contracts/ethereum-1/0xeece9cd7abd1cc84d9dfc7493e7e68079e47ea73/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77b932...f87ecd`](./contracts/ethereum-1/0x77b9323c20059e27736b5e52188fe81ed0f87ecd/); ethereum `0xc5d81c...b042ea` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1612f8...d4065c`](./contracts/ethereum-1/0x1612f868eba1cea65ee66bf4a7c75001b0d4065c/); ethereum `0x94cd27...93b4b0` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x543805...3773b9`](./contracts/ethereum-1/0x5438051c64388b91baf5d28706fa33d6ee3773b9/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x622333...8788a7`](./contracts/ethereum-1/0x622333688cc1878c7ff4205c89bde051798788a7/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa99640...b3a418`](./contracts/ethereum-1/0xa996403458b385576c7e05a3a56fc06c90b3a418/); ethereum `0xd0f379...e5e830` | ⚠️ Unaudited |
| VaultSupervisor | unknown | ethereum | n/a | 7 deployments: ethereum [`0x210caf...77292c`](./contracts/ethereum-1/0x210cafd20672ca2bd98ccd4b9ec52fbe1877292c/); ethereum `0x350246...ec49c2`; ethereum `0x54e44d...1ef1cc`; ethereum `0x7cc943...a39d0a`; ethereum `0xa1b8e3...ac90e0`; ethereum `0xf29ef3...bee457`; ethereum `0xf3fafb...71a636` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xd1cd25597e79c2037f9bfc4b908b6184ef183a58) | unknown | ethereum | n/a | 2 deployments: ethereum `0x1dbfb4...a1a88e`; ethereum `0xd1cd25...183a58` | ❓ Unverified |
| Representative Karak v2 vault created by Core, pufETH collateral | core_logic | ethereum | n/a | `0x1f2aa9...3f60b4` | ❓ Unverified |
| Representative Karak v2 vault created by Core, sUSDe collateral | core_logic | ethereum | n/a | `0x7a4b1a...b0dbca` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDC collateral | core_logic | ethereum | n/a | `0x52d7e0...32a531` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDe collateral | core_logic | ethereum | n/a | `0x3735e3...969378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01d962...2f78ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x578e61...776399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x622017...77cd33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80bd39...313192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8827bb...d6043a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc4924...1bfea9` | ❓ Unverified |

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
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
