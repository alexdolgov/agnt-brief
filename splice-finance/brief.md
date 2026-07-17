# Agentic Audit Brief: Splice Finance

## Project Overview

- Project: Splice Finance (`splice-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.530Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: blast, mode
- Contract surface: 52 unique implementations (52 raw deployments)
- DeFi Llama TVL: $439,983.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 49 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 12 common project-authored base contract(s) (sybase, pendleerc20permit, pendleerc20). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Stake DAO** (`stake-dao`) in the AuraLocker subsystem.
5 audits inherited from `stake-dao`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 52 (49 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/47 (2.1%)
- Deployed-live implementations: 49 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/52
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 5 (0 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 1 | 1.9% | 2025-09 |
| Pashov Audit Group | Tier 2 | 1 | 1.9% | 2025-08 |
| Trust Security | Tier 2 | 1 | 1.9% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraLocker | unknown | blast | n/a | [`0x922f8a306b7018e9a26be6478ecf85b253549a9b`](./contracts/blast-81457/0x922f8a306b7018e9a26be6478ecf85b253549a9b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionCallbackV3 | unknown | blast | n/a | [`0xe59d976581e4152cc39b94041c626c726d3ab0e7`](./contracts/blast-81457/0xe59d976581e4152cc39b94041c626c726d3ab0e7/) | ⚠️ Unaudited |
| ActionMiscV3 | unknown | blast | n/a | [`0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421`](./contracts/blast-81457/0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421/) | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | blast | n/a | [`0x362005b138e6a0049c9724cfb46de19801985c49`](./contracts/blast-81457/0x362005b138e6a0049c9724cfb46de19801985c49/) | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | blast | n/a | [`0xb034ea280864463a42d9b86dae856d09d6c49347`](./contracts/blast-81457/0xb034ea280864463a42d9b86dae856d09d6c49347/) | ⚠️ Unaudited |
| AuraMinter | unknown | blast | n/a | [`0x930a45c3aaf9945c673d8c96fbbe527db7748db4`](./contracts/blast-81457/0x930a45c3aaf9945c673d8c96fbbe527db7748db4/) | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | blast | n/a | [`0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b`](./contracts/blast-81457/0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b/) | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | blast | n/a | [`0x07478d254e5984342ac47a8388cd94070dacc36d`](./contracts/blast-81457/0x07478d254e5984342ac47a8388cd94070dacc36d/) | ⚠️ Unaudited |
| BaseRewardPool4626 | unknown | blast | n/a | [`0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa`](./contracts/blast-81457/0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa/) | ⚠️ Unaudited |
| Booster | unknown | blast | n/a | [`0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc`](./contracts/blast-81457/0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc/) | ⚠️ Unaudited |
| BoosterFeeDistro | unknown | blast | n/a | [`0x6cb52e8ebabff27570bf1b842f164d71411bc013`](./contracts/blast-81457/0x6cb52e8ebabff27570bf1b842f164d71411bc013/) | ⚠️ Unaudited |
| BoosterHelper | unknown | blast | n/a | [`0xa8c0c056943de48a18c911a54f0c605908b2714e`](./contracts/blast-81457/0xa8c0c056943de48a18c911a54f0c605908b2714e/) | ⚠️ Unaudited |
| BoosterOwner | unknown | blast | n/a | [`0xfa48f28eb89cd16fe5a983568d6dccccff439732`](./contracts/blast-81457/0xfa48f28eb89cd16fe5a983568d6dccccff439732/) | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | blast | n/a | [`0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07`](./contracts/blast-81457/0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07/) | ⚠️ Unaudited |
| CrvDepositor | unknown | blast | n/a | [`0x6f09c0641961fe6c1dde07afc851f4e64035ef00`](./contracts/blast-81457/0x6f09c0641961fe6c1dde07afc851f4e64035ef00/) | ⚠️ Unaudited |
| cvxCrvToken | unknown | blast | n/a | [`0xfbf330d91ec5f5346d369beab8cb5d5b9489922e`](./contracts/blast-81457/0xfbf330d91ec5f5346d369beab8cb5d5b9489922e/) | ⚠️ Unaudited |
| DepositToken | unknown | blast | n/a | [`0x3cf056f53c9ef717c7ac531bc902627e2a984d1d`](./contracts/blast-81457/0x3cf056f53c9ef717c7ac531bc902627e2a984d1d/) | ⚠️ Unaudited |
| ERC20PointsDeposits | unknown | blast | n/a | [`0x2d6b6170a3193e59294d8bc79856a34be546771d`](./contracts/blast-81457/0x2d6b6170a3193e59294d8bc79856a34be546771d/) | ⚠️ Unaudited |
| ERC721PointsDeposits | unknown | blast | n/a | [`0xc28effdfef75448243c1d9ba972b97e32df60d06`](./contracts/blast-81457/0xc28effdfef75448243c1d9ba972b97e32df60d06/) | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | blast | n/a | [`0xf2c753be88e15923d73365f6ef182923ef5fba9f`](./contracts/blast-81457/0xf2c753be88e15923d73365f6ef182923ef5fba9f/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | blast | n/a | [`0xf1c6209a4a12c04a7879f89abe006c81a81ff09c`](./contracts/blast-81457/0xf1c6209a4a12c04a7879f89abe006c81a81ff09c/) | ⚠️ Unaudited |
| Gauge Controller | unknown | blast | n/a | [`0xb10ac70a00da025e553606805e6a205205317752`](./contracts/blast-81457/0xb10ac70a00da025e553606805e6a205205317752/) | ⚠️ Unaudited |
| HyperThrustClaim | unknown | blast | n/a | [`0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a`](./contracts/blast-81457/0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a/) | ⚠️ Unaudited |
| HyperUSDB | unknown | blast | n/a | [`0x390b781baf1e6db546cf4e3354b81446947838d2`](./contracts/blast-81457/0x390b781baf1e6db546cf4e3354b81446947838d2/) | ⚠️ Unaudited |
| HyperUSDBSY | unknown | blast | n/a | [`0x13293dacab830d8fa2e0e961fb997b3f37186f46`](./contracts/blast-81457/0x13293dacab830d8fa2e0e961fb997b3f37186f46/) | ⚠️ Unaudited |
| HyperWETH | unknown | blast | n/a | [`0x1856c7e0b559e9d7287473cb4b4786398db4032a`](./contracts/blast-81457/0x1856c7e0b559e9d7287473cb4b4786398db4032a/) | ⚠️ Unaudited |
| HyperWETHSY | unknown | blast | n/a | [`0xb80ad10dffdd415c2159962c1b35ef6edcf1b505`](./contracts/blast-81457/0xb80ad10dffdd415c2159962c1b35ef6edcf1b505/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | blast | n/a | [`0x3ec93ac1f45cbc553bd6fe9981259773a6e84762`](./contracts/blast-81457/0x3ec93ac1f45cbc553bd6fe9981259773a6e84762/) | ⚠️ Unaudited |
| MerklGauge | unknown | blast | n/a | [`0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6`](./contracts/blast-81457/0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6/) | ⚠️ Unaudited |
| MerklGaugeConfig | unknown | blast | n/a | [`0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b`](./contracts/blast-81457/0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b/) | ⚠️ Unaudited |
| MerklGaugeFactory | unknown | blast | n/a | [`0x808bcc0a99bf374df5d2d982932735d755e2ec8e`](./contracts/blast-81457/0x808bcc0a99bf374df5d2d982932735d755e2ec8e/) | ⚠️ Unaudited |
| NfpBooster | unknown | blast | n/a | [`0x98c86f91e8202262d9f11f877440af4c3ad83209`](./contracts/blast-81457/0x98c86f91e8202262d9f11f877440af4c3ad83209/) | ⚠️ Unaudited |
| NfpViewHelper | unknown | blast | n/a | [`0x5e70b87d6749615626c3a6733dec80d04c75d1ac`](./contracts/blast-81457/0x5e70b87d6749615626c3a6733dec80d04c75d1ac/) | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | blast | n/a | [`0x1f641571ae623580944abcf5c0d4100566b68331`](./contracts/blast-81457/0x1f641571ae623580944abcf5c0d4100566b68331/) | ⚠️ Unaudited |
| PendleERC20SY | unknown | mode | n/a | [`0x1c04fda696b2af99c91014ffab1affbd2633dab9`](./contracts/mode-34443/0x1c04fda696b2af99c91014ffab1affbd2633dab9/) | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | blast | n/a | [`0xf87e18913f7143e7c7efee714813abbc8e0e34bf`](./contracts/blast-81457/0xf87e18913f7143e7c7efee714813abbc8e0e34bf/) | ⚠️ Unaudited |
| Points | unknown | blast | n/a | [`0x60a87d7102e2fc1131fff347a36d4c89c1458ca4`](./contracts/blast-81457/0x60a87d7102e2fc1131fff347a36d4c89c1458ca4/) | ⚠️ Unaudited |
| PoolManagerV3 | unknown | blast | n/a | [`0x89e9e691714c28ed217dcea9de132ba9d53144a4`](./contracts/blast-81457/0x89e9e691714c28ed217dcea9de132ba9d53144a4/) | ⚠️ Unaudited |
| ProxyFactory | unknown | blast | n/a | [`0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b`](./contracts/blast-81457/0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b/) | ⚠️ Unaudited |
| RewardFactory | unknown | blast | n/a | [`0x667808d22d1475743465dbefefc97a3489791d54`](./contracts/blast-81457/0x667808d22d1475743465dbefefc97a3489791d54/) | ⚠️ Unaudited |
| SingleSidedDepositor | unknown | blast | n/a | [`0x741ff2c04714bf37400db45f0a52cd7c4685940e`](./contracts/blast-81457/0x741ff2c04714bf37400db45f0a52cd7c4685940e/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | blast | n/a | [`0xd311c02759afa3c724670f60fa2ba5ea2163d7b8`](./contracts/blast-81457/0xd311c02759afa3c724670f60fa2ba5ea2163d7b8/) | ⚠️ Unaudited |
| SpliceWeETHL2SY | unknown | mode | n/a | [`0x356b2ebc41fcc7a84b59e998231c14317a5e286c`](./contracts/mode-34443/0x356b2ebc41fcc7a84b59e998231c14317a5e286c/) | ⚠️ Unaudited |
| SpliceWrsETHL2SY | unknown | mode | n/a | [`0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d`](./contracts/mode-34443/0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d/) | ⚠️ Unaudited |
| SpliceWUSDBSY | unknown | blast | n/a | [`0xf904fa59d1eacec21d758ccd2fe43261a1dd5470`](./contracts/blast-81457/0xf904fa59d1eacec21d758ccd2fe43261a1dd5470/) | ⚠️ Unaudited |
| StashFactoryV2 | unknown | blast | n/a | [`0x530258607808ba349dbfebb27223a4523811b728`](./contracts/blast-81457/0x530258607808ba349dbfebb27223a4523811b728/) | ⚠️ Unaudited |
| Token Minter | unknown | blast | n/a | [`0x910119e46d9e273460553d4aff7440c5c66f8f4e`](./contracts/blast-81457/0x910119e46d9e273460553d4aff7440c5c66f8f4e/) | ⚠️ Unaudited |
| TokenAdmin | unknown | blast | n/a | [`0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc`](./contracts/blast-81457/0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc/) | ⚠️ Unaudited |
| TokenFactory | unknown | blast | n/a | [`0x6be37dddf23f2da2f00b9eea653ae7980ea777bc`](./contracts/blast-81457/0x6be37dddf23f2da2f00b9eea653ae7980ea777bc/) | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | blast | n/a | [`0x3d8ec8ac93ca7e32eb015c63acf5807255580edb`](./contracts/blast-81457/0x3d8ec8ac93ca7e32eb015c63acf5807255580edb/) | ⚠️ Unaudited |
| VoterProxy | unknown | blast | n/a | [`0xd1e436cda97bdeb960f99a95640c8d3869db50c0`](./contracts/blast-81457/0xd1e436cda97bdeb960f99a95640c8d3869db50c0/) | ⚠️ Unaudited |
| Voting Escrow | unknown | blast | n/a | [`0x758cd0ec54f178bd382ebbe9f254b9de67145704`](./contracts/blast-81457/0x758cd0ec54f178bd382ebbe9f254b9de67145704/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-09-03_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-09-03_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-09 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker | inherited | 1 | n/a |
| [2025-08-08_pashov_staking_v2_morpho_support.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-08-08_pashov_staking_v2_morpho_support.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker | inherited | 1 | n/a |
| [2025-05-01_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-05-01_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-05 | aging | Inherited from Stake DAO — forked code, scoped to AuraLocker | inherited | 1 | n/a |
| [2025-04-01_trust_security_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-04-01_trust_security_staking_v2.pdf) | Trust Security | Audit | 2025-04 | aging | Inherited from Stake DAO — forked code, scoped to AuraLocker | inherited | 1 | n/a |
| [2026_03_26_trust_security_vlsdt.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/vlsdt/2026_03_26_trust_security_vlsdt.pdf) | Trust Security | Audit | 2026-04 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xe59d976581e4152cc39b94041c626c726d3ab0e7`](./contracts/blast-81457/0xe59d976581e4152cc39b94041c626c726d3ab0e7/) | ActionCallbackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421`](./contracts/blast-81457/0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421/) | ActionMiscV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x362005b138e6a0049c9724cfb46de19801985c49`](./contracts/blast-81457/0x362005b138e6a0049c9724cfb46de19801985c49/) | AuraBalRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb034ea280864463a42d9b86dae856d09d6c49347`](./contracts/blast-81457/0xb034ea280864463a42d9b86dae856d09d6c49347/) | AuraClaimZapV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x930a45c3aaf9945c673d8c96fbbe527db7748db4`](./contracts/blast-81457/0x930a45c3aaf9945c673d8c96fbbe527db7748db4/) | AuraMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b`](./contracts/blast-81457/0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b/) | AuraPenaltyForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x07478d254e5984342ac47a8388cd94070dacc36d`](./contracts/blast-81457/0x07478d254e5984342ac47a8388cd94070dacc36d/) | AuraVestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa`](./contracts/blast-81457/0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa/) | BaseRewardPool4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc`](./contracts/blast-81457/0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc/) | Booster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6cb52e8ebabff27570bf1b842f164d71411bc013`](./contracts/blast-81457/0x6cb52e8ebabff27570bf1b842f164d71411bc013/) | BoosterFeeDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xa8c0c056943de48a18c911a54f0c605908b2714e`](./contracts/blast-81457/0xa8c0c056943de48a18c911a54f0c605908b2714e/) | BoosterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xfa48f28eb89cd16fe5a983568d6dccccff439732`](./contracts/blast-81457/0xfa48f28eb89cd16fe5a983568d6dccccff439732/) | BoosterOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07`](./contracts/blast-81457/0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07/) | ClaimFeesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6f09c0641961fe6c1dde07afc851f4e64035ef00`](./contracts/blast-81457/0x6f09c0641961fe6c1dde07afc851f4e64035ef00/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xfbf330d91ec5f5346d369beab8cb5d5b9489922e`](./contracts/blast-81457/0xfbf330d91ec5f5346d369beab8cb5d5b9489922e/) | cvxCrvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3cf056f53c9ef717c7ac531bc902627e2a984d1d`](./contracts/blast-81457/0x3cf056f53c9ef717c7ac531bc902627e2a984d1d/) | DepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2d6b6170a3193e59294d8bc79856a34be546771d`](./contracts/blast-81457/0x2d6b6170a3193e59294d8bc79856a34be546771d/) | ERC20PointsDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xc28effdfef75448243c1d9ba972b97e32df60d06`](./contracts/blast-81457/0xc28effdfef75448243c1d9ba972b97e32df60d06/) | ERC721PointsDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf2c753be88e15923d73365f6ef182923ef5fba9f`](./contracts/blast-81457/0xf2c753be88e15923d73365f6ef182923ef5fba9f/) | ExtraRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf1c6209a4a12c04a7879f89abe006c81a81ff09c`](./contracts/blast-81457/0xf1c6209a4a12c04a7879f89abe006c81a81ff09c/) | ExtraRewardStashV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb10ac70a00da025e553606805e6a205205317752`](./contracts/blast-81457/0xb10ac70a00da025e553606805e6a205205317752/) | Gauge Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a`](./contracts/blast-81457/0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a/) | HyperThrustClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x390b781baf1e6db546cf4e3354b81446947838d2`](./contracts/blast-81457/0x390b781baf1e6db546cf4e3354b81446947838d2/) | HyperUSDB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x13293dacab830d8fa2e0e961fb997b3f37186f46`](./contracts/blast-81457/0x13293dacab830d8fa2e0e961fb997b3f37186f46/) | HyperUSDBSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1856c7e0b559e9d7287473cb4b4786398db4032a`](./contracts/blast-81457/0x1856c7e0b559e9d7287473cb4b4786398db4032a/) | HyperWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb80ad10dffdd415c2159962c1b35ef6edcf1b505`](./contracts/blast-81457/0xb80ad10dffdd415c2159962c1b35ef6edcf1b505/) | HyperWETHSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3ec93ac1f45cbc553bd6fe9981259773a6e84762`](./contracts/blast-81457/0x3ec93ac1f45cbc553bd6fe9981259773a6e84762/) | LiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6`](./contracts/blast-81457/0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6/) | MerklGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b`](./contracts/blast-81457/0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b/) | MerklGaugeConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x808bcc0a99bf374df5d2d982932735d755e2ec8e`](./contracts/blast-81457/0x808bcc0a99bf374df5d2d982932735d755e2ec8e/) | MerklGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x98c86f91e8202262d9f11f877440af4c3ad83209`](./contracts/blast-81457/0x98c86f91e8202262d9f11f877440af4c3ad83209/) | NfpBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5e70b87d6749615626c3a6733dec80d04c75d1ac`](./contracts/blast-81457/0x5e70b87d6749615626c3a6733dec80d04c75d1ac/) | NfpViewHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1f641571ae623580944abcf5c0d4100566b68331`](./contracts/blast-81457/0x1f641571ae623580944abcf5c0d4100566b68331/) | PancakeStableSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x60a87d7102e2fc1131fff347a36d4c89c1458ca4`](./contracts/blast-81457/0x60a87d7102e2fc1131fff347a36d4c89c1458ca4/) | Points | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x89e9e691714c28ed217dcea9de132ba9d53144a4`](./contracts/blast-81457/0x89e9e691714c28ed217dcea9de132ba9d53144a4/) | PoolManagerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b`](./contracts/blast-81457/0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x667808d22d1475743465dbefefc97a3489791d54`](./contracts/blast-81457/0x667808d22d1475743465dbefefc97a3489791d54/) | RewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x741ff2c04714bf37400db45f0a52cd7c4685940e`](./contracts/blast-81457/0x741ff2c04714bf37400db45f0a52cd7c4685940e/) | SingleSidedDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd311c02759afa3c724670f60fa2ba5ea2163d7b8`](./contracts/blast-81457/0xd311c02759afa3c724670f60fa2ba5ea2163d7b8/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x356b2ebc41fcc7a84b59e998231c14317a5e286c`](./contracts/mode-34443/0x356b2ebc41fcc7a84b59e998231c14317a5e286c/) | SpliceWeETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d`](./contracts/mode-34443/0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d/) | SpliceWrsETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf904fa59d1eacec21d758ccd2fe43261a1dd5470`](./contracts/blast-81457/0xf904fa59d1eacec21d758ccd2fe43261a1dd5470/) | SpliceWUSDBSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x530258607808ba349dbfebb27223a4523811b728`](./contracts/blast-81457/0x530258607808ba349dbfebb27223a4523811b728/) | StashFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc`](./contracts/blast-81457/0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc/) | TokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6be37dddf23f2da2f00b9eea653ae7980ea777bc`](./contracts/blast-81457/0x6be37dddf23f2da2f00b9eea653ae7980ea777bc/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3d8ec8ac93ca7e32eb015c63acf5807255580edb`](./contracts/blast-81457/0x3d8ec8ac93ca7e32eb015c63acf5807255580edb/) | VirtualRewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd1e436cda97bdeb960f99a95640c8d3869db50c0`](./contracts/blast-81457/0xd1e436cda97bdeb960f99a95640c8d3869db50c0/) | VoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x758cd0ec54f178bd382ebbe9f254b9de67145704`](./contracts/blast-81457/0x758cd0ec54f178bd382ebbe9f254b9de67145704/) | Voting Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=10

Fork inheritance lineage and inherited audits are included when available.
