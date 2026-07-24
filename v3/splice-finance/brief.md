# Agentic Audit Brief: Splice Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Splice Finance (`splice-finance`)
- Website: [https://app.splice.fi/](https://app.splice.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast, mode
- Contract surface: 234 unique implementations (234 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $439,983.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Splice Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across blast, mode. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SpliceWeETHL2SY (`0x356b2ebc41fcc7a84b59e998231c14317a5e286c`, chain 34443)
- SpliceWrsETHL2SY (`0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d`, chain 34443)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 33 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 199 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 234 unique; 232 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 182
- Unique implementations: 234
- Raw deployments: 234
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

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionCallbackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe59d976581e4152cc39b94041c626c726d3ab0e7` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421` | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x362005b138e6a0049c9724cfb46de19801985c49` | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb034ea280864463a42d9b86dae856d09d6c49347` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x922f8a306b7018e9a26be6478ecf85b253549a9b` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x930a45c3aaf9945c673d8c96fbbe527db7748db4` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b` | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x07478d254e5984342ac47a8388cd94070dacc36d` | ⚠️ Unaudited |
| BaseRewardPool4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc` | ⚠️ Unaudited |
| BoosterFeeDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6cb52e8ebabff27570bf1b842f164d71411bc013` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa8c0c056943de48a18c911a54f0c605908b2714e` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfa48f28eb89cd16fe5a983568d6dccccff439732` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6f09c0641961fe6c1dde07afc851f4e64035ef00` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbf330d91ec5f5346d369beab8cb5d5b9489922e` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3cf056f53c9ef717c7ac531bc902627e2a984d1d` | ⚠️ Unaudited |
| ERC20PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2d6b6170a3193e59294d8bc79856a34be546771d` | ⚠️ Unaudited |
| ERC721PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc28effdfef75448243c1d9ba972b97e32df60d06` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf2c753be88e15923d73365f6ef182923ef5fba9f` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf1c6209a4a12c04a7879f89abe006c81a81ff09c` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb10ac70a00da025e553606805e6a205205317752` | ⚠️ Unaudited |
| HyperThrustClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a` | ⚠️ Unaudited |
| HyperUSDB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x390b781baf1e6db546cf4e3354b81446947838d2` | ⚠️ Unaudited |
| HyperUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x13293dacab830d8fa2e0e961fb997b3f37186f46` | ⚠️ Unaudited |
| HyperWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1856c7e0b559e9d7287473cb4b4786398db4032a` | ⚠️ Unaudited |
| HyperWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb80ad10dffdd415c2159962c1b35ef6edcf1b505` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ec93ac1f45cbc553bd6fe9981259773a6e84762` | ⚠️ Unaudited |
| MerklGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6` | ⚠️ Unaudited |
| MerklGaugeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b` | ⚠️ Unaudited |
| MerklGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x808bcc0a99bf374df5d2d982932735d755e2ec8e` | ⚠️ Unaudited |
| NfpBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x98c86f91e8202262d9f11f877440af4c3ad83209` | ⚠️ Unaudited |
| NfpViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e70b87d6749615626c3a6733dec80d04c75d1ac` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f641571ae623580944abcf5c0d4100566b68331` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1c04fda696b2af99c91014ffab1affbd2633dab9` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf87e18913f7143e7c7efee714813abbc8e0e34bf` | ⚠️ Unaudited |
| Points | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x60a87d7102e2fc1131fff347a36d4c89c1458ca4` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89e9e691714c28ed217dcea9de132ba9d53144a4` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x667808d22d1475743465dbefefc97a3489791d54` | ⚠️ Unaudited |
| SingleSidedDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x741ff2c04714bf37400db45f0a52cd7c4685940e` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd311c02759afa3c724670f60fa2ba5ea2163d7b8` | ⚠️ Unaudited |
| SpliceWeETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256608 | `0x356b2ebc41fcc7a84b59e998231c14317a5e286c` | ⚠️ Unaudited |
| SpliceWrsETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256609 | `0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d` | ⚠️ Unaudited |
| SpliceWUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf904fa59d1eacec21d758ccd2fe43261a1dd5470` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x530258607808ba349dbfebb27223a4523811b728` | ⚠️ Unaudited |
| Token Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x910119e46d9e273460553d4aff7440c5c66f8f4e` | ⚠️ Unaudited |
| TokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6be37dddf23f2da2f00b9eea653ae7980ea777bc` | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d8ec8ac93ca7e32eb015c63acf5807255580edb` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd1e436cda97bdeb960f99a95640c8d3869db50c0` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x758cd0ec54f178bd382ebbe9f254b9de67145704` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (182)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x0106f88778a6cd20cec9a728e353056e83c6834b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0beff01eb8d3c8c66d2593a51e3822c9d6d8dfea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x0cd0f94bbead98b6a05773426a783efe8588a559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0d701fb316215a4a8a89eb238cfd86a08191f9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0e63b9d6138f363ecf7db74dd05e3ba81c3c17ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0edc1db0df19def9818c0cd3a121c740336c14a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x19f73aba87404c91878f719c129aeee028cec6f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x1eca0b417a1f6602a274882cab8eace96966b508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1f022aa2f7b7f359d43dc971be7474b2ff1c8184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1fc218f621f4dd120350ebe5dbe959c735b59384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x283721635a2302f99012d95bb90629b28896e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x31f11a740ec8ac7e483c0fa684602f92fb0713de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x33413ca090fd09127e0c8ca86a1b68ae00209ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x344b30fdc761b29099ed228c3d824c931d50610a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x347773b3415efb658e1eb9548223a8e4fee7647d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x34cf9bf641bd5f34197060a3f3478a1f97f78f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3659c2617c8fd6bc6cfe20cb065ef2801db359cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x3c424c4544dd7ee20266c6032cbbe0bf3f9aca3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x497d0106919fa821296261c0e9a9eaef60b8d103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4d1d09667153a26a78ab54378c016a911d66c0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e30a6f3cfd6516667247961ac7fb0c057d2bce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x563d35146459773d35ef83db967eb335b7cbe92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x56aff1cacabe994760bf8505ed7916a356e20b69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x5763ba22463ffbef84d5aa1a6df983420852bed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5844376ae03dd4a50a207b9e3f09316c6187d8c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x5fbd3e8cdd68183fdfb5b530f175fd629229713d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x624c4aa7607f48a5e8e54d22467d13499bcff35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x680a8ec6c0f41b7cb8b45a71f6a4f3ecbaa8b992` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x75e33a93c33b9a3ee337926d978322422822b8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x76c6fbb8314a7e25e8c2b7c8266347917011c320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7827a42c1f17e71f270ae8d0838abe99ed60a2f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x7a1f3d6313a89b68a14233eaa709180f649ebe32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x7a3a94ae0fc1421a3eac23ea6371036ac8d8f448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x83161936860388c645379a118783b5aa07c1d9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x86a30be69d839d7e95948f5ba9d45b1f1f1749d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x88cc9e83eac27c5ae1324a6c036ed4493ac9d5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8a444bf22b490fccee46959678f070256f06729a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x8bda20dbd89e49ccf68d184f6211111c910f1c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8e079b490238eb46f3c42826bf6418474762ec01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x8fd532444712f7807212638b03d111344a347ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x909dbac809de175d3483a3b184e05c781b9e1741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x90f08552dca84b2ff3dab2f31707055fc99c0162` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x9844d4e25f6b874125f4c54cdd2fdf997564df68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x9dbf254cc5721868f151e41413f8d5b6040c8156` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x9e6d12097339ddd5402fdd39fc0ef86eec54ab39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa481a9eb097d671ea4aa93f01caf37f5a58217d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb6fbea3002da09265d7f1ce4874140afb8c7d3e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xb950a73ea0842b0cd06d0e369ae974799bb346f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xbf14932e1a7962c77d0b31be80075936be1a43d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xc7de22012fa3076e8fa209df54ce81a0253cc928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcb76f42acdecec8bb0c2e2aae514c0b4a7890b8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xcb7d677550d32493133e51b7c5e3c008cd3213dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xd0135dddcaaf13f9bd6054e830da8cdc199c4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd7a054dcd04da771af5885b885f51419d3f55842` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xd8291cb561d4b116b29714bbc8dbf13b51e46d74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xdddffe2a579658626cf43dd92dff56dc8767fbbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xde7ddb8e8778759c16a0a73c743a5d38165cb1a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xde95511418ebd8bd36294b11c86314ddfa50e212` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xe239d43d568de53deb27b0b145e8ad0ab3958d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe6c7b1845f81b83c0d686eb3d12742e46d6e333b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xf0e43d596d1b95b1b9c2cbda83c7ab82c1451d54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xf220e32b658c838822fd80bd9f9e0ac207a3eaa8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0xf5c6f1f14cc37cf58d3738907e344c4943348e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf73f97b1bd82733809a883c54a0afa024e07546e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xfaa47c34f769ee169c5c18a6131c0c581177b87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x03f3aac9caaeea6a070ab0a4dc61c985954b025b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x044c4dbd9e33a3c324be21b3e86cc249868465bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x06376c0cf57885be6181c90f2d94ea86472a3df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0b4975597eea1c620c0e79f055e49e3219c8fd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0c3b52f7cfb634efe7a43251aec05f6dd6587e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0d1b44ccba201a1cfb30e8455051e137f328682f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0e999eb7f4e553348703d4ed804079c89e8c92f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0f4ea28d5ffaf9fef822dfbc9f8302aa86b1c394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0fef40377abb6dd2632d4c77410c84a2bd9ec116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x18f9b90bfe2eb60881c9f20d3c139ea25e6e79ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1dfc58c41a4db31c30f55d2654d0c03fd40131d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x22881e6fa1e49a8172ff0e59e3fcb420419c9bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x28dfc5d54569380d7e7b0a2e43e19939c9f761c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2a397a1ab26a4d9723114fda7225217018c1d6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2b5edf31b245d1b576035bd8e6b02c3aa474e03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2ce6f560687a6ad4af85aa9480aea24d9822e737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2e256d11103785993e9781f3c687ab1ce4bc78d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2f2e3f1bdd8ca42a8d71d18129ec0663ede2c569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2ff909a1fd086a055931fa6796588c214f13e274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x332381264aec2359a18efa7d842b6913800cea1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x33413ca090fd09127e0c8ca86a1b68ae00209ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x366f449f91f014ab1ebad0124b878fd96bc35c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x374c1e805a61bf061f3bdfefd21c37b96f013b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x388ada189478ad5846ce4e800508f23c714ceac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3c0763930a3cfd3c7e9b9b33aeabdc1fa1a60d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d23e4cad223c333e5693ba22d780af82eadbb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3fbfb5da35ee48b1dd3510ed31c9b1ae2762c5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ffb5133f61a02481206923cb568ef3bd923451b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x414a0508ff0cafbc4b6feb74c736d2295f7293ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x45868e739ce649cf8bc2ed784069c7298076a7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4716eb47831e5edba7d5a1fe849acb63f3f31ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x49885a32a88bdd4766b6f2168273fd9c143fa6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x49fe8c5ced2d50303b0899cef3d56f69d604f088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4da10d851e1092c65fb83cb786b54649f7a92c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x54222d00093fd77bfffde0b576828ae6c9c7f8fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x55fa41101880158be79a1827905c2e233608903a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5667d4aeb1a6667043aa6d2b9a4898e3202647a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5679c4b4a1cba278d49859c4a586fe90a4a4edf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x56aff1cacabe994760bf8505ed7916a356e20b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x59e2cbc73bf19f915d40c4833404b322d83c0996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5d0c44c9b6264e27fb3b174c98e2345aa7efeff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5d20b5cbd9f86da537d934ee6209b33e5af3ea67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e6cbad27ab5189f0a26f34d557e5bba27a774cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5f548cea204d563896d3abf66e17bde9dbd23179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6336df2d52f5913b4195c355d12b9e5875a38b99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6608ddcf1fc8f672313c53e888b39118e75f687d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x662cc08e7f378fcd5e9586eebad40ca7980b9f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x670734845ab6fadb9de001afdf70bd14eb08e9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x681b396e658c606b5281f38c7ff7bcec900e2d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x685f64664093db188aee03e4d8b88bc4d7438003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a308d5282858284004e96d13daf1a80e435a825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6bc8f9c5351d4086cd903b6441f7b46d648332e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6c6f41b2b52066e412d7dbd4a9793e65755d330a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6f6e069a8eb081e1839b3302dd75008facc4d372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x769698abae5ce6b827d6bbe4c9b730d35dd0898d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8004b834a66044c5322d274ef22172d704502656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x80160aec5f6b97c9ee9a9efc6d3116da7326de65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x802457c2856c17ecec5fb6645f8f6e8fe8f8c40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x85f0e6580392bc589f5a1bd7843488e522c68f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8a444bf22b490fccee46959678f070256f06729a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e91baa6f47408c1f771891288bb9048d86a8c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8f0533c53b1cc91796f5b3afd52e9194c927b7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9155442005a3d52fdaa28e9021a4444e040738c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x91f169115be06029825accf321d7b26a7db9f3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9359a1371cb610c1d777f461de8fd9ded5639841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x941e3c1cc9ecde081679ecce40ecccc2c1f52400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x949bad2cc4dde8028d4c129df9430666a301408e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x96a6c433078059577f0ceb707d596a5f81d64375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x96dd1d3f8094d6b4ca76c2e9d596a514cd4a0d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x992c2b67928c303e26ff2bd748521df26dbdc57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9b4bbfb799bcc992031fc42c37fea8e90e66bba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9c0f0934a5a11b36bd1dd42ee12b0912d5529ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa25c7bbcf9b6286d4841f0eb48e9fe782d9e82b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa538f1893076cee42bf35b1fc1b64db759dbb001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa7a0cd333e4739520612de9c65e092c6791d0c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa884a04bf1b21039bb3250fa6b3549b8f7a4b56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaa8000add50bc6a4bf416d3b3e6bcd4f5ae6e65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaea31002c22db165bba5b2db98e84132b29c1794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaebc502f085e56077e60a09d931b3fc6bd0b4fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xafcdaa9f3f6736a18c0ba64e7f0e8cb371e75141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb09c1387c17be71ac0890ed54b2b900a7c4c8566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb188ec3bd023df1a8374be43a51a7da98ff8e099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb3047788c3bf69bb9ad899d3d636e4f86cf08483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb327cac75bb04241c47963e71b68981b26152584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb6b120331dfc85bf31c91ad76565d07c7874e122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb92ba09bb12b931653e831d1c45c91ccf40eaf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb94f4379b70d179230bddce6c01d69660ddaaea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbd3f75e53ea9599d96ad7801d4dee78a56eb3198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbe9877a9198e664375c2534e063e7285c5af5c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbff11be217fbcafd263ffb0aa8c0acdd82a2d44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc023e313459f9be9609607255718fb54c67999b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc1733ad5347fef965a451d5457599be46f7c1b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc28fb4cc69081f9f72c643c47e8fef7b4ab2e7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc2953697cae5382916861f83e04768e4fb11e07c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc3ecadb7a5fab07c72af6bcfbd588b7818c4a40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc61b150b8e36de75860800a8a6bb6ac8ee542a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xcc75781d807a76b4847f6a74d362c3f4796e7d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd0fd36e971b1e354d9466d14248f51c7edba6620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd23f093f36ca1b688d8bcf9fd8f8a8282531ec25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd526d52700a14a376c6b367b38eb93e060825436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd5e769396dc4cb9834ccb93c646967db89657ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd973072b837b5d6b079b42cbf754cb5fb1d25fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdddffe2a579658626cf43dd92dff56dc8767fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xde7ddb8e8778759c16a0a73c743a5d38165cb1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe0532167e5cd0994a342037b86f60c4df8f44a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe1ad9a720ce12e2e4ce1da3f9500a02bad34ec7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe523ac4e535356520022347d8e1ca7c57fbd8a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe59b68676903790ff4df94c0a50f242b450efe63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeec6662cdd69b805cf39d772389f3f3c42e4bfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xef737cb6f78e5a6fa783fa052b45d85eb3b0c674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf0209bc32178b81ca1effb6e8a557f4aca14b8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf05d6bb8f9fd39af474543bd3b92fd6fa143d4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf0e43d596d1b95b1b9c2cbda83c7ab82c1451d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf210c348ff7d99433aaa5262e4a38836f65bfbca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf9fb02c2797e309c321da171bbe43e7afa72f543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbbb158bb0ac602e2165480f1bf11c640ad80c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xff0c8609c505bd3379b69daeb09543e137237289` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 167
- Live contracts: 0
- Unknown liveness contracts: 167
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=18, unverified unclassified=149

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x19f73aba87404c91878f719c129aeee028cec6f8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x1eca0b417a1f6602a274882cab8eace96966b508` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x3c424c4544dd7ee20266c6032cbbe0bf3f9aca3e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x5fbd3e8cdd68183fdfb5b530f175fd629229713d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x75e33a93c33b9a3ee337926d978322422822b8c7` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x8bda20dbd89e49ccf68d184f6211111c910f1c0b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x8fd532444712f7807212638b03d111344a347ef9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x909dbac809de175d3483a3b184e05c781b9e1741` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x9844d4e25f6b874125f4c54cdd2fdf997564df68` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0x9e6d12097339ddd5402fdd39fc0ef86eec54ab39` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xc7de22012fa3076e8fa209df54ce81a0253cc928` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xcb7d677550d32493133e51b7c5e3c008cd3213dc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xd0135dddcaaf13f9bd6054e830da8cdc199c4f82` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xdddffe2a579658626cf43dd92dff56dc8767fbbb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xde7ddb8e8778759c16a0a73c743a5d38165cb1a4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xe239d43d568de53deb27b0b145e8ad0ab3958d61` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xf0e43d596d1b95b1b9c2cbda83c7ab82c1451d54` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| exact address book overlap | UnnamedContract<br>`0xf220e32b658c838822fd80bd9f9e0ac207a3eaa8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0beff01eb8d3c8c66d2593a51e3822c9d6d8dfea` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0d701fb316215a4a8a89eb238cfd86a08191f9bd` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0e63b9d6138f363ecf7db74dd05e3ba81c3c17ec` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0edc1db0df19def9818c0cd3a121c740336c14a4` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x1f022aa2f7b7f359d43dc971be7474b2ff1c8184` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x1fc218f621f4dd120350ebe5dbe959c735b59384` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x283721635a2302f99012d95bb90629b28896e0d4` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x31f11a740ec8ac7e483c0fa684602f92fb0713de` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x33413ca090fd09127e0c8ca86a1b68ae00209ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x344b30fdc761b29099ed228c3d824c931d50610a` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x3659c2617c8fd6bc6cfe20cb065ef2801db359cd` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x4d1d09667153a26a78ab54378c016a911d66c0ee` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x4e30a6f3cfd6516667247961ac7fb0c057d2bce5` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x563d35146459773d35ef83db967eb335b7cbe92a` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x56aff1cacabe994760bf8505ed7916a356e20b69` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x5844376ae03dd4a50a207b9e3f09316c6187d8c9` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x680a8ec6c0f41b7cb8b45a71f6a4f3ecbaa8b992` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x76c6fbb8314a7e25e8c2b7c8266347917011c320` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x7827a42c1f17e71f270ae8d0838abe99ed60a2f4` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x83161936860388c645379a118783b5aa07c1d9b7` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x86a30be69d839d7e95948f5ba9d45b1f1f1749d6` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x88cc9e83eac27c5ae1324a6c036ed4493ac9d5ed` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x8a444bf22b490fccee46959678f070256f06729a` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x8e079b490238eb46f3c42826bf6418474762ec01` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x90f08552dca84b2ff3dab2f31707055fc99c0162` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xa481a9eb097d671ea4aa93f01caf37f5a58217d8` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xb6fbea3002da09265d7f1ce4874140afb8c7d3e0` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xcb76f42acdecec8bb0c2e2aae514c0b4a7890b8c` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xd7a054dcd04da771af5885b885f51419d3f55842` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xe6c7b1845f81b83c0d686eb3d12742e46d6e333b` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xf73f97b1bd82733809a883c54a0afa024e07546e` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xfaa47c34f769ee169c5c18a6131c0c581177b87f` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x03f3aac9caaeea6a070ab0a4dc61c985954b025b` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x044c4dbd9e33a3c324be21b3e86cc249868465bc` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x06376c0cf57885be6181c90f2d94ea86472a3df9` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0b4975597eea1c620c0e79f055e49e3219c8fd70` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x0c3b52f7cfb634efe7a43251aec05f6dd6587e8d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x0d1b44ccba201a1cfb30e8455051e137f328682f` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x0e999eb7f4e553348703d4ed804079c89e8c92f5` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x0f4ea28d5ffaf9fef822dfbc9f8302aa86b1c394` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x0fef40377abb6dd2632d4c77410c84a2bd9ec116` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x18f9b90bfe2eb60881c9f20d3c139ea25e6e79ba` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x1dfc58c41a4db31c30f55d2654d0c03fd40131d6` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x22881e6fa1e49a8172ff0e59e3fcb420419c9bca` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x28dfc5d54569380d7e7b0a2e43e19939c9f761c0` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2a397a1ab26a4d9723114fda7225217018c1d6fb` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2b5edf31b245d1b576035bd8e6b02c3aa474e03f` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2ce6f560687a6ad4af85aa9480aea24d9822e737` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2e256d11103785993e9781f3c687ab1ce4bc78d8` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2f2e3f1bdd8ca42a8d71d18129ec0663ede2c569` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x2ff909a1fd086a055931fa6796588c214f13e274` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x332381264aec2359a18efa7d842b6913800cea1e` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x33413ca090fd09127e0c8ca86a1b68ae00209ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x366f449f91f014ab1ebad0124b878fd96bc35c2a` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x374c1e805a61bf061f3bdfefd21c37b96f013b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x388ada189478ad5846ce4e800508f23c714ceac5` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x3c0763930a3cfd3c7e9b9b33aeabdc1fa1a60d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x3d23e4cad223c333e5693ba22d780af82eadbb48` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x3fbfb5da35ee48b1dd3510ed31c9b1ae2762c5ad` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x3ffb5133f61a02481206923cb568ef3bd923451b` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x414a0508ff0cafbc4b6feb74c736d2295f7293ee` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x45868e739ce649cf8bc2ed784069c7298076a7c2` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x4716eb47831e5edba7d5a1fe849acb63f3f31ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x49885a32a88bdd4766b6f2168273fd9c143fa6b3` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x49fe8c5ced2d50303b0899cef3d56f69d604f088` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x4da10d851e1092c65fb83cb786b54649f7a92c75` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x54222d00093fd77bfffde0b576828ae6c9c7f8fa` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x55fa41101880158be79a1827905c2e233608903a` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5667d4aeb1a6667043aa6d2b9a4898e3202647a8` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5679c4b4a1cba278d49859c4a586fe90a4a4edf4` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x56aff1cacabe994760bf8505ed7916a356e20b69` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x59e2cbc73bf19f915d40c4833404b322d83c0996` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5d0c44c9b6264e27fb3b174c98e2345aa7efeff3` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5d20b5cbd9f86da537d934ee6209b33e5af3ea67` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5e6cbad27ab5189f0a26f34d557e5bba27a774cb` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x5f548cea204d563896d3abf66e17bde9dbd23179` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6336df2d52f5913b4195c355d12b9e5875a38b99` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6608ddcf1fc8f672313c53e888b39118e75f687d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x662cc08e7f378fcd5e9586eebad40ca7980b9f49` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x670734845ab6fadb9de001afdf70bd14eb08e9a2` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x681b396e658c606b5281f38c7ff7bcec900e2d95` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x685f64664093db188aee03e4d8b88bc4d7438003` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6a308d5282858284004e96d13daf1a80e435a825` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6bc8f9c5351d4086cd903b6441f7b46d648332e0` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6c6f41b2b52066e412d7dbd4a9793e65755d330a` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x6f6e069a8eb081e1839b3302dd75008facc4d372` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x769698abae5ce6b827d6bbe4c9b730d35dd0898d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x8004b834a66044c5322d274ef22172d704502656` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x80160aec5f6b97c9ee9a9efc6d3116da7326de65` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x802457c2856c17ecec5fb6645f8f6e8fe8f8c40d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x85f0e6580392bc589f5a1bd7843488e522c68f45` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x8a444bf22b490fccee46959678f070256f06729a` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0x8e91baa6f47408c1f771891288bb9048d86a8c3f` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x8f0533c53b1cc91796f5b3afd52e9194c927b7d9` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x9155442005a3d52fdaa28e9021a4444e040738c0` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x91f169115be06029825accf321d7b26a7db9f3fb` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x9359a1371cb610c1d777f461de8fd9ded5639841` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x941e3c1cc9ecde081679ecce40ecccc2c1f52400` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x949bad2cc4dde8028d4c129df9430666a301408e` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x96a6c433078059577f0ceb707d596a5f81d64375` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x96dd1d3f8094d6b4ca76c2e9d596a514cd4a0d6a` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x992c2b67928c303e26ff2bd748521df26dbdc57f` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x9b4bbfb799bcc992031fc42c37fea8e90e66bba5` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0x9c0f0934a5a11b36bd1dd42ee12b0912d5529ce3` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xa25c7bbcf9b6286d4841f0eb48e9fe782d9e82b2` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xa538f1893076cee42bf35b1fc1b64db759dbb001` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xa7a0cd333e4739520612de9c65e092c6791d0c13` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xa884a04bf1b21039bb3250fa6b3549b8f7a4b56d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xaa8000add50bc6a4bf416d3b3e6bcd4f5ae6e65d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xaea31002c22db165bba5b2db98e84132b29c1794` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xaebc502f085e56077e60a09d931b3fc6bd0b4fef` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xafcdaa9f3f6736a18c0ba64e7f0e8cb371e75141` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb09c1387c17be71ac0890ed54b2b900a7c4c8566` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb188ec3bd023df1a8374be43a51a7da98ff8e099` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb3047788c3bf69bb9ad899d3d636e4f86cf08483` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb327cac75bb04241c47963e71b68981b26152584` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb6b120331dfc85bf31c91ad76565d07c7874e122` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xb92ba09bb12b931653e831d1c45c91ccf40eaf41` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xb94f4379b70d179230bddce6c01d69660ddaaea8` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xbd3f75e53ea9599d96ad7801d4dee78a56eb3198` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xbe9877a9198e664375c2534e063e7285c5af5c80` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xbff11be217fbcafd263ffb0aa8c0acdd82a2d44a` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xc023e313459f9be9609607255718fb54c67999b6` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xc1733ad5347fef965a451d5457599be46f7c1b32` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xc28fb4cc69081f9f72c643c47e8fef7b4ab2e7aa` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xc2953697cae5382916861f83e04768e4fb11e07c` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xc3ecadb7a5fab07c72af6bcfbd588b7818c4a40e` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xc61b150b8e36de75860800a8a6bb6ac8ee542a71` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xcc75781d807a76b4847f6a74d362c3f4796e7d49` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xd0fd36e971b1e354d9466d14248f51c7edba6620` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xd23f093f36ca1b688d8bcf9fd8f8a8282531ec25` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xd526d52700a14a376c6b367b38eb93e060825436` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xd5e769396dc4cb9834ccb93c646967db89657ee5` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xd973072b837b5d6b079b42cbf754cb5fb1d25fa8` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xdddffe2a579658626cf43dd92dff56dc8767fbbb` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xde7ddb8e8778759c16a0a73c743a5d38165cb1a4` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xe0532167e5cd0994a342037b86f60c4df8f44a40` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xe1ad9a720ce12e2e4ce1da3f9500a02bad34ec7d` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xe523ac4e535356520022347d8e1ca7c57fbd8a46` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xe59b68676903790ff4df94c0a50f242b450efe63` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xeec6662cdd69b805cf39d772389f3f3c42e4bfc6` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xef737cb6f78e5a6fa783fa052b45d85eb3b0c674` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xf0209bc32178b81ca1effb6e8a557f4aca14b8c0` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xf05d6bb8f9fd39af474543bd3b92fd6fa143d4ae` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xf0e43d596d1b95b1b9c2cbda83c7ab82c1451d54` | non_address_book | unknown | unknown | unverified | n/a | `0x04d440ce29fec9a47ed471ff0dc7d002caadbc66` |
| unverified unclassified | UnnamedContract<br>`0xf210c348ff7d99433aaa5262e4a38836f65bfbca` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xf9fb02c2797e309c321da171bbe43e7afa72f543` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xfbbb158bb0ac602e2165480f1bf11c640ad80c58` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |
| unverified unclassified | UnnamedContract<br>`0xff0c8609c505bd3379b69daeb09543e137237289` | non_address_book | unknown | unknown | unverified | n/a | `0x88653cb81db25da4136448bdf561b41b77b052c4` |

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
| mode | `0x356b2ebc41fcc7a84b59e998231c14317a5e286c` | SpliceWeETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d` | SpliceWrsETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 182 |

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
