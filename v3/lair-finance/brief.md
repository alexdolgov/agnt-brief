# Agentic Audit Brief: Lair Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lair Finance (`lair-finance`)
- Website: [https://lair.fi](https://lair.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain, kaia
- Contract surface: 87 unique implementations (198 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,809,190.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Lair Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 87 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 87
- Raw deployments: 198
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61bd35...21da40` | ⚠️ Unaudited |
| BribeCollectorV1_4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x8d4417...21298c` | ⚠️ Unaudited |
| Infrared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x559d13...88092f` | ⚠️ Unaudited |
| InfraredBERA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94b5d5...546d81` | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef26bc...2fef87` | ⚠️ Unaudited |
| InfraredBERADepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x04cddc...cab7d7` | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xab2dad...b18254`; berachain `0xf6a4a6...9fef97` | ⚠️ Unaudited |
| InfraredBERAV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x9b6761...cd3fe5` | ⚠️ Unaudited |
| InfraredBERAWithdrawor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x8c0e12...2818e1` | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x725a55...e92444` | ⚠️ Unaudited |
| InfraredBGT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac03ca...bb2e6b` | ⚠️ Unaudited |
| InfraredDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1fad98...c4ccd6`; berachain `0x742ebb...a90247` | ⚠️ Unaudited |
| InfraredV1_10 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xb71b3d...2fc126` | ⚠️ Unaudited |
| InfraredVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x6583e7...f875d1`; berachain `0x75f3be...168301` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f6cf7...91a41d` | ⚠️ Unaudited |
| LairToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x3d6683...39d21e`; berachain `0xa04152...802ca0`; berachain `0xf35307...8a0d3c` | ⚠️ Unaudited |
| RewardVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29af24...3c764d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1c7c40...440dd4`; berachain `0x91001c...764efc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | berachain | n/a | 3 deployments: berachain `0x2c6297...98611e`; berachain `0x381e9d...d7bffc`; berachain `0x7b56b9...8c7a87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 2 | berachain | n/a | 2 deployments: berachain `0x2c7655...529586`; berachain `0x3e97ca...faaa33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 3 | berachain | n/a | 3 deployments: berachain `0x2cb2ef...518bc7`; berachain `0xfc3da0...379c82`; berachain `0xfe2b4e...785fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 6 | berachain | n/a | 6 deployments: berachain `0x4a110b...4a1019`; berachain `0x66611b...e5b6ab`; berachain `0x77df4e...8c9aaa`; berachain `0x90e596...0a82bf`; berachain `0xd5c3b4...192870`; berachain `0xdeb193...218e31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x5b6b08...8984ed`; berachain `0xe1b6e6...009156` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x6905f9...178eda`; berachain `0x84ce24...1765f4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x871195...37995e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xbaa896...301561`; berachain `0xd24348...b5c7fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0xe79bf7...cf6686` | ⚠️ Unaudited |
| WrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 93 deployments: berachain `0x021f62...eccb0d`; berachain `0x023e5d...3124f0`; berachain `0x03c2ef...02ba65`; berachain `0x04bd6e...e69bd5`; berachain `0x04edcc...81b739`; berachain `0x0cb3e2...42d009`; berachain `0x0fff6d...9ddc97`; berachain `0x104e92...738d71`; berachain `0x1109bf...80f954`; berachain `0x1453c6...eba339`; berachain `0x16275c...e730f4`; berachain `0x1a18f5...1a2241`; berachain `0x22a3fb...488715`; berachain `0x23ed71...fd8864`; berachain `0x2415fe...12cf8f`; berachain `0x27b03a...9086db`; berachain `0x2a447f...e69ac2`; berachain `0x2e1139...7ae031`; berachain `0x2e32dd...e2b00f`; berachain `0x2f5119...723c9b`; berachain `0x3904aa...e1ab84`; berachain `0x3b43d2...0462b5`; berachain `0x3fc37a...798d00`; berachain `0x42cd67...7262b6`; berachain `0x47590f...f0ab02`; berachain `0x4fce30...f64444`; berachain `0x57684b...da7ece`; berachain `0x5782d6...d5aaa5`; berachain `0x58b34e...2871fd`; berachain `0x58b61e...0ebe1e`; berachain `0x5d51a2...620224`; berachain `0x6503a8...1796c8`; berachain `0x6e0d09...86e20d`; berachain `0x70d6cf...1ad2ad`; berachain `0x732dfb...987a42`; berachain `0x78808a...9f503c`; berachain `0x79a27a...6f4ef8`; berachain `0x7bc28c...5a375a`; berachain `0x7c010b...c5b5c6`; berachain `0x7cc248...a4efe1`; berachain `0x7cde0a...e86d23`; berachain `0x7e3129...54e39a`; berachain `0x7e5717...286355`; berachain `0x7ef1f9...1f4730`; berachain `0x7f6ed5...87da17`; berachain `0x81ba24...6f490a`; berachain `0x81fb2a...893a1b`; berachain `0x82609f...62f587`; berachain `0x82d750...22dd2b`; berachain `0x855502...9034bc`; berachain `0x86fee0...0ac240`; berachain `0x8b492e...e030f9`; berachain `0x920598...9b139a`; berachain `0x9433cc...344e27`; berachain `0x95c1f2...14ebf7`; berachain `0x9f47f2...5d5c80`; berachain `0x9f898e...f7b732`; berachain `0xa2b10d...bf83d4`; berachain `0xa2e5e4...559ed4`; berachain `0xa3a376...80f26f`; berachain `0xa3fd52...93ce06`; berachain `0xa63ff9...ae4f88`; berachain `0xa6899c...c7a955`; berachain `0xa81dde...5abee4`; berachain `0xab71f6...7c42e6`; berachain `0xac36a9...e53529`; berachain `0xb0292f...a535ed`; berachain `0xb04a2a...ad3839`; berachain `0xb065f8...0f5088`; berachain `0xb17f63...a15a50`; berachain `0xb38b0d...26c9b9`; berachain `0xb59aa6...e85757`; berachain `0xba7f7d...825073`; berachain `0xbc4461...cda130`; berachain `0xbcd681...876a9d`; berachain `0xbf1961...13f5fe`; berachain `0xc2f574...eee206`; berachain `0xc6b6b0...479a29`; berachain `0xc9adf8...7250db`; berachain `0xcc0c3f...f6d05c`; berachain `0xcc824b...851a75`; berachain `0xd10759...f166f4`; berachain `0xd39b77...09f907`; berachain `0xd5ae03...37d25a`; berachain `0xde7472...687958`; berachain `0xdfd21d...3184ca`; berachain `0xe19333...84f34f`; berachain `0xeb6e02...3bbcce`; berachain `0xf3a956...1f3aa1`; berachain `0xf3cbc6...ad8c7b`; berachain `0xf4c35f...240796`; berachain `0xf69cf3...2f18a5`; berachain `0xfe7a78...c5f575` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01b775...85282a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06df64...94645d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c7e78...099796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d493a...a942b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x13452c...afbad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15e565...5c2dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1b1d44...21fa12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d1558...a78865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ece52...ad441f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x255e6d...b8be77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b6bb6...6e9ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x35c50e...7b9fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x37bbcb...665ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3a329e...5b7922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x419b1e...40f23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x45cd02...3586ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4911c4...8f290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4fafd5...1d7a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5be43b...39c20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6c92af...91389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x718874...0bd3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x778e92...7e896e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x77c587...1ebb62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7a3d63...05f583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7d7631...7fec40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7de65e...d00262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7f4ced...1d85f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x82a3fc...585bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x85ec12...b5eb8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x86205e...814b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x87e10e...dea7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8c48ff...5a401f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8cf189...4eea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x901882...6dcba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99455a...990b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb13a7d...f2d4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb526b1...9e81d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb5988d...cf4d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb608f0...4c35e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbae739...df4ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdc6d8...74bf12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc5041b...a7893c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc909ef...3f082b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcaee3c...d993ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd0282e...e13119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd452dd...28e5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd49c81...6915d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd58cc5...c105a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd73349...4e2db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd76707...5d5673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdd0a77...c3ee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde8936...970b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe0cb21...c5b643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe4d5f4...4b513a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xee85b7...300a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf050cd...eb4bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf31392...46d601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf4f447...769ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff343f...4deaa6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bera LRT Contracts _ SSC.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/lrBGT/Bera%20LRT%20Contracts%20_%20SSC.pdf) | SSC | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Lair Restaking_Omniscia_Security_Review.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair%20Restaking_Omniscia_Security_Review.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Lair_Restaking_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v01.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Lair_Restaking_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v2.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Lair_Restaking_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/restake/Lair_Restaking_v3.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Lair_stSomi_v01.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v01.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Lair_stSomi_v02.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stSomi/Lair_stSomi_v02.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Lair_Stake_v1.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Lair_Stake_v2.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v2.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Lair_Stake_v3.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/stake/Lair_Stake_v3.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Lair Finance Smart Contract Audit Report - Final Report.pdf](https://github.com/bug4city/lair-lsd/blob/master/audit/vault/Lair%20Finance%20Smart%20Contract%20Audit%20Report%20-%20Final%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14247] Bera LRT Contracts _ SSC.pdf — no match: Scope section explicitly lists all files and contracts in scope. Audit date is the end date of the engagement: June 19, 2025.
- [14248] Lair Restaking_Omniscia_Security_Review.pdf — no match: Three contracts explicitly listed in scope table: ReStakingManager, ReStakingTreasury, Unstake. Audit date from cover page: March 18, 2025.
- [14249] Lair_Restaking_v01.pdf — no match: All 14 files listed in scope section of the audit report.
- [14250] Lair_Restaking_v2.pdf — no match: All 14 files listed in the Scope section of the audit report.
- [14251] Lair_Restaking_v3.pdf — no match: All 14 files listed in scope section; audit date from document properties (05/11/2024).
- [14252] Lair_stSomi_v01.pdf — no match: Scope section lists 9 Solidity files. Audit date from document properties: version date 23/10/25 (interpreted as 2025-10-23).
- [14253] Lair_stSomi_v02.pdf — no match: All 9 contracts listed in the Scope section of the audit report.
- [14254] Lair_Stake_v1.pdf — no match: All 15 files listed in the Scope section of the audit report are extracted. The audit date is 10/07/2024 (July 10, 2024) from the cover page.
- [14255] Lair_Stake_v2.pdf — no match: All 15 files listed in scope section; audit date from document versioning (18/07/2024).
- [14256] Lair_Stake_v3.pdf — no match: All 15 files listed in scope section; audit date from cover page (13/08/24).
- [14257] Lair Finance Smart Contract Audit Report - Final Report.pdf — no match: All 23 contracts listed in the Audit Scope section with MD5 hashes. Audit date is January 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bera LRT Contracts _ SSC.pdf | IMultiRewards | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IslandRouter | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IKodiakIsland | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IV3SwapRouter | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | LairBGTManager | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | LairBGTManagerHelper | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | Dex | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | LairState | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | ILairBGTManager | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | ILairBGTManagerHelper | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | Params | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | ILairBGTToken | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | LairBGTToken | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | UniSwapHelper | unmatched — not counted | — | listed in scope | no |
| Bera LRT Contracts _ SSC.pdf | IUniSwapHelper | unmatched — not counted | — | listed in scope | no |
| Lair Restaking_Omniscia_Security_Review.pdf | ReStakingManager | unmatched — not counted | — | listed in scope table | no |
| Lair Restaking_Omniscia_Security_Review.pdf | ReStakingTreasury | unmatched — not counted | — | listed in scope table | no |
| Lair Restaking_Omniscia_Security_Review.pdf | Unstake | unmatched — not counted | — | listed in scope table | no |
| Lair_Restaking_v01.pdf | ReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | ICnStakingV2 | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | ReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | ReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | ReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | IReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | IReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | IReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | IReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v01.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | ReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | ICnStakingV2 | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | ReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | ReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | ReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | IReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | IReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | IReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | IReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v2.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | ReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | ICnStakingV2 | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | ReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | ReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | ReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | IReStakingManager | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | IReStakingTransfer | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | IReStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | IReStakingTreasury | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Lair_Restaking_v3.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | NodeController | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | NodeService | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | StakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | INodeService | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | INodeController | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | UnStake | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v01.pdf | Node | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | NodeController | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | NodeService | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | StakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | INodeService | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | INodeController | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | UnStake | unmatched — not counted | — | listed in scope | no |
| Lair_stSomi_v02.pdf | Node | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | NodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | StakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | NodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | ICnStakingV3 | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | IPublicDelegation | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | INodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | INodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | Claim | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | Node | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v1.pdf | IKIP163 | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | NodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | StakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | NodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | ICnStakingV3 | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | IPublicDelegation | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | INodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | INodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | Claim | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | Node | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v2.pdf | IKIP163 | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | NodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | StakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | NodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | ICnStakingV3 | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | IPublicDelegation | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | INodeController | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | Validator | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | INodeService | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | State | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | IStakingToken | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | Unstake | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | Claim | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | Node | unmatched — not counted | — | listed in scope | no |
| Lair_Stake_v3.pdf | IKIP163 | unmatched — not counted | — | listed in scope | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | State | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | Validator | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | User | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultRound | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | ActiveVaultToken | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IActiveVaultToken | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IStakingTokenBill | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IStakingTokenBillFactory | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | StakingTokenBill | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | StakingTokenBillFactory | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultTreasury | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultTreasury | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultManager | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultManagerHelper | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultManager | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultManagerHelper | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultService | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultServiceFactory | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultService | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultServiceFactory | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | IVaultSwap | unmatched — not counted | — | listed in scope table | no |
| Lair Finance Smart Contract Audit Report - Final Report.pdf | VaultSwap | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 152 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11
- Match method counts: n/a

Zero-match audit list:

- [14247] Bera LRT Contracts _ SSC.pdf
- [14248] Lair Restaking_Omniscia_Security_Review.pdf
- [14249] Lair_Restaking_v01.pdf
- [14250] Lair_Restaking_v2.pdf
- [14251] Lair_Restaking_v3.pdf
- [14252] Lair_stSomi_v01.pdf
- [14253] Lair_stSomi_v02.pdf
- [14254] Lair_Stake_v1.pdf
- [14255] Lair_Stake_v2.pdf
- [14256] Lair_Stake_v3.pdf
- [14257] Lair Finance Smart Contract Audit Report - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
