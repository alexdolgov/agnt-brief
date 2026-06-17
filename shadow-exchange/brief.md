# Agentic Audit Brief: Shadow Exchange

⚠️ Lifecycle status: DECLINING - TVL changed 49.9% over 90 days

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:01:00.642Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: sonic
- Contract surface: 21 unique implementations (23 raw deployments)
- DeFi Llama TVL: $3,822,795.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Shadow Exchange is a decentralized exchange (DEX) on the Sonic chain that facilitates token swaps, liquidity provision, and yield farming. It offers both a classic automated market maker (AMM) model and a concentrated liquidity model, along with governance and fee distribution mechanisms.

### Architecture

The Core and Concentrated Liquidity families share the Shadow token for incentives and governance, with fee distribution and voting contracts bridging both. Access Control contracts govern upgrades and parameters across all families via proxy admin ownership.

## Contract Surface Quality

- Indexed contracts: 439; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 387 inactive, 29 singleton, 0 uninitialized.
- Deployment units: 4/20 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/21.

## Audit Coverage Summary

- Verified implementations audited: 5/21 (23.8%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 23
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 1 unknown
- Tier 1 coverage: 23.8% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 23.8% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | sonic | unit-32477 | [`0x12e66c...0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | ✅ Audited |
| NonfungiblePositionManager | governance | sonic | unit-32492 | [`0xa57fa3...f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | ✅ Audited |
| RamsesV3Factory | registry | sonic | n/a | [`0xcd2d06...8de6d7`](./contracts/sonic-146/0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7/) | ✅ Audited |
| VoteModule | unknown | sonic | n/a | [`0xdcb5a2...b666b4`](./contracts/sonic-146/0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4/) | ✅ Audited |
| Voter | unknown | sonic | n/a | [`0x3af1dd...838f4f`](./contracts/sonic-146/0x3af1dd7a2755201f8e2d6dcda1a61d9f54838f4f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EqualizerPerpetualBuyOut | unknown | sonic | n/a | [`0x1d7fdd...46d5b4`](./contracts/sonic-146/0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4/) | ⚠️ Unaudited |
| Gems | unknown | sonic | n/a | [`0x5555b2...ee5555`](./contracts/sonic-146/0x5555b2733602ded58d47b8d3d989e631cbee5555/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | 2 deployments: sonic [`0x137f7c...dec218`](./contracts/sonic-146/0x137f7cb38f125ceafea48004cac24f6514dec218/); sonic `0x7fdf76...9f3d22` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | sonic | n/a | [`0xcc83a7...e2cd34`](./contracts/sonic-146/0xcc83a742af837919641b1c9a540c521976e2cd34/) | ⚠️ Unaudited |
| PairFactory | registry | sonic | n/a | [`0x2da25e...6374c8`](./contracts/sonic-146/0x2da25e7446a70d7be65fd4c053948becaa6374c8/) | ⚠️ Unaudited |
| PythOracle | operational_periphery | sonic | n/a | [`0xf0367d...3bb4d2`](./contracts/sonic-146/0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0x3003b4...d79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | [`0x219b7a...07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | unit-32484 (2 proxies) | 2 deployments: sonic [`0x5be2e8...553432`](./contracts/sonic-146/0x5be2e859d0c2453c9aa062860ca27711ff553432/); sonic `0x600ad8...5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | sonic | n/a | [`0x3333b9...a33333`](./contracts/sonic-146/0x3333b97138d4b086720b5ae8a7844b1345a33333/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | unit-32483 | [`0x5543c6...e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x92643d...04a9c2`](./contracts/sonic-146/0x92643dc4f75c374b689774160cdea09a0704a9c2/) | ⚠️ Unaudited |
| x33 | unknown | sonic | n/a | [`0x333311...333333`](./contracts/sonic-146/0x3333111a391cc08fa51353e9195526a70b333333/) | ⚠️ Unaudited |
| x33Adapter | adapter | sonic | n/a | [`0x9710e1...84548d`](./contracts/sonic-146/0x9710e10a8f6fba8c391606fee18614885684548d/) | ⚠️ Unaudited |
| XShadow | unknown | sonic | n/a | [`0x5050bc...4b2424`](./contracts/sonic-146/0x5050bc082ff4a74fb6b0b04385defddb114b2424/) | ⚠️ Unaudited |

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
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 5 | high |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.consensys.io/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x5555b2...ee5555`](./contracts/sonic-146/0x5555b2733602ded58d47b8d3d989e631cbee5555/) | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xcc83a7...e2cd34`](./contracts/sonic-146/0xcc83a742af837919641b1c9a540c521976e2cd34/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2da25e...6374c8`](./contracts/sonic-146/0x2da25e7446a70d7be65fd4c053948becaa6374c8/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3333b9...a33333`](./contracts/sonic-146/0x3333b97138d4b086720b5ae8a7844b1345a33333/) | Shadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x333311...333333`](./contracts/sonic-146/0x3333111a391cc08fa51353e9195526a70b333333/) | x33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5050bc...4b2424`](./contracts/sonic-146/0x5050bc082ff4a74fb6b0b04385defddb114b2424/) | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=155

Zero-match audit list:

- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c
- [2503] diligence.consensys.io/audits/2024/08/ramses-v3

Fork inheritance lineage and inherited audits are included when available.
