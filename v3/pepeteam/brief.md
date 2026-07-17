# Agentic Audit Brief: PepeTeam

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PepeTeam (`pepeteam`)
- Website: [https://pepe.team](https://pepe.team)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, bsc-testnet, ethereum, polygon, polygon-mumbai, sepolia
- Contract surface: 119 unique implementations (139 raw deployments)
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

- bridge CoinBridge (`0x882260324ad5a87bf5007904b4a8ef87023c856a`, chain 1)
- bridge CoinBridge_Implementation (`0x1bda1227875f0f8bb27625dd720f386b40003e14`, chain 1)
- bridge ERC20Bridge (`0x0de7b091a21bd439bdb2dfbb63146d9cea21ea83`, chain 1)
- bridge ERC20Bridge_Implementation (`0x9324819c5afb3b80c4dcd9207ee9e8bd67dd0119`, chain 1)
- bridge MintRootAdapter (`0x28c3ec13075801c96d109f815aee45303d5dc2dd`, chain 1)
- bridge MintRootAdapter_Implementation (`0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f`, chain 1)
- bridge Multisig (`0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0`, chain 1)
- bridge Multisig_Implementation (`0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12`, chain 1)
- bridge ReleaseRootAdapter (`0x6a1190eeda72b8965d6dbc17d283bf4245b90f7f`, chain 1)
- bridge ReleaseRootAdapter_Implementation (`0x6697ec1223c277b871377d5df0a9e84544c04bb0`, chain 1)
- bridge SafeERC20Bridge (`0x8bfac9422a23a53e32ec37c0fd16389fd03f739a`, chain 1)
- bridge WAVES (`0x0fb765ddbd4d26ac524aa5990b0643d0ab6ac2fe`, chain 1)
- bridge WAVES_Implementation (`0xf7bd899aa6a82ee6ce79c97f489a18bebe02fea5`, chain 1)
- bridge WavesMintAdapter (`0x1985ca0fd8d8ea5a114a7e5f22634e6bd8e458d7`, chain 1)
- bridge WavesMintAdapter_Implementation (`0xd7fee535f38055f71d1958a1a4219eafccac1d42`, chain 1)
- bridge WavesReleaseAdapter (`0x09d8444770adce8d61fb5c967b57287b70391118`, chain 1)
- bridge WavesReleaseAdapter_Implementation (`0xf7a5611cdac2b69174d4031988c0de0f0de2cc83`, chain 1)
- bridge WrappedERC20Bridge (`0xa3fb113e482f7b79109040aba7fc2ebc17c42e51`, chain 1)
- bridge WrappedERC20Bridge_Implementation (`0x5d1ecf1e8a8fdf7b1a8bc0e7073139a1f2013586`, chain 1)
- CIP Executor (`0xa106a0e6bdd7aad579c55b7a64956fe274d649db`, chain 1)
- CIP Executor_Implementation (`0x5dcb742d09ade3da6461024f91f53518bb309ad5`, chain 1)
- CIP ExecutorV3 (`0x3ffd8b918917727c6f226f4eb88e33e452802294`, chain 1)
- CIP Multisig (`0xcdefa74324e542769541420a7e9212c497bf87be`, chain 1)
- CIP Multisig_Implementation (`0x45518502658865c47854db53badbe8e335abff65`, chain 1)
- CIP WavesCaller (`0x30965e42101c81d147c5ba8fbf8ff244921991f1`, chain 1)
- CIP WavesCaller_Implementation (`0x7a924d1978d70561521abd02fd21e1e68d050c52`, chain 1)
- CoinBridge (`0xd6ab788159423fb1b0703ad997762e8fc856df9d`, chain 56)
- CoinBridge (`0x0aebf0543b572d65360d6fcbdf8a5298471370b7`, chain 137)
- EIP173Proxy (`0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8`, chain 56)
- EIP173Proxy (`0x274475ad34234c92c17808003672b7bc81adc031`, chain 56)
- EIP173Proxy (`0x5dcb742d09ade3da6461024f91f53518bb309ad5`, chain 56)
- EIP173Proxy (`0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12`, chain 56)
- EIP173Proxy (`0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f`, chain 56)
- EIP173Proxy (`0x8df12786ec0e34e60d4c52f9052ba4e536e9367a`, chain 56)
- EIP173Proxy (`0xd7fee535f38055f71d1958a1a4219eafccac1d42`, chain 56)
- EIP173Proxy (`0xf1632012f6679fcf464721433afaae9c11ad9e03`, chain 56)
- EIP173Proxy (`0x1bda1227875f0f8bb27625dd720f386b40003e14`, chain 137)
- EIP173Proxy (`0x274475ad34234c92c17808003672b7bc81adc031`, chain 137)
- EIP173Proxy (`0x28c3ec13075801c96d109f815aee45303d5dc2dd`, chain 137)
- EIP173Proxy (`0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0`, chain 137)
- EIP173Proxy (`0xa38ce8f596c81333692a739162ae7eda236800ed`, chain 137)
- EIP173Proxy (`0xea3cc73165748ad1ca76b4d1ba9ebc43fb399018`, chain 137)
- EIP173Proxy (`0xf57db884606a0ed589c06320d9004fbed4f81e4a`, chain 137)
- EIP173Proxy (`0xf745eab91a1359766efeca0e3d7b7610401101f0`, chain 137)
- ExecutorV2 (`0x882260324ad5a87bf5007904b4a8ef87023c856a`, chain 56)
- ExecutorV3 (`0x8bfac9422a23a53e32ec37c0fd16389fd03f739a`, chain 56)
- ExecutorV3 (`0xd7fee535f38055f71d1958a1a4219eafccac1d42`, chain 137)
- MintRootAdapter (`0xf745eab91a1359766efeca0e3d7b7610401101f0`, chain 56)
- MintRootAdapter (`0xa106a0e6bdd7aad579c55b7a64956fe274d649db`, chain 137)
- Multisig (`0x28c3ec13075801c96d109f815aee45303d5dc2dd`, chain 56)
- Multisig (`0x30965e42101c81d147c5ba8fbf8ff244921991f1`, chain 56)
- Multisig (`0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8`, chain 137)
- Multisig (`0x30965e42101c81d147c5ba8fbf8ff244921991f1`, chain 137)
- SafeERC20Bridge (`0xf57db884606a0ed589c06320d9004fbed4f81e4a`, chain 56)
- SafeERC20Bridge (`0x5f89d002e72a33b57d7e1c151aaae1216666e37c`, chain 137)
- SafeERC20BridgeWithPool (`0xfe72ac5e88a81dc651283142318394e80fb03723`, chain 56)
- SafeERC20BridgeWithPool (`0xc4e86cece4faa79e93df420d74ce909292d72970`, chain 137)
- WavesCaller (`0x1905f4c35ec2f8b9b1c24cae6f22c9642dd76cc6`, chain 56)
- WavesCaller (`0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f`, chain 137)
- WavesMintAdapter (`0xa38ce8f596c81333692a739162ae7eda236800ed`, chain 56)
- WavesMintAdapter (`0x882260324ad5a87bf5007904b4a8ef87023c856a`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/115 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/45 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 70 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 45 of 119 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 119
- Raw deployments: 139
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

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| bridge CoinBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390917 | `0x882260324ad5a87bf5007904b4a8ef87023c856a` | ⚠️ Unaudited |
| bridge CoinBridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390905 | `0x1bda1227875f0f8bb27625dd720f386b40003e14` | ⚠️ Unaudited |
| bridge ERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390902 | `0x0de7b091a21bd439bdb2dfbb63146d9cea21ea83` | ⚠️ Unaudited |
| bridge ERC20Bridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390920 | `0x9324819c5afb3b80c4dcd9207ee9e8bd67dd0119` | ⚠️ Unaudited |
| bridge MintRootAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390906 | `0x28c3ec13075801c96d109f815aee45303d5dc2dd` | ⚠️ Unaudited |
| bridge MintRootAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390919 | `0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f` | ⚠️ Unaudited |
| bridge Multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390907 | `0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0` | ⚠️ Unaudited |
| bridge Multisig_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390913 | `0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12` | ⚠️ Unaudited |
| bridge ReleaseRootAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390915 | `0x6a1190eeda72b8965d6dbc17d283bf4245b90f7f` | ⚠️ Unaudited |
| bridge ReleaseRootAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390914 | `0x6697ec1223c277b871377d5df0a9e84544c04bb0` | ⚠️ Unaudited |
| bridge SafeERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390918 | `0x8bfac9422a23a53e32ec37c0fd16389fd03f739a` | ⚠️ Unaudited |
| bridge WAVES | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390903 | `0x0fb765ddbd4d26ac524aa5990b0643d0ab6ac2fe` | ⚠️ Unaudited |
| bridge WAVES_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390926 | `0xf7bd899aa6a82ee6ce79c97f489a18bebe02fea5` | ⚠️ Unaudited |
| bridge WavesMintAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390904 | `0x1985ca0fd8d8ea5a114a7e5f22634e6bd8e458d7` | ⚠️ Unaudited |
| bridge WavesMintAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390924 | `0xd7fee535f38055f71d1958a1a4219eafccac1d42` | ⚠️ Unaudited |
| bridge WavesReleaseAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390901 | `0x09d8444770adce8d61fb5c967b57287b70391118` | ⚠️ Unaudited |
| bridge WavesReleaseAdapter_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390925 | `0xf7a5611cdac2b69174d4031988c0de0f0de2cc83` | ⚠️ Unaudited |
| bridge WrappedERC20Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390922 | `0xa3fb113e482f7b79109040aba7fc2ebc17c42e51` | ⚠️ Unaudited |
| bridge WrappedERC20Bridge_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390911 | `0x5d1ecf1e8a8fdf7b1a8bc0e7073139a1f2013586` | ⚠️ Unaudited |
| CIP Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390921 | `0xa106a0e6bdd7aad579c55b7a64956fe274d649db` | ⚠️ Unaudited |
| CIP Executor_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390912 | `0x5dcb742d09ade3da6461024f91f53518bb309ad5` | ⚠️ Unaudited |
| CIP ExecutorV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390909 | `0x3ffd8b918917727c6f226f4eb88e33e452802294` | ⚠️ Unaudited |
| CIP Multisig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390923 | `0xcdefa74324e542769541420a7e9212c497bf87be` | ⚠️ Unaudited |
| CIP Multisig_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390910 | `0x45518502658865c47854db53badbe8e335abff65` | ⚠️ Unaudited |
| CIP WavesCaller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390908 | `0x30965e42101c81d147c5ba8fbf8ff244921991f1` | ⚠️ Unaudited |
| CIP WavesCaller_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390916 | `0x7a924d1978d70561521abd02fd21e1e68d050c52` | ⚠️ Unaudited |
| CoinBridge | unknown | project_anchor | own_supporting | 1 | bsc | unit-391013 | 2 deployments: bsc `0xd6ab788159423fb1b0703ad997762e8fc856df9d`; bsc `0xf1632012f6679fcf464721433afaae9c11ad9e03` | ⚠️ Unaudited |
| CoinBridge | unknown | project_anchor | own_supporting | 1 | polygon | unit-391000 | 2 deployments: polygon `0x0aebf0543b572d65360d6fcbdf8a5298471370b7`; polygon `0xea3cc73165748ad1ca76b4d1ba9ebc43fb399018` | ⚠️ Unaudited |
| ExecutorV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-390963 | `0x882260324ad5a87bf5007904b4a8ef87023c856a` | ⚠️ Unaudited |
| ExecutorV3 | unknown | project_anchor | own_supporting | 1 | bsc | unit-391011 | 2 deployments: bsc `0x274475ad34234c92c17808003672b7bc81adc031`; bsc `0x8bfac9422a23a53e32ec37c0fd16389fd03f739a` | ⚠️ Unaudited |
| ExecutorV3 | unknown | project_anchor | own_supporting | 1 | polygon | unit-391007 | 2 deployments: polygon `0xd7fee535f38055f71d1958a1a4219eafccac1d42`; polygon `0xf745eab91a1359766efeca0e3d7b7610401101f0` | ⚠️ Unaudited |
| MintRootAdapter | unknown | project_anchor | own_supporting | 1 | bsc | unit-391014 | 2 deployments: bsc `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8`; bsc `0xf745eab91a1359766efeca0e3d7b7610401101f0` | ⚠️ Unaudited |
| MintRootAdapter | unknown | project_anchor | own_supporting | 1 | polygon | unit-391005 | 2 deployments: polygon `0x1bda1227875f0f8bb27625dd720f386b40003e14`; polygon `0xa106a0e6bdd7aad579c55b7a64956fe274d649db` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | bsc | unit-391009 | 2 deployments: bsc `0x28c3ec13075801c96d109f815aee45303d5dc2dd`; bsc `0xd7fee535f38055f71d1958a1a4219eafccac1d42` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | bsc | unit-391010 | 2 deployments: bsc `0x30965e42101c81d147c5ba8fbf8ff244921991f1`; bsc `0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12` | ⚠️ Unaudited |
| Multisig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d1ecf1e8a8fdf7b1a8bc0e7073139a1f2013586`; bsc `0x6ee7fd76871a797423ae513d95a860300affac9f` | ⚠️ Unaudited |
| Multisig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0331971963105bdd5932d9d7bddc33c0ad1e4e54`; polygon `0x7615c8456b613aded7075fcc3fc3353996d6ed42` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | polygon | unit-391001 | 2 deployments: polygon `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8`; polygon `0xa38ce8f596c81333692a739162ae7eda236800ed` | ⚠️ Unaudited |
| Multisig | unknown | project_anchor | own_supporting | 1 | polygon | unit-391002 | 2 deployments: polygon `0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0`; polygon `0x30965e42101c81d147c5ba8fbf8ff244921991f1` | ⚠️ Unaudited |
| SafeERC20Bridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-390964 | `0xf57db884606a0ed589c06320d9004fbed4f81e4a` | ⚠️ Unaudited |
| SafeERC20Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-390962 | `0x5f89d002e72a33b57d7e1c151aaae1216666e37c` | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-391015 | 2 deployments: bsc `0x8df12786ec0e34e60d4c52f9052ba4e536e9367a`; bsc `0xfe72ac5e88a81dc651283142318394e80fb03723` | ⚠️ Unaudited |
| SafeERC20BridgeWithPool | unknown | project_anchor | own_supporting | 1 | polygon | unit-391006 | 2 deployments: polygon `0xc4e86cece4faa79e93df420d74ce909292d72970`; polygon `0xf57db884606a0ed589c06320d9004fbed4f81e4a` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa3fb113e482f7b79109040aba7fc2ebc17c42e51`; bsc `0xe239b640aa534b1313012faff581c868f3207854` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xcb0c5e85ad943bd40320476d1cc95ceacc5a00cc`; polygon `0xea27b6337ce7462b791977b0180aca8fb2cabbbf` | ⚠️ Unaudited |
| WavesCaller | unknown | project_anchor | own_supporting | 1 | bsc | unit-391008 | 2 deployments: bsc `0x1905f4c35ec2f8b9b1c24cae6f22c9642dd76cc6`; bsc `0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f` | ⚠️ Unaudited |
| WavesCaller | unknown | project_anchor | own_supporting | 1 | polygon | unit-391004 | 2 deployments: polygon `0x28c3ec13075801c96d109f815aee45303d5dc2dd`; polygon `0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f` | ⚠️ Unaudited |
| WavesMintAdapter | unknown | project_anchor | own_supporting | 1 | bsc | unit-391012 | 2 deployments: bsc `0x5dcb742d09ade3da6461024f91f53518bb309ad5`; bsc `0xa38ce8f596c81333692a739162ae7eda236800ed` | ⚠️ Unaudited |
| WavesMintAdapter | unknown | project_anchor | own_supporting | 1 | polygon | unit-391003 | 2 deployments: polygon `0x274475ad34234c92c17808003672b7bc81adc031`; polygon `0x882260324ad5a87bf5007904b4a8ef87023c856a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390982 | `0x0de7b091a21bd439bdb2dfbb63146d9cea21ea83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390983 | `0x1985ca0fd8d8ea5a114a7e5f22634e6bd8e458d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390984 | `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390985 | `0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390986 | `0x30965e42101c81d147c5ba8fbf8ff244921991f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390987 | `0x45518502658865c47854db53badbe8e335abff65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390988 | `0x5d5abbafdc86694a38f346e0faa13f467cf65849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390989 | `0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390990 | `0x7a924d1978d70561521abd02fd21e1e68d050c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390991 | `0x9324819c5afb3b80c4dcd9207ee9e8bd67dd0119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390992 | `0xa38ce8f596c81333692a739162ae7eda236800ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390993 | `0xc7569ae6f99e6d0825bfed0d431b31bdc684cfd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390994 | `0xcdefa74324e542769541420a7e9212c497bf87be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390995 | `0xd6ab788159423fb1b0703ad997762e8fc856df9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390996 | `0xd7fee535f38055f71d1958a1a4219eafccac1d42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390997 | `0xeba6a7bcb4cbeed5dad36cb1c22c16f3d793314a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390998 | `0xf13561334f5fd381c7a0c1386f22daa59d1d4f37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-390999 | `0xf1632012f6679fcf464721433afaae9c11ad9e03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390965 | `0x0aebf0543b572d65360d6fcbdf8a5298471370b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390966 | `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390967 | `0x274475ad34234c92c17808003672b7bc81adc031` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390968 | `0x28c3ec13075801c96d109f815aee45303d5dc2dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390969 | `0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390970 | `0x30965e42101c81d147c5ba8fbf8ff244921991f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390971 | `0x45518502658865c47854db53badbe8e335abff65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390972 | `0x4e6a3a264e573e9f078f54631960404a935272e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390973 | `0x5dcb742d09ade3da6461024f91f53518bb309ad5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390974 | `0x5f951dbac2c510c9f1ed5778a4d023c7564c4c12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390975 | `0x7a924d1978d70561521abd02fd21e1e68d050c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390976 | `0x882260324ad5a87bf5007904b4a8ef87023c856a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390977 | `0x8dc9ac828303cc2cfa95e27be7d0cded453c8a5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390978 | `0xa106a0e6bdd7aad579c55b7a64956fe274d649db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390979 | `0xa3079f1266ab03b4725d3986e62e040ba6560fc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390980 | `0xcdefa74324e542769541420a7e9212c497bf87be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-390981 | `0xf745eab91a1359766efeca0e3d7b7610401101f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390927 | `0x02ae24f2f5e3b781b5b901d46250df630b2659b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390928 | `0x060e907c1b1a886122fda920561b187e005d44b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390929 | `0x09ec91c31506d756f54cbac0c7ceb6810385e4dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390930 | `0x1fa5a78a4771ae84ba68f48564bd356f52712ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390931 | `0x2bf51f353db6d8edb668d566bbe4295535159671` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390932 | `0x310c0ed5141a26eb3920045708e7b9493ac86ce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390933 | `0x34a0a70c78c6477a3c721828b7e220a6c3246554` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390934 | `0x3d4c6f189f81c9ea4aee003c1fd49be97614231a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390935 | `0x4356fc8912ee241464983c46e61a7069f8983f38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390936 | `0x45fe757b5fdccc591aac9aa915201f90811c6637` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390937 | `0x54f8cf6f37e288597b11761bb18ad63a14665ce6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390938 | `0x58609ea0c511de27c488f53820f5f5f2a067bd4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390939 | `0x5a1b1b5a91d999915142978be11810defdd51e1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390940 | `0x5cbdfcca17efc65d3c25d82725aa27922f69a7f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390941 | `0x611538ac4957c646fd06673b58d3116514af1f6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390942 | `0x61dc2a74d1f4cc5d829c72c8a09ba6f921b6848e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390943 | `0x733cccd7c28a4fdfe2dd81d228554226a6a3e8f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390944 | `0x7dc63d3ea175585e5aab7bb172f26b8babf95efc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390945 | `0x8e47177d7c4e968fae41ded3c57f1cc374b95555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390946 | `0x9bccda6145f809b72d6ee72e753c605ef514d1a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390947 | `0x9e6eb751cdb875ce3455702176bfab756d4663ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390948 | `0x9f21bdd5198a6c8779bf034810ab00c9d058069e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390949 | `0xa543df73b35dd83330a24ff969a55761beb274ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390950 | `0xa58149e1e44220bd762faf9ad4209eb2b2a062c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390951 | `0xa85985f8ce064c7e144ae7f3233849230659f420` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390952 | `0xb41da3c98999caf7672dae98bb3244b8bd13dc1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390953 | `0xb9b5032fddf760bbcf87a295e962d624237e7335` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390954 | `0xc16ec9f35d2d01929e44fa0cb1b09cc3870d69ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390955 | `0xc56fc90caa48c41e5b620771b853a4ff1d0365cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390956 | `0xcfdc89c0e46d2ba488d55aad78d63fc989168761` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390957 | `0xe1afed6a61a169638f3a895e0f0506a5218e2bf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390958 | `0xe2ccff1890ce5b59c96a7ef6954612b0e019c4ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390959 | `0xf34c3f3652aff0527880bb4c9f8b59ba852dd5ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390960 | `0xf6cdbe98775a65c91790d8d67974a35016c141fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-390961 | `0xf8769f79bfd49f266fb2419c243c08c4e82bf278` | ❓ Unverified |

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
| bsc | `0xd6ab788159423fb1b0703ad997762e8fc856df9d` | CoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0aebf0543b572d65360d6fcbdf8a5298471370b7` | CoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x882260324ad5a87bf5007904b4a8ef87023c856a` | ExecutorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x274475ad34234c92c17808003672b7bc81adc031` | ExecutorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd7fee535f38055f71d1958a1a4219eafccac1d42` | ExecutorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8` | MintRootAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1bda1227875f0f8bb27625dd720f386b40003e14` | MintRootAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x28c3ec13075801c96d109f815aee45303d5dc2dd` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x30965e42101c81d147c5ba8fbf8ff244921991f1` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x22b64323bee73a2f0f850c68a91e3fa820fb4fb8` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2a6619c2d388dbdfb473ebeb7e5b057283ccb3b0` | Multisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf57db884606a0ed589c06320d9004fbed4f81e4a` | SafeERC20Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5f89d002e72a33b57d7e1c151aaae1216666e37c` | SafeERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8df12786ec0e34e60d4c52f9052ba4e536e9367a` | SafeERC20BridgeWithPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc4e86cece4faa79e93df420d74ce909292d72970` | SafeERC20BridgeWithPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1905f4c35ec2f8b9b1c24cae6f22c9642dd76cc6` | WavesCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x28c3ec13075801c96d109f815aee45303d5dc2dd` | WavesCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5dcb742d09ade3da6461024f91f53518bb309ad5` | WavesMintAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x274475ad34234c92c17808003672b7bc81adc031` | WavesMintAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
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
