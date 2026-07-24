# Agentic Audit Brief: Secured Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Secured Finance (`secured-finance`)
- Website: [https://secured.finance/](https://secured.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, ethereum, polygon-zkevm
- Contract surface: 121 unique implementations (221 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $589,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Secured Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum, polygon, polygon-zkevm. Structural roles: 6 core, 2 supporting, 1 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (5), abstract (3), unclassified (1)
- Detected standards: erc1967proxy (3), ownable (3), accesscontrol (2), erc165 (2), multicall (2), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7), chainlink (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x35e9d8e0223a75e51a67aa731127c91ea0779fe2`, chain 1)
- UnnamedContract (`0x581e463841bd2b30285929448e1a93d74708719f`, chain 1)
- UnnamedContract (`0x7dca6b6bf30cd28ade83e86e21e82e3f852bf2dc`, chain 1)
- GenesisValueVault (`0x43b7a3c78ada26eb2d3183da03795081a0dc5145`, chain 1)
- ProxyController (`0x1634d2104b48299da7d927c4582ea7ba67020ebb`, chain 1)
- ReserveFund (`0x8bd2e1ac0e990c1b610f4a491cc92364c6bda6fb`, chain 1)
- Strategy (`0x6f6046e59501e484152d46045ba5eecf1cab8935`, chain 1)
- TokenVault (`0x4675b1573c528c4d5b4fe60e647810e4cf3135d4`, chain 1)
- UpgradeabilityProxy (`0xa2700d5fedb13b86bba3228008c7a0d464a07f2b`, chain 1)
- UpgradeabilityProxy (`0xb74749b2213916b1da3b869e41c7c57f1db69393`, chain 1)
- UpgradeabilityProxy (`0xd2683e22331b9a6e9f38350d829dbeb64ad2778e`, chain 1)
- Yearn V3 Vault (`0x7a6e3635694952dc00f6ba4d4ad1a7b892028789`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 112 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 9 of 121 unique; 112 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/32
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 89
- Unique implementations: 121
- Raw deployments: 221
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 12.5% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GenesisValueVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254271 | 2 deployments: ethereum `0x43b7a3c78ada26eb2d3183da03795081a0dc5145`; ethereum `0xa2700d5fedb13b86bba3228008c7a0d464a07f2b` | ✅ Audited |
| ProxyController | governance | project_anchor | own_supporting | 0 | ethereum | unit-254259 | `0x1634d2104b48299da7d927c4582ea7ba67020ebb` | ✅ Audited |
| ReserveFund | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254273 | 2 deployments: ethereum `0x8bd2e1ac0e990c1b610f4a491cc92364c6bda6fb`; ethereum `0xd2683e22331b9a6e9f38350d829dbeb64ad2778e` | ✅ Audited |
| TokenVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254272 | 2 deployments: ethereum `0x4675b1573c528c4d5b4fe60e647810e4cf3135d4`; ethereum `0xb74749b2213916b1da3b869e41c7c57f1db69393` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fc649b763a685e2f22fa248cebf6b2b70f53f1f`; ethereum `0xa3719bd2146c6bb00f24164168d01469ee368e4a` | ⚠️ Unaudited |
| BeaconProxyController | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3dd09bf57fa2128af8802b177677fccbb73be313`; ethereum `0x8a44ed77eda02c03697052bb0f253aebd4c4c897`; ethereum `0x93dabbe49c0b296397909ac75489ef2cc91cf632`; ethereum `0xad6861866b40afd2e223befca9d6a6ef35a2851b`; ethereum `0xbfa7e7c3b88021c1e768a1e92b29c0545a286211` | ⚠️ Unaudited |
| CurrencyController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd024f3d33f9dbd131ffe2eff2a920e9a7f62a18b`; ethereum `0xfc8c59903b064a4abf013ae2757f570f2e007439` | ⚠️ Unaudited |
| DepositManagementLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1fa5d5a4df29c09825b63b9a653a74a1b80bef95`; ethereum `0x3dc65bc999c418d63c94ec98b98258a323530bf3`; ethereum `0x6afe009f060f5fee5691362bb988a99c9cb86ed4`; ethereum `0xd60551dc2e7d13fce88aca2c63e6b63be3fd9765`; ethereum `0xe825f98aa16490646cf82857b8a30744577eba89` | ⚠️ Unaudited |
| FundManagementLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3482cfcd46d580260eb85d173b3856273a8bb820`; ethereum `0x449d3a2d7a5e9e8e90c0b7d5b1298c14b707cf94`; ethereum `0x4beabc7e235dd893dfb44216ef9a68e66272a3c8`; ethereum `0xd4e37bd9e8b95a883158375a5ad6b3a9bf824223`; ethereum `0xf4f4965a5759bd4fc6eda27334398f25639ee2f0` | ⚠️ Unaudited |
| FutureValueVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01fa284e47403a47ec6c836b41db33a849a437fe`; ethereum `0x077ea473f9d2bfc68bc49f5bfbf1483420a63879`; ethereum `0x68eb5ca78beb3e74d32ecb392854c5b213da97ce`; ethereum `0xc860e52f999dd8539ef554118a35ebdf6b344816`; ethereum `0xe05e26875e0912dfab3418027dd7d0b0edc0a1f6` | ⚠️ Unaudited |
| GenesisValueVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0bbe246f63dedc7b2e0245d72619b4c7c13e7da0`; ethereum `0x224f4384f0c5834a82c13d0e168219424f2060b4`; ethereum `0x24c8c66af0f3eede25d0be264c4b2657eab19da4`; ethereum `0xaed8d7bd7035e46c222793983cb998f3705fd92d`; ethereum `0xf49cc5e0e1b15c913a7ed8de60afbf3c47cd3e9d`; ethereum `0xfe622577e607946330d99aefb0ae34b4ce58bb1a` | ⚠️ Unaudited |
| LendingMarket | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x39fce9528d756f7fa43058c6c6fe862f09efac9e`; ethereum `0x5a32079a5bfc4e5e6da8e7369e9daf1a2c777030`; ethereum `0x819cc14d52c97d778a43c1e4d509d67a9b46b52d`; ethereum `0x9271604178b08dc1f19d8195494a017b2629dd1d`; ethereum `0xacc7f418157e3f534fe0e30b630d9da0f4624d97`; ethereum `0xbc542b1f3b1e1e69306a7baeb1c59ff7b8a16819`; ethereum `0xd06dd40ba7c2cff3a6aa2f59c55d249aca57e521` | ⚠️ Unaudited |
| LendingMarketController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1237b5c92a8e7025046de64be79326f3bb6b61e7`; ethereum `0x60ccbf7e864df8c7223216baca4149a8190e5fc7`; ethereum `0x6caf9839e556816e336db8e3a82f3c780761e873`; ethereum `0x79b9bf7ffb20976698bb78228b5851e701a51b8f`; ethereum `0xd0ae7b08cefee9eda4f8635ebe87ab6f8cf0214c`; ethereum `0xf5087523404398ee0d90750b1093639f78b5f6ec` | ⚠️ Unaudited |
| LendingMarketOperationLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c9579874a3bd0088b85faa520e88ea0677e2f22`; ethereum `0x293c4eccc213bbcbc42d6de88e02b21a3a512810`; ethereum `0x3a2a5ac34cbba8db4efe8a9a5c13efc57171fb8b`; ethereum `0xa4c30de289fb8f1c37ac7b9b6c86de40ce1b8f30`; ethereum `0xe4f5c6ecfb7697d925bad40daa566aa58aa9582a` | ⚠️ Unaudited |
| LendingMarketUserLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x37808387929c4ca07cd01929aeb142e2ddb32efc`; ethereum `0x3efcfc72a23d1b8995de82211c57a37df8b679a2`; ethereum `0xc521f8c85513aa6b28f5347954bff91fffac614b`; ethereum `0xc66399ff5892397b80e72fdbc24ba0c6ecfcd081`; ethereum `0xc901ede1f752bcb51263158cd80b816e4be4b67b` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0722e0a2482df780b6d833b78c4576f0321a20c3`; ethereum `0x0e19131fe07758fbd658fe51951b4ddabcaa2b34`; ethereum `0x11ec43174b2efeefbf461610868d08fb2deba1d9`; ethereum `0xb5b2367a2d6f6069f1e458467141a89751cb9fb9`; ethereum `0xf64ebc09fe9a6fbe305a6f23ed6e9ac3ad8b406a`; ethereum `0xf90ef8acb9aa90c67ecb3c844e35af8b5b405093` | ⚠️ Unaudited |
| MigrationAddressResolver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5a074d18c00c07f7f7bc13e89919bfb00236cb59`; ethereum `0xcfec1a62ca606e6692ec1ce8221a39ef85e2f885`; ethereum `0xdda594ea14d2244b533880d7444280753a943d2c`; ethereum `0xde683af8d5fa1043bfd99203c9b5615550e9bf53`; ethereum `0xefdd05e6ff5ff4c1282a3c8073b81207899b97a5`; ethereum `0xf5332790c68e07943f7c787b15d409360aba753c` | ⚠️ Unaudited |
| OrderActionLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2feb574b70d1e5cd44ad05733648f65889faa1ef`; ethereum `0x41eb72013fd9b65fb9b9bbfa36894ca3a630750b`; ethereum `0x54a3f4ef9854c43926563348508d1e9c0f1d7926`; ethereum `0x867f878675320823e8d2d1da7efed29c3796ab8a`; ethereum `0xb9e1aff156937ecb0b4d1b8e1e34419c33e9dc79`; ethereum `0xefabd8e64ef2f8830b2c9de863391d3989413c8c` | ⚠️ Unaudited |
| OrderBookLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x05e71dc39c3de40e017d166e605b97451e7f21b5`; ethereum `0xc587006c5bf078790b6a9f6d377e05967489103a`; ethereum `0xef430f8296a63aabc0df51c1ca17da622c185120` | ⚠️ Unaudited |
| OrderReaderLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b063c48362d01c3ea8134615035d4aa6211dbfe`; ethereum `0x21ee63365fdd27fb4f092eee684992935f91b33d`; ethereum `0x64a055f8140a1a3dcdac545ebaf9f1b8d5654e90`; ethereum `0xacd8f57119106a97fcf09d8b0024b358cec30941` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e671b3c70b9549ca87c6c9dc57a9823a831b67` | ⚠️ Unaudited |
| ProxyController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5615074bcd7ea63f10f961064f9ebb8af61fa960` | ⚠️ Unaudited |
| QuickSort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac98b3afa0b59b8d770e29d5bf1f7cd623b817fc` | ⚠️ Unaudited |
| ReserveFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5f4ca7e45ef6f74c82cb96f968c280bc5573379e`; ethereum `0x6518f218b66783c522d222dbbca4b8f89571cbdc`; ethereum `0xb4c8522c141818a334fa83061182d4ab19fd01ad`; ethereum `0xc360e1dc11ddf2a320bd4cb99ba99505fe06c52a`; ethereum `0xfcb48a904befc6ed35e8cd08e9355b31b1d55d4e` | ⚠️ Unaudited |
| StaticPriceAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x1bb66b0625a52abf12065ef596ec2adb76abe10d`; ethereum `0x3179d2a6e92c5a3f830ff88107ab53902f761b84`; ethereum `0x354662817ceef04e56d8c7a6c9f1289929e4dc04`; ethereum `0x3794230a72430fcc0a7030205a8df648b0106848`; ethereum `0x40786c8603ff448888bd34289e7025006bf6b08c`; ethereum `0x40bb4f27d886a0ca314f99f0968f83068b22a349`; ethereum `0x4ce6bde651f5771e3241ca586109e3c2645e5eae`; ethereum `0x4cfb76875e63306b7179bd10655c68139324be09`; ethereum `0x51dfbe45de29e3a5b332bb8ab8c46f912b0a51b7`; ethereum `0x6221b6b3c0fe45184258d8df55924b31db6cf19c`; ethereum `0x72f5504c965178e84b8501d0b148fb3897e09331`; ethereum `0x732bad54734203deabe371e9172a330423c01262`; ethereum `0x7fd3cc946cc5a538a83de69fe5c22285f206d034`; ethereum `0x813dd1713b13bfe476b3fbccca3bbb77aede74ee`; ethereum `0xd0fdb0518c63f7b05766ebc62724e4da2a587b37`; ethereum `0xd778d1673c160f3ec4113ed8a956ea30d14df7ef`; ethereum `0xe8e0c16a365fd57a5f1c5f60549edcac3e91a4eb`; ethereum `0xf153592b3318106cea47dbe14a7e64524dabf288`; ethereum `0xf15b2aaa1a662b3d28c33c69f668c920cde616c1` | ⚠️ Unaudited |
| TokenFaucet | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x59d58018ea583b965bfcf8f098344ee60bd846c1`; ethereum `0x675d433e524fa429feb9c7d2bde659c271774dfa`; ethereum `0xb92ac525e5029961f7383449f4f1f6cf4cd7cb26`; ethereum `0xed39083b1438d3d2f1d157bce37dacfafc1e6f70` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254274 | `0x6f6046e59501e484152d46045ba5eecf1cab8935` | ⚠️ Unaudited |
| TokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1852726f6bd3c4657156d529cde023d273a84e44`; ethereum `0x4aed62cf9db90c13a354dd97b3fd2b63821f649d`; ethereum `0x6eadccc5b3afb7bb1d830a7fef096ed058f3f25f`; ethereum `0x83c785e4ad5458cd62a32d005b352c2adf1408bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b6fff70b2273b565c7012c9e7da7a55e2bf7158`; ethereum `0xed890f3e6bd82539f15ac7c56d2486d40c6863c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xafc8cf94f8e43e874a1f9a3e19b112305f38c4a7`; ethereum `0xff3b44a01fa81d965b217940780ead20998c038d` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-254262 | `0x7a6e3635694952dc00f6ba4d4ad1a7b892028789` | ⚠️ Unaudited |
| ZCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d820274f7d98bef0b5dd78411d63ddd868b1e9a`; ethereum `0x6bb750f0bde11a5dc3baa11c363235d55011ef37`; ethereum `0x7a1932c859354d12c3d4ada1b9cabe3b44e7b3c8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (89)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f2de40683c598f8006fb86ae68d75733ceeb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d2b980f48a212309eebe6be2277b15f84b46cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050c739c6e27fc38ac1321bab41e5b89e56cbc6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08cdef1c1a311ff6a4a4fb27cdc33b77866c51cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095117fe38fa3aed4b8ba95025e71260e66c942f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d39ef937d2bacea8741fa84a56ec98fa903645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10651cc353f5e83b31e84c60a5ed59c30dedc995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a8a72d18f1ab405438cc9444715336790bc59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x151a9c4f0c091e54bfb7b876b57d2071023cea32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159a1fa986ec2fc2b57acdaa2d43439c51bee89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f0822d94d6b9f8a061326b7bd6430e08951cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d812dedcc8316615dc98b60cc4b8acb84da42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b4e56705cfdc45f78ae4b281dfbbcdc0b574d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28eb84a47a059ad831ad6958a3f721092ade7e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297c644a1865afa1095c7f0570b8539b2deff517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad86fce652e160f7205d75ce2a62ec1447bbe7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c15fdb4a4eb06b0be8c6abd2070c71b00ef45f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d92b3dbe955e9b4bab107e1953e22db8bf27fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x324886c60482dbc1271bd6a852d9c97456a06470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a5f7834504a33b17a75df3acffbd285e3d9060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b5fd84fa5cea49b3e87f83e0aaa8993dfd7d8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254260 | `0x35e9d8e0223a75e51a67aa731127c91ea0779fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431d7f7cce789efc82a41ccad30e43a7f31fcf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43eedef37d103cdb90456330e9daa79b4ff89928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x457671bb7f629d647b37265cce436179fc4833a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4742ad58d8ebf6358b9016cea2abc07371865866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6eab019392e688ac69c772e51807adfff29a4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254261 | `0x581e463841bd2b30285929448e1a93d74708719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1cdcbd6b2032ae9c4a105ab9d16debd75f10b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b47e09354b1698dc4630d5dd14246ef08aef331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5f2ff714af73b39ef88fc4bdf7191920685b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60fcd04b4ecad5965ccd06118dd2fbf609eeded4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63dbcf397c6b7121b5197b3efb48a1225aadc2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6523fca540ac787a6b46e48817dbbdc771298020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655056bc63441ca049c61afe2ac5b6df95169e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f06b124a07a7bfd5f84e004d3c3942bac15a686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c9bb09334687fcb7f869ba73a95de4a5421dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c75c9196b911da4dcc8603c5798978999b0421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75045f88250b76c173388a86f94511912668e2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f8c77c271ec7a9608d82627fcfcfccef15adcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793fc452bce00c353c687d0290fedba9c85a7c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bde2bc9e1bb85f01ecaa2d3c1ad697698ba9e7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254263 | `0x7dca6b6bf30cd28ade83e86e21e82e3f852bf2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a16aa5c674234f6a3e053a5bba7a081b354f95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b29d1d518558b72eeb4579e6dc0f3df13cd0722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c8098e62dc7f8d49cb28170aa68687d804fed7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3d1b8d04d6542da8374aa1c627392e3e4e313e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f78788d73ef98606d36ef0c6c71bef4af596daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d02d60d7f60d302b2f3330b8c52ae711d0bdf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a3ae397e7234f3cedcad1dff701a985107807d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d7e031ca45caa5a53510d7646c69aa84d56c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d7a93977343e1a93fbf472cc4646a9e2c5c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa041a19a4c2fe1377f834d6a1a2baa5b410e9176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1925f870a665bd35372f63694179578afd73f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d9f8b295ee6d2e04c265c1964151242e5ea9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6342291ddc796fb9c3a7a2531f2608a857634bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a6b51beda0bea61527528833dfda26afd654dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91a0932bb2f6098c35e7fe48d2d0a0037a9f099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b039478f6da79db1d27d1b044d957b71dc1203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae342eb55ec73f9ccdc6640e9b739b1fd17ac3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb034d52712b3ed6010ab38bdb077d85098d56bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf2621fb76c78df3fcce6c0bae5d810785cdc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d4f083f533da2380435890e51568c8043f051b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd45853e73a080f03393d24313ef7a6cbe097cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea8b952dd2e1798db8a26a19820263ba4716d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc052a3e2aa20a43641459271138c9edf8cfa3c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1decd6c26cf2fc6001e3d3afa3fcd7f4e47bee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25f6f1f22b675506f2fd7a6fc3267d240a98e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79a6ff703358721c3613d593991a7d9eb345770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca41123ad33e962462f62d95ebecbe672893d553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc348e0fd5cd99d29589339e88efa34cb999fe89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd36c633af4806684ea46f7821ae8aa16660c987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce981366ee2c1e3f8ee9fa4737a42397b2857e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2f21d1de7259776f68b0536aa2b847ed07865bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd795c94834bf765b72abda0efe40cde7f74d310c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84bdeeb9d147ca3ff4b3faa59857cce16ac740a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02a6bc2cbbccd37f9e783ca1c3f925a4adc8802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe453ffca365a46eaf5b3d5752b5dc87fc6986cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b99030fd0f109f40e2ad1d5932e61a4ed97ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9bda3831905abb5f2ba50d6a23bf22e5f539e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea83f7a0d2ed226b4bc441ddc162f5f6dbf0f9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7cadc16210282c8cdf97a493354c1a3a2f0549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedbd0e911a4368e7d0bb104ec510caf75fc59fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf141ee41fb5aea0223999de829f55938e5d3fc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf87de2964d4f5fb1351ff3dab5e357750e106943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3170e7c1d787a953f1d8f47bf19ab799356dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8274c86665afcaa53521c7b1fe4ea323c58f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc882e0ba57d8e2a7d917f1fd8d248d3c6652cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0896ac8b9e2dc3545392ff65061e5a8a3ed68824`; polygon-zkevm `0x7dca6b6bf30cd28ade83e86e21e82e3f852bf2dc`; polygon-zkevm `0x9e1254292195f241fa2df1aa51af23796627a74b`; polygon-zkevm `0xb74749b2213916b1da3b869e41c7c57f1db69393` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, source verified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | LendingMarketController<br>`0x60ccbf7e864df8c7223216baca4149a8190e5fc7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4f122d7fce7971e38801af5d96fcd4ed83efd654` |
| ethereum | source verified unclassified | BeaconProxyController<br>`0x93dabbe49c0b296397909ac75489ef2cc91cf632` | non_address_book | unknown | unknown | verified | n/a | `0x4f122d7fce7971e38801af5d96fcd4ed83efd654` |
| ethereum | source verified unclassified | CurrencyController<br>`0xd024f3d33f9dbd131ffe2eff2a920e9a7f62a18b` | non_address_book | unknown | unknown | verified | n/a | `0x4f122d7fce7971e38801af5d96fcd4ed83efd654` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-01-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-01-Hexens.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-03-Decurity.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-03-Decurity.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-08-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-08-Hexens.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2023-11-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2023-11-Quantstamp.pdf) | Quantstamp | Audit | 2023-11 | stale | Direct | contract_name | matched | 7 | 3 | 0 | 62 | high |
| [2024-03-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2024-03-Quantstamp.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | n/a | matched | 5 | 2 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13817] 2025-01-Hexens.pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 20.01.2025'.
- [13818] 2025-03-Decurity.pdf — no match: Extracted contract names from scope section and findings. Audit period end date used as audit date.
- [13819] 2025-08-Hexens.pdf — no match: Contracts extracted from findings and scope section; audit date from final report date.
- [13820] 2023-11-Quantstamp.pdf — matched: All files listed in the 'Files Included' section under 'Scope' are considered in scope. The audit date is the end date of the timeline (2023-10-16 through 2023-11-30).
- [13821] 2024-03-Quantstamp.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-01-Hexens.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in finding SECFIN1-2 | no |
| 2025-01-Hexens.pdf | MultiTroveGetter | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | IPyth | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | PythCaller | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | TroveBase | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | DebtToken | unmatched — not counted | — | mentioned in finding SECFIN1-18 | no |
| 2025-01-Hexens.pdf | IPool | unmatched — not counted | — | mentioned in finding SECFIN1-6 | no |
| 2025-03-Decurity.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | TroveBase | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | Unipool | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PythCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolStakingScript | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | DebtToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | ProtocolToken | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | BorrowerOperations | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in findings | no |
| 2023-11-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e463841bd2b30285929448e1a93d74708719f` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d5fedb13b86bba3228008c7a0d464a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b6bf30cd28ade83e86e21e82e3f852bf2dc` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749b2213916b1da3b869e41c7c57f1db69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFund | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xd2683e22331b9a6e9f38350d829dbeb64ad2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8e0223a75e51a67aa731127c91ea0779fe2` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | ProxyController | own contract | ProxyController (selected) `0x1634d2104b48299da7d927c4582ea7ba67020ebb` — deployed 2023-12-14 03:43:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | INativeToken | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IBeaconProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarketController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IFutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ITokenVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IGenesisValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ICurrencyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IReserveFund | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Proxyable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityProxy | ambiguous — not counted | UpgradeabilityProxy (proxy) (alternative) `0xa2700d5fedb13b86bba3228008c7a0d464a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code)<br>UpgradeabilityProxy (proxy) (alternative) `0xb74749b2213916b1da3b869e41c7c57f1db69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context)<br>UpgradeabilityProxy (proxy) (alternative) `0xd2683e22331b9a6e9f38350d829dbeb64ad2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-11-Quantstamp.pdf | LockAndMsgSender | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityBeaconProxy | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | QuickSort | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Contracts | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderStatisticsTreeLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderActionLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | DepositManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderReaderLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingUint256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingInt256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinWallet | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLendingMarketConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ProtocolTypes | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | CurrencyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFundStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BeaconProxyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FutureValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TokenVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControlStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OwnableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | PausableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelperStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2024-03-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e463841bd2b30285929448e1a93d74708719f` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b6bf30cd28ade83e86e21e82e3f852bf2dc` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d5fedb13b86bba3228008c7a0d464a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8e0223a75e51a67aa731127c91ea0779fe2` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749b2213916b1da3b869e41c7c57f1db69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6f6046e59501e484152d46045ba5eecf1cab8935` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 94 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=12

Zero-match audit list:

- [13817] 2025-01-Hexens.pdf
- [13818] 2025-03-Decurity.pdf
- [13819] 2025-08-Hexens.pdf

Fork inheritance lineage and inherited audits are included when available.
