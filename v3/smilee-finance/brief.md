# Agentic Audit Brief: Smilee Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Smilee Finance (`smilee-finance`)
- Website: [https://smilee.finance/](https://smilee.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, berachain
- Contract surface: 220 unique implementations (244 raw deployments)
- Coverage basis: 5/23 confirmed own live verified implementations (21.7%); conservative 21.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $932,956.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Smilee Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across arbitrum, berachain. Structural roles: 12 supporting, 11 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (12), core (11)
- Contract kinds: contract (23)
- Detected standards: accesscontrol (17), erc165 (17), pausable (8), erc20 (5), erc1967proxy (3), erc721 (3), erc4626 (1)
- Frameworks: openzeppelin (22), prb-math (6), solmate (4), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfdfd955e5818f536b39f4a9060ecbdf8e75b0774`, chain 42161)
- UnnamedContract (`0x3f7755117f1fec1981aefb01887240dbf5f2ebce`, chain 80094)
- UnnamedContract (`0xb76ae8789148559a28d70c783fc802553225693f`, chain 80094)
- UnnamedContract (`0xf2133a7140b928a4dc0e52dafabc454a81df88f2`, chain 80094)
- AddressProvider (`0x110a3b051397956d69733b6fe947648bb9062cf1`, chain 42161)
- ChainlinkPriceOracle (`0x60b48242e139b2932f7ccf47be10ce9b09cfe0bc`, chain 42161)
- ERC1967Proxy (`0x3b3dd22625128ff1548110f9b7bc702f540668e2`, chain 80094)
- ERC1967Proxy (`0x5dbffcde23ab53f128c1c82796d0f971d0102137`, chain 80094)
- ERC1967Proxy (`0xab70753ab7b5b244a2f0de32208c0e7531f0c4f1`, chain 80094)
- FeeManager (`0xff7699c47326516759be8902e87d09bcf4700d75`, chain 42161)
- IG (`0x1e0aa028fcbe1fcd5b6b8394e5eacfaa6fc5c016`, chain 42161)
- IG (`0x1ee870cbb5e4a6a722c415ce99fb97a1599f003f`, chain 42161)
- IG (`0x521e16ec236a148d6055b0ed02ff5b25717b7153`, chain 42161)
- IG (`0x550f20aa8cfae02c5535ce9bd5b1fce4b13361b8`, chain 42161)
- IGAccessNFT (`0x3d4d50654574f8c8fd417fc77adf5c6165f6dceb`, chain 42161)
- MarketOracle (`0x130648a3fea885c4c734f3a48455a058ad7cd0d5`, chain 42161)
- NodeWithdrawalVault (`0x333bd3beb65f965eea04999ba3c0349a596e9ffe`, chain 80094)
- PositionManager (`0x49a07a6ba53f600106055764cb35f30a6c34056a`, chain 42161)
- Registry (`0x8682ead63e4934fbd35162df3fe4dae9b826732e`, chain 42161)
- SwapAdapterRouter (`0x991069c8469643cbc1765a1527d570173ab09de5`, chain 42161)
- Vault (`0x6b028ce42c823b01a2c9bcbeeeaddac61f0da4f0`, chain 42161)
- Vault (`0xc1894fa9a94f454f9689be3f2b5e63b3fde569f4`, chain 42161)
- Vault (`0xcbe9db6b83d22e9ad109df7384caa19e902a8a14`, chain 42161)
- Vault (`0xd3468b7957c5a2fc28b2da2eb17f24dbd9f68831`, chain 42161)
- VaultAccessNFT (`0xc471663f523f8c04ac8ca026a1d3b56af08b9e1f`, chain 42161)
- VaultProxy (`0x732c5e9d282e0547b8dc8912f92f9c653540fddf`, chain 42161)
- WGBera (`0xd77552d3849ab4d8c3b189a9582d0ba4c1f4f912`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/23 (21.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 193 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 27 of 220 unique; 193 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/41
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 179
- Unique implementations: 220
- Raw deployments: 244
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 21.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 12.2% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GBera | unknown | project_anchor | own_supporting | 1 | berachain | unit-392614 | `0x3b3dd22625128ff1548110f9b7bc702f540668e2` | ✅ Audited |
| NodeRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-392613 | `0x5dbffcde23ab53f128c1c82796d0f971d0102137` | ✅ Audited |
| NodeWithdrawalVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-392607 | `0x333bd3beb65f965eea04999ba3c0349a596e9ffe` | ✅ Audited |
| WGBera | unknown | project_anchor | own_supporting | 0 | berachain | unit-392610 | `0xd77552d3849ab4d8c3b189a9582d0ba4c1f4f912` | ✅ Audited |
| WithdrawalQueue | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-392612 | `0xab70753ab7b5b244a2f0de32208c0e7531f0c4f1` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressProvider | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392588 | `0x110a3b051397956d69733b6fe947648bb9062cf1` | ⚠️ Unaudited |
| AddressProvider | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e5af7dd19c13b08afa3046f2a7d77a5af80546e` | ⚠️ Unaudited |
| AmountHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1b1a246a6363b88654351554ce4d82c5135979c` | ⚠️ Unaudited |
| AmountsMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x123dbfc7865350149ff827084b7a95e3fd5a4e09`; arbitrum `0x91869f15667a8f78d7e89323fbc9a29803417b70`; arbitrum `0xa231a8f2abb2c7d369d1898d1946a2c959242b4f`; arbitrum `0xaa1ebdab85e9660951cfdc0e7f824e81f161b536`; arbitrum `0xf0162a5ca89c0ed46236a89eb6de79de05af20ca` | ⚠️ Unaudited |
| ChainlinkPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392596 | `0x60b48242e139b2932f7ccf47be10ce9b09cfe0bc` | ⚠️ Unaudited |
| EpochFrequency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xf141e7bced2e300bf301eab47d5da537ecbff4a3`; arbitrum `0xfbf7125aa62d7d82b8d5bb0678a95be136554792` | ⚠️ Unaudited |
| FeeManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392606 | `0xff7699c47326516759be8902e87d09bcf4700d75` | ⚠️ Unaudited |
| Finance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e5132a2636deb590521ad0efbd8ff8ffc7517e5` | ⚠️ Unaudited |
| FinanceIGPayoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x07c9707cb86b236cc8cce3f6de41d80baac7467c`; arbitrum `0x4c04182da5dfc05c662598f72ccfd3e7ba757f97`; arbitrum `0x6b8b6d84101cc4a09aa3452772b62408cc8ce95a`; arbitrum `0x7b2eafa0b6c74c56cef409e3f488f7ad19c53be7`; arbitrum `0xb68271257e7c5b61199a162acccfa7c03570d284` | ⚠️ Unaudited |
| FinanceIGVega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb13170e36007a09d6962e23cbef5c50b775b9738` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392590 | `0x1e0aa028fcbe1fcd5b6b8394e5eacfaa6fc5c016` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392591 | `0x1ee870cbb5e4a6a722c415ce99fb97a1599f003f` | ⚠️ Unaudited |
| IG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x4e512144292aab5e3f05b2b7415b6a08ba00c933`; arbitrum `0x70def9290c7cbcb3c52469113e037764550548ae`; arbitrum `0x9650a8c245ef068c39865bf1f129e8e8cae86f77`; arbitrum `0xc5cd7159a28675225ae0d63d958826ea52fc4fac`; arbitrum `0xc9293cc81013ff1e05e93531f7563788b3fed768` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392594 | `0x521e16ec236a148d6055b0ed02ff5b25717b7153` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392595 | `0x550f20aa8cfae02c5535ce9bd5b1fce4b13361b8` | ⚠️ Unaudited |
| IGAccessNFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-392592 | `0x3d4d50654574f8c8fd417fc77adf5c6165f6dceb` | ⚠️ Unaudited |
| MarketOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121e694d4f4fafee48a2a6ab69a96daa04ec70f6` | ⚠️ Unaudited |
| MarketOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392589 | `0x130648a3fea885c4c734f3a48455a058ad7cd0d5` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa452e8cd1a0028516fa75ddf0521b51f746a02bf` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392593 | `0x49a07a6ba53f600106055764cb35f30a6c34056a` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x838370197b47f77d197bd3d6ef05254e0305fee6`; arbitrum `0xabb4e01a80645840c4fe207a63d25d44bbfa10cb` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392599 | `0x8682ead63e4934fbd35162df3fe4dae9b826732e` | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-392600 | `0x991069c8469643cbc1765a1527d570173ab09de5` | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2ca8bcb7f75082aa20f57ca09b4cfee1deac009` | ⚠️ Unaudited |
| TimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8b57d0d542945986250e51b9fb0059f095ae80` | ⚠️ Unaudited |
| TokensPair | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x082e02d16bcd9fc73be6a862070a56c7016ac6bf`; arbitrum `0xd92d3c1f100b164da45f94139995defa7a40ffea`; arbitrum `0xfb84f19b651d9de56336ce3c326941353211a5ad` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x45c0c776242c2ea752a4b152902f203af40d7924`; arbitrum `0x55c950c3ab445dedbbedf3da0ca3445b460f201f`; arbitrum `0x7f2c0f9d927bcd9a2e1cdf22ff11bef07964b0e9`; arbitrum `0xbd80e2b3cc71300985506181c366a2295c251182`; arbitrum `0xc948d7456d3ceda873367ef4fa4a21654131221b` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392597 | `0x6b028ce42c823b01a2c9bcbeeeaddac61f0da4f0` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392601 | `0xc1894fa9a94f454f9689be3f2b5e63b3fde569f4` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392603 | `0xcbe9db6b83d22e9ad109df7384caa19e902a8a14` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392604 | `0xd3468b7957c5a2fc28b2da2eb17f24dbd9f68831` | ⚠️ Unaudited |
| VaultAccessNFT | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392602 | `0xc471663f523f8c04ac8ca026a1d3b56af08b9e1f` | ⚠️ Unaudited |
| VaultLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x5938431e5d5a4def3590206dbeafa164dc62629b`; arbitrum `0x6ee8ae7f352dc9e6aa12149d1366a46c05f25724`; arbitrum `0xb7c6072c3a94771cfbf845e6fd5ea70bdee26739` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x544f53b35a591df217e63725edb7bd597db3fbf8` | ⚠️ Unaudited |
| VaultProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392598 | `0x732c5e9d282e0547b8dc8912f92f9c653540fddf` | ⚠️ Unaudited |
| WadTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01a0ce0c6351a9b39b2c3c43d5175a11336eefd8`; arbitrum `0x9f57d3d3eb873c368ac1258c8d98a60008b95310`; arbitrum `0xed09dbe7b436e1202d7447ecaa92747c558cdf5d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (179)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x038093e925a4960fc839726348d15048c81ec40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05dcafcc87fca1de000b1531adc209e178237449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07afae3d623f253a0f694c2acf629cce0deaeb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c464c12c2c512469fb40e6d384ad0627e58a3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10ac5014232f15733e1b03582e682956c58bcdad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1107a7586955d56286ea5a889d128a89b8af23ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b09fd4278e68b63c50c157b02a9f10b501b2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12c43abb41f611f19c22812f7bd986c68f62813f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1313855ebfe935d7793cf902d4f306c206926d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1366e9cd21748e28b636379663e6f30f7b4d431e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14556973cdb3b2034a34f7f710500c1d12b10243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x157fae45dedba5f4bab80fe0b1becaf188c96e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x166133050d640d9610f812eb2b25f046a03dab43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b346454fb476339e35d2d4ebeb3cfa6b40d185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x188632ca30a5015cd565194d491454a91faf1eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aaec06222f6a48297741318b1d745b09931ccef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b29038f62445c49d4f5e9718e0cea8c3fccb83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bcf063e0d7347164804bd766af6c9c6b3458cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bcf1a23162f713613723f4beeb353206071f947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bfac5a5c3e40a1729e978bd80b6ce9260115b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d053ff2443cedc6583463ccc634b74793f88f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2235c510a93b0dd5ff9b07ccf2f9339fb0b60edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x228ac9ea2e4a2fb7f4fa56e97d49ced089f986f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249026d0bcfd8be6a4f2a3b29239a6d47abbe2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26b23e8a5b45afae930ede1e740bc6c2e4b0e281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aaa299cf986d5b5052cdbbc723c90d06fcb7ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2da726c3c47f73bbb936ee7b8f56babbc5912062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f87dd568b6113796e379c715d75d01669c3164f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30a961af87ccc30ae60478291f75a6ff9369d22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31fdab5c3b3a13422192315a1b24e4d6910049a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35fd8dcd09b7ecc99f8306ed9691aa65d13a4d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3831e6b0fd88ffbe247e18591ff4d3255e1d84e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a2ea6b2e4620a74157c9a918e7d8ffc8bbde38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a3de63c39dc41aadac5997a261d3087a90795ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ea810d7024d00f1a02e90ea14cac4343392d0e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x408e881cd0275ff2903767cd51454be3e170e3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x425b3b64ed63e4a8426827dd6640d282de4435f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x433f2c1b5f9228d83c13e4cb8cdb17eb3c52e86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44bab0cad8eae2be8187716d599d5546fba1b844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x460c039341b3c64fa8c6cb74c3b7cc4cf51ff9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x470aacb709e365a61ea83d3f1ad60f4549275822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471a2674432ea05cbdf8c6345409d13b9b5bac30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48f35cf2d8db8941855cde0dcbd634a118bc9221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x495fdc376372f7dbd8e0c11a75a33b8e73a05f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a13521cdd94af8525a806386feb002ef925fdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d7fb9fb027d48e3bdc5bdd845fcb8e38f963707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505a37017483077f9a020768289483873fa4068a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50adcb3e060205f45f4f4f53a97b28b22f66cf9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x535fb0bc36d32629286dacde050a0a1820f8e2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x546dbf18a88d870da5017a5f559f4ca1308d3315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57e3f84606f5d5630e3872502ffbc25de5784b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58f7e90322f29b4b7ddcc8cef7b2547012e1c8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58f984f3596c435e8bc90a3ce5f5e672e7c105ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a54f65ef19f957607ec0c8d6fcf7d0e29f150e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c95463bd66178a2a919b78c4bab09b1be7aebdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cb17b5955df17f57491af69be1882858f807abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d281adf0bacd0cce8ef5f5c209f4ab4ad6f1f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d429d830233da58e6cccda8e89a66eceda02b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d6b0ef47a5d04cd2e8811715a6ee3659fc8e547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd95c8e70ef639e8a7d177742637c1adbbb8171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60178afa0be15d3bed9fcdb355db5abe271639c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x603b662c13c6a3cb3d4ca9d1d589ba0eb3edb5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60e60b4c72881b0845b57cdc69abb0221e359a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6145ce00117620d6258f80f7b29ffc972163758d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6427bc9ccd33bdad39ac07bb82c023d2ea21ea81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6488f9ce2407691d28e3edb4f88d230100b9f05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64f9aec8481888e021d52b3598a8dc3c0c98c8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d5545b0141d464f86234eb3d20fe87871a41af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x685d40fab338fc40d8aa9cd6b3ef7d4eef0c9ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a4957507a206ef25cd4316a3dc0549e6e96c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69b7cb127c6ad9c85c229861b4a26bc15f15e7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c52615d0511eae85e3e4b85a4e460dee4fd7e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f8ae93098c786a5211653ae43b479d40a5da048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7068a0b4368f4d8db713797d8eadda69424e077e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70a6dc9c3efed47f1e782b7d3c7d3a8d75e8bc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70cba9f6fad5824449b5470953265fa7178f3637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7489a4272b58aec14276b1180ccf17f493b62f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7574c8400fa66fd75d5c99d3c9d330d6ba7d03e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7617f6de9836b2e11727038493893bdf24cac9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7677dbb2e7d43b4df6b91de9de9bcbb6d293f8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76d0f40a20c5579a26229cb1fa9aa8bc50ec0d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78dbcecaa66e160f366ff09a99252df718fe2a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb67a7f0b5b12864c2f1f16b078e913ff20989e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f676401f12215f6bca5cac98df256dedae902f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81f86da5a3d15bc1bd555072e6cef4696268bd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82326ae14d54043e1766dbf124b4dd2fc4ccaa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b55ac2bacf152d0050918bd5b1b1ca0b5544a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8765741965a65aa17f526edc521aece9d4f87af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88e76f5aacdb9fa042401822694595ccbb954424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a27d585c83ffab61ca82b095a7cd14ca8fea867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a5498f1eec6f557bcfef2025880fb8ede946d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a655c1419223f8e9df0cafb6e98239296576886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aadce8ff47d3e6b06d76837ef9e8b8aaddfe846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d698ca9f8653afeafcc33f730f899e95bd1f8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f3039438247f22ac0237ccc61dd58fc39146fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9101b81f6b7a0e414464b1b3436551346f06910a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x917aa39d05f892856530e8281fb37e3ee6ee8846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92911b31ba0e08696e48ce376ce64ea2c31c0236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x938ecb0f26bb3c79a681ef8bb7c4a462a0d54ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b1a7536930e862a4c48729077d9af71f21dbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94b6796d32d67814ca85bc04840e0d12657b6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98bbf258a0b89951811182569809df69188b6bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99ebf832cbccc9fae5477a210ebd9b108dda3a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dc2df29065173518d81ff01a71e82bdd4a475f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9eecb248203554b23f6cd6a009cfd7c052833b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ef67d2eff4a520163115c0795ace348c7244a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6e9e031a22caff3bb98c7a8a4a6db352b2ae9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7fc3307b94a5708cf952fbfa8130622839b9373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa269287e83038515c1a3a7fa88f095f0ab03a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa53ba0afa32b6612133710bfdf277e8a4de3e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc15c07d549b76ff76b799b0a35af8cc74299c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2914e0cc4a67150bba4b1ab00c72d5639b0686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5ef28ebb76aa9f4d282c400a2ed55cbd3a431cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5fcab24e9d42a0d8ebbc1da022be6e913bb523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb63db09093269da894bb96ce1bb779314c7baec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6fc1b4ec9bf35b7020147b93d343d8fe157938e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb723972ae9d2d489936631588474981ae08cb364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb79b29dddb893879a64c7376e11bad4210293595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7c54b12e5d398bf20327ca84b6ea2308c37a97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb98a71da4b70ce540afc257d3288c15e81c63b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba8e579ba2d53753677e455b55f2cb61261de78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc5c693a11e8cc2cdf19815e19b1d84a092796ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdb9df53a8017d8cc2ae5e22ee19a355815a5756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe0aa6d76c759183068dceeb7ccae4aee16b72d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbff437fdd06a90dfcc34df36957270566f6cd4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4039ae8fd05517d860633341e96b9542f17de46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4c90144d94d91c3828ae8afda28f278d6fcfb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc58a606b51e400618e1c6e81f30126bf29fba8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc61678a42474a2aabfc8872817e905be97ccb3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc66dc3d0e39d50891d9ec4bfaa6d3c66fdfe297e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6d5971d427a3712ea6880c4588018f744eef7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb35c0f960365608c37b22d2cd605fb1979e3d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb55d2047c97a4cc2c297998f27337b16560c784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcba65c55fb5d5d20d2d768f80aeb27d08815d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb11073655011fcc4389dd1596707ebbe29ce9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdd6db3b6f4d85aaf67629ec29290f04a68b2c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf4d8ade4d2ed78358668ca080fc4e805fa82c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd10dc7bc6d070771d86e960beb072e68ab2c4560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd12e7441a73307113aefc333952131c6d07451d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1c577485c3aaed55912bd18e58afd53df5ef847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4a19833e78fbe6da6c64023eb9048be8e5daad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd72337ff46c1be4c768e3710774a1ab4428ad4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7c8eefd50536327fd4a6472ee8179fb3ea31ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7dc54b9f8a60af5fb76eadff729993d443e35c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbce43349689664775b54eccb5ace6781d7d4154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddb9d43572737b11cc05d933a892659a1da74f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe96770a231598fc8d3f878f7aa376fb9f393a1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed3e4a2acc91a44b70c5b5e1955426c68c92d405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0c8988441a3f9649ea0be27ac44d45270d5fb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf192635567ab46117dbb3c2dc7e989135acdc93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2e173b3467d950c4117a1e452a2835a52e55764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf35dada3824c0d43f972647fd4a022effe7cb55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4b78fa2887514bf1712429fa2fb6a7a65361087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4f015e8877960940b8e732edd886b2ca2d2c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf50a00390e929a25997e4ef04c495350e8f84879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf53199dfb43b327ad2a91f4ea5c329d7c6436725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf66d8eeae60595643bf38598dc753d874e055cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9afcddc154c0385888ad0b195cddd6a54fddb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfae000bf06ecbbf7611cd517c4ef13b1860b7e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392605 | `0xfdfd955e5818f536b39f4a9060ecbdf8e75b0774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfedaa8313df19c7caf0d622d6adc14cbeb5bd117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff12b3111324fda98b6bec137cdde82ace9e54df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffd8f9cee877127c7ae86b35a354f296ce61ef53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x18bd80612f13ba06828463479eae7dc8a033eae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a6ac8c42df6ab8f8faa787cc3c6b9459c8fb164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x35201b565eac26f464d092709342603fb6239a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x373e7efb5683898f19545bc53cc976f116b6b048` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392608 | `0x3f7755117f1fec1981aefb01887240dbf5f2ebce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x51f01a1ba5cb7fee5fbe682466b0c97923a07058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7e7404a1d23742136931b72032b72ce941c51104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7ec3ae57a5dec6e5199aa7117eb361c7af104ea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8a34dbc95f8e63b7200ef379e23ae254a8d555ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9a2a2e8f0c8ea001a1f699a3df012e8da55bfb4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392609 | `0xb76ae8789148559a28d70c783fc802553225693f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb8a5815dd887eb0b48e5dde5aa55d3c7046f57a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbf3a38be380cf9df2ee88b99a95ce0388d437e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb9c6a3563bbd1919adade452b51c1816f9d9038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeed784244200fd9b471c5d156d601a5bf8fce470` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392611 | `0xf2133a7140b928a4dc0e52dafabc454a81df88f2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 13
- Live contracts: 0
- Unknown liveness contracts: 13
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=13

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x18bd80612f13ba06828463479eae7dc8a033eae9` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x2a6ac8c42df6ab8f8faa787cc3c6b9459c8fb164` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x35201b565eac26f464d092709342603fb6239a48` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x373e7efb5683898f19545bc53cc976f116b6b048` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x51f01a1ba5cb7fee5fbe682466b0c97923a07058` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x7e7404a1d23742136931b72032b72ce941c51104` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x7ec3ae57a5dec6e5199aa7117eb361c7af104ea7` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x8a34dbc95f8e63b7200ef379e23ae254a8d555ee` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0x9a2a2e8f0c8ea001a1f699a3df012e8da55bfb4a` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0xb8a5815dd887eb0b48e5dde5aa55d3c7046f57a4` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0xbf3a38be380cf9df2ee88b99a95ce0388d437e3a` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0xeb9c6a3563bbd1919adade452b51c1816f9d9038` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |
| unverified unclassified | UnnamedContract<br>`0xeed784244200fd9b471c5d156d601a5bf8fce470` | non_address_book | unknown | unknown | unverified | n/a | `0x2d6a4d5cac28e6eafb4a2d5720c40fe979fb4507` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FK3W9Hj6sr2y8j6Zdkgub%2FGuardefy_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | matched | 7 | 3 | 0 | 2 | high |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FyKq7K1kTTAd57CnP2ask%2FCantina_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 8 | 3 | 0 | 0 | n/a |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FvhApBDZa65vO2FueUH9y%2FGuardefy_Audit_gBERA%20Update_Smilee%20Finance.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | matched | 3 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11664] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf — matched: All 9 contracts listed in scope section on page 2. Audit date is January 16, 2025 (fix review date).
- [11665] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf — matched: No reason recorded
- [11666] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | BeraContractsLocator | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd22625128ff1548110f9b7bc702f540668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755117f1fec1981aefb01887240dbf5f2ebce` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a7140b928a4dc0e52dafabc454a81df88f2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffcde23ab53f128c1c82796d0f971d0102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3beb65f965eea04999ba3c0349a596e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552d3849ab4d8c3b189a9582d0ba4c1f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab70753ab7b5b244a2f0de32208c0e7531f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755117f1fec1981aefb01887240dbf5f2ebce` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a7140b928a4dc0e52dafabc454a81df88f2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffcde23ab53f128c1c82796d0f971d0102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3beb65f965eea04999ba3c0349a596e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WgBera | own contract | WGBera (selected) `0xd77552d3849ab4d8c3b189a9582d0ba4c1f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab70753ab7b5b244a2f0de32208c0e7531f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd22625128ff1548110f9b7bc702f540668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552d3849ab4d8c3b189a9582d0ba4c1f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd22625128ff1548110f9b7bc702f540668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755117f1fec1981aefb01887240dbf5f2ebce` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a7140b928a4dc0e52dafabc454a81df88f2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x110a3b051397956d69733b6fe947648bb9062cf1` | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff7699c47326516759be8902e87d09bcf4700d75` | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e0aa028fcbe1fcd5b6b8394e5eacfaa6fc5c016` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee870cbb5e4a6a722c415ce99fb97a1599f003f` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x521e16ec236a148d6055b0ed02ff5b25717b7153` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x550f20aa8cfae02c5535ce9bd5b1fce4b13361b8` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3d4d50654574f8c8fd417fc77adf5c6165f6dceb` | IGAccessNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x130648a3fea885c4c734f3a48455a058ad7cd0d5` | MarketOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x49a07a6ba53f600106055764cb35f30a6c34056a` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8682ead63e4934fbd35162df3fe4dae9b826732e` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x991069c8469643cbc1765a1527d570173ab09de5` | SwapAdapterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6b028ce42c823b01a2c9bcbeeeaddac61f0da4f0` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc1894fa9a94f454f9689be3f2b5e63b3fde569f4` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcbe9db6b83d22e9ad109df7384caa19e902a8a14` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd3468b7957c5a2fc28b2da2eb17f24dbd9f68831` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc471663f523f8c04ac8ca026a1d3b56af08b9e1f` | VaultAccessNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732c5e9d282e0547b8dc8912f92f9c653540fddf` | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 179 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=17

Fork inheritance lineage and inherited audits are included when available.
