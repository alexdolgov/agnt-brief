# Agentic Audit Brief: SwissBorg

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SwissBorg (`swissborg`)
- Website: [https://swissborg.com](https://swissborg.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, berachain, bsc, ethereum, gnosis, moonbeam, optimism, polygon, sei, sepolia, sonic
- Contract surface: 302 unique implementations (305 raw deployments)
- Coverage basis: 2/6 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $746,029,108.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SwissBorg. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, sepolia. Structural roles: 2 core, 2 infra, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (2), infra (2), supporting (2)
- Contract kinds: contract (4), abstract (2)
- Detected standards: erc1967proxy (4), erc20 (1), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xac15982ca8a8e8bac738fe492b84d8761b4384a3`, chain 1)
- UnnamedContract (`0xba9d4199fab4f26efe3551d490e3821486f135ba`, chain 1)
- UnnamedContract (`0xd048a8d52da402611a0c5eb6f7388ffc41cd1417`, chain 1)
- UnnamedContract (`0xf0de6a331ab2ee4199d81462e740bc38e6f879c0`, chain 1)
- UnnamedContract (`0xfb976ea3ae9bfe4bc36fb7078e0b32e579463e96`, chain 1)
- ChsbToBorgMigrator (`0x62931ef690876142114ecf5aa52cf0fbbe5e910b`, chain 1)
- ChsbToBorgMigratorV2 (`0xaa854688caab725fe17b7d21b46fda5af365985a`, chain 1)
- GnosisSafe (`0x259c444b50e3ab173c4f850bb40d85a9ea0230f3`, chain 1)
- NttManager (`0x66a28b080918184851774a89ab94850a41f6a1e5`, chain 1)
- SwissBorgToken (`0x64d0f55cd8c7133a9d7102b13987235f486f2224`, chain 1)
- WormholeTransceiver (`0x45e581d6841f0a99fc34f70871ef56b353813ddb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/6 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 290 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 302 unique; 294 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/62
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 240
- Unique implementations: 302
- Raw deployments: 305
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 3.2% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChsbToBorgMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393614 | `0x62931ef690876142114ecf5aa52cf0fbbe5e910b` | ✅ Audited |
| SwissBorgToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393615 | `0x64d0f55cd8c7133a9d7102b13987235f486f2224` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a0d3ff89813f17a968572e28af3d132aafc234` | ⚠️ Unaudited |
| ArmorCeramics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19da36dcf89327b2cc3d477b97dba499576f8e60` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000b2d5a56e8b2eacd8c9d9a6ead8d044fed87ac` | ⚠️ Unaudited |
| AssetProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02086ce6fde7c1adf67140830972a3378bdb1b3a` | ⚠️ Unaudited |
| AssetWithCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af703b86b8ccf30040d82b088b73842573d3d9c` | ⚠️ Unaudited |
| AssetWithWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8f3d80103181fb6a68229bcb8b410b831a4e45` | ⚠️ Unaudited |
| Aura | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d51a0a38706a95ae6129f177bd293e8087e0f9` | ⚠️ Unaudited |
| AVtest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a16a48435d90580e9f54ff83b472413dfafe846` | ⚠️ Unaudited |
| BLOK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc7a65176b532db7e1ac26c522ca07123f952e1` | ⚠️ Unaudited |
| ChsbToBorgMigratorV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393627 | 2 deployments: ethereum `0xaa854688caab725fe17b7d21b46fda5af365985a`; ethereum `0xfb976ea3ae9bfe4bc36fb7078e0b32e579463e96` | ⚠️ Unaudited |
| Coinoplex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x567f4f0b0b5209644c0390f7860c7859b0f82a90` | ⚠️ Unaudited |
| CREDITCOIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e51f6841d2f188c42c7c33a6a5e77fb05cfbabe` | ⚠️ Unaudited |
| CryptallionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8574634a96bc7e56847c7df729c8acdbbea37681` | ⚠️ Unaudited |
| CryptykTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a501903afaa1086b5975773375c80e363f4063` | ⚠️ Unaudited |
| EmphyCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ee674689d75c0f88e8f83cfe8c4b69e8fd590d` | ⚠️ Unaudited |
| ETERBASE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a1cbb5d28cdedd55b7daa627f658fbd8cf1d23` | ⚠️ Unaudited |
| FluxCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282eaf0c93b535731c1a2ef26a568e6131980c4a` | ⚠️ Unaudited |
| GLOBO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3b30ecb4048eca205ce90a93f9949f74df3d8b` | ⚠️ Unaudited |
| GloboX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13eedd9cd79b55719fa1e656fbedc800d7f3d5f9` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393625 | `0x259c444b50e3ab173c4f850bb40d85a9ea0230f3` | ⚠️ Unaudited |
| HealthCareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446c9033e7516d820cc9a2ce2d0b7328b579406f` | ⚠️ Unaudited |
| InspeerTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34e97712376ec830591e4dfd2efe8a8981143e2` | ⚠️ Unaudited |
| IOTW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe327c5a809fa721d47b80c5038a0b393e61305` | ⚠️ Unaudited |
| K2G | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926703fb558f46331b6a06322bcf9e9d017fe6ec` | ⚠️ Unaudited |
| Mark | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf453b5b9d4e0b5c62ffb256bb2378cc2bc8e8a89` | ⚠️ Unaudited |
| MarkOwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0285d3178199d95602fe37a6f797e0036af62bc9` | ⚠️ Unaudited |
| MITIO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4f403fceda8eb77d95810a7db12399bf843b7e` | ⚠️ Unaudited |
| MRKOwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6722b7ef27c774f7cacdea9e98a47641521c69fe` | ⚠️ Unaudited |
| MRVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d9a35e84c4c04d46938276e40939b2bedeb25` | ⚠️ Unaudited |
| NttManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393624 | 2 deployments: ethereum `0x66a28b080918184851774a89ab94850a41f6a1e5`; ethereum `0xd048a8d52da402611a0c5eb6f7388ffc41cd1417` | ⚠️ Unaudited |
| OpenGoodsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adbfb956bdb58e84a700b62a2bd8b4d5a302b80` | ⚠️ Unaudited |
| OptheriumToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630` | ⚠️ Unaudited |
| OrderbookBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbeae4005826a63153875d0fbbfe8a91736bd76` | ⚠️ Unaudited |
| OrderbookPresaleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb048bad454a993537caed5a7917e7c944a720848` | ⚠️ Unaudited |
| OrderbookProfitShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd5219b7280291dd83beb8baff96d15f22aab49` | ⚠️ Unaudited |
| OrderbookUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca075cf7496d7fee464ceb98ccfbd3b6408bdf63` | ⚠️ Unaudited |
| PEXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c2a0c171d920843560594de3d6eecc09efc098` | ⚠️ Unaudited |
| RAISON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ed9d9495971a23fd5f0b9244b3dbbb402707ee` | ⚠️ Unaudited |
| RedCat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe056d5c08c349beabc0369b79319636b0bf5d94` | ⚠️ Unaudited |
| REDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b567371fbb8f1637d0f41aeee420031b1ea63a` | ⚠️ Unaudited |
| REMME | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83984d6142934bb535793a82adb0a46ef0f66b6d` | ⚠️ Unaudited |
| Reputy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a540227a22f99ceb492e3c4935176a1e2364a4c` | ⚠️ Unaudited |
| RetailGlobalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f551ea41f7a8025412acbbc26701f968bdb4d5` | ⚠️ Unaudited |
| SIXAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccc23875503c5a1cd901b3006bdb5eb84c17433` | ⚠️ Unaudited |
| SyncFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6710c63432a2de02954fc0f851db07146a6c0312` | ⚠️ Unaudited |
| Terra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf187eb618d2335b4130d784a697be96f4b07b9` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc574d5f8f7e79c8a9c1d077be9154131aea84139` | ⚠️ Unaudited |
| TEST135 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537f77a805e81a7072fcb1b365727087b3496ddc` | ⚠️ Unaudited |
| TestArmorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584beba37d962edd0fb4b16b10771d146dc516c3` | ⚠️ Unaudited |
| TheDealCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8458d484572ceb89ce70eebbe17dc84707b241ed` | ⚠️ Unaudited |
| TokenForTelevision | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa838be6e4b760e6061d4732d6b9f11bf578f9a76` | ⚠️ Unaudited |
| TraderStars | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb2f2d5a5483be5dbe56234ca222eb4e1a8591d` | ⚠️ Unaudited |
| TransceiverStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e404415af8a8a9de725c4f9d3426e79e1571f7c` | ⚠️ Unaudited |
| TrustMeUpCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e734332e8a6ee5ff779f8b7349d6b449ff97092` | ⚠️ Unaudited |
| UBTFreeze | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b6a6258a521036dfa4b2c1b8b633ae89bb8f53` | ⚠️ Unaudited |
| UnicornSPXSecurityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d3d9abbdba8305ebb8b72996efe55bf785aed0` | ⚠️ Unaudited |
| VaultbankToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe63ba55d9365ca962ec49d1c0e42a44109bf09d4` | ⚠️ Unaudited |
| VOLUM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1c460ae47e06be0756f9a1831467ff2f5fa4ecc` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393626 | 2 deployments: ethereum `0x45e581d6841f0a99fc34f70871ef56b353813ddb`; ethereum `0xf0de6a331ab2ee4199d81462e740bc38e6f879c0` | ⚠️ Unaudited |
| Zichain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48778849bf4ecee7a9de39e394930787717c2b5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (240)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e811bca5b02e972a5bb2075da7326de6f169eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a5bb39bf0d9f08ec41ada3331a352c5f0962eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05bcf5a47ffabc48366835f79e7c0a38f2576fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0616ba1922fd52b3de6760cc5ffee7be6af3c377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067be74bfe5bcdce31b97efb2e0fa1d71b946427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bf9ec2f29f6940a385f6d50350d2a09fa8c3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0955d84f3ee02117297309503452803310f56b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8a65093b95adda99e5f485b644ff8d6299667e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df87fede0f97dd8a37885b5adfce2abaf57a073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f0158b9a8076c7037b179656c338cf29f0e804f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11cbdbd63d46e49d8b04ff9aaa858951decdc339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11d32ac5d56660f9821960c7bfca357d72c67d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125d8cd2878b96273dd6287439e9ddb6835eda5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14690237751247a0162bd9dd8f5ea342ba22689d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1579cd05c57afe279ae4e8e89c251b551d5f2f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15eac4548f8f4643194a99eeebde1b2a2133ae77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e9a391a9057009837c661958634b6bee3d7fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ee6ae1a9756a965fe50318e9e801af6e5c4bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1920231a83a67511af5ab4e5148b5cd8e9135c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196c28978c4315bb0d54d00810c611b54fba4f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196d49fb315f1719a2163feed06b63cc754c8d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1acb2f416b3a507559f84575f8be588623f25885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c2f4a056de78539a3c74d4a9d80306defb27361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f41ef5312978533f031a299ceacc8e5c77be519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20473f851ceb81d100989bbb29267e0f58599199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20589ea722360b94986bad5351ab67e463bfaa26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20e2c2d8aed724acaf3b44cfe876523d105aeebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2455f2f39d4c7e8fdfecf89418872338ed75eed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24fe5a774e59bab06b4da39c4d2c5324cf151b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26af1ac28238fb8ed10cbd95decb1a965824e2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279817dada2945ccca762f9e9af26c47c9f25205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28241d225e3ba369aed0ba9e3e045f70b1e8715d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282f5e0d43d36ad556196c2d85bb4b735a69a0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2831df7e0b09852457615a846a9df4f602766d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292e18db1c1f92b4000dd7ba0e1d5bb36df899ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c6c2f270f92cf3272033db031e99becd73af5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2da6a33fbf1aa38b18ce13a5bfe2bde18cad1667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ee1b83430ce613c206f80a966e902b3f15b7867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358580c0eb9a0c12ba0483c28a7bb2423d861ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359722022d5db3566d40530210cf09da5c6bce2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363bb2d963e564d228b9c644c979bdf3ea77af68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371bcde89202d82dc8951f2c375adf635b916d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3870a571d2e30783b16f080a8578d2e662237e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5228f56d2d821c3cfc3416a0f42010fbf56890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a762bf32b432fe26fa1344899a328de94077845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0801025be09463476359fb4c85eb2f2577d4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cb52f7296026318879735e4c1cd77ad0446702f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f57f8dd7cf41862cde6715c58225439fb0503e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40016cc70082140a8c3f49c942faa6c0c9e5ed21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a8bfb4e40bae45527fa8fbaebe9f48bbd9805e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43aba80a817e77b7d77d97422f5365196d6db375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a3635fc83be16705c662c28c04c5b01b17895f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a64e814bb53c130ab5be3cf8dc9be9aaac180ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac4ffbc43c4f1cbda31f12a13148c52b96e36ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6a5328ce7c3bde5de78e0a355f5f11fb5145c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d131240cd5b369f0c7c0bb1a9167d8d2ced556c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e06627600d2b6a9754276d277892d94b0740c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8519772f6e0019650dd12331b15023f38c4e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e92a879b5da6683cf9b388adc927da695ddf88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8e8f865b842c9609d5d7e1b32b80b73adaab88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd1e78af46e66bf72be688f200585e0b8b8145c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e047505120a8a6d5494145b43d33128516210b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524e01177d2bd286be0049076625f4f9d4d1dd5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537dc8926cf28a83286ec48e43208a043d37b3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549158dc80057ea574cf7722c2a0024cd2cc09f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54949db3fec0f4d937556990222b9cc01f235b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5620252a871335a6d2a31f60e422657c06e7824f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d911966814244a889a34163c234c435920e022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5716a2a78a76e1e80db89ba1327b4849515aee52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580b5dfb7dea28a7736e1c7ee80cbf61d6e164f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x585edb166fc09131cb4a5bdd5c5f30452eb8c40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c7668357da89396beb55aac450fb2badefd1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58f65667758b973c3b8c4c44b5131325793fd75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x598c1cc785bd71ebeadae607382a9874f8503429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af860f20ca333941201a4fe63d52ef000f09607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cb6491db9db68fbda9cce1aa0144d6e824efb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc30d149e0672edb302e85857661b34a3bb9fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5df937d2721188582e77e675ce1d953a7294b513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb2a5b30fad07ad5ae316e0699ca90307334c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1064adc85af90ba1780e1d5cbbd9705432d229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f51805b2a51c26763fa845e864b8681f1b5664e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc43ed7b01c8a9de08c37f17c5f65ac4dfab2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600131c7c895d480a92ba30b441394950f2b07c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025fb154b7c30e13657d5304dafdb55b194e5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6035a6e7dd68116d7c9315fb09fb232928413681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63bca62991b2bbccfe163d7265ae8c8271946256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fdedb5e443ba78879644fd0a518ba0da4a9f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65480893e27f385aae3c25adb4926c13806151c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679cfb1c44ff46d8847ff339a1654bf38a551efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68009f3913238d7cfd3a2d5fbb1d455e3e84c1a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6801d66fc450cf93189076f52dd77c8349b57973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68087493d4e5b89f46003c0fb05b08bb968c2e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x690b0081673d3fbb32f66d232f0a73d9a96e5fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6925aa2b54a89c7e37f5c9a2275c5e90266e678b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a81799b3feb11847f28b99ae292810ec9aefc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6afaa5b86be1eb2a740025b04082caea218da403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c79aa4002398f18f484696c7679ea7856af8ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9c61eb32bec1bc401e73822ee5af22d3ac1ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6da2054b9b5e1b87500186af56f530fefab7227a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dcca76491f9784c1d757f9c51e7f9f94e12491c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dcde0b300ec5ffbc3c3c48d85aa5a03c506234a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x709375db696f9b54db7a338e8e30532d0d5b9f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ae3b93a49ca26abf80d8b26d5cf58087dc1bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71ea782e01c3626935c461c13a2cd5963fa87ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe5e8da530a495f64d2132a43e1c0260d1c3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x743450593effd3884fce8e13179862fd769dd29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ad4ba54096b07ec34ffbcd4f47c7449bac7eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77752d9be1f5a4bb51bc64a3b5649f06d62b70e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7989d03ba2f7e26f2731efd3bcbc560698b61ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be04c24f9112d151b3ed11982be21505f891dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c9c726160ca7bd42296fa38c88fc561dd0ad6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d112636db702237871f085358b16aba691a5f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4e1c945651017ecb1911d037d6186671fe0b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e5576e75a6e933c336c1d7e12a7a720796e13d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea3a552fe6fc4c1ba4c85bfc1acd0b9f8ada71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe2ccf6f66cb4a7e0ec5545025d208974ab4932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8104c6e800871013b494b21ca250fe9648b844ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811530d4f6053c378739853a384b06fb770b2b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81849cd696c9a46058ff67dd6c82a223b3672d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81905cac4339cc51ad241be1d75045f6d6a53d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82096e5723b65aa3f936a1876039e581bf04b13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82a0f01230cb579b947d3f879abd767c808f8617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b2849efb86bc881bd4c4f54d222ad4e0731f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x844564ecd0bde5f672749e6dc98116e65b88884d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84adf4920d3c6bc37d4505fb5b90d1b7516d03b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84cbde341ed0acf4e59775f577d7cbd19da7ffc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861880788109d1274bb5a70989c28e73cbe2ca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e43b64313ebfd5ebe8ecf22350bf20d7bb1939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8872cc07395420c0db68a63c46f7b9569fabdc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b284337ee178fdd07e7ea6d8b85cc42ba706214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cb3faa98d0a2ef51d210898220856952c50f506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de72de0588bc119af2450115cec4f5082001545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8df4cd7f2af0c96cae735332244e8205e2877594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f04124907ac4699ad34ae1325d253c1641c5780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908e313975d02adea8dfd5a5eb830d10cd828fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90da0adec2a326a003736d6f1db4f3322bdcb956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e609aff8731c836fe6a22cb5b520f86aa616e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933c92216eb197db879306577a7cd0fce2717e6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94be0b71f7aff76a0ae82a78ee0be91a03d970e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9636a918a9af6f4cc4f92aa3254c032a7b97ee28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966af937e527184b8635f5f9fc4fac47f350b555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9820a0a6e194b18aa5934cc8d68db8532da7ab6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990cdc069dd43a8c89ee41be1a4962f7b3b1b9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994a5f2925346c7637a9657ad4ef747ecd1dc9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9977aaad822e56f6777fa9836ed4261600b9996d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1c4739324b7b232a8b6464165f41468b99a9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa039369062636605761d2a6cedd9703862109f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa177dd336d36886689a2669387ed579a61d814c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa290c463f18c37691282bb7c5429808eb3d4d0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa44598ea57d0fa16a05197bf4501565ba4a10e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa46ab62187d360d5eef90af1348fd6ff0f6e6868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b51d107692630c0c8aebbb73eb46a58a92a8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59317f3ba8cfeb49e8018f14fe52f4678d8a3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5fe753d1d41eb72749b9ae33885490a106d1584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7a707782d2ee6c6f98fd1a810504292331ec488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a6f08534e5629eec3d4b2d5e3ac43ceaba71e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393617 | `0xac15982ca8a8e8bac738fe492b84d8761b4384a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5bf7a59d6e2211583afffd911e971253caa0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac914ff6d04b076be6c8cd5871bfde37d52023bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf6c49b415707ba8e9b4f43938bed5ad019c6668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11cbe14ce90be4b3458cc5d8c08b2068f792c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1206f3480b6ad9e53f89b9f166f288a5d152c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb397838d9e755c9bcc9f95ba9baddf4a64561092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3acfd16b5557c5bd51adec532aa469938ffb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fcac375e83211e1d3916faba9d6d7218d1a143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57d8453a2366d043ccef4522ba084d010efad5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5fdd4dec28a3077552daae404ab711a329134d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75ea227828111af75b670dd8b31170750e67d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5e16347273e0aed2a5ac328b1eb5b299644bad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393618 | `0xba9d4199fab4f26efe3551d490e3821486f135ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbab1226db89a959de93422158e51874f81828fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb808fe8eef3c301e4cabd509cf491c543daccb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb98d04494a337ad56f3cdb67d38704c6cae29c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcee0a26be2ce2d2ee6fc502dcd5e10889ee4c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbed49e03fd6297f6e3c617cbcda901bc62d951c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbedf6ae091ade7476613fb535d78704e4564969f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cb653e0a23a124e065a695fe6b962ab916e44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d5131bbbb8d5ba323e9495d08025784da2946e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c5482557886e5348719f5df0191daf8acbfcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41473fa99a7bf06388cfbe22cf8ba28d662a5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc42e0454b50f979426267fc3fbba6f2b90f9b65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a86570bb55c1109c92a9523f93fe6a89de2c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b065825949f7391f3eb389dc3c2d2b63392ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc70ed58d18c430aa20a227ce3bd04d9d664dd730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74e9a67b15020116a2f9c6291e86e9f2b6e9e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc82d67d002ae472ac73222fea4a8b4650fc5259e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8885a5acd8966fb83c17db48044d8b570bb8fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbca914cd7119a27870d95359694da7d87867e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb5bf88c4d3bbe758ea53d4e8a203f32e7bd3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce12d76bd1bd123142a948fcd7902298c5f30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce148fbc869771c10fc2e14eb8852aff7e4eba13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce529772da6ed7a9edb8573b2c3b888d75fdb15c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf254c52a8502f6e764065c9f234168eaed41d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b732e2701a0b63a92b63f13202f52a57c60cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c9494b0c83bfdf066dd11194b36b11ff5d9c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e3ff1fb22f537ba3c3aebb072a45858a1986f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3689dc58ee1676f03742dc6893eca74f927005a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6dd4da491e7a4926be2f4bd4fa615510637cc67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd784ff13e29c0e9797a4872c115eda952013f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd92fedf28c798359f0d005d6dfa02c5949345609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd943b9c0060cf8e74d8c44d4e58cb7f6c551b938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd953df88365859862883230c2cfb73c984ea26e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbad18e3697a1925e9df6c89fcfcbb8103640e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc184880b006b318e8ee8a9b82ba4c442fe5b47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde45ae39c894e035b1c95421dad714831df9af35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5cba9240185f9e0d567cbd01fabaec10f66b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf63640bf66c80c4f348bf613b3a206a3269e14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe10aeeb50583907f4f2c3fc15a393ce95e2e2894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16a4a5940e73a76f7c4cd88ee6d5aa470262f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34b4b04291d640ce15e020c93194a65d7986481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe403bb4d0b99dcf5662f34cd965fc85f6a09cf20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe443ec8245a6ccae3f94240e49ce6fa4fde20b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53f998cbff551ac01597b65d9a53d42505b497c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56704cd65d8e6d41eca48d65e112d7870314dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6031eba7ef5722dd3cebc431907703ecee9f061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79d715a132f95862951ee69a2e21ae126819935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeab1c4849852ec428607e12a84a2e1d8ab5ca2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb534b7c207e5ebae9d2980fa89760d18a0161dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec51eb15acff3a061abea7132d8a45eb2cf30bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec606e0e1d5c3397b9528d76ab4be757d7829a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecfe2dce2a5585614379fa67108cabb18a24a125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee56214e9ac58d17f947cab3199eb72ab2c64946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef56d65f445c3fc67230d9a4f07fe91ba327d796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf001ced2892f6548d3dcdbeee6186eb7c59e3a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf21bee138c40f98db58c48b576ead51f8e8d73ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a87ec93a1d26cc82b14aa8874291e7d52d04e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4ea64bd337cdaa36c0d32fc0965717a0db52223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf543ae5103c18d2d94c7758f00e6b608318e38cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61fbf839d1eca40a69d0b59278dc6759357c26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64c4abdaa85909571a08e0ccaddfe258d89c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf75431850d5d647f774b762d47ecc1f50dc87df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9b6d23a70253f6cfaa91743d366c9032e3d0619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa792d78d83fdd221c517f409efc74d3596682ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd76d5e3d90a58148f84f185a9043af4444969e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe0bd6a4c7754bbcebb1ead150351106abf17718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe77d80873a7a09e0ea62fd89c76fc13d3875596` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393619 | `0x3c0801025be09463476359fb4c85eb2f2577d4e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393620 | `0x679cfb1c44ff46d8847ff339a1654bf38a551efe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393621 | `0x70ae3b93a49ca26abf80d8b26d5cf58087dc1bd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393623 | `0xc5a86570bb55c1109c92a9523f93fe6a89de2c77` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 229
- Live contracts: 0
- Unknown liveness contracts: 229
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=229

Showing first 200 of 229 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x00e811bca5b02e972a5bb2075da7326de6f169eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02a5bb39bf0d9f08ec41ada3331a352c5f0962eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05bcf5a47ffabc48366835f79e7c0a38f2576fef` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0616ba1922fd52b3de6760cc5ffee7be6af3c377` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x067be74bfe5bcdce31b97efb2e0fa1d71b946427` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08bf9ec2f29f6940a385f6d50350d2a09fa8c3ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0955d84f3ee02117297309503452803310f56b33` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b8a65093b95adda99e5f485b644ff8d6299667e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0df87fede0f97dd8a37885b5adfce2abaf57a073` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f0158b9a8076c7037b179656c338cf29f0e804f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11cbdbd63d46e49d8b04ff9aaa858951decdc339` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11d32ac5d56660f9821960c7bfca357d72c67d98` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x125d8cd2878b96273dd6287439e9ddb6835eda5c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14690237751247a0162bd9dd8f5ea342ba22689d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1579cd05c57afe279ae4e8e89c251b551d5f2f51` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15eac4548f8f4643194a99eeebde1b2a2133ae77` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17e9a391a9057009837c661958634b6bee3d7fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18ee6ae1a9756a965fe50318e9e801af6e5c4bfc` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1920231a83a67511af5ab4e5148b5cd8e9135c9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x196c28978c4315bb0d54d00810c611b54fba4f00` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x196d49fb315f1719a2163feed06b63cc754c8d59` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1acb2f416b3a507559f84575f8be588623f25885` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c2f4a056de78539a3c74d4a9d80306defb27361` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f41ef5312978533f031a299ceacc8e5c77be519` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20473f851ceb81d100989bbb29267e0f58599199` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20589ea722360b94986bad5351ab67e463bfaa26` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20e2c2d8aed724acaf3b44cfe876523d105aeebe` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2455f2f39d4c7e8fdfecf89418872338ed75eed2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24fe5a774e59bab06b4da39c4d2c5324cf151b1e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26af1ac28238fb8ed10cbd95decb1a965824e2ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x279817dada2945ccca762f9e9af26c47c9f25205` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28241d225e3ba369aed0ba9e3e045f70b1e8715d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x282f5e0d43d36ad556196c2d85bb4b735a69a0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2831df7e0b09852457615a846a9df4f602766d65` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x292e18db1c1f92b4000dd7ba0e1d5bb36df899ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c6c2f270f92cf3272033db031e99becd73af5bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2da6a33fbf1aa38b18ce13a5bfe2bde18cad1667` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ee1b83430ce613c206f80a966e902b3f15b7867` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x358580c0eb9a0c12ba0483c28a7bb2423d861ba4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x359722022d5db3566d40530210cf09da5c6bce2b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x363bb2d963e564d228b9c644c979bdf3ea77af68` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x371bcde89202d82dc8951f2c375adf635b916d31` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3870a571d2e30783b16f080a8578d2e662237e29` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a5228f56d2d821c3cfc3416a0f42010fbf56890` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a762bf32b432fe26fa1344899a328de94077845` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cb52f7296026318879735e4c1cd77ad0446702f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f57f8dd7cf41862cde6715c58225439fb0503e1` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40016cc70082140a8c3f49c942faa6c0c9e5ed21` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41a8bfb4e40bae45527fa8fbaebe9f48bbd9805e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43aba80a817e77b7d77d97422f5365196d6db375` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49a3635fc83be16705c662c28c04c5b01b17895f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a64e814bb53c130ab5be3cf8dc9be9aaac180ad` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ac4ffbc43c4f1cbda31f12a13148c52b96e36ad` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c6a5328ce7c3bde5de78e0a355f5f11fb5145c7` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d131240cd5b369f0c7c0bb1a9167d8d2ced556c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e06627600d2b6a9754276d277892d94b0740c56` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e8519772f6e0019650dd12331b15023f38c4e3e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e92a879b5da6683cf9b388adc927da695ddf88e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8e8f865b842c9609d5d7e1b32b80b73adaab88` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fd1e78af46e66bf72be688f200585e0b8b8145c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51e047505120a8a6d5494145b43d33128516210b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x524e01177d2bd286be0049076625f4f9d4d1dd5d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x537dc8926cf28a83286ec48e43208a043d37b3cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x549158dc80057ea574cf7722c2a0024cd2cc09f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54949db3fec0f4d937556990222b9cc01f235b7a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5620252a871335a6d2a31f60e422657c06e7824f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56d911966814244a889a34163c234c435920e022` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5716a2a78a76e1e80db89ba1327b4849515aee52` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x580b5dfb7dea28a7736e1c7ee80cbf61d6e164f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x585edb166fc09131cb4a5bdd5c5f30452eb8c40d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58c7668357da89396beb55aac450fb2badefd1bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58f65667758b973c3b8c4c44b5131325793fd75c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x598c1cc785bd71ebeadae607382a9874f8503429` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5af860f20ca333941201a4fe63d52ef000f09607` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5cb6491db9db68fbda9cce1aa0144d6e824efb5a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5cc30d149e0672edb302e85857661b34a3bb9fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5df937d2721188582e77e675ce1d953a7294b513` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eb2a5b30fad07ad5ae316e0699ca90307334c40` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f1064adc85af90ba1780e1d5cbbd9705432d229` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f51805b2a51c26763fa845e864b8681f1b5664e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fc43ed7b01c8a9de08c37f17c5f65ac4dfab2b4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x600131c7c895d480a92ba30b441394950f2b07c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6025fb154b7c30e13657d5304dafdb55b194e5dd` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6035a6e7dd68116d7c9315fb09fb232928413681` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63bca62991b2bbccfe163d7265ae8c8271946256` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63fdedb5e443ba78879644fd0a518ba0da4a9f3d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65480893e27f385aae3c25adb4926c13806151c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68009f3913238d7cfd3a2d5fbb1d455e3e84c1a6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6801d66fc450cf93189076f52dd77c8349b57973` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68087493d4e5b89f46003c0fb05b08bb968c2e82` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x690b0081673d3fbb32f66d232f0a73d9a96e5fbc` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6925aa2b54a89c7e37f5c9a2275c5e90266e678b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a81799b3feb11847f28b99ae292810ec9aefc8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6afaa5b86be1eb2a740025b04082caea218da403` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c79aa4002398f18f484696c7679ea7856af8ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d9c61eb32bec1bc401e73822ee5af22d3ac1ec3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6da2054b9b5e1b87500186af56f530fefab7227a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dcca76491f9784c1d757f9c51e7f9f94e12491c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dcde0b300ec5ffbc3c3c48d85aa5a03c506234a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x709375db696f9b54db7a338e8e30532d0d5b9f99` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71ea782e01c3626935c461c13a2cd5963fa87ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71fe5e8da530a495f64d2132a43e1c0260d1c3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x743450593effd3884fce8e13179862fd769dd29d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74ad4ba54096b07ec34ffbcd4f47c7449bac7eb1` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77752d9be1f5a4bb51bc64a3b5649f06d62b70e6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7989d03ba2f7e26f2731efd3bcbc560698b61ba2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7be04c24f9112d151b3ed11982be21505f891dc5` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c9c726160ca7bd42296fa38c88fc561dd0ad6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d112636db702237871f085358b16aba691a5f8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e5576e75a6e933c336c1d7e12a7a720796e13d8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ea3a552fe6fc4c1ba4c85bfc1acd0b9f8ada71e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe2ccf6f66cb4a7e0ec5545025d208974ab4932` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8104c6e800871013b494b21ca250fe9648b844ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x811530d4f6053c378739853a384b06fb770b2b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81849cd696c9a46058ff67dd6c82a223b3672d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81905cac4339cc51ad241be1d75045f6d6a53d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82096e5723b65aa3f936a1876039e581bf04b13f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82a0f01230cb579b947d3f879abd767c808f8617` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83b2849efb86bc881bd4c4f54d222ad4e0731f87` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x844564ecd0bde5f672749e6dc98116e65b88884d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84adf4920d3c6bc37d4505fb5b90d1b7516d03b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84cbde341ed0acf4e59775f577d7cbd19da7ffc9` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x861880788109d1274bb5a70989c28e73cbe2ca13` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87e43b64313ebfd5ebe8ecf22350bf20d7bb1939` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8872cc07395420c0db68a63c46f7b9569fabdc9c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b284337ee178fdd07e7ea6d8b85cc42ba706214` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cb3faa98d0a2ef51d210898220856952c50f506` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8de72de0588bc119af2450115cec4f5082001545` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8df4cd7f2af0c96cae735332244e8205e2877594` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f04124907ac4699ad34ae1325d253c1641c5780` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x908e313975d02adea8dfd5a5eb830d10cd828fb6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90da0adec2a326a003736d6f1db4f3322bdcb956` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90e609aff8731c836fe6a22cb5b520f86aa616e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x933c92216eb197db879306577a7cd0fce2717e6c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94be0b71f7aff76a0ae82a78ee0be91a03d970e7` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9636a918a9af6f4cc4f92aa3254c032a7b97ee28` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x966af937e527184b8635f5f9fc4fac47f350b555` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9820a0a6e194b18aa5934cc8d68db8532da7ab6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x990cdc069dd43a8c89ee41be1a4962f7b3b1b9cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x994a5f2925346c7637a9657ad4ef747ecd1dc9e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9977aaad822e56f6777fa9836ed4261600b9996d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c1c4739324b7b232a8b6464165f41468b99a9eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa039369062636605761d2a6cedd9703862109f84` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa177dd336d36886689a2669387ed579a61d814c4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa290c463f18c37691282bb7c5429808eb3d4d0b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa44598ea57d0fa16a05197bf4501565ba4a10e43` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa46ab62187d360d5eef90af1348fd6ff0f6e6868` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4b51d107692630c0c8aebbb73eb46a58a92a8ba` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa59317f3ba8cfeb49e8018f14fe52f4678d8a3ff` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5fe753d1d41eb72749b9ae33885490a106d1584` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7a707782d2ee6c6f98fd1a810504292331ec488` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9a6f08534e5629eec3d4b2d5e3ac43ceaba71e9` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac5bf7a59d6e2211583afffd911e971253caa0b0` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac914ff6d04b076be6c8cd5871bfde37d52023bd` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf6c49b415707ba8e9b4f43938bed5ad019c6668` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb11cbe14ce90be4b3458cc5d8c08b2068f792c7b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1206f3480b6ad9e53f89b9f166f288a5d152c15` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb397838d9e755c9bcc9f95ba9baddf4a64561092` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3acfd16b5557c5bd51adec532aa469938ffb0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3fcac375e83211e1d3916faba9d6d7218d1a143` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb57d8453a2366d043ccef4522ba084d010efad5a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5fdd4dec28a3077552daae404ab711a329134d0` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb75ea227828111af75b670dd8b31170750e67d79` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba5e16347273e0aed2a5ac328b1eb5b299644bad` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbab1226db89a959de93422158e51874f81828fcb` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb808fe8eef3c301e4cabd509cf491c543daccb4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb98d04494a337ad56f3cdb67d38704c6cae29c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcee0a26be2ce2d2ee6fc502dcd5e10889ee4c20` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbed49e03fd6297f6e3c617cbcda901bc62d951c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbedf6ae091ade7476613fb535d78704e4564969f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2cb653e0a23a124e065a695fe6b962ab916e44b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d5131bbbb8d5ba323e9495d08025784da2946e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3c5482557886e5348719f5df0191daf8acbfcb2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc41473fa99a7bf06388cfbe22cf8ba28d662a5a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc42e0454b50f979426267fc3fbba6f2b90f9b65f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6b065825949f7391f3eb389dc3c2d2b63392ff3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc70ed58d18c430aa20a227ce3bd04d9d664dd730` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc74e9a67b15020116a2f9c6291e86e9f2b6e9e79` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc82d67d002ae472ac73222fea4a8b4650fc5259e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8885a5acd8966fb83c17db48044d8b570bb8fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbca914cd7119a27870d95359694da7d87867e4d` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdb5bf88c4d3bbe758ea53d4e8a203f32e7bd3ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce12d76bd1bd123142a948fcd7902298c5f30a81` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce148fbc869771c10fc2e14eb8852aff7e4eba13` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce529772da6ed7a9edb8573b2c3b888d75fdb15c` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf254c52a8502f6e764065c9f234168eaed41d13` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0b732e2701a0b63a92b63f13202f52a57c60cd5` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2c9494b0c83bfdf066dd11194b36b11ff5d9c18` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2e3ff1fb22f537ba3c3aebb072a45858a1986f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3689dc58ee1676f03742dc6893eca74f927005a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6dd4da491e7a4926be2f4bd4fa615510637cc67` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd784ff13e29c0e9797a4872c115eda952013f2b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd92fedf28c798359f0d005d6dfa02c5949345609` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd943b9c0060cf8e74d8c44d4e58cb7f6c551b938` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd953df88365859862883230c2cfb73c984ea26e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbbad18e3697a1925e9df6c89fcfcbb8103640e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc184880b006b318e8ee8a9b82ba4c442fe5b47f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde45ae39c894e035b1c95421dad714831df9af35` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde5cba9240185f9e0d567cbd01fabaec10f66b8e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf63640bf66c80c4f348bf613b3a206a3269e14a` | non_address_book | unknown | unknown | unverified | n/a | `0x1d1c9f70a68c129096d8181529041843e8bc1a30` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://311270402-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F20eavHG09ovQxEkHaAac%2Fuploads%2Fhp0mS4vGccH5stGdNAhQ%2FSwissborg_SC-Audit-Report_22.08.2023_SA-1552.pdf) | Hacken | Audit | 2023-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24525] Rendered PDF capture — matched: Two contracts in scope: ChsbToBorgMigrator and SwissBorgToken. Audit date from cover page: 22 Aug, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | ChsbToBorgMigrator | own contract | ChsbToBorgMigrator (selected) `0x62931ef690876142114ecf5aa52cf0fbbe5e910b` — deployed 2023-10-10 10:27:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SwissBorgToken | own contract | SwissBorgToken (selected) `0x64d0f55cd8c7133a9d7102b13987235f486f2224` — deployed 2023-08-23 09:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xaa854688caab725fe17b7d21b46fda5af365985a` | ChsbToBorgMigratorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66a28b080918184851774a89ab94850a41f6a1e5` | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 240 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
