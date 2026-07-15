# Agentic Audit Brief: PepeTeam

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: PepeTeam (`pepeteam`)
- Website: [https://pepe.team](https://pepe.team)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, bsc-testnet, ethereum, polygon, polygon-mumbai, sepolia
- Contract surface: 115 unique implementations (131 raw deployments)
- Coverage basis: 0/45 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,049,591.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PepeTeam. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across bsc, bsc-testnet, ethereum, polygon, polygon-mumbai, sepolia. Structural roles: 59 core, 2 supporting. 61 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (59), supporting (2)
- Contract kinds: contract (61)
- Detected standards: erc165 (28), erc1967proxy (28), ownable (28), erc20 (1)
- Frameworks: openzeppelin-upgradeable (33), openzeppelin (27)
- Upgradeable-pattern rows: 61

## Fork Analysis

0 of 61 contracts are derived from known codebases. 61 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- bridge CoinBridge (`0x882260...3c856a`, chain 1)
- bridge CoinBridge_Implementation (`0x1bda12...003e14`, chain 1)
- bridge ERC20Bridge (`0x0de7b0...21ea83`, chain 1)
- bridge ERC20Bridge_Implementation (`0x932481...dd0119`, chain 1)
- bridge MintRootAdapter (`0x28c3ec...5dc2dd`, chain 1)
- bridge MintRootAdapter_Implementation (`0x8dc9ac...3c8a5f`, chain 1)
- bridge Multisig (`0x2a6619...ccb3b0`, chain 1)
- bridge Multisig_Implementation (`0x5f951d...4c4c12`, chain 1)
- bridge ReleaseRootAdapter (`0x6a1190...b90f7f`, chain 1)
- bridge ReleaseRootAdapter_Implementation (`0x6697ec...c04bb0`, chain 1)
- bridge SafeERC20Bridge (`0x8bfac9...3f739a`, chain 1)
- bridge WAVES (`0x0fb765...6ac2fe`, chain 1)
- bridge WAVES_Implementation (`0xf7bd89...02fea5`, chain 1)
- bridge WavesMintAdapter (`0x1985ca...e458d7`, chain 1)
- bridge WavesMintAdapter_Implementation (`0xd7fee5...ac1d42`, chain 1)
- bridge WavesReleaseAdapter (`0x09d844...391118`, chain 1)
- bridge WavesReleaseAdapter_Implementation (`0xf7a561...e2cc83`, chain 1)
- bridge WrappedERC20Bridge (`0xa3fb11...c42e51`, chain 1)
- bridge WrappedERC20Bridge_Implementation (`0x5d1ecf...013586`, chain 1)
- CIP Executor (`0xa106a0...d649db`, chain 1)
- CIP Executor_Implementation (`0x5dcb74...309ad5`, chain 1)
- CIP ExecutorV3 (`0x3ffd8b...802294`, chain 1)
- CIP Multisig (`0xcdefa7...bf87be`, chain 1)
- CIP Multisig_Implementation (`0x455185...abff65`, chain 1)
- CIP WavesCaller (`0x30965e...1991f1`, chain 1)
- CIP WavesCaller_Implementation (`0x7a924d...050c52`, chain 1)
- CoinBridge (`0xd6ab78...56df9d`, chain 56)
- CoinBridge (`0x0aebf0...1370b7`, chain 137)
- EIP173Proxy (`0x22b643...fb4fb8`, chain 56)
- EIP173Proxy (`0x274475...adc031`, chain 56)
- EIP173Proxy (`0x5dcb74...309ad5`, chain 56)
- EIP173Proxy (`0x5f951d...4c4c12`, chain 56)
- EIP173Proxy (`0x8dc9ac...3c8a5f`, chain 56)
- EIP173Proxy (`0x8df127...e9367a`, chain 56)
- EIP173Proxy (`0xd7fee5...ac1d42`, chain 56)
- EIP173Proxy (`0xf16320...ad9e03`, chain 56)
- EIP173Proxy (`0x1bda12...003e14`, chain 137)
- EIP173Proxy (`0x274475...adc031`, chain 137)
- EIP173Proxy (`0x28c3ec...5dc2dd`, chain 137)
- EIP173Proxy (`0x2a6619...ccb3b0`, chain 137)
- EIP173Proxy (`0xa38ce8...6800ed`, chain 137)
- EIP173Proxy (`0xea3cc7...399018`, chain 137)
- EIP173Proxy (`0xf57db8...f81e4a`, chain 137)
- EIP173Proxy (`0xf745ea...1101f0`, chain 137)
- ExecutorV2 (`0x882260...3c856a`, chain 56)
- ExecutorV3 (`0x8bfac9...3f739a`, chain 56)
- ExecutorV3 (`0xd7fee5...ac1d42`, chain 137)
- MintRootAdapter (`0xf745ea...1101f0`, chain 56)
- MintRootAdapter (`0xa106a0...d649db`, chain 137)
- Multisig (`0x28c3ec...5dc2dd`, chain 56)
- Multisig (`0x30965e...1991f1`, chain 56)
- Multisig (`0x22b643...fb4fb8`, chain 137)
- Multisig (`0x30965e...1991f1`, chain 137)
- SafeERC20Bridge (`0xf57db8...f81e4a`, chain 56)
- SafeERC20Bridge (`0x5f89d0...66e37c`, chain 137)
- SafeERC20BridgeWithPool (`0xfe72ac...b03723`, chain 56)
- SafeERC20BridgeWithPool (`0xc4e86c...d72970`, chain 137)
- WavesCaller (`0x1905f4...d76cc6`, chain 56)
- WavesCaller (`0x8dc9ac...3c8a5f`, chain 137)
- WavesMintAdapter (`0xa38ce8...6800ed`, chain 56)
- WavesMintAdapter (`0x882260...3c856a`, chain 137)

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/115 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/45 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 70 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Deployed-live implementations: 45 of 115 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 115
- Raw deployments: 131
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

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| bridge CoinBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390917 | `0x882260...3c856a` | ⚠️ Unaudited |
| bridge CoinBridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390905 | `0x1bda12...003e14` | ⚠️ Unaudited |
| bridge ERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390902 | `0x0de7b0...21ea83` | ⚠️ Unaudited |
| bridge ERC20Bridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390920 | `0x932481...dd0119` | ⚠️ Unaudited |
| bridge MintRootAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390906 | `0x28c3ec...5dc2dd` | ⚠️ Unaudited |
| bridge MintRootAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390919 | `0x8dc9ac...3c8a5f` | ⚠️ Unaudited |
| bridge Multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390907 | `0x2a6619...ccb3b0` | ⚠️ Unaudited |
| bridge Multisig_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390913 | `0x5f951d...4c4c12` | ⚠️ Unaudited |
| bridge ReleaseRootAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390915 | `0x6a1190...b90f7f` | ⚠️ Unaudited |
| bridge ReleaseRootAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390914 | `0x6697ec...c04bb0` | ⚠️ Unaudited |
| bridge SafeERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390918 | `0x8bfac9...3f739a` | ⚠️ Unaudited |
| bridge WAVES | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390903 | `0x0fb765...6ac2fe` | ⚠️ Unaudited |
| bridge WAVES_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390926 | `0xf7bd89...02fea5` | ⚠️ Unaudited |
| bridge WavesMintAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390904 | `0x1985ca...e458d7` | ⚠️ Unaudited |
| bridge WavesMintAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390924 | `0xd7fee5...ac1d42` | ⚠️ Unaudited |
| bridge WavesReleaseAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390901 | `0x09d844...391118` | ⚠️ Unaudited |
| bridge WavesReleaseAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390925 | `0xf7a561...e2cc83` | ⚠️ Unaudited |
| bridge WrappedERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390922 | `0xa3fb11...c42e51` | ⚠️ Unaudited |
| bridge WrappedERC20Bridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390911 | `0x5d1ecf...013586` | ⚠️ Unaudited |
| CIP Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390921 | `0xa106a0...d649db` | ⚠️ Unaudited |
| CIP Executor_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390912 | `0x5dcb74...309ad5` | ⚠️ Unaudited |
| CIP ExecutorV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390909 | `0x3ffd8b...802294` | ⚠️ Unaudited |
| CIP Multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390923 | `0xcdefa7...bf87be` | ⚠️ Unaudited |
| CIP Multisig_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390910 | `0x455185...abff65` | ⚠️ Unaudited |
| CIP WavesCaller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390908 | `0x30965e...1991f1` | ⚠️ Unaudited |
| CIP WavesCaller_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390916 | `0x7a924d...050c52` | ⚠️ Unaudited |
| CoinBridge | unknown | project_anchor | own_supporting | 1 | bsc | unit-391013 | 2 deployments: bsc `0xd6ab78...56df9d`; bsc `0xf16320...ad9e03` | ⚠️ Unaudited |
| CoinBridge | unknown | project_anchor | own_supporting | 1 | polygon | unit-391000 | 2 deployments: polygon `0x0aebf0...1370b7`; polygon `0xea3cc7...399018` | ⚠️ Unaudited |
| ExecutorV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-390963 | `0x882260...3c856a` | ⚠️ Unaudited |
| ExecutorV3 | unknown | project_anchor | own_supporting | 1 | bsc | unit-391011 | 2 deployments: bsc `0x274475...adc031`; bsc `0x8bfac9...3f739a` | ⚠️ Unaudited |
| ExecutorV3 | unknown | project_anchor | own_supporting | 1 | polygon | unit-391007 | 2 deployments: polygon `0xd7fee5...ac1d42`; polygon `0xf745ea...1101f0` | ⚠️ Unaudited |
| MintRootAdapter | unknown | project_anchor | own_supporting | 1 | bsc | unit-391014 | 2 deployments: bsc `0x22b643...fb4fb8`; bsc `0xf745ea...1101f0` | ⚠️ Unaudited |
| MintRootAdapter | unknown | project_anchor | own_supporting | 1 | polygon | unit-391005 | 2 deployments: polygon `0x1bda12...003e14`; polygon `0xa106a0...d649db` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | bsc | unit-391009 | 2 deployments: bsc `0x28c3ec...5dc2dd`; bsc `0xd7fee5...ac1d42` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | bsc | unit-391010 | 2 deployments: bsc `0x30965e...1991f1`; bsc `0x5f951d...4c4c12` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | polygon | unit-391001 | 2 deployments: polygon `0x22b643...fb4fb8`; polygon `0xa38ce8...6800ed` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | polygon | unit-391002 | 2 deployments: polygon `0x2a6619...ccb3b0`; polygon `0x30965e...1991f1` | ⚠️ Unaudited |
| SafeERC20Bridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-390964 | `0xf57db8...f81e4a` | ⚠️ Unaudited |
| SafeERC20Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-390962 | `0x5f89d0...66e37c` | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-391015 | 2 deployments: bsc `0x8df127...e9367a`; bsc `0xfe72ac...b03723` | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | unknown | project_anchor | own_supporting | 1 | polygon | unit-391006 | 2 deployments: polygon `0xc4e86c...d72970`; polygon `0xf57db8...f81e4a` | ⚠️ Unaudited |
| WavesCaller | unknown | project_anchor | own_supporting | 1 | bsc | unit-391008 | 2 deployments: bsc `0x1905f4...d76cc6`; bsc `0x8dc9ac...3c8a5f` | ⚠️ Unaudited |
| WavesCaller | unknown | project_anchor | own_supporting | 1 | polygon | unit-391004 | 2 deployments: polygon `0x28c3ec...5dc2dd`; polygon `0x8dc9ac...3c8a5f` | ⚠️ Unaudited |
| WavesMintAdapter | unknown | project_anchor | own_supporting | 1 | bsc | unit-391012 | 2 deployments: bsc `0x5dcb74...309ad5`; bsc `0xa38ce8...6800ed` | ⚠️ Unaudited |
| WavesMintAdapter | unknown | project_anchor | own_supporting | 1 | polygon | unit-391003 | 2 deployments: polygon `0x274475...adc031`; polygon `0x882260...3c856a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390982 | `0x0de7b0...21ea83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390983 | `0x1985ca...e458d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390984 | `0x22b643...fb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390985 | `0x2a6619...ccb3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390986 | `0x30965e...1991f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390987 | `0x455185...abff65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390988 | `0x5d5abb...f65849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390989 | `0x5f951d...4c4c12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390990 | `0x7a924d...050c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390991 | `0x932481...dd0119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390992 | `0xa38ce8...6800ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390993 | `0xc7569a...84cfd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390994 | `0xcdefa7...bf87be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390995 | `0xd6ab78...56df9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390996 | `0xd7fee5...ac1d42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390997 | `0xeba6a7...93314a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390998 | `0xf13561...1d4f37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390999 | `0xf16320...ad9e03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390965 | `0x0aebf0...1370b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390966 | `0x22b643...fb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390967 | `0x274475...adc031` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390968 | `0x28c3ec...5dc2dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390969 | `0x2a6619...ccb3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390970 | `0x30965e...1991f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390971 | `0x455185...abff65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390972 | `0x4e6a3a...5272e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390973 | `0x5dcb74...309ad5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390974 | `0x5f951d...4c4c12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390975 | `0x7a924d...050c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390976 | `0x882260...3c856a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390977 | `0x8dc9ac...3c8a5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390978 | `0xa106a0...d649db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390979 | `0xa3079f...560fc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390980 | `0xcdefa7...bf87be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390981 | `0xf745ea...1101f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390927 | `0x02ae24...2659b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390928 | `0x060e90...5d44b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390929 | `0x09ec91...85e4dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390930 | `0x1fa5a7...712ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390931 | `0x2bf51f...159671` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390932 | `0x310c0e...c86ce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390933 | `0x34a0a7...246554` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390934 | `0x3d4c6f...14231a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390935 | `0x4356fc...983f38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390936 | `0x45fe75...1c6637` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390937 | `0x54f8cf...665ce6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390938 | `0x58609e...67bd4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390939 | `0x5a1b1b...d51e1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390940 | `0x5cbdfc...69a7f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390941 | `0x611538...af1f6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390942 | `0x61dc2a...b6848e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390943 | `0x733ccc...a3e8f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390944 | `0x7dc63d...f95efc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390945 | `0x8e4717...b95555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390946 | `0x9bccda...14d1a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390947 | `0x9e6eb7...4663ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390948 | `0x9f21bd...58069e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390949 | `0xa543df...b274ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390950 | `0xa58149...a062c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390951 | `0xa85985...59f420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390952 | `0xb41da3...13dc1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390953 | `0xb9b503...7e7335` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390954 | `0xc16ec9...0d69ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390955 | `0xc56fc9...0365cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390956 | `0xcfdc89...168761` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390957 | `0xe1afed...8e2bf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390958 | `0xe2ccff...19c4ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390959 | `0xf34c3f...2dd5ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390960 | `0xf6cdbe...c141fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390961 | `0xf8769f...2bf278` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xd6ab78...56df9d` | CoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0aebf0...1370b7` | CoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x882260...3c856a` | ExecutorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x274475...adc031` | ExecutorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd7fee5...ac1d42` | ExecutorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22b643...fb4fb8` | MintRootAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1bda12...003e14` | MintRootAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x28c3ec...5dc2dd` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x30965e...1991f1` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x22b643...fb4fb8` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2a6619...ccb3b0` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf57db8...f81e4a` | SafeERC20Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5f89d0...66e37c` | SafeERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8df127...e9367a` | SafeERC20BridgeWithPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc4e86c...d72970` | SafeERC20BridgeWithPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1905f4...d76cc6` | WavesCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x28c3ec...5dc2dd` | WavesCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5dcb74...309ad5` | WavesMintAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x274475...adc031` | WavesMintAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 96 |

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
