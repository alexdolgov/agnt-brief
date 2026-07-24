# Agentic Audit Brief: K2

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

- Project: K2 (`k2`)
- Website: [https://opengdp.network/](https://opengdp.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 40 unique implementations (60 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,494,251.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for K2 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 40
- Raw deployments: 60
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

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x14d25e9632a628a986343d8f603f64c464a9a837`; ethereum `0xf2c89960b6d63ec6c61df3ea8bafa0a02c26e8c9` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f197670fcf3d952be099d8559e80a3a1535e3ba`; ethereum `0x3f71b535c733096f303d5a495e410d3f90a3863d` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5b017695f9b516a90f81e268aef59b0d0d12bfd` | ⚠️ Unaudited |
| DelegationSupervisor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xafa904152e04abff56701223118be2832a4449e0`; ethereum `0xdd5e5ec73707d74210f380f5b9bb85868639b79e` | ⚠️ Unaudited |
| ERC1967Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x947804256c9c46967cc55bbbbf6c0e93923aff2c` | ⚠️ Unaudited |
| ERC20SlashingHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f1928ba030ea2b3aea49b71974db6221c7fb01` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x28a227d4faf0f4f75897438e24c43ef1cdabb920` | ⚠️ Unaudited |
| KarakNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x47c92a446596aff7480bca7bddb3230e6a97e09b`; ethereum `0x5f7645eeabc5eebbcca3783d96d130d03484a106` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a1c224107e0498229ddb68b1d8ecf3a980495a` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186324b6c0f0c0e7491a20d388ac60f569a320c8` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9bffa66a8fcaad7ac9ea7c7d4b9a6fc46777022d` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55d588941f90fb8a71fe1442acc2af6d5eee0f94`; ethereum `0x56e511652e7fb2e94fa3bae68ca6e4b492ea21f0` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x952851cecb07705a5bb483c1ce080f97e1e7491e` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba6637f01fc5f1ac76beca8fb2c3d3b2d501158` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba61f25dd9f2d5f02d01b1c2c1c5f0b14c4b48a3` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a23342520aa8ca963c4201801f4d3e95e731637` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66445a25dde81dcf22e4e0034635861d2a5e8425` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b0aea1b0889378af4caf0ed59df1d7b6a01c7a6`; ethereum `0xa415021bc5c4c3b5b989116dc35ae95d9c962c8d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf04a74899ff4c4410faf3b5faa29b8fd199c13db` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32a5a89ea2d0fc4128bb975ff63589090003c4fd`; ethereum `0x5cdaa3d6e6d2bc90277a2819a92102afd8352630` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeece9cd7abd1cc84d9dfc7493e7e68079e47ea73` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x77b9323c20059e27736b5e52188fe81ed0f87ecd`; ethereum `0xc5d81ca04acdb10e02e8fefa10e70cb634b042ea` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1612f868eba1cea65ee66bf4a7c75001b0d4065c`; ethereum `0x94cd27dc98a25c7ef4a7b629f0d93fb46693b4b0` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5438051c64388b91baf5d28706fa33d6ee3773b9` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x622333688cc1878c7ff4205c89bde051798788a7` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa996403458b385576c7e05a3a56fc06c90b3a418`; ethereum `0xd0f379520f2d0968f3e36ff2fcf84e88c3e5e830` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x275ac9c64ef372f528f7c87d3a987d1e3d76ca65`; ethereum `0x5cde0c574cfa04888f77dccaf2e53016617f5ef8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x01ba5212201a26c9a212f4261e49e7e0b5d61479`; ethereum `0x05cd2975232d5502c1a7ca503741cf0db67c948e`; ethereum `0x46c64c1630f320b890d765e7c6f901574924b0c7` | ⚠️ Unaudited |
| VaultSupervisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x210cafd20672ca2bd98ccd4b9ec52fbe1877292c`; ethereum `0x35024634a49ffd6de5caad0a0493f3e01cec49c2`; ethereum `0x54e44dbb92dba848ace27f44c0cb4268981ef1cc`; ethereum `0x7cc94305fb1d0b3cf9a3e7e1c77acb3454a39d0a`; ethereum `0xa1b8e30fdb28e2a1efaae0caa488a8ce1fac90e0`; ethereum `0xf29ef36046689a23193cb9d82bafd6a95ebee457`; ethereum `0xf3fafb319de5e4b8ed067011a45d1c3cd471a636` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xd1cd25597e79c2037f9bfc4b908b6184ef183a58) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1dbfb462df1c45ffba76227eb38e486b21a1a88e`; ethereum `0xd1cd25597e79c2037f9bfc4b908b6184ef183a58` | ❓ Unverified |
| Representative Karak v2 vault created by Core, pufETH collateral | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2aa9680910ac5a4527fa72001dc249943f60b4` | ❓ Unverified |
| Representative Karak v2 vault created by Core, sUSDe collateral | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a4b1acbfacc142da061f7b25fc7c9c86eb0dbca` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDC collateral | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d7e0a859d979997cb5a8f55f725b443d32a531` | ❓ Unverified |
| Representative Karak v2 vault created by Core, USDe collateral | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3735e3d7ffd4f1913bf893b8909f141591969378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d96203b38463bb6646dacc503fed8b9b2f78ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578e6103a8e2127b720cf91ff2dbc07a65776399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62201723470c96f9e76e24b6a7903aead277cd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80bd39f35bd64eb29f53990e6b9028df56313192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8827bb399ae88f357abdde3643db875436d6043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc49246c28dd5a0ff6fd8644814107eeb71bfea9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 48
- Live contracts: 0
- Unknown liveness contracts: 48
- Source-verified contracts: 39
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=23, contamination review=2, source verified unclassified=14, unverified unclassified=9

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | AddressManager<br>`0x14d25e9632a628a986343d8f603f64c464a9a837` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | AddressManager<br>`0xf2c89960b6d63ec6c61df3ea8bafa0a02c26e8c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Claim<br>`0x2f197670fcf3d952be099d8559e80a3a1535e3ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | KarakNFT<br>`0x47c92a446596aff7480bca7bddb3230e6a97e09b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0x19a1c224107e0498229ddb68b1d8ecf3a980495a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0x55d588941f90fb8a71fe1442acc2af6d5eee0f94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0x5cdaa3d6e6d2bc90277a2819a92102afd8352630` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0x622333688cc1878c7ff4205c89bde051798788a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0x952851cecb07705a5bb483c1ce080f97e1e7491e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0xa415021bc5c4c3b5b989116dc35ae95d9c962c8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0xa996403458b385576c7e05a3a56fc06c90b3a418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0xc5d81ca04acdb10e02e8fefa10e70cb634b042ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | Proxy<br>`0xf04a74899ff4c4410faf3b5faa29b8fd199c13db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | ProxyAdmin<br>`0x1612f868eba1cea65ee66bf4a7c75001b0d4065c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | ProxyAdmin<br>`0x94cd27dc98a25c7ef4a7b629f0d93fb46693b4b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x5438051c64388b91baf5d28706fa33d6ee3773b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x9bffa66a8fcaad7ac9ea7c7d4b9a6fc46777022d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0x210cafd20672ca2bd98ccd4b9ec52fbe1877292c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0x35024634a49ffd6de5caad0a0493f3e01cec49c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0x7cc94305fb1d0b3cf9a3e7e1c77acb3454a39d0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0xa1b8e30fdb28e2a1efaae0caa488a8ce1fac90e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0xf29ef36046689a23193cb9d82bafd6a95ebee457` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | candidate review | VaultSupervisor<br>`0xf3fafb319de5e4b8ed067011a45d1c3cd471a636` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | contamination review | L1CrossDomainMessenger<br>`0x186324b6c0f0c0e7491a20d388ac60f569a320c8` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | contamination review | L1StandardBridge<br>`0x0ba6637f01fc5f1ac76beca8fb2c3d3b2d501158` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | Core<br>`0xd5b017695f9b516a90f81e268aef59b0d0d12bfd` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | DelegationSupervisor<br>`0xdd5e5ec73707d74210f380f5b9bb85868639b79e` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | ERC1967Factory<br>`0x947804256c9c46967cc55bbbbf6c0e93923aff2c` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | ERC20SlashingHandler<br>`0x25f1928ba030ea2b3aea49b71974db6221c7fb01` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | L1ERC721Bridge<br>`0x56e511652e7fb2e94fa3bae68ca6e4b492ea21f0` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | L2OutputOracle<br>`0x66445a25dde81dcf22e4e0034635861d2a5e8425` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | OptimismMintableERC20Factory<br>`0x7b0aea1b0889378af4caf0ed59df1d7b6a01c7a6` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | OptimismPortal<br>`0x32a5a89ea2d0fc4128bb975ff63589090003c4fd` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | SystemConfig<br>`0xd0f379520f2d0968f3e36ff2fcf84e88c3e5e830` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | TimelockController<br>`0x275ac9c64ef372f528f7c87d3a987d1e3d76ca65` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | TimelockController<br>`0x5cde0c574cfa04888f77dccaf2e53016617f5ef8` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | Vault<br>`0x01ba5212201a26c9a212f4261e49e7e0b5d61479` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | Vault<br>`0x05cd2975232d5502c1a7ca503741cf0db67c948e` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | source verified unclassified | Vault<br>`0x46c64c1630f320b890d765e7c6f901574924b0c7` | non_address_book | unknown | unknown | verified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | 0xd1cd25597e79c2037f9bfc4b908b6184ef183a58<br>`0x1dbfb462df1c45ffba76227eb38e486b21a1a88e` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01d96203b38463bb6646dacc503fed8b9b2f78ce` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x578e6103a8e2127b720cf91ff2dbc07a65776399` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62201723470c96f9e76e24b6a7903aead277cd33` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77b9323c20059e27736b5e52188fe81ed0f87ecd` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80bd39f35bd64eb29f53990e6b9028df56313192` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8827bb399ae88f357abdde3643db875436d6043a` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc49246c28dd5a0ff6fd8644814107eeb71bfea9` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1cd25597e79c2037f9bfc4b908b6184ef183a58` | non_address_book | unknown | unknown | unverified | n/a | `0x169438698266b07fc76300ac6f09e0dc32181fd9` |

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
| native | 25 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 12 |

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
