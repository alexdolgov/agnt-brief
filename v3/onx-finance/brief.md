# Agentic Audit Brief: OnX Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: OnX Finance (`onx-finance`)
- Website: [https://onx.finance/](https://onx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 149 unique implementations (149 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $198,399.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OnX Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche, bsc, ethereum, fantom, polygon. Structural roles: 3 core, 1 infra, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x571674...d385e1`, chain 1)
- UnnamedContract (`0xe0ad18...411033`, chain 1)
- UnnamedContract (`0xfc97c0...50dcad`, chain 1)
- UnnamedContract (`0x50dfd5...2f1fe7`, chain 56)
- UnnamedContract (`0xeb94a5...09ad84`, chain 137)
- UnnamedContract (`0x27749e...93a0b6`, chain 250)
- UnnamedContract (`0x3d8f74...8ba678`, chain 43114)
- ONE (`0xc1330a...5a8b0f`, chain 1)
- ONXFarm (`0x168f84...488ce9`, chain 1)
- StakedONX (`0xa99f0a...40b47c`, chain 1)
- Team (`0x424b1a...6013c7`, chain 1)
- Vault (`0x3bdf19...a4c30e`, chain 1)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 137 discovered implementations excluded (3 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Deployed-live implementations: 12 of 149 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 149
- Raw deployments: 149
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ONE | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390220 | `0xc1330a...5a8b0f` | ✅ Audited |
| ONXFarm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390210 | `0x168f84...488ce9` | ✅ Audited |

### ⚠️ Verified + Unaudited (140)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2d8ba0...aafc4f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x84db6e...936670` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc12ebc...109dae` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd01ef7...62e5c6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| AETH_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b42a...02b6d5` | ⚠️ Unaudited |
| AETH_R10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d675...4390f6` | ⚠️ Unaudited |
| AETH_R11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6350...101e3b` | ⚠️ Unaudited |
| AETH_R12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9c04...f70300` | ⚠️ Unaudited |
| AETH_R13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c906f...93d0f0` | ⚠️ Unaudited |
| AETH_R14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5835bf...828ccf` | ⚠️ Unaudited |
| AETH_R15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a9366...7b641c` | ⚠️ Unaudited |
| AETH_R16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5e5c...5cb60f` | ⚠️ Unaudited |
| AETH_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496b35...d8617d` | ⚠️ Unaudited |
| AETH_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23f7d0...c1181f` | ⚠️ Unaudited |
| AETH_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253f7e...03b8cc` | ⚠️ Unaudited |
| AETH_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5dea...8e737f` | ⚠️ Unaudited |
| AETH_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c00d...d0784b` | ⚠️ Unaudited |
| AETH_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e6e6...5b57a7` | ⚠️ Unaudited |
| AETHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bea5...071118` | ⚠️ Unaudited |
| aMATICb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef614...3cfeb7` | ⚠️ Unaudited |
| aMATICb_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9e9f...22c770` | ⚠️ Unaudited |
| aMATICb_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc91be...89a0d8` | ⚠️ Unaudited |
| aMATICb_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6453...ccc5a7` | ⚠️ Unaudited |
| aMATICb_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42f91d...eed868` | ⚠️ Unaudited |
| aMATICb_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e395...800ac2` | ⚠️ Unaudited |
| aMATICb_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd45021...28ce3b` | ⚠️ Unaudited |
| aMATICc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a0cc...1c9d8d` | ⚠️ Unaudited |
| aMATICc_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887214...e301fd` | ⚠️ Unaudited |
| aMATICc_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1352c4...43e6ef` | ⚠️ Unaudited |
| AnkrBond_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e56ec...3e3a9c` | ⚠️ Unaudited |
| AnkrFuture_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5184b6...115e7b` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c87cc...85408c` | ⚠️ Unaudited |
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3a6c...d1a42e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34641f...3b0020` | ⚠️ Unaudited |
| CrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d4fe...c44ebd` | ⚠️ Unaudited |
| CrossChainBridge_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeed0...97d21d` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a7ac...605f3d` | ⚠️ Unaudited |
| DualMaticStrategyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13c6f4...bde15a` | ⚠️ Unaudited |
| DualMaticStrategyPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b42a9...23c8af` | ⚠️ Unaudited |
| EthPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497338...7949dc` | ⚠️ Unaudited |
| FETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec209...7d0aee` | ⚠️ Unaudited |
| FETH_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170da5...233934` | ⚠️ Unaudited |
| FETH_R10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2e0b...6f335c` | ⚠️ Unaudited |
| FETH_R11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3b11...1816ef` | ⚠️ Unaudited |
| FETH_R12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c7bb...168167` | ⚠️ Unaudited |
| FETH_R13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb71305...979926` | ⚠️ Unaudited |
| FETH_R14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3facae...82f0fa` | ⚠️ Unaudited |
| FETH_R15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7b212...8a9aa1` | ⚠️ Unaudited |
| FETH_R16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d0d4...43eabc` | ⚠️ Unaudited |
| FETH_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243a57...9c29f7` | ⚠️ Unaudited |
| FETH_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9a15...4fe4c1` | ⚠️ Unaudited |
| FETH_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3622f6...5dd1d7` | ⚠️ Unaudited |
| FETH_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed03a...9a2379` | ⚠️ Unaudited |
| FETH_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c25b...7e87a1` | ⚠️ Unaudited |
| FETH_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549ef3...629462` | ⚠️ Unaudited |
| FETH_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d98...1b2294` | ⚠️ Unaudited |
| FETH_R9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21fb8...10a6de` | ⚠️ Unaudited |
| FutureBondAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8cb2c...e3bffc` | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a8323...a4e2ec` | ⚠️ Unaudited |
| GlobalPool_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33448...c727f6` | ⚠️ Unaudited |
| GlobalPool_R22 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4748b6...cfce15` | ⚠️ Unaudited |
| GlobalPool_R24 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3358...2c3481` | ⚠️ Unaudited |
| GlobalPool_R25 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b804...c40a9b` | ⚠️ Unaudited |
| GlobalPool_R26 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4017e2...31e64f` | ⚠️ Unaudited |
| GlobalPool_R27 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3649b0...c90ee1` | ⚠️ Unaudited |
| GlobalPool_R29 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8103...d04f0b` | ⚠️ Unaudited |
| GlobalPool_R30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d62c...185fd9` | ⚠️ Unaudited |
| GlobalPool_R31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfdf3...3a362f` | ⚠️ Unaudited |
| GlobalPool_R32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b31a2...c878d4` | ⚠️ Unaudited |
| GlobalPool_R33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40613...cfd374` | ⚠️ Unaudited |
| GlobalPool_R34 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fa1b...0113d6` | ⚠️ Unaudited |
| GlobalPool_R35 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e01a...be5091` | ⚠️ Unaudited |
| GlobalPool_R36 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e0e6...0d9eed` | ⚠️ Unaudited |
| GlobalPool_R37 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df503...35e9e1` | ⚠️ Unaudited |
| GlobalPool_R38 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624d9a...db2fce` | ⚠️ Unaudited |
| GlobalPool_R39 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd201a7...88c3e9` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d6fc...dad0a5` | ⚠️ Unaudited |
| Governance_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3640...ae501a` | ⚠️ Unaudited |
| Governance_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e6616...600871` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x454e67...487a15` | ⚠️ Unaudited |
| MaticStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b187b...67cca3` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23261a...0630b0` | ⚠️ Unaudited |
| Mine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd89b...a98b2c` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30d1a1...636f22` | ⚠️ Unaudited |
| Offering | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ee66...a794f3` | ⚠️ Unaudited |
| ONB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x392912...fc30e1` | ⚠️ Unaudited |
| OneMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebb42...1b9972` | ⚠️ Unaudited |
| oneX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d2f1...a63d95` | ⚠️ Unaudited |
| ONS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f027...ae51fb` | ⚠️ Unaudited |
| OnxAlphaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x002bf5...3d9f17` | ⚠️ Unaudited |
| ONXConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1539...f7c083` | ⚠️ Unaudited |
| ONXFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2583c7...8505c9` | ⚠️ Unaudited |
| OnxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0413a7...4f94af` | ⚠️ Unaudited |
| ONXPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c40e...bc9d46` | ⚠️ Unaudited |
| ONXPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f3e6...108baa` | ⚠️ Unaudited |
| ONXStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d866...137d6f` | ⚠️ Unaudited |
| ONXSupplyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091b4...b1e2f8` | ⚠️ Unaudited |
| ONXTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f3a1...d49d66` | ⚠️ Unaudited |
| ONXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8438c3...dfcf39` | ⚠️ Unaudited |
| PolkadotPool_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2434fa...f4b2c0` | ⚠️ Unaudited |
| PolygonPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f410...f976b0` | ⚠️ Unaudited |
| PolygonPool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8483...75a7f2` | ⚠️ Unaudited |
| PolygonPool_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691303...071f0a` | ⚠️ Unaudited |
| PolygonPool_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0793...635ff0` | ⚠️ Unaudited |
| PolygonPool_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359e25...bdfe40` | ⚠️ Unaudited |
| PolygonPool_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc1e4...1a74f9` | ⚠️ Unaudited |
| PolygonPool_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6805...aba389` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0232fa...edf413` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8025d4...108f07` | ⚠️ Unaudited |
| RewardPoolTemplate_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901e55...f61fab` | ⚠️ Unaudited |
| RewardPoolTemplate_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bdc8...1cda2e` | ⚠️ Unaudited |
| slpONX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815476...ff6b18` | ⚠️ Unaudited |
| StakedONX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390213 | `0xa99f0a...40b47c` | ⚠️ Unaudited |
| StakingConfigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d3f89...ce6aae` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x19eb65...4e9e3b` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8773ce...51abcf` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0a48...c8500f` | ⚠️ Unaudited |
| StrategyAdapterAvalancheV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x077a52...cf1696` | ⚠️ Unaudited |
| StrategyCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038112...f142b2` | ⚠️ Unaudited |
| StrategyEthOnx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059231...b59abe` | ⚠️ Unaudited |
| StrategyEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccb0b...8c3edd` | ⚠️ Unaudited |
| StrategyEthUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ca8b...ff6f1d` | ⚠️ Unaudited |
| TAlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0b92...030724` | ⚠️ Unaudited |
| Team | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390221 | `0x424b1a...6013c7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cb59...281539` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x26dcfb...c5480c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27ccac...37beb3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30176c...b12216` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x42a148...511c94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59f767...0f208e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x99534e...38ebfe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcfd4b4...b3ce89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x008e6b...33e519` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x067e75...29c37a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x008e6b...33e519` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x00ff18...66d952` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x019ba0...7618d7` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390222 | `0x3bdf19...a4c30e` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe07f0a...7fa897` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390212 | `0x571674...d385e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390214 | `0xe0ad18...411033` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390215 | `0xfc97c0...50dcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390219 | `0x50dfd5...2f1fe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-390216 | `0xeb94a5...09ad84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-390217 | `0x27749e...93a0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-390218 | `0x3d8f74...8ba678` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Token and Farming Contract Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/audit.md) | unknown | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [onSynthetics Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/audit-1.md) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Lending Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/lending-audit.md) | unknown | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Alpha Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/alpha-audit.md) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17873] Token and Farming Contract Audit — matched: The report explicitly states 'The OnXFarm contract pass all audit items' and discusses functions of OnXFarm. No other contract names are mentioned in scope.
- [17874] onSynthetics Audit — matched: Scope table lists 7 contracts; OneMinter and Vault explicitly excluded from scope.
- [17875] Lending Audit — no match: Contracts are described in the Business Security section; no explicit scope table but clearly the audited contracts.
- [17876] Alpha Audit — no match: The report explicitly lists four main business contracts: AlphaStrategy, OnxAlphaVault, Controller, TAlphaToken. No file paths provided. Audit completion date is 2021.08.03.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Token and Farming Contract Audit | OnXFarm | own contract | ONXFarm (selected) `0x168f84...488ce9` — deployed 2020-12-17 18:55:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| onSynthetics Audit | ONE | own proxy deployment | ONE (proxy) (selected) `0xc1330a...5a8b0f` — deployed 2021-02-04 11:42:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| onSynthetics Audit | ONS | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | ONB | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Offering | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Timelock | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Mine | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | StakingPool | unmatched — not counted | — | listed in scope table | no |
| Lending Audit | ONXPlatform | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXConfig | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXFactory | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXStrategyCollateral | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXPool | unmatched — not counted | — | described in Business Security section | no |
| Alpha Audit | AlphaStrategy | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | OnxAlphaVault | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | Controller | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | TAlphaToken | unmatched — not counted | — | listed as main business contract in Business Security section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa99f0a...40b47c` | StakedONX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x424b1a...6013c7` | Team | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bdf19...a4c30e` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 1 |
| standard_library | 17 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [17875] Lending Audit
- [17876] Alpha Audit

Fork inheritance lineage and inherited audits are included when available.
