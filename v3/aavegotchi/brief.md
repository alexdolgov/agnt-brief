# Agentic Audit Brief: Aavegotchi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Aavegotchi (`aavegotchi`)
- Website: [https://aavegotchi.com](https://aavegotchi.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, base-sepolia, ethereum, polygon, sepolia
- Contract surface: 66 unique implementations (66 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $273,284.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aavegotchi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base, base-sepolia, ethereum, polygon, sepolia. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc165 (1), erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1906fd9c4ac440561f7197da0a4bd2e88df5fa70`, chain 1)
- UnnamedContract (`0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7`, chain 137)
- UnnamedContract (`0x052e6c114a166b0e91c2340370d72d4c33752b4b`, chain 8453)
- UnnamedContract (`0x15e7cac885e3730ce6389447bc0f7ac032f31947`, chain 8453)
- UnnamedContract (`0x2028b4043e6722ea164946c82fe806c4a43a0ff4`, chain 8453)
- UnnamedContract (`0x4b0040c3646d3c44b8a28ad7055cfcf536c05372`, chain 8453)
- UnnamedContract (`0x4d140ce792bedc430498c2d219afbc33e2992c9d`, chain 8453)
- UnnamedContract (`0x50af2d63b839aa32b4166fd1cb247129b715186c`, chain 8453)
- UnnamedContract (`0x617fdb8093b309e4699107f48812b407a7c37938`, chain 8453)
- UnnamedContract (`0x80320a0000c7a6a34086e2acad6915ff57ffda31`, chain 8453)
- UnnamedContract (`0x898d0f54d8cf60698972a75be7ea1b45aab66e59`, chain 8453)
- UnnamedContract (`0xa32137bfb57d2b6a9fd2956ba4b54741a6d54b58`, chain 8453)
- UnnamedContract (`0xa99c4b08201f2913db8d28e71d020c4298f29dbf`, chain 8453)
- UnnamedContract (`0xab449dca14413a6ae0bcea9ea210b57ace280d2c`, chain 8453)
- UnnamedContract (`0xab59ca4a16925b0a4bac5026c94beb20a29df479`, chain 8453)
- UnnamedContract (`0xdc27a8bf85508387cb8c3b97ba77f3941edff45f`, chain 8453)
- UnnamedContract (`0xe46b8902dad841476d9fee081f1d62ae317206a9`, chain 8453)
- UnnamedContract (`0xe52b9170ff4ece4c35e796ffd74b57dec68ca0e5`, chain 8453)
- UnnamedContract (`0xebba5b725a2889f7f089a6cae0246a32cad4e26b`, chain 8453)
- MiniMeToken (`0x3f382dbd960e3a9bbceae22651e88158d2791550`, chain 1)
- TicketsFacet (`0x93ea6ec350ace7473f7694d43dec2726a515e31a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/53 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 32 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 21 of 66 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| ATokenChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ea9faeacd2fcb69e9b8182aa073ff1e9fbbedc8` | ⚠️ Unaudited |
| ATokenRootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d29ada4c818a9f089107201eacc6300e56e0d5c` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47195a03fc3fc2881d084e8dc03bd19be8474e46` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14ab595377e4fccca46062a9109ffac7fa4d3f18` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa253460d993418dff9db9552e984a1890a71737a` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x201df88d8d79aca0aa6360f02eb9dd8aefdb1dfb` | ⚠️ Unaudited |
| EscrowFacet | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-378462 | `0x86935f11c86623dec8a25696e1c19a8659cbf95d` | ⚠️ Unaudited |
| MiniMeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378411 | `0x3f382dbd960e3a9bbceae22651e88158d2791550` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208f8bb431f580cc4b216826affb128cd1431ab` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ab595377e4fccca46062a9109ffac7fa4d3f18` | ⚠️ Unaudited |
| RafflesContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144d196bf99a4eca33afe036da577d7d66583db6` | ⚠️ Unaudited |
| StakingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a271b59763d4d8a18ff55f1faa286de97317b15` | ⚠️ Unaudited |
| TicketsFacet | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378461 | `0x93ea6ec350ace7473f7694d43dec2726a515e31a` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93ea6ec350ace7473f7694d43dec2726a515e31a` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xffe6280ae4e864d9af836b562359fd828ece8020` | ⚠️ Unaudited |
| VouchersContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe54891774eed9277236bac10d82788aee0aed313` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378410 | `0x1906fd9c4ac440561f7197da0a4bd2e88df5fa70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378413 | `0x19f870bd94a34b3adaa9caa439d333da18d6812a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378414 | `0x1d0360bac7299c86ec8e99d0c1c9a95fefaf2a11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378415 | `0x1fe64677ab1397e20a1211afae2758570fea1b8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378416 | `0x3801c3b3b5c98f88a9c9005966aa96aa440b9afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378417 | `0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378418 | `0x403e967b044d4be25170310157cb1a4bf10bdd0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378419 | `0x42e5e06ef5b90fe15f853f59299fc96259209c5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378420 | `0x44a6e0be76e1d9620a7f76588e4509fe4fa8e8c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378421 | `0x4fdfc1b53fd1d80d969c984ba7a8ce4c7baad442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378422 | `0x5004bc7e5b718c245ca859db349dd012cfd58395` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378423 | `0x58de9aabcaeec0f69883c94318810ad79cc6a44f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378424 | `0x6a3e7c3c6ef65ee26975b12293ca1aad7e1daed2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378425 | `0x6c723cac1e35fe29a175b287ae242d424c52c1ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378426 | `0x9216c31d8146bcb3ea5a9162dc1702e8aedca355` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378427 | `0x9f6bcc63e86d44c46e85564e9383e650dc0b56d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378428 | `0xa02d547512bb90002807499f05495fe9c4c3943f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378429 | `0xa44c8e0ecaefe668947154ee2b803bd4e6310efe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378430 | `0xa4e3513c98b30d4d7cc578d2c328bd550725d1d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378431 | `0xd5543237c656f25eea69f1e247b8fa59ba353306` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378432 | `0x052e6c114a166b0e91c2340370d72d4c33752b4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378433 | `0x15e7cac885e3730ce6389447bc0f7ac032f31947` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378434 | `0x2028b4043e6722ea164946c82fe806c4a43a0ff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378435 | `0x4b0040c3646d3c44b8a28ad7055cfcf536c05372` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378436 | `0x4d140ce792bedc430498c2d219afbc33e2992c9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378437 | `0x50af2d63b839aa32b4166fd1cb247129b715186c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378438 | `0x617fdb8093b309e4699107f48812b407a7c37938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378439 | `0x80320a0000c7a6a34086e2acad6915ff57ffda31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378440 | `0x898d0f54d8cf60698972a75be7ea1b45aab66e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378441 | `0xa32137bfb57d2b6a9fd2956ba4b54741a6d54b58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378442 | `0xa99c4b08201f2913db8d28e71d020c4298f29dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378443 | `0xab449dca14413a6ae0bcea9ea210b57ace280d2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378444 | `0xab59ca4a16925b0a4bac5026c94beb20a29df479` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base | unit-378445 | `0xb27fa55e15be89e69b9e5babcfb30a8f67ad92a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-378446 | `0xcd2f22236dd9dfe2356d7c543161d4d260fd9bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378447 | `0xdc27a8bf85508387cb8c3b97ba77f3941edff45f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378448 | `0xe46b8902dad841476d9fee081f1d62ae317206a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378449 | `0xe52b9170ff4ece4c35e796ffd74b57dec68ca0e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378450 | `0xebba5b725a2889f7f089a6cae0246a32cad4e26b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378451 | `0x03e26ff22f4bbbed3049a02242e1d4c43947feb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378452 | `0x0f685b66d7a5e67edc584c5fdd28e38ba05fafbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378453 | `0x15517138573ce459943da529c9530ef76a22b713` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378454 | `0x37d140074b2f771bea7ef23288eb87064e45bf8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378455 | `0x5aefdc5283b24eea7b50ffbbf7fb8a2bd4537609` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378456 | `0x607e447b8222cdd73fc9aa7d399784fb1f4e8f3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378457 | `0x6cff314d21244bb4a907a5d5e5305abe07eefaec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378458 | `0x96b19fa954d961fad4b665e3259c72466ca4c1da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378459 | `0xab1e7e320f02107bf2748179ed0c0bcfd5532e4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378460 | `0xe97f36a00058aa7dfc4e85d23532c3f70453a7ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-378412 | `0xb40b75b4a8e5153357b3e5e4343d997b1a1019f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://safefiles.defiyield.info/safe/files/audit/pdf/REP_Aavegotchi_02_01_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19398] DL audit link — no match: Extracted from scope table and Files In Scope section. Audit date from Delivery Date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | AavegotchiFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AavegotchiDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CollateralFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | CollateralEscrow | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DAOFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ILink | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC721 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC1155 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ItemsFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IAavegotchiDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IERC1155TokenReceiver | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibVrf | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibERC20 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibDiamond | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibERC1155 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LibAppStorage | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ShopFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | VRFFacet | unmatched — not counted | — | listed in scope table | no |
| DL audit link | OwnershipFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | DiamondCutFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | DiamondLoupeFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IERC165 | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IDiamondLoupe | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | SvgFacet | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | LibSvg | unmatched — not counted | — | listed in Files In Scope section | no |
| DL audit link | IERC20 | unmatched — not counted | — | listed in Files In Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3f382dbd960e3a9bbceae22651e88158d2791550` | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ea6ec350ace7473f7694d43dec2726a515e31a` | TicketsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19398] DL audit link

Fork inheritance lineage and inherited audits are included when available.
