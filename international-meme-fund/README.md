# Agentic Audit Brief: International Meme Fund

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: International Meme Fund (`international-meme-fund`)
- Website: [https://imf.bz/](https://imf.bz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 124 unique implementations (124 raw deployments)
- Coverage basis: 4/14 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $826,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for International Meme Fund. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 8 unclassified, 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (8), core (6)
- Contract kinds: contract (14)
- Detected standards: ownable (3), ownable2step (3), erc20 (2), erc20permit (2), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- IMF (`0x05be1d4c307c19450a6fd7ce7307ce72a3829a60`, chain 1)
- IMF Liquidity Manager (`0x2c17b87180ea16eab0c67920f876ace502d4316a`, chain 1)
- IMF Morpho Migrator (`0xccb68162badb2afc5185dd8416d5452fe934ba22`, chain 1)
- IMF SuperLoop (`0xbe71f3a575c68a78f66242dc47d51e7579844037`, chain 1)
- IMF SuperLoop V2 (`0xa9e1fb534d6df94ca2c66f872a2f7c0090465514`, chain 1)
- IMF Uniswap V4 Fee Hook (`0xed81cb1977c550ae23c434520901eb36f40ed0cc`, chain 1)
- IMF USDS Vault (`0xdef1fce2df6270fdf7e1214343bebbab8583d43d`, chain 1)
- IMF V4 Factory (`0xa626a451837ff5c83b9a6126e8cb773caed0e384`, chain 1)
- IMF V4 Launcher Migrator (`0x1a0f6ea49bee93fd0fe59dc08e37108059764273`, chain 1)
- IMFMoneyMarkets (`0x30f75834cb406b7093208fda7f689938acbd1eeb`, chain 1)
- Money (`0xb162caa6b63de33edc5d0a14b901fb6a54ee6b8f`, chain 1)
- PEPE/MONEY Oracle (`0xb97b916436e4a3b0aea6c6be2419c636d368035d`, chain 1)
- ProxyIrm (`0xec39c6df7947f2a4923d317b2805e41ed9116ecb`, chain 1)
- ProxyOracle (`0x66099a17c21a8df6d949a704f484d544b81fde1c`, chain 1)
- sbIMF (`0x3215c358b7a70c09e0a98827f744d107095e14e4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/14 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 104 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 15 of 124 unique; 109 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 124
- Raw deployments: 124
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 4 | 19.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IMF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387599 | `0x05be1d4c307c19450a6fd7ce7307ce72a3829a60` | ✅ Audited |
| IMFMoneyMarkets | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387604 | `0x30f75834cb406b7093208fda7f689938acbd1eeb` | ✅ Audited |
| Money | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387610 | `0xb162caa6b63de33edc5d0a14b901fb6a54ee6b8f` | ✅ Audited |
| sbIMF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387605 | `0x3215c358b7a70c09e0a98827f744d107095e14e4` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainlinkUsdMoneyConstantOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd2b014f74e776e0ef787f42905f27fef138829e` | ⚠️ Unaudited |
| IMF Liquidity Manager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387603 | `0x2c17b87180ea16eab0c67920f876ace502d4316a` | ⚠️ Unaudited |
| IMF Morpho Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387614 | `0xccb68162badb2afc5185dd8416d5452fe934ba22` | ⚠️ Unaudited |
| IMF SuperLoop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387613 | `0xbe71f3a575c68a78f66242dc47d51e7579844037` | ⚠️ Unaudited |
| IMF Uniswap V4 Fee Hook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387618 | `0xed81cb1977c550ae23c434520901eb36f40ed0cc` | ⚠️ Unaudited |
| IMF USDS Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387615 | `0xdef1fce2df6270fdf7e1214343bebbab8583d43d` | ⚠️ Unaudited |
| IMF V4 Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387608 | `0xa626a451837ff5c83b9a6126e8cb773caed0e384` | ⚠️ Unaudited |
| IMF V4 Launcher Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387600 | `0x1a0f6ea49bee93fd0fe59dc08e37108059764273` | ⚠️ Unaudited |
| Irm69 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe22779eea87b043d26c4bf1c85d5b9bdf8bae2cd` | ⚠️ Unaudited |
| IrmFixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb600a995e13824bdb1ca6ad1e12eed3dbf2c74d9` | ⚠️ Unaudited |
| LiquidationBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321a36255fd952c8c9801eb53c23a12e3e1ce213` | ⚠️ Unaudited |
| MoneyFixedSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7207da4d2c296f16568c7f128cf2685a5d2ce452` | ⚠️ Unaudited |
| PEPE/MONEY Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387611 | `0xb97b916436e4a3b0aea6c6be2419c636d368035d` | ⚠️ Unaudited |
| ProxyIrm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387617 | `0xec39c6df7947f2a4923d317b2805e41ed9116ecb` | ⚠️ Unaudited |
| ProxyOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387606 | `0x66099a17c21a8df6d949a704f484d544b81fde1c` | ⚠️ Unaudited |
| TwoHopOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4438808061ba3fadba1b3daf564e54028b90a920` | ⚠️ Unaudited |
| UniV3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c12a3aaaddc30a4c75effcdb7a52ddf39eb342b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IMF SuperLoop V2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387609 | `0xa9e1fb534d6df94ca2c66f872a2f7c0090465514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01efae19ed830429b48d576421f9d23de8c9d402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ac02a0c3ebb6073b23b8823fdaa57105cb35fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0593ff5f206538d586e18e6eb68eecb1e10d632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a7ceb620cf24d75944050aec6d65b08897e5fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088d59f0a477ca92466233340e8c42d7beaff016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09703ef11f6db2794bf72e4017fdf5b4c42a53b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f5cfbaae98a3bfc2da70a5c96a31b4ef84500ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12455ba1433df897b1b4b79279c19c14f4540d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1791527ebb628209acfbe3ee65fb3158a833060c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1913bfde837324ef2e5b6b2a8017d7c661a538ab` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387601 | `0x210264fbcf553aa2e74a2c97e38aa1da237f30dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24359abb19f3a0baf7b02708e38766234279d263` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387602 | `0x2625bfb6ad9840c2c0abb48f150eb9158393c466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a4102d789bafc5b143a9cbd1aa29769dc7bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4aa8dff3fc434f71de882f8450ce03b98ead8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7b77a81bad69cbd73917bace2a9d79558766db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30895bb3dacf26584df8472f12d523db622aea17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30fc2d5005adc0652a34b93081346919471b8077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3204768c73ad0b8da42373ecce63915a0f2bf703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33e073f2fa6ac6eedaacf6d29b0ae37f40ac67e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a83e803893aa8beeeccd2256c97bf444ea14ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d6544a316ae6aa26754665a810176d4f4d9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3897222f753adf6e56c176e1b84e591e82d1818a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f4238ae0ff0b944058137a5feb2da78d1aad40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3dff62cc9d3be9db89f1e308eeb7bbf8c53020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9203d43625882a4ab91698a11a32fcef88e4eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f65592f8b42b4dce8f1f9b50b97b6c52a1d4f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4333a8309aa42b59844d2ebc21ad7beae4d1fcba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4450a2a20159d2c57073ca2ecf73406eb8f7832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ef97808c42ee1da474eb2ab38b46d2e052f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f48ca616a5a2884bb30a4e0f505411b0448937a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5045724e5ed08b8aecbad98556af326c33299c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ca523eeb5aed11c3a74f730de82aea9bd04d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542e1fbf057de360923cfa2d5c757fa2f05692f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56f7aa35d075e5a7d45c17fa25c2e7ac958db3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582fe653f267265de9d7627b8216015b89673ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f8252cbb3219d418c1be1618d995cc2d375e444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73700aedbb8c3c4692d820d0b9bcf45c38d0f091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x738725a1be77bcb57eb474501d0d1774d76b3d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x740ac718a710a746a8f6e6ca406cfcb3eba736ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76ed8802976f2addb349bfbd83ee9cbe9090e7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a04317ef0819a7d20f79e70cef87d088d7f995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79ec5e09282ea619c277d99308e94fb1835f83fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9d2573d3d4cb731ee158fda170b24a30d718ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ac15b58251e36dd30b85e8c152ab5c8a217590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f0952dbb57d5a0b77dc39a209d699a4584dfcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x839b564a3028b1e708ec6a8ee2f3109575afec9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851d005673a4bfd00b59ede31424cd8beb679cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853a46e9b2a81d66fe5e902af771879b70933446` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387607 | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x871b119c40d512ad3839c7f15456d4717be8f12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874f9b462784e4ed400908a7737e4bb62a9bac16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cae6ba4fc44513d770366cfeb857eeabadaf3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee090a8486f40e059b61d23a9ae9302508acbbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986e3ab9d4a48a43d16cba332f2c0a8ae5983f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ddbfa10abd822f235a3d6340f1c233c99eddad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af7d7bb07a8c59a50a79c9b8882b88396020e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b02ff5858179a344eb20ca86a554c7489f0b6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9edec07c08c9cae2f04c413b0354d556432e6cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f119be161d8f708602b89760e24299a92731a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa022adb8c6bd4c25325a662cb928570a8e3966b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ca41f7b692b2354fd7ce65843d380ed5c51bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad44b8257fb730e7344bcbe2908679324bd4dcf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb276d48b5936f6ab022d14cabd45c1592d33c9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58e62dbd8e15fc1edc03ac55ebff923962389b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5da65aef4aefb52b4fa143c011b5964ed87ecef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387612 | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc41247990cb953a536ad9536142c15ca156e226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdfec477b9691fdc4e436431da5f315000fd4f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe90ba379dfbbbedbb372eca8535f6fe19fd85cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc9022afbd219ce4f399dcecae96e0f6d96f8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0709466d89f0346501cba9becd225f96309964f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc36ae0db4474e665ff0850528d545a45763a714e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc453457b4e332b03ff0faf0ca78fbdabe0351e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8916abef018d91f6db4cadd37673795912fa5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd5323d71a3424a7e0fd11c367565bad3838867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd131b09707a4a9d7ce7c74d454d6ae335e9955fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd218cf7c4367e27bd709b6b40c562e01e9de6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85b573e76bda10d7161b71177d9cbd1b48698bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda63266b5184d08dbfbace96267837c45d7d34da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaea6f9feabb4ca8e79c0a9126aa041b35103f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb018e3b6f4af289b21a5760fcaa034185301a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf67d0761c02680dbd73b3efae994dfc22d25b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde204d69753f4a0ab13142ba947b65ea656099d3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387616 | `0xe139cb8643897e28ad9dccf488151b6b55668ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe27abc5b1573086b32a131b505349ace55f05582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a0c76411b1b3bd03ff5e0e1cec8a15a41b56ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c07839c0adb24bdc48f81b0bfabd0f0b36c9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4278b7f21932c3ce0acc5684817ced29dac7056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe99e31a10502ac2348f529a10ed602d850ed05b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea319ce7b120ed8143fe35e3205718c09bfb353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb0557745a83c4e75f21907e2327c722df02cda3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc05b8fa803657cc0028066c367853d7c86169a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee63de2600548487def0d08828af64f54df9baca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee6abf5b6a6d130f70ede9aaaa319c17e52b7642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefefccea2ef6695659983541393430bf47c2c953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf751b1d7c04c63b953e4accc94f825dbafda166d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf805b6ddeebb3b9f20a8c0018f8bd69f05ec52dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf85b17933669ac3449b4154dbbd20a61f2d4d527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfb1beaf10f9fe3f8f10fecc5f35e49aa668d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb92994aad2ed93462ad9efd9d9017efa6234e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff463e4d5d8c0444ab431d86e8632c13dfd67990` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 97
- Live contracts: 0
- Unknown liveness contracts: 97
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=97

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01efae19ed830429b48d576421f9d23de8c9d402` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x04ac02a0c3ebb6073b23b8823fdaa57105cb35fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x0593ff5f206538d586e18e6eb68eecb1e10d632f` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x06a7ceb620cf24d75944050aec6d65b08897e5fa` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x088d59f0a477ca92466233340e8c42d7beaff016` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x09703ef11f6db2794bf72e4017fdf5b4c42a53b0` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x0f5cfbaae98a3bfc2da70a5c96a31b4ef84500ae` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x12455ba1433df897b1b4b79279c19c14f4540d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x1791527ebb628209acfbe3ee65fb3158a833060c` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x1913bfde837324ef2e5b6b2a8017d7c661a538ab` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x24359abb19f3a0baf7b02708e38766234279d263` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x298a4102d789bafc5b143a9cbd1aa29769dc7bb4` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x2b4aa8dff3fc434f71de882f8450ce03b98ead8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x2e7b77a81bad69cbd73917bace2a9d79558766db` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x30895bb3dacf26584df8472f12d523db622aea17` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x30fc2d5005adc0652a34b93081346919471b8077` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x3204768c73ad0b8da42373ecce63915a0f2bf703` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x33e073f2fa6ac6eedaacf6d29b0ae37f40ac67e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x35a83e803893aa8beeeccd2256c97bf444ea14ff` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x369d6544a316ae6aa26754665a810176d4f4d9dc` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x3897222f753adf6e56c176e1b84e591e82d1818a` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x38f4238ae0ff0b944058137a5feb2da78d1aad40` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x3e3dff62cc9d3be9db89f1e308eeb7bbf8c53020` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x3e9203d43625882a4ab91698a11a32fcef88e4eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x3f65592f8b42b4dce8f1f9b50b97b6c52a1d4f0d` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x4333a8309aa42b59844d2ebc21ad7beae4d1fcba` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x4450a2a20159d2c57073ca2ecf73406eb8f7832d` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x494ef97808c42ee1da474eb2ab38b46d2e052f3f` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x4f48ca616a5a2884bb30a4e0f505411b0448937a` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x5045724e5ed08b8aecbad98556af326c33299c19` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x50ca523eeb5aed11c3a74f730de82aea9bd04d78` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x542e1fbf057de360923cfa2d5c757fa2f05692f7` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x56f7aa35d075e5a7d45c17fa25c2e7ac958db3af` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x582fe653f267265de9d7627b8216015b89673ab5` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x5f8252cbb3219d418c1be1618d995cc2d375e444` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x73700aedbb8c3c4692d820d0b9bcf45c38d0f091` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x738725a1be77bcb57eb474501d0d1774d76b3d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x740ac718a710a746a8f6e6ca406cfcb3eba736ce` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x76ed8802976f2addb349bfbd83ee9cbe9090e7bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x77a04317ef0819a7d20f79e70cef87d088d7f995` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x79ec5e09282ea619c277d99308e94fb1835f83fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x7e9d2573d3d4cb731ee158fda170b24a30d718ff` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x81ac15b58251e36dd30b85e8c152ab5c8a217590` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x82f0952dbb57d5a0b77dc39a209d699a4584dfcd` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x839b564a3028b1e708ec6a8ee2f3109575afec9f` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x851d005673a4bfd00b59ede31424cd8beb679cef` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x853a46e9b2a81d66fe5e902af771879b70933446` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x871b119c40d512ad3839c7f15456d4717be8f12c` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x874f9b462784e4ed400908a7737e4bb62a9bac16` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x8cae6ba4fc44513d770366cfeb857eeabadaf3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x8ee090a8486f40e059b61d23a9ae9302508acbbc` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x986e3ab9d4a48a43d16cba332f2c0a8ae5983f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x98ddbfa10abd822f235a3d6340f1c233c99eddad` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x9af7d7bb07a8c59a50a79c9b8882b88396020e04` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x9b02ff5858179a344eb20ca86a554c7489f0b6b7` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0x9edec07c08c9cae2f04c413b0354d556432e6cb3` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0x9f119be161d8f708602b89760e24299a92731a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xa022adb8c6bd4c25325a662cb928570a8e3966b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xa5ca41f7b692b2354fd7ce65843d380ed5c51bad` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xad44b8257fb730e7344bcbe2908679324bd4dcf0` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xb276d48b5936f6ab022d14cabd45c1592d33c9e0` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xb58e62dbd8e15fc1edc03ac55ebff923962389b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xb5da65aef4aefb52b4fa143c011b5964ed87ecef` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xbc41247990cb953a536ad9536142c15ca156e226` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xbdfec477b9691fdc4e436431da5f315000fd4f24` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xbe90ba379dfbbbedbb372eca8535f6fe19fd85cc` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xbfc9022afbd219ce4f399dcecae96e0f6d96f8f2` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xc0709466d89f0346501cba9becd225f96309964f` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xc36ae0db4474e665ff0850528d545a45763a714e` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xc453457b4e332b03ff0faf0ca78fbdabe0351e8d` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xc8916abef018d91f6db4cadd37673795912fa5ac` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xcbd5323d71a3424a7e0fd11c367565bad3838867` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xd131b09707a4a9d7ce7c74d454d6ae335e9955fd` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xd218cf7c4367e27bd709b6b40c562e01e9de6e2c` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xd85b573e76bda10d7161b71177d9cbd1b48698bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xda63266b5184d08dbfbace96267837c45d7d34da` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xdaea6f9feabb4ca8e79c0a9126aa041b35103f46` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xdb018e3b6f4af289b21a5760fcaa034185301a0a` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xddf67d0761c02680dbd73b3efae994dfc22d25b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xde204d69753f4a0ab13142ba947b65ea656099d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xe27abc5b1573086b32a131b505349ace55f05582` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xe2a0c76411b1b3bd03ff5e0e1cec8a15a41b56ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xe3c07839c0adb24bdc48f81b0bfabd0f0b36c9aa` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xe4278b7f21932c3ce0acc5684817ced29dac7056` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xe99e31a10502ac2348f529a10ed602d850ed05b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xea319ce7b120ed8143fe35e3205718c09bfb353f` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xeb0557745a83c4e75f21907e2327c722df02cda3` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xebc05b8fa803657cc0028066c367853d7c86169a` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xee63de2600548487def0d08828af64f54df9baca` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xee6abf5b6a6d130f70ede9aaaa319c17e52b7642` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xefefccea2ef6695659983541393430bf47c2c953` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xf751b1d7c04c63b953e4accc94f825dbafda166d` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xf805b6ddeebb3b9f20a8c0018f8bd69f05ec52dc` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xf85b17933669ac3449b4154dbbd20a61f2d4d527` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |
| unverified unclassified | UnnamedContract<br>`0xfbfb1beaf10f9fe3f8f10fecc5f35e49aa668d58` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xfcb92994aad2ed93462ad9efd9d9017efa6234e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6b22171a3eb9cf39c0f3e56c4713f2e30e1ba262` |
| unverified unclassified | UnnamedContract<br>`0xff463e4d5d8c0444ab431d86e8632c13dfd67990` | non_address_book | unknown | unknown | unverified | n/a | `0x4da7ceb08bc90d6e5c0ee576a5a2d26b0deae59c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf](https://hashlock.com/wp-content/uploads/2024/08/IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf) | Hashlock | Audit | 2024-06 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21366] IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf — matched: Scope section lists 7 contracts with MD5 hashes. Audit date is June 2024, interpreted as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | IMF | own contract | IMF (selected) `0x05be1d4c307c19450a6fd7ce7307ce72a3829a60` — deployed 2024-05-28 14:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | IMFMoneyMarkets | own contract | IMFMoneyMarkets (selected) `0x30f75834cb406b7093208fda7f689938acbd1eeb` — deployed 2024-07-10 16:07:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | PepeMoneyOracle | unmatched — not counted | — | listed in scope table | no |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | sbIMF | own contract | sbIMF (selected) `0x3215c358b7a70c09e0a98827f744d107095e14e4` — deployed 2024-07-10 15:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Irm69 | unmatched — not counted | — | listed in scope table | no |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Money | own contract | Money (selected) `0xb162caa6b63de33edc5d0a14b901fb6a54ee6b8f` — deployed 2024-07-10 15:36:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Univ3Oracle | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xec39c6df7947f2a4923d317b2805e41ed9116ecb` | ProxyIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66099a17c21a8df6d949a704f484d544b81fde1c` | ProxyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 111 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
