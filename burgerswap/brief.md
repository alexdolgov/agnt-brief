# Agentic Audit Brief: BurgerSwap

## Project Overview

- Project: BurgerSwap (`burgerswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.000Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 52 unique implementations (52 raw deployments)
- DeFi Llama TVL: $142,208.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 51 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (configable, erc20token, projectconfigable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 52 (52 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/49 (0.0%)
- Deployed-live implementations: 52 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAAAConfig | unknown | bsc | n/a | [`0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4`](./contracts/bsc-56/0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4/) | ⚠️ Unaudited |
| AAAADeploy | unknown | bsc | n/a | [`0x6cda5cae869277c6368b8d1301ec134450668f61`](./contracts/bsc-56/0x6cda5cae869277c6368b8d1301ec134450668f61/) | ⚠️ Unaudited |
| AAAAFactory | unknown | bsc | n/a | [`0x59b52c6f7769d5baeda35455506c2b93cf8c1399`](./contracts/bsc-56/0x59b52c6f7769d5baeda35455506c2b93cf8c1399/) | ⚠️ Unaudited |
| AAAAGovernance | unknown | bsc | n/a | [`0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed`](./contracts/bsc-56/0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed/) | ⚠️ Unaudited |
| AAAAMint | unknown | bsc | n/a | [`0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b`](./contracts/bsc-56/0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b/) | ⚠️ Unaudited |
| AAAAOtherConfig | unknown | bsc | n/a | [`0xab6508d93bf6e42b9c0a9676b59295f85781d2c2`](./contracts/bsc-56/0xab6508d93bf6e42b9c0a9676b59295f85781d2c2/) | ⚠️ Unaudited |
| AAAAPlatform | unknown | bsc | n/a | [`0xed49c8f41d8b5eb2a29720955a39212cfb9a2748`](./contracts/bsc-56/0xed49c8f41d8b5eb2a29720955a39212cfb9a2748/) | ⚠️ Unaudited |
| AAAAQuery | unknown | bsc | n/a | [`0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0`](./contracts/bsc-56/0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0/) | ⚠️ Unaudited |
| AAAAQuery2 | unknown | bsc | n/a | [`0x464adcc1bde46b176c90c4f950f8d9c800bd324d`](./contracts/bsc-56/0x464adcc1bde46b176c90c4f950f8d9c800bd324d/) | ⚠️ Unaudited |
| AAAAReward | unknown | bsc | n/a | [`0x2618997cdb340f98e731916950f8ed09b1a5143d`](./contracts/bsc-56/0x2618997cdb340f98e731916950f8ed09b1a5143d/) | ⚠️ Unaudited |
| AAAAShare | unknown | bsc | n/a | [`0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed`](./contracts/bsc-56/0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed/) | ⚠️ Unaudited |
| Airdrop | unknown | bsc | n/a | [`0x83f72a72c6e513eb50be148d482a429570446428`](./contracts/bsc-56/0x83f72a72c6e513eb50be148d482a429570446428/) | ⚠️ Unaudited |
| BSCBurgerTransit | unknown | bsc | n/a | [`0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe`](./contracts/bsc-56/0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe/) | ⚠️ Unaudited |
| BurgerERC20 | unknown | bsc | n/a | [`0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443`](./contracts/bsc-56/0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443/) | ⚠️ Unaudited |
| BurgerSave | unknown | bsc | n/a | [`0xee0cfacca812f5bf696f638501cac35334977241`](./contracts/bsc-56/0xee0cfacca812f5bf696f638501cac35334977241/) | ⚠️ Unaudited |
| CBurger | unknown | bsc | n/a | [`0x4b5d132e902f792e2f8327a3d4062e3edd79f640`](./contracts/bsc-56/0x4b5d132e902f792e2f8327a3d4062e3edd79f640/) | ⚠️ Unaudited |
| Claim | unknown | bsc | n/a | [`0x54d5a9e5680f729c6a020a3b891e64a711181368`](./contracts/bsc-56/0x54d5a9e5680f729c6a020a3b891e64a711181368/) | ⚠️ Unaudited |
| ClaimCondition | unknown | bsc | n/a | [`0xc53f74a55b0408a2de829a51772eae6de5e5f4e0`](./contracts/bsc-56/0xc53f74a55b0408a2de829a51772eae6de5e5f4e0/) | ⚠️ Unaudited |
| ClaimRule | unknown | bsc | n/a | [`0xfae8e56209dd5a7ac9be27c91516164f27096e40`](./contracts/bsc-56/0xfae8e56209dd5a7ac9be27c91516164f27096e40/) | ⚠️ Unaudited |
| DemaxBallotFactory | unknown | bsc | n/a | [`0x29d5ac18a4c315af2e8c8325a2748e590ab00a68`](./contracts/bsc-56/0x29d5ac18a4c315af2e8c8325a2748e590ab00a68/) | ⚠️ Unaudited |
| DemaxConfig | unknown | bsc | n/a | [`0x3669d6ac4ea8a6ba0b85396995557475c23f4eba`](./contracts/bsc-56/0x3669d6ac4ea8a6ba0b85396995557475c23f4eba/) | ⚠️ Unaudited |
| DemaxDelegate | unknown | bsc | n/a | [`0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60`](./contracts/bsc-56/0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60/) | ⚠️ Unaudited |
| DemaxFactory | unknown | bsc | n/a | [`0x2254ee4434ef583edb2eb8359d3e82230ee20891`](./contracts/bsc-56/0x2254ee4434ef583edb2eb8359d3e82230ee20891/) | ⚠️ Unaudited |
| DemaxGovernance | unknown | bsc | n/a | [`0x4d9b9c51f286164f96c2b756762a228d8267258d`](./contracts/bsc-56/0x4d9b9c51f286164f96c2b756762a228d8267258d/) | ⚠️ Unaudited |
| DemaxPlatform | unknown | bsc | n/a | [`0x42591f57f707739b95c5c486c014b525f19d70ca`](./contracts/bsc-56/0x42591f57f707739b95c5c486c014b525f19d70ca/) | ⚠️ Unaudited |
| DemaxPool | unknown | bsc | n/a | [`0x86a327715d707bca24983b1145d1f6c40c5d4a74`](./contracts/bsc-56/0x86a327715d707bca24983b1145d1f6c40c5d4a74/) | ⚠️ Unaudited |
| DemaxPricePrediction | unknown | bsc | n/a | [`0x2540ed3ed762d28f7798e71c677486a2cc6ef68e`](./contracts/bsc-56/0x2540ed3ed762d28f7798e71c677486a2cc6ef68e/) | ⚠️ Unaudited |
| DemaxProjectDeploy | unknown | bsc | n/a | [`0x5bb57735352165ceabcb50dc9b11db5341e5c7b5`](./contracts/bsc-56/0x5bb57735352165ceabcb50dc9b11db5341e5c7b5/) | ⚠️ Unaudited |
| DemaxProjectQuery | unknown | bsc | n/a | [`0x76da67bb008baee6e53dcbdcd63c11f10924bf4f`](./contracts/bsc-56/0x76da67bb008baee6e53dcbdcd63c11f10924bf4f/) | ⚠️ Unaudited |
| DemaxQuery | unknown | bsc | n/a | [`0x236b758057a1d277a267bee8871c563f2a012323`](./contracts/bsc-56/0x236b758057a1d277a267bee8871c563f2a012323/) | ⚠️ Unaudited |
| DemaxQuery2 | unknown | bsc | n/a | [`0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022`](./contracts/bsc-56/0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022/) | ⚠️ Unaudited |
| DemaxShackChef | unknown | bsc | n/a | [`0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e`](./contracts/bsc-56/0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e/) | ⚠️ Unaudited |
| DemaxShackChefQuery | unknown | bsc | n/a | [`0xfdd5d0202413a902414f3d7a5ccac13c40f876ad`](./contracts/bsc-56/0xfdd5d0202413a902414f3d7a5ccac13c40f876ad/) | ⚠️ Unaudited |
| DemaxShackConfig | unknown | bsc | n/a | [`0x5fb37f02196190237b47f0fe73a343b51fa06b24`](./contracts/bsc-56/0x5fb37f02196190237b47f0fe73a343b51fa06b24/) | ⚠️ Unaudited |
| DemaxShackFarm | unknown | bsc | n/a | [`0x744db744da07e3ade5ba99d1c80fa11dc5ee247d`](./contracts/bsc-56/0x744db744da07e3ade5ba99d1c80fa11dc5ee247d/) | ⚠️ Unaudited |
| DemaxTransferListener | unknown | bsc | n/a | [`0x3becd05231bbba6f7adda92f3c79fb3aa96d943b`](./contracts/bsc-56/0x3becd05231bbba6f7adda92f3c79fb3aa96d943b/) | ⚠️ Unaudited |
| DemaxTrigger | unknown | bsc | n/a | [`0xef72ebba2602de655ad05ae67f7e15ccdd119031`](./contracts/bsc-56/0xef72ebba2602de655ad05ae67f7e15ccdd119031/) | ⚠️ Unaudited |
| Dgas | unknown | bsc | n/a | [`0xae9269f27437f0fcbc232d39ec814844a51d6b8f`](./contracts/bsc-56/0xae9269f27437f0fcbc232d39ec814844a51d6b8f/) | ⚠️ Unaudited |
| ERC20 | unknown | bsc | n/a | [`0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22`](./contracts/bsc-56/0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22/) | ⚠️ Unaudited |
| ERC20Factory | unknown | bsc | n/a | [`0x6292c755af42512c5901524e42c8666ef60a4a08`](./contracts/bsc-56/0x6292c755af42512c5901524e42c8666ef60a4a08/) | ⚠️ Unaudited |
| ERC20Token | unknown | bsc | n/a | [`0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4`](./contracts/bsc-56/0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4/) | ⚠️ Unaudited |
| ETHBurgerTransit | unknown | bsc | n/a | [`0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b`](./contracts/bsc-56/0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b/) | ⚠️ Unaudited |
| IFOFactory | unknown | bsc | n/a | [`0x6d3507bd96227b95135c936b3427f54a02ead0d2`](./contracts/bsc-56/0x6d3507bd96227b95135c936b3427f54a02ead0d2/) | ⚠️ Unaudited |
| IFOQuery | unknown | bsc | n/a | [`0x136efc39b6ba21143e408fe318efe0f872ffbae4`](./contracts/bsc-56/0x136efc39b6ba21143e408fe318efe0f872ffbae4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x2a5029f77aad1e7ee0b98b1181ab5c35d8edd4dc`](./contracts/bsc-56/0x2a5029f77aad1e7ee0b98b1181ab5c35d8edd4dc/) | ⚠️ Unaudited |
| SignatureUtils | unknown | bsc | n/a | [`0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779`](./contracts/bsc-56/0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779/) | ⚠️ Unaudited |
| TERToken | unknown | bsc | n/a | [`0x70084234e6228a5dbce0331423208babf14837d1`](./contracts/bsc-56/0x70084234e6228a5dbce0331423208babf14837d1/) | ⚠️ Unaudited |
| TokenQuery | unknown | bsc | n/a | [`0xe85ed3322373f1dc720b7dccdbecfceb871364e0`](./contracts/bsc-56/0xe85ed3322373f1dc720b7dccdbecfceb871364e0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xb0e53def61ad145bc8615c592bef212c46254171`](./contracts/bsc-56/0xb0e53def61ad145bc8615c592bef212c46254171/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xc3ff4aa9441dcd838b8e4652bb84148216a3c6b8`](./contracts/bsc-56/0xc3ff4aa9441dcd838b8e4652bb84148216a3c6b8/) | ⚠️ Unaudited |
| USDT | unknown | bsc | n/a | [`0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae`](./contracts/bsc-56/0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae/) | ⚠️ Unaudited |
| XBurger | unknown | bsc | n/a | [`0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd`](./contracts/bsc-56/0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd/) | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://drive.google.com/file/d/1WlKunRKaWzGyN1iWyT1bE8C7IHOrfikK/view?usp=sharing) | Peckshield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Audit]()](https://burgerswap.gitbook.io/burgercities/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4`](./contracts/bsc-56/0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4/) | AAAAConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6cda5cae869277c6368b8d1301ec134450668f61`](./contracts/bsc-56/0x6cda5cae869277c6368b8d1301ec134450668f61/) | AAAADeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x59b52c6f7769d5baeda35455506c2b93cf8c1399`](./contracts/bsc-56/0x59b52c6f7769d5baeda35455506c2b93cf8c1399/) | AAAAFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed`](./contracts/bsc-56/0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed/) | AAAAGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b`](./contracts/bsc-56/0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b/) | AAAAMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xab6508d93bf6e42b9c0a9676b59295f85781d2c2`](./contracts/bsc-56/0xab6508d93bf6e42b9c0a9676b59295f85781d2c2/) | AAAAOtherConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xed49c8f41d8b5eb2a29720955a39212cfb9a2748`](./contracts/bsc-56/0xed49c8f41d8b5eb2a29720955a39212cfb9a2748/) | AAAAPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0`](./contracts/bsc-56/0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0/) | AAAAQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x464adcc1bde46b176c90c4f950f8d9c800bd324d`](./contracts/bsc-56/0x464adcc1bde46b176c90c4f950f8d9c800bd324d/) | AAAAQuery2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2618997cdb340f98e731916950f8ed09b1a5143d`](./contracts/bsc-56/0x2618997cdb340f98e731916950f8ed09b1a5143d/) | AAAAReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed`](./contracts/bsc-56/0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed/) | AAAAShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x83f72a72c6e513eb50be148d482a429570446428`](./contracts/bsc-56/0x83f72a72c6e513eb50be148d482a429570446428/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe`](./contracts/bsc-56/0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe/) | BSCBurgerTransit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443`](./contracts/bsc-56/0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443/) | BurgerERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee0cfacca812f5bf696f638501cac35334977241`](./contracts/bsc-56/0xee0cfacca812f5bf696f638501cac35334977241/) | BurgerSave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b5d132e902f792e2f8327a3d4062e3edd79f640`](./contracts/bsc-56/0x4b5d132e902f792e2f8327a3d4062e3edd79f640/) | CBurger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54d5a9e5680f729c6a020a3b891e64a711181368`](./contracts/bsc-56/0x54d5a9e5680f729c6a020a3b891e64a711181368/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc53f74a55b0408a2de829a51772eae6de5e5f4e0`](./contracts/bsc-56/0xc53f74a55b0408a2de829a51772eae6de5e5f4e0/) | ClaimCondition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfae8e56209dd5a7ac9be27c91516164f27096e40`](./contracts/bsc-56/0xfae8e56209dd5a7ac9be27c91516164f27096e40/) | ClaimRule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29d5ac18a4c315af2e8c8325a2748e590ab00a68`](./contracts/bsc-56/0x29d5ac18a4c315af2e8c8325a2748e590ab00a68/) | DemaxBallotFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3669d6ac4ea8a6ba0b85396995557475c23f4eba`](./contracts/bsc-56/0x3669d6ac4ea8a6ba0b85396995557475c23f4eba/) | DemaxConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60`](./contracts/bsc-56/0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60/) | DemaxDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2254ee4434ef583edb2eb8359d3e82230ee20891`](./contracts/bsc-56/0x2254ee4434ef583edb2eb8359d3e82230ee20891/) | DemaxFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d9b9c51f286164f96c2b756762a228d8267258d`](./contracts/bsc-56/0x4d9b9c51f286164f96c2b756762a228d8267258d/) | DemaxGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42591f57f707739b95c5c486c014b525f19d70ca`](./contracts/bsc-56/0x42591f57f707739b95c5c486c014b525f19d70ca/) | DemaxPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86a327715d707bca24983b1145d1f6c40c5d4a74`](./contracts/bsc-56/0x86a327715d707bca24983b1145d1f6c40c5d4a74/) | DemaxPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2540ed3ed762d28f7798e71c677486a2cc6ef68e`](./contracts/bsc-56/0x2540ed3ed762d28f7798e71c677486a2cc6ef68e/) | DemaxPricePrediction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bb57735352165ceabcb50dc9b11db5341e5c7b5`](./contracts/bsc-56/0x5bb57735352165ceabcb50dc9b11db5341e5c7b5/) | DemaxProjectDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x76da67bb008baee6e53dcbdcd63c11f10924bf4f`](./contracts/bsc-56/0x76da67bb008baee6e53dcbdcd63c11f10924bf4f/) | DemaxProjectQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x236b758057a1d277a267bee8871c563f2a012323`](./contracts/bsc-56/0x236b758057a1d277a267bee8871c563f2a012323/) | DemaxQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022`](./contracts/bsc-56/0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022/) | DemaxQuery2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e`](./contracts/bsc-56/0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e/) | DemaxShackChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfdd5d0202413a902414f3d7a5ccac13c40f876ad`](./contracts/bsc-56/0xfdd5d0202413a902414f3d7a5ccac13c40f876ad/) | DemaxShackChefQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fb37f02196190237b47f0fe73a343b51fa06b24`](./contracts/bsc-56/0x5fb37f02196190237b47f0fe73a343b51fa06b24/) | DemaxShackConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x744db744da07e3ade5ba99d1c80fa11dc5ee247d`](./contracts/bsc-56/0x744db744da07e3ade5ba99d1c80fa11dc5ee247d/) | DemaxShackFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3becd05231bbba6f7adda92f3c79fb3aa96d943b`](./contracts/bsc-56/0x3becd05231bbba6f7adda92f3c79fb3aa96d943b/) | DemaxTransferListener | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xef72ebba2602de655ad05ae67f7e15ccdd119031`](./contracts/bsc-56/0xef72ebba2602de655ad05ae67f7e15ccdd119031/) | DemaxTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae9269f27437f0fcbc232d39ec814844a51d6b8f`](./contracts/bsc-56/0xae9269f27437f0fcbc232d39ec814844a51d6b8f/) | Dgas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22`](./contracts/bsc-56/0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22/) | ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6292c755af42512c5901524e42c8666ef60a4a08`](./contracts/bsc-56/0x6292c755af42512c5901524e42c8666ef60a4a08/) | ERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4`](./contracts/bsc-56/0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4/) | ERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b`](./contracts/bsc-56/0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b/) | ETHBurgerTransit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d3507bd96227b95135c936b3427f54a02ead0d2`](./contracts/bsc-56/0x6d3507bd96227b95135c936b3427f54a02ead0d2/) | IFOFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x136efc39b6ba21143e408fe318efe0f872ffbae4`](./contracts/bsc-56/0x136efc39b6ba21143e408fe318efe0f872ffbae4/) | IFOQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779`](./contracts/bsc-56/0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779/) | SignatureUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x70084234e6228a5dbce0331423208babf14837d1`](./contracts/bsc-56/0x70084234e6228a5dbce0331423208babf14837d1/) | TERToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe85ed3322373f1dc720b7dccdbecfceb871364e0`](./contracts/bsc-56/0xe85ed3322373f1dc720b7dccdbecfceb871364e0/) | TokenQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae`](./contracts/bsc-56/0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd`](./contracts/bsc-56/0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd/) | XBurger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19627] {% embed url="<>" %}
- [19628] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
