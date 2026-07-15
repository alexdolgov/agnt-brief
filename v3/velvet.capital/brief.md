# Agentic Audit Brief: Velvet.Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://velvet.capital/](https://velvet.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 307 unique implementations (464 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $12,514,618.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Velvet.Capital in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 307 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 70
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/62
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 307
- Raw deployments: 464
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetManagementConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x27a2ee...6b8e35`; ethereum `0x9b51c5...9eaf0c`; base `0x17e14a...02a09d`; base `0x9b6d2c...94d29d`; base `0xec7341...345c23` | ⚠️ Unaudited |
| DepositBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0be44b...bb1c4c`; ethereum `0x32c249...78e3b6`; ethereum `0xe6afac...4b9694`; ethereum `0xea9fd1...3c6bf1`; ethereum `0xf674e7...c08f59`; base `0x6e3e0f...e63e05`; base `0xa166de...1aeeb1`; base `0xef521a...2b6e16`; base `0xfe0861...031fe6` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1a7934...56a584`; ethereum `0x271caa...fe6f06`; ethereum `0x77814d...687653`; ethereum `0xbc1b87...865706`; ethereum `0xcdb6e3...6e6c7f`; ethereum `0xcffd5f...5dfc41`; ethereum `0xe12c59...7f71af`; ethereum `0xf908e0...c30094`; ethereum `0xff6221...e6ee7c`; base `0x61f18d...598448`; base `0x85d68c...d01ff1`; base `0xb2448b...6f0c4e`; base `0xe3f8d5...965739`; base `0xe4e231...f6e2ed` | ⚠️ Unaudited |
| EnsoHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x18439b...53e617`; ethereum `0x93601c...bc7dbf`; base `0x6ec2a3...3ab7f6`; base `0xa91029...1958f1`; base `0xb048e1...5d4890`; base `0xba13eb...fb1280`; base `0xc1d560...93e17c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb49892...d5378e`; ethereum `0xd5c3b4...5379b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00d4c9...5776b7`; base `0xd2a158...cfd8a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x085606...8711b8`; base `0x7503dc...05277c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09aa6b...9afe35`; base `0xe6b12d...1a22db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x09ce0a...9e5ae7`; base `0x386736...f6d285`; base `0x89c087...c6ce2e`; base `0x90dcd1...866f95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a678a...e2b63d`; base `0x6bec6a...07d131` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0a6c29...d321e3`; base `0x9b51c5...9eaf0c`; base `0xb0c31b...e25854` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | base | n/a | 5 deployments: base `0x0fe7c8...d13529`; base `0x19c6d3...80532c`; base `0x321c15...c3ac14`; base `0x56b697...2f3ca8`; base `0xce5838...1d92cb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x115110...c31b03`; base `0xab1a20...bdbfc9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x145efd...6d20ec`; base `0x1b902c...44346a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b0e95...379123`; base `0x638463...746a51` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 9 deployments: base `0x1d0f17...8cf0a1`; base `0x682200...cc5dab`; base `0x6952ad...762ae6`; base `0x6f7cdd...ca224d`; base `0x8176a9...efe17f`; base `0x8d3f1b...c03463`; base `0xc0a0f2...3854db`; base `0xc13246...5d95ed`; base `0xe45a01...af05d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x1fecf4...f7f142`; base `0x6decb1...5f7c8e`; base `0x9375ff...33dde7`; base `0xcf3be6...d7862d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21c652...25bd9f`; base `0xa019e0...523b62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | base | n/a | 7 deployments: base `0x2f692e...9eb079`; base `0x303e89...bb9144`; base `0x689c19...97a184`; base `0xb9c922...da8999`; base `0xbd3e97...4c15c4`; base `0xcfc13b...e42c0c`; base `0xd7b766...6ed91d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x364a15...b8516d`; base `0x6fe178...afc0c0`; base `0xf1acb5...2bfadf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b5d96...52edf4`; base `0xeecd5a...16c435` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dfb1d...aeff13`; base `0xe39fa9...8ab782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x440908...4b75fe`; base `0x99e5d0...31ecd1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x4c5727...00ef82`; base `0x60939a...1b2389`; base `0xd402f4...012810`; base `0xd48c15...2c4542` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x57de05...668c7b`; base `0xc5ef80...ed20b9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x68febc...5a8efc`; base `0x6e9036...e1dae5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7bdb91...7bb515`; base `0xe58545...4ca67d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x81d083...927d9d`; base `0x88b2bb...c98d86`; base `0xf908e0...c30094` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x856cec...eed75a`; base `0xf171ca...ac5962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x87ea5f...5434d5`; base `0xd6ef57...333acd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b71ee...3a6c2b`; base `0xb00d1c...b7ef1e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa2cb7e...8ef5f4`; base `0xff3d8e...e43736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0xa68901...270207`; base `0xd9a577...d59607`; base `0xe3df7e...bd8d3c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xadaf29...db7c6c`; base `0xb39762...78cde2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xcf77a6...e5ab16`; base `0xf31b95...9faca3` | ⚠️ Unaudited |
| FeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x9a090f...4e2994`; ethereum `0xa1718c...0f157f`; ethereum `0xfeb3eb...b7edc1`; base `0x01ff7a...d65fdc`; base `0x220d9a...44b288`; base `0x24492f...f2f410`; base `0x5ca995...cfdf93`; base `0x64238b...54f166`; base `0xc05d2e...062bd3`; base `0xc8b0d8...2d90e4` | ⚠️ Unaudited |
| MetaAggregatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9070c2...860e9b` | ⚠️ Unaudited |
| MetaAggregatorSwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa62128...5b5130` | ⚠️ Unaudited |
| Portfolio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x0a6c29...d321e3`; ethereum `0x6d07f7...08dd47`; base `0x05a8a7...c5f0e2`; base `0x1387b9...1352c2`; base `0x3475dd...d2e784`; base `0x4ec6a9...17c412`; base `0x8452b1...932483`; base `0x885858...b13c26`; base `0xa2fd80...841ae3`; base `0xcbea61...2f0509`; base `0xceb021...0e25c8`; base `0xe22e87...724b75` | ⚠️ Unaudited |
| PortfolioCalculations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x24f348...4fa6ee`; base `0x18d039...2a1e07`; base `0x62b2e3...359adc`; base `0x67e91a...36ac03`; base `0xd236b6...cd9c36` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d135e...235a86`; ethereum `0xeadd9e...a081c2` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7c530c...47738b`; ethereum `0xee0420...a8faee` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22d44e...101082`; base `0xadf04f...c8a0e5` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5fef75...c1b16d`; base `0xb79935...6de448` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x850fff...1710ca`; base `0xf93659...282a7f` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa1b576...34039a`; base `0xdb4dfa...2ef951` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x326a99...a969c1`; ethereum `0x6fe178...afc0c0` | ⚠️ Unaudited |
| PriceOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x608e93...cf967e`; base `0xea600d...8fd7b6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x44b8ce...f9792b`; ethereum `0x819c0d...45b021` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x758005...f2996d`; ethereum `0x85c326...d3265b` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0490a4...63a5d2`; base `0x6de977...33bf51`; base `0xfc0c1e...61f3a6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0xa88583...463211`; base `0xde3e99...a5782e`; base `0xe74d7f...1162d8` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xde057a...504f99`; base `0xefc7e2...55e118` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8367ca...d148fa` | ⚠️ Unaudited |
| Rebalancing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xbb44fe...7da239`; base `0x0191bd...7761ed`; base `0x0827cf...6ccbe0`; base `0x77b4c4...497644`; base `0x8b33dc...b19365` | ⚠️ Unaudited |
| RebalancingNew | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49457b...e9e696` | ⚠️ Unaudited |
| TokenExclusionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xcf77a6...e5ab16`; ethereum `0xea6621...31e1fe`; base `0x2069b3...5cba9b`; base `0x4f6998...d12ca7`; base `0xaa4585...7e4747`; base `0xb9e424...4a4565` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4da07a...df2e92` | ⚠️ Unaudited |
| VelvetToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b1943...8c1488` | ⚠️ Unaudited |
| veVelvet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0e4a34...9bbc41`; base `0xf807db...480c64` | ⚠️ Unaudited |
| WithdrawBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1fb1b6...382644`; ethereum `0xa45bb9...ab2fb9`; ethereum `0xce5838...1d92cb`; base `0x56e9f1...1b6f50`; base `0x61a3ad...8802ab`; base `0x64f6b8...85a507`; base `0x73ce0b...8bab5d`; base `0x7c0bf2...e1af58`; base `0xa4fb54...398d5a`; base `0xaead7d...cfe177`; base `0xb6bf44...d710cf`; base `0xe38d68...3ba86c` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x0fe7c8...d13529`; ethereum `0x2fb0f1...3b2638`; base `0x0ea4c2...03ba44`; base `0x25abf6...a4cf0a`; base `0x2ebd37...bb7640`; base `0x4643c0...57eeff`; base `0x71e99c...b97639`; base `0x99e9c4...3aedab`; base `0xa9452e...611e59`; base `0xac64c5...3e47df`; base `0xe4057c...03d41a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345eb2...06c6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b761...7209ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67bfb9...b88e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5916...f44715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779f30...5299fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86912a...60b6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a89b...c78a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa019e0...523b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08c55...1c27dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c31b...e25854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63515...46b4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe362f0...07118c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1acb5...2bfadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31b95...9faca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x009e59...d1eecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x019c0a...0069db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02a2d2...69fadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0658ed...b7184c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x073fb1...5ac2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07420a...c3bf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0860b1...301cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c716...d929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c79e...75b77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a1224...58c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aa8a6...d07c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b7e0e...2323c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b9706...994feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bdbff...36f4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0be44b...bb1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d238f...f860d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d6f1c...d69cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ea488...1b9206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x104304...3a82de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1099d9...301441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x132aee...80ac60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13c4ca...068409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x179dc6...cbce0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a7934...56a584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b4198...1659c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c25ae...a903f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1de930...4909fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ded33...97d89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fb1b6...382644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x229d97...22471d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24721b...9c2e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24874d...46fc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27a2ee...6b8e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27b591...b189d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x280798...d9052e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x281809...c3620a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x285a96...5c580e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29e824...ff4bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a0ad6...035fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e8d0b...82dabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f3edb...4c5fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fb0f1...3b2638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3016e5...23a5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326a99...a969c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32f8ad...d94a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36568b...806355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x378e88...21d7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37a9d1...e09ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37cbb5...21f10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39f910...60cc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a62a7...1e82be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ad87f...15076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b5453...81d8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bb407...4857a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bde64...df775f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e2b2f...2b9087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fad68...18031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x411740...2d465e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4160dc...f8590e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43636f...bbb008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44b8ce...f9792b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x475d3e...4c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49bbf8...57b96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c4d52...33595d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x505a11...9bd856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51afe0...1a5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52795a...8253f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52f0a3...8a55df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5346ae...dd528b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5364ab...44d371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x545138...379108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x567387...bc0268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57cf10...3f8bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d3c6...4c51f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58d4ef...a2b954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59036d...e13d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x597f87...2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5abf9b...2c45d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cf627...842d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e3d30...92c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x608ed5...5fb1b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a933...93f0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60d60e...684af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61f8a7...52a1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62677a...8d798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x655a35...64d0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65844d...0697ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x666ae3...9e7649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b677b...2b9f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bc745...445b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bea9d...5076cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d135e...235a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d2732...f30f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fc164...56597e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70f6bb...3e770d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71611c...a1772b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71e833...be1b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72cd09...7949fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72de32...3b1bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x731960...720e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x754c21...5028e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75d368...a4d883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76d37c...0937ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77184c...f428c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7781e1...ea0896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78c2d2...8dbe69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79935d...67f705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d82aa...38b571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa126...937ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fca43...b0fe51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x801e34...02dd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x819c0d...45b021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82460e...6cf03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x831c23...057c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x831deb...c55258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86023b...f390a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x866f93...eeb63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86e3c1...a55ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e5cb...630f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8aafca...fe16b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bb7c1...60a8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8eca06...5dc807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fe805...3065ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91b09b...30ace4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91bdeb...c6074b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x926417...c2e495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x933ef0...c3bd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x956065...999d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96443e...7b0c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x971135...dc06d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x972c16...a7aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x986158...e14537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99bed4...d0a77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99d571...17a877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99e8be...d1e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aa255...150a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d99ce...a6634f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f4665...44645e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fbe69...0295f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1718c...0f157f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4d98e...65a82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa55444...a8221c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa665d0...6b65ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa72edc...7612ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa952e2...ed1117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac25ef...82f10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac31b1...7852e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xadc361...442622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae920e...581302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb48817...4f6141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7bfb6...4da770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb812d8...b562f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb81d58...08a5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8d4a5...56679e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8f645...fd8314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbada99...97c04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb11dc...ff82a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb3e62...5e9b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb44fe...7da239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc1b20...0c8683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbca067...de708c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdc5e6...611b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbddd03...074d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe0d46...428713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe4dbb...a2a661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0f736...f8a810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc114df...46fffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3c552...119053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6e5a6...5bd43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc806af...0b94e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc820b9...bae5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc95092...7ba5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9b901...34638f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca2bde...1d9fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca2ee3...a8719c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca4f15...17433f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca77b5...10218a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb22f1...a90f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbfad1...0dd3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc988c...6b0d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd4530...f8dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce5738...c4d650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6fd3...4016e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf3b29...798527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf734d...218b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfd36b...9280ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd06b00...201ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd22dfc...11b106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd512ef...4cb555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5c3b4...5379b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd782f8...929b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7cc12...b8bccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8c21e...569b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd99432...6eead5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb81c9...a858a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc12c6...226e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdccca6...18b76f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcf19c...24818f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcfb46...f46d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd5aa7...d053b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde5312...3998b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1dd2b...00d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3547a...3731cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3727b...be3de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe52a75...badd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5fee9...1a23f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6afac...4b9694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7f5ef...c7ca5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea6621...31e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea9fd1...3c6bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeadd9e...a081c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeea887...ff9ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf54e77...08e314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf61c11...9152de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf64585...288c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf68261...db3362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6bb94...ab214c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf81516...bb90e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf97456...7205d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a280...57e86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcbceb...c28f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcc409...1e4b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd5742...3c3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff6221...e6ee7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffa059...f7e5d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Velvet_Capital_Security_Audit_Report.pdf](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [report-cantinacode-velvet-0807 (2).pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807%20(2).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3072] Audit_Report_VLVT-V3C_FINAL_20-1.pdf — no match: No reason recorded
- [3073] Audit_Report_VLVT-V3C_FINAL_20.pdf — no match: No reason recorded
- [3074] PeckShield-Audit-Report-Velvet-v1.0_final.pdf — no match: No explicit scope table; contracts inferred from findings targets and code snippets.
- [3075] PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf — no match: Extracted contract names from findings and scope table. Audit date from cover page and table.
- [3076] PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf — no match: Extracted contract names from findings targets and scope table. Audit date from cover page and table.
- [3077] Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf — no match: No reason recorded
- [3078] Velvet_Capital - Final Report-1.pdf — no match: Extracted 10 contracts from the scope tables on page 2 (initial audit) and page 2 (re-audit). Audit date from cover page: August 26th, 2022 - September 12th, 2022, using end date.
- [3079] Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf — no match: Extracted contract names from scope files section (pages 56-57) and from findings that reference specific contracts. Audit date from cover page: Nov 23rd, 2023 - Nov 29th, 2023, using end date.
- [3080] Velvet_Capital_V2_Security_Audit_Report.pdf — no match: Extracted contract names from scope files section (pages 110-114) and affected files in findings. Audit date from cover page: July 17th, 2023 - August 7th, 2023, using end date.
- [3081] report-cantinacode-velvet-0807-1.pdf — no match: Only one contract in scope: veVelvet.sol. Audit date from cover page: July 9, 2025.
- [3082] report.md — no match: No reason recorded
- [3083] PeckShield-Audit-Report-Velvet-v1.0.pdf — no match: No explicit scope table; contracts inferred from findings targets and code snippets.
- [3084] Velvet_Capital_Security_Audit_Report.pdf — no match: Scope section lists 10 contracts with file paths and MD5 hashes. Audit date is the end date of the audit period: September 12, 2022.
- [15252] report-cantinacode-velvet-0807 (2).pdf — no match: Only one contract in scope: veVelvet.sol. Audit date from cover page: July 11, 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | AccessController | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | Portfolio | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | AccessController | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | Portfolio | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | VaultManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | Adapter | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | PriceOracle | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | AccessController | unmatched — not counted | — | Mentioned in finding PVE-005 as containing privileged functions | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexSwap | unmatched — not counted | — | Listed in findings PVE-001, PVE-003, and scope table | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexSwapLibrary | unmatched — not counted | — | Listed in finding PVE-001 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | SlippageControl | unmatched — not counted | — | Listed in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | AlpacaHandler | unmatched — not counted | — | Listed in finding PVE-004 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | BeefyHandler | unmatched — not counted | — | Listed in finding PVE-005 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | BeefyLPHandler | unmatched — not counted | — | Listed in finding PVE-006 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ApproveControl | unmatched — not counted | — | Listed in finding PVE-007 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | PriceOracle | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexFactory | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | Rebalancing | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | OneInchHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ZeroExHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ParaswapHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | WombatHandler | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ExternalSwapHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as parent contract | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | VaultManager | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionMangers | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstract | unmatched — not counted | — | Mentioned in finding PVE-002 and PVE-005 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstractUniswap | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstractAlgebra | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PortfolioFactory | unmatched — not counted | — | Target in finding PVE-009 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | FeeManagement | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | SwapVerificationLibrary | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | FeeCalculations | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | BorrowManager | unmatched — not counted | — | Target in finding PVE-007 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | VenusAssetHandler | unmatched — not counted | — | Target in finding PVE-008 | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessController | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessRoles | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AssetManagementConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AssetManagerCheck | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | CooldownManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Dependencies | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | DepositBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | DepositManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ErrorLibrary | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeEvents | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | GnosisDeployer | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAccessController | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAllowanceTransfer | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAssetManagementConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IDepositBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IEIP712 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IFeeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IGnosisSafe | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IIntentHandler | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IMultiSend | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPortfolio | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPortfolioFactory | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPriceOracle | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IProtocolConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IRebalancing | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ITokenExclusionManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ITokenRemovalVault | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IUniswapV2Router02 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IVelvetSafeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IWithdrawBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | MathUtils | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | OwnableCheck | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Portfolio | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioFactory | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioToken | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracleAbstract | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracleL2 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | RebalancingConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | SolverManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TargetWhitelisting | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenBalanceLibrary | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenRemovalVault | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenWhitelistManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | UserManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | UserWhitelistManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VelvetSafeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | WithdrawBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | WithdrawManager | unmatched — not counted | — | — | no |
| Velvet_Capital - Final Report-1.pdf | IndexFactory | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | TokenMetadata | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | VelvetSafeModule | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Rebalancing | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Adapter | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | IndexSwap | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | IndexSwapLibrary | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | AccessController | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | PriceOracle | unmatched — not counted | — | listed in scope files (Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | PriceOracleL2 | unmatched — not counted | — | listed in scope files (Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | HopHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BebopHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | KyberSwapHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | CompoundV3Handler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BeefyBridgeHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | AaveV3Handler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BeefyYieldHandler | unmatched — not counted | — | mentioned in finding SHB.2 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | VenusHandler | unmatched — not counted | — | mentioned in finding SHB.2 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | WombatHandler | unmatched — not counted | — | mentioned in findings SHB.2 and BP.6 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | OneInchHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | ParaswapHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | ZeroExHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | SushiSwapLPHandler | unmatched — not counted | — | mentioned in best practice BP.5 | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | AbstractLPHandler | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | OffChainIndexSwap | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | Exchange | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | FeeLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ApeSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | BiSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PancakeSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PriceOracle | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexSwap | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexSwapLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | VelvetSafeModule | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ExternalSlippageControl | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | SlippageControl | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PancakeSwapHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ZeroExHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexFactory | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | TokenRegistry | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | Rebalancing | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | RebalanceLibrary | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | AssetManagerConfig | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | OneInchHandler | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ParaswapHandler | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | CommonReentrancyGuard | unmatched — not counted | — | mentioned in fix for SHB.24 | no |
| report-cantinacode-velvet-0807-1.pdf | veVelvet | unmatched — not counted | — | Scope section: 'the scope if the review was limited to veVelvet.sol' | no |
| report.md | DepositBatch | unmatched — not counted | — | — | no |
| report.md | EnsoHandler | unmatched — not counted | — | — | no |
| report.md | PortfolioFactory | unmatched — not counted | — | — | no |
| report.md | Rebalancing | unmatched — not counted | — | — | no |
| report.md | TokenExclusionManager | unmatched — not counted | — | — | no |
| report.md | TokenWhitelistManagement | unmatched — not counted | — | — | no |
| report.md | VaultManager | unmatched — not counted | — | — | no |
| report.md | WithdrawBatch | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | Adapter | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | PriceOracle | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | AccessController | unmatched — not counted | — | Mentioned in finding PVE-005 as containing privileged operations | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexFactory | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | TokenMetadata | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | VelvetSafeModule | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Rebalancing | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Adapter | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexSwap | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexSwapLibrary | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | AccessController | unmatched — not counted | — | listed in scope table | no |
| report-cantinacode-velvet-0807 (2).pdf | veVelvet | unmatched — not counted | — | Scope section: 'the scope if the review was limited to veVelvet.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 259 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 217 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=2
- Match method counts: n/a

Zero-match audit list:

- [3072] Audit_Report_VLVT-V3C_FINAL_20-1.pdf
- [3073] Audit_Report_VLVT-V3C_FINAL_20.pdf
- [3074] PeckShield-Audit-Report-Velvet-v1.0_final.pdf
- [3075] PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf
- [3076] PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf
- [3077] Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf
- [3078] Velvet_Capital - Final Report-1.pdf
- [3079] Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf
- [3080] Velvet_Capital_V2_Security_Audit_Report.pdf
- [3081] report-cantinacode-velvet-0807-1.pdf
- [3082] report.md
- [3083] PeckShield-Audit-Report-Velvet-v1.0.pdf
- [3084] Velvet_Capital_Security_Audit_Report.pdf
- [15252] report-cantinacode-velvet-0807 (2).pdf

Fork inheritance lineage and inherited audits are included when available.
