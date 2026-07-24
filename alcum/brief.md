# Agentic Audit Brief: Alcum

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Alcum (`alcum`)
- Website: [https://web3.alcum.com/](https://web3.alcum.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,180.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Alcum in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24781bed8b72527f9d7c5faa1ff0af192831dccf`, chain 1)
- UnnamedContract (`0x883f821360507b3ab7712e363c48416fb3a40841`, chain 1)
- UnnamedContract (`0xd43106e4e7261dffdbb439642f3ebb40ef3f0438`, chain 1)
- CopperPriceConsumer (`0x081bf0914c2a8fdfe876ab36558e3db191cd9ab6`, chain 1)
- DepositLib (`0x4f1f468d71459875a7844e302e6c55b4356705e5`, chain 1)
- DepositViewLib (`0xc70e33c2a7851a7b35122275662aa47486d89886`, chain 1)
- PermitLib (`0xa965f365382f8c706287b6ae22bff047b5f2f668`, chain 1)
- RedeemViewLib (`0x8c1d1a4e5d66a2d85bff31a6681e82b5c8723dc6`, chain 1)
- SwapLib (`0x39a761bbda0276bf9e712bed2538795d5b4da5f6`, chain 1)
- TransparentUpgradeableProxy (`0x1ead418bab993c893a3c4c2343a140cfd9b3b4b5`, chain 1)
- TransparentUpgradeableProxy (`0x40a8611580f4f896ccee2b949635f442e8a9275f`, chain 1)
- TransparentUpgradeableProxy (`0x7f6af03c161383ae6b4557bb52d9d74f4eb77193`, chain 1)
- TransparentUpgradeableProxy (`0x84735270ae4f8fe9ae15652f676ecb524ea480ab`, chain 1)
- TransparentUpgradeableProxy (`0x8e4014fd3f97b7a15a3b291067a58a0e81c082d8`, chain 1)
- TransparentUpgradeableProxy (`0x9cd1adab995407a9b452af6b49ffa85583cb344a`, chain 1)
- TransparentUpgradeableProxy (`0xa5ce803d61f694e35b3889392c82b5b9b2b91989`, chain 1)
- TransparentUpgradeableProxy (`0xa808f48e4b4124d639560a54d7d833ec3f0b5711`, chain 1)
- TransparentUpgradeableProxy (`0xd0269617fda8a1db9b91cf6939e14799c444a964`, chain 1)
- TransparentUpgradeableProxy (`0xf60d1494c59462521ffb30d4b4f212f236ce236d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 19 of 63 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 63
- Raw deployments: 63
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommissionTransfer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378703 | `0x9cd1adab995407a9b452af6b49ffa85583cb344a` | ⚠️ Unaudited |
| CopperPriceConsumer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378686 | `0x081bf0914c2a8fdfe876ab36558e3db191cd9ab6` | ⚠️ Unaudited |
| CUPToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378695 | `0x7f6af03c161383ae6b4557bb52d9d74f4eb77193` | ⚠️ Unaudited |
| DepositLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378689 | `0x4f1f468d71459875a7844e302e6c55b4356705e5` | ⚠️ Unaudited |
| DepositViewLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378693 | `0xc70e33c2a7851a7b35122275662aa47486d89886` | ⚠️ Unaudited |
| EpochManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378701 | `0x40a8611580f4f896ccee2b949635f442e8a9275f` | ⚠️ Unaudited |
| HostAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378696 | `0xd0269617fda8a1db9b91cf6939e14799c444a964` | ⚠️ Unaudited |
| PermitLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378692 | `0xa965f365382f8c706287b6ae22bff047b5f2f668` | ⚠️ Unaudited |
| RedeemEngine | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378700 | `0x1ead418bab993c893a3c4c2343a140cfd9b3b4b5` | ⚠️ Unaudited |
| RedeemViewLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378691 | `0x8c1d1a4e5d66a2d85bff31a6681e82b5c8723dc6` | ⚠️ Unaudited |
| SettlementEngine | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378704 | `0xa5ce803d61f694e35b3889392c82b5b9b2b91989` | ⚠️ Unaudited |
| SwapLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378688 | `0x39a761bbda0276bf9e712bed2538795d5b4da5f6` | ⚠️ Unaudited |
| xCUP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378698 | `0x84735270ae4f8fe9ae15652f676ecb524ea480ab` | ⚠️ Unaudited |
| XCUPOraclePool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378699 | `0x8e4014fd3f97b7a15a3b291067a58a0e81c082d8` | ⚠️ Unaudited |
| XCUPZapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378702 | `0xf60d1494c59462521ffb30d4b4f212f236ce236d` | ⚠️ Unaudited |
| Zapper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378697 | `0xa808f48e4b4124d639560a54d7d833ec3f0b5711` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06361502a16c8d25535be389667c5397cc2359e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099536f586be0e9f8300e5bf7ddcd5e866e3d113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1781f55cca1f66d54a8d66a43f9cf142f56bd592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bfa95350aebe762213c7112eb4508507c79667c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d3f645aff4461b18c7d8b4de36a5a584106e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b379eada31b12ab38dca63969345cea41464cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378687 | `0x24781bed8b72527f9d7c5faa1ff0af192831dccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2685db07ec4f29ff9ef6845b7dff745b9278098b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a933298f8b2358e52336cc87a0bda285d421d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276f7db3a63ed9cd7aee8d35351eaa8b845229ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ce0b73732a754adc5e429c61831fd42478e16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e5b0fab0ddd7dda06512477eb2f2c469a58bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b91ede169282e5bb22747c1fb6cd71fcf36490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5d5de7aa13e821093afbc8b19ac1261948dd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41acd7a308b99f487e7b14d18e32403bf9d5d4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x434a52ce510beaf2f1f0e0d640270841ccb11b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454415cd79dc4e4dac6069829143d5b9af3c83bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46505b0aff1eb3d94955a5e6235d8c97f00aa434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c7a46b18c2c6c06689e2db2bc660435b659aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d746170fe68b93a8652b7513c10206a5fd0f8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a7df333dfd7620e25f12a94f88fa8f449052f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656591edbf4c2ccf8dd05d7ef96bb09f5b786ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd79c0e1dae90805865f2a76b6c475f8bb76f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3dc6e0579bafa781cd2ee8f844e810bd82c5b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378690 | `0x883f821360507b3ab7712e363c48416fb3a40841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a7459439f679948850acfb6c2ff6ceb83204bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c0a186b8a23376d5c0e67337dbfcd45be55157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa73eaa5e3fffa168ed2c1abfa3b8b81296808814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8cd4e5b2f99effc797b10405c2a722be1a6dcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab38bdcc4a87da87ac880252c8b5220fe0fee1ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc515b40d7e8d0da72e6385da46f0bd536018d9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7eabe9db21621bbdbf2436e0afc7f0762dd3089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce8535e27266870fb28b418e40477e865bd71332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3494288bbbf7bd8e0ddc2339a0f757ca0cefbf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378694 | `0xd43106e4e7261dffdbb439642f3ebb40ef3f0438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5c568eac3a687d1a588a138acc9bb1e3c6ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb82e33daeb8cd45def7cfe18e65e4629f7007a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4c5825c311b4c3a2ed0221e2120921143eb011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2d4908b130523453321b41611f1b61539499ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec634db1aa658323b3668887cd9651f0b86f29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c16c3d91515f4637fdc4a4972c0340a807877f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe27e90129a8f5ad699e6b06c433f217bd2bfcf01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b39fc8db6779dc7dd4f68fa61c636704b1e893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20c11fe9be4c0423fefcfeae4d418bd886493be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3a8c9612f7161694e7454ff3c42ef4d78718b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5d3d1af0a5aa3d329d9371f55ca888c7db67690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa29984f2aac69f35026506414a550ba26936795` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 44
- Live contracts: 0
- Unknown liveness contracts: 44
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=44

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x06361502a16c8d25535be389667c5397cc2359e3` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x099536f586be0e9f8300e5bf7ddcd5e866e3d113` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1781f55cca1f66d54a8d66a43f9cf142f56bd592` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bfa95350aebe762213c7112eb4508507c79667c` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20d3f645aff4461b18c7d8b4de36a5a584106e15` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22b379eada31b12ab38dca63969345cea41464cb` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2685db07ec4f29ff9ef6845b7dff745b9278098b` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26a933298f8b2358e52336cc87a0bda285d421d6` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x276f7db3a63ed9cd7aee8d35351eaa8b845229ca` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28ce0b73732a754adc5e429c61831fd42478e16a` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30e5b0fab0ddd7dda06512477eb2f2c469a58bd8` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37b91ede169282e5bb22747c1fb6cd71fcf36490` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a5d5de7aa13e821093afbc8b19ac1261948dd76` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41acd7a308b99f487e7b14d18e32403bf9d5d4df` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x434a52ce510beaf2f1f0e0d640270841ccb11b39` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x454415cd79dc4e4dac6069829143d5b9af3c83bd` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46505b0aff1eb3d94955a5e6235d8c97f00aa434` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46c7a46b18c2c6c06689e2db2bc660435b659aaa` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d746170fe68b93a8652b7513c10206a5fd0f8c6` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56a7df333dfd7620e25f12a94f88fa8f449052f3` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656591edbf4c2ccf8dd05d7ef96bb09f5b786ebd` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cd79c0e1dae90805865f2a76b6c475f8bb76f4e` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e3dc6e0579bafa781cd2ee8f844e810bd82c5b1` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89a7459439f679948850acfb6c2ff6ceb83204bc` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97c0a186b8a23376d5c0e67337dbfcd45be55157` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa73eaa5e3fffa168ed2c1abfa3b8b81296808814` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8cd4e5b2f99effc797b10405c2a722be1a6dcb6` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab38bdcc4a87da87ac880252c8b5220fe0fee1ce` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc515b40d7e8d0da72e6385da46f0bd536018d9d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7eabe9db21621bbdbf2436e0afc7f0762dd3089` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce8535e27266870fb28b418e40477e865bd71332` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3494288bbbf7bd8e0ddc2339a0f757ca0cefbf3` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda5c568eac3a687d1a588a138acc9bb1e3c6ae22` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb82e33daeb8cd45def7cfe18e65e4629f7007a5` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc4c5825c311b4c3a2ed0221e2120921143eb011` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde2d4908b130523453321b41611f1b61539499ce` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdec634db1aa658323b3668887cd9651f0b86f29a` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1c16c3d91515f4637fdc4a4972c0340a807877f` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe27e90129a8f5ad699e6b06c433f217bd2bfcf01` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1b39fc8db6779dc7dd4f68fa61c636704b1e893` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf20c11fe9be4c0423fefcfeae4d418bd886493be` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3a8c9612f7161694e7454ff3c42ef4d78718b74` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5d3d1af0a5aa3d329d9371f55ca888c7db67690` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa29984f2aac69f35026506414a550ba26936795` | non_address_book | unknown | unknown | unverified | n/a | `0xe94847f5a96c45b2612993a922b6262b33d16242` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
