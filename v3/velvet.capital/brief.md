# Agentic Audit Brief: Velvet.Capital

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b](https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.303Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, bsc, ethereum
- Contract surface: 300 unique implementations (388 raw deployments)
- DeFi Llama TVL: $12,514,618.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 25 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 4 common project-authored base contract(s) (targetwhitelisting, rebalancingconfig, accessroles). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 461; live-surface contracts included: 383 (105 live, 278 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/54 (27.8%)
- Deployed-live implementations: 54 of 300 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/55
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 300
- Raw deployments: 388
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 1.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 14.5% | 2024-12 |
| unknown | Tier 2 | 8 | 14.5% | 2024-07 |
| Spearbit | Tier 1 | 1 | 1.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositBatch | periphery | ethereum | n/a | 6 deployments: ethereum [`0x32c249...78e3b6`](./contracts/ethereum-1/0x32c249c81a77cddc2bbecd91d95c833be178e3b6/); ethereum `0xe6afac...4b9694`; ethereum `0xea9fd1...3c6bf1`; ethereum `0xf674e7...c08f59`; base `0x6e3e0f...e63e05`; base `0xfe0861...031fe6` | ✅ Audited |
| DepositManager | core_logic | base | n/a | 5 deployments: ethereum `0xcdb6e3...6e6c7f`; ethereum `0xf908e0...c30094`; ethereum `0xff6221...e6ee7c`; base [`0x61f18d...598448`](./contracts/base-8453/0x61f18d6beeb37b0d0f6af0a98bcccf8115598448/); base `0xe4e231...f6e2ed` | ✅ Audited |
| EnsoHandler | unknown | ethereum | n/a | [`0x18439b...53e617`](./contracts/ethereum-1/0x18439b037dcae4a1528ccc3871d695e61653e617/) | ✅ Audited |
| PortfolioFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d135e...235a86`](./contracts/ethereum-1/0x6d135efd33acfb950a1eb18493029d1451235a86/); ethereum `0xeadd9e...a081c2` | ✅ Audited |
| PortfolioFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c530c...47738b`](./contracts/ethereum-1/0x7c530c9ed5e734964453ce62ae9c4e31a247738b/); ethereum `0xee0420...a8faee` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x22d44e...101082`](./contracts/base-8453/0x22d44ec3f1f217c97ccf3ca1b500043a66101082/); base `0xadf04f...c8a0e5` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x5fef75...c1b16d`](./contracts/base-8453/0x5fef75f8720bbabd289012e7ff32514943c1b16d/); base `0xb79935...6de448` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x850fff...1710ca`](./contracts/base-8453/0x850fffff0941dcd6aca6425d43df0c35f51710ca/); base `0xf93659...282a7f` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0xa1b576...34039a`](./contracts/base-8453/0xa1b57604a5e95c4bd2e6a16112a314e52e34039a/); base `0xdb4dfa...2ef951` | ✅ Audited |
| PriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x326a99...a969c1`](./contracts/ethereum-1/0x326a99f037c8d572a62e10363f7ad69942a969c1/); ethereum `0x6fe178...afc0c0` | ✅ Audited |
| PriceOracleL2 | unknown | base | n/a | 2 deployments: base [`0x608e93...cf967e`](./contracts/base-8453/0x608e93ad410f3e3288dfc1a60446925a0fcf967e/); base `0xea600d...8fd7b6` | ✅ Audited |
| Rebalancing | unknown | base | n/a | 5 deployments: ethereum `0xbb44fe...7da239`; base [`0x0191bd...7761ed`](./contracts/base-8453/0x0191bd53527db568bbd87494794e9447e87761ed/); base `0x0827cf...6ccbe0`; base `0x77b4c4...497644`; base `0x8b33dc...b19365` | ✅ Audited |
| veVelvet | unknown | base | n/a | 2 deployments: base [`0x0e4a34...9bbc41`](./contracts/base-8453/0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41/); base `0xf807db...480c64` | ✅ Audited |
| WithdrawBatch | operational_periphery | ethereum | n/a | [`0xce5838...1d92cb`](./contracts/ethereum-1/0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb/) | ✅ Audited |
| WithdrawManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x0fe7c8...d13529`](./contracts/ethereum-1/0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529/); ethereum `0x2fb0f1...3b2638`; base `0x4643c0...57eeff`; base `0x99e9c4...3aedab` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb49892...d5378e`](./contracts/ethereum-1/0xb49892b24f7793a998be0ddcdcd38bc293d5378e/); ethereum `0xd5c3b4...5379b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x00d4c9...5776b7`](./contracts/base-8453/0x00d4c959cd4f5d372a2cf5b12eb9f5f38d5776b7/); base `0xd2a158...cfd8a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x085606...8711b8`](./contracts/base-8453/0x085606d8ae07f1b457dc814bdda315078c8711b8/); base `0x7503dc...05277c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x09aa6b...9afe35`](./contracts/base-8453/0x09aa6b96493b9dbe84f6671851a9ccd8e49afe35/); base `0xe6b12d...1a22db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x09ce0a...9e5ae7`](./contracts/base-8453/0x09ce0a8a2cf05d494f812acbe864373c519e5ae7/); base `0x386736...f6d285`; base `0x89c087...c6ce2e`; base `0x90dcd1...866f95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x0a678a...e2b63d`](./contracts/base-8453/0x0a678a644578e65516742ca459f95fdddde2b63d/); base `0x6bec6a...07d131` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x0a6c29...d321e3`](./contracts/base-8453/0x0a6c29668c2319069cf10be94e30f0752bd321e3/); base `0x9b51c5...9eaf0c`; base `0xb0c31b...e25854` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 5 deployments: base [`0x0fe7c8...d13529`](./contracts/base-8453/0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529/); base `0x19c6d3...80532c`; base `0x321c15...c3ac14`; base `0x56b697...2f3ca8`; base `0xce5838...1d92cb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x115110...c31b03`](./contracts/base-8453/0x115110a597120cb37e8d801dc23d66c54dc31b03/); base `0xab1a20...bdbfc9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x145efd...6d20ec`](./contracts/base-8453/0x145efd0cc8151d7984e4f032fdfe376a746d20ec/); base `0x1b902c...44346a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x1b0e95...379123`](./contracts/base-8453/0x1b0e954d46a9b92fbfaa3b2570c255c03f379123/); base `0x638463...746a51` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 9 deployments: base [`0x1d0f17...8cf0a1`](./contracts/base-8453/0x1d0f172ae618ab158dc9d86532ffd04b618cf0a1/); base `0x682200...cc5dab`; base `0x6952ad...762ae6`; base `0x6f7cdd...ca224d`; base `0x8176a9...efe17f`; base `0x8d3f1b...c03463`; base `0xc0a0f2...3854db`; base `0xc13246...5d95ed`; base `0xe45a01...af05d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x1fecf4...f7f142`](./contracts/base-8453/0x1fecf4e9be78a03466e91222a1ed461d7bf7f142/); base `0x6decb1...5f7c8e`; base `0x9375ff...33dde7`; base `0xcf3be6...d7862d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x21c652...25bd9f`](./contracts/base-8453/0x21c652b316c1e1fa72290530eb9d2a2c0725bd9f/); base `0xa019e0...523b62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 7 deployments: base [`0x2f692e...9eb079`](./contracts/base-8453/0x2f692e907810c87ba55a10173eec1dacbb9eb079/); base `0x303e89...bb9144`; base `0x689c19...97a184`; base `0xb9c922...da8999`; base `0xbd3e97...4c15c4`; base `0xcfc13b...e42c0c`; base `0xd7b766...6ed91d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x364a15...b8516d`](./contracts/base-8453/0x364a1551261e3d58982e7b6deb3bc64b35b8516d/); base `0x6fe178...afc0c0`; base `0xf1acb5...2bfadf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3b5d96...52edf4`](./contracts/base-8453/0x3b5d968cb08af433b6f92d755d600f1d8152edf4/); base `0xeecd5a...16c435` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3dfb1d...aeff13`](./contracts/base-8453/0x3dfb1d80d774cc39bb0cec9fedc2c1ccfcaeff13/); base `0xe39fa9...8ab782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x440908...4b75fe`](./contracts/base-8453/0x4409080c77d6f5e15cd84321e140c756dc4b75fe/); base `0x99e5d0...31ecd1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x4c5727...00ef82`](./contracts/base-8453/0x4c572741ee68324259372f5df455afcf9600ef82/); base `0x60939a...1b2389`; base `0xd402f4...012810`; base `0xd48c15...2c4542` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x57de05...668c7b`](./contracts/base-8453/0x57de05161ea5e8dd0b873128ddefc5fbd6668c7b/); base `0xc5ef80...ed20b9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x68febc...5a8efc`](./contracts/base-8453/0x68febc6b0a34db33ce4b0402df4285c0e45a8efc/); base `0x6e9036...e1dae5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x7bdb91...7bb515`](./contracts/base-8453/0x7bdb913cfb28bab09e26050b99d4bcd62a7bb515/); base `0xe58545...4ca67d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x81d083...927d9d`](./contracts/base-8453/0x81d0837f2b34872ad7945e8d7f74c1b212927d9d/); base `0x88b2bb...c98d86`; base `0xf908e0...c30094` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x856cec...eed75a`](./contracts/base-8453/0x856cec5e938fe7eee7f7ad211324e98608eed75a/); base `0xf171ca...ac5962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x87ea5f...5434d5`](./contracts/base-8453/0x87ea5f8b8d898b3eb457029833d67ffe1c5434d5/); base `0xd6ef57...333acd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x8b71ee...3a6c2b`](./contracts/base-8453/0x8b71eee1e6b1a2c7c41a273bb0979f72af3a6c2b/); base `0xb00d1c...b7ef1e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xa2cb7e...8ef5f4`](./contracts/base-8453/0xa2cb7ef27c6285bd15879bf59a8ce512158ef5f4/); base `0xff3d8e...e43736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0xa68901...270207`](./contracts/base-8453/0xa68901365e12e32db67a0d829d1f928594270207/); base `0xd9a577...d59607`; base `0xe3df7e...bd8d3c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xadaf29...db7c6c`](./contracts/base-8453/0xadaf299cdac58a4bd3cee7aa51d54e000fdb7c6c/); base `0xb39762...78cde2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xcf77a6...e5ab16`](./contracts/base-8453/0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16/); base `0xf31b95...9faca3` | ⚠️ Unaudited |
| ProtocolConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x44b8ce...f9792b`](./contracts/ethereum-1/0x44b8ceb5edd92309fe4beed378a8a2f685f9792b/); ethereum `0x819c0d...45b021` | ⚠️ Unaudited |
| ProtocolConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x758005...f2996d`](./contracts/ethereum-1/0x758005d2011a5b535fe575917fb65296aef2996d/); ethereum `0x85c326...d3265b` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 3 deployments: base [`0x0490a4...63a5d2`](./contracts/base-8453/0x0490a477e4fc96392bdf1e2846e3230a1263a5d2/); base `0x6de977...33bf51`; base `0xfc0c1e...61f3a6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 3 deployments: base [`0xa88583...463211`](./contracts/base-8453/0xa88583156ed6f9c75bad93a1a124eb9f69463211/); base `0xde3e99...a5782e`; base `0xe74d7f...1162d8` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 2 deployments: base [`0xde057a...504f99`](./contracts/base-8453/0xde057a626900f84e4aa141d9317190876c504f99/); base `0xefc7e2...55e118` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x8367ca...d148fa`](./contracts/base-8453/0x8367ca4b7cfe34610ecfb112b2881b2084d148fa/) | ⚠️ Unaudited |
| TokenExclusionManager | unknown | ethereum | n/a | [`0xcf77a6...e5ab16`](./contracts/ethereum-1/0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16/) | ⚠️ Unaudited |
| VaultProxy | core_logic | base | n/a | [`0x4da07a...df2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | ⚠️ Unaudited |
| VelvetToken | token | bsc | n/a | [`0x8b1943...8c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x345eb2...06c6ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51b761...7209ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67bfb9...b88e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5916...f44715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779f30...5299fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86912a...60b6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92a89b...c78a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa019e0...523b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08c55...1c27dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0c31b...e25854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb63515...46b4c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe362f0...07118c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1acb5...2bfadf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf31b95...9faca3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x009e59...d1eecb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x019c0a...0069db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02a2d2...69fadc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0658ed...b7184c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x073fb1...5ac2df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07420a...c3bf34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0860b1...301cf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08c716...d929e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08c79e...75b77a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a1224...58c78e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0aa8a6...d07c87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b7e0e...2323c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b9706...994feb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bdbff...36f4d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0be44b...bb1c4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d238f...f860d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d6f1c...d69cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ea488...1b9206` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x104304...3a82de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1099d9...301441` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x132aee...80ac60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13c4ca...068409` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x179dc6...cbce0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a7934...56a584` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b4198...1659c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c25ae...a903f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1de930...4909fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ded33...97d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fb1b6...382644` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x229d97...22471d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24721b...9c2e9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24874d...46fc0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27a2ee...6b8e35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27b591...b189d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x280798...d9052e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x281809...c3620a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x285a96...5c580e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e824...ff4bf0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a0ad6...035fa0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e8d0b...82dabe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f3edb...4c5fb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fb0f1...3b2638` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3016e5...23a5a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326a99...a969c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32f8ad...d94a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36568b...806355` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x378e88...21d7c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37a9d1...e09ea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37cbb5...21f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39f910...60cc7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a62a7...1e82be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ad87f...15076e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b5453...81d8ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bb407...4857a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bde64...df775f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e2b2f...2b9087` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fad68...18031a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x411740...2d465e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4160dc...f8590e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43636f...bbb008` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44b8ce...f9792b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x475d3e...4c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49bbf8...57b96c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c4d52...33595d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x505a11...9bd856` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51afe0...1a5fda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52795a...8253f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52f0a3...8a55df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5346ae...dd528b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5364ab...44d371` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x545138...379108` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x567387...bc0268` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57cf10...3f8bcf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57d3c6...4c51f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58d4ef...a2b954` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59036d...e13d32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x597f87...2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5abf9b...2c45d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5cf627...842d81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e3d30...92c552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x608ed5...5fb1b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60a933...93f0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60d60e...684af3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61f8a7...52a1db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62677a...8d798a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x655a35...64d0ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65844d...0697ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x666ae3...9e7649` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b677b...2b9f61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bc745...445b53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bea9d...5076cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d135e...235a86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d2732...f30f01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fc164...56597e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f6bb...3e770d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71611c...a1772b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71c7d2...7edf56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71e833...be1b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72cd09...7949fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72de32...3b1bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x731960...720e8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x754c21...5028e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75d368...a4d883` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76d37c...0937ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77184c...f428c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7781e1...ea0896` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78c2d2...8dbe69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79935d...67f705` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d82aa...38b571` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fa126...937ab3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fca43...b0fe51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x801e34...02dd28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x819c0d...45b021` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82460e...6cf03a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831c23...057c38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831deb...c55258` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86023b...f390a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x866f93...eeb63c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86e3c1...a55ea1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88e5cb...630f38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8aafca...fe16b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bb7c1...60a8c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8eca06...5dc807` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fe805...3065ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91b09b...30ace4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91bdeb...c6074b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x926417...c2e495` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x933ef0...c3bd80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x956065...999d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96443e...7b0c5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971135...dc06d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x972c16...a7aef4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x986158...e14537` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99bed4...d0a77d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99d571...17a877` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99e8be...d1e288` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aa255...150a1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d99ce...a6634f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f4665...44645e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fbe69...0295f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1718c...0f157f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4d98e...65a82c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa55444...a8221c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa665d0...6b65ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa72edc...7612ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa952e2...ed1117` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac25ef...82f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac31b1...7852e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadc361...442622` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae920e...581302` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb48817...4f6141` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7bfb6...4da770` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb812d8...b562f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb81d58...08a5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8d4a5...56679e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8f645...fd8314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbada99...97c04e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb11dc...ff82a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb3e62...5e9b33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb44fe...7da239` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc1b20...0c8683` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbca067...de708c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdc5e6...611b43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbddd03...074d43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe0d46...428713` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe4dbb...a2a661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0f736...f8a810` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc114df...46fffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c552...119053` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6e5a6...5bd43f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc806af...0b94e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc820b9...bae5fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc95092...7ba5f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9b901...34638f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca2bde...1d9fad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca2ee3...a8719c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca4f15...17433f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca77b5...10218a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb22f1...a90f0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbfad1...0dd3ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc988c...6b0d26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd4530...f8dfde` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce5738...c4d650` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6fd3...4016e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf3b29...798527` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf734d...218b40` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfd36b...9280ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd06b00...201ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd22dfc...11b106` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd512ef...4cb555` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5c3b4...5379b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd782f8...929b39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7cc12...b8bccd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8c21e...569b96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd99432...6eead5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb81c9...a858a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc12c6...226e44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdccca6...18b76f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcf19c...24818f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcfb46...f46d43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd5aa7...d053b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddd401...b0da00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde5312...3998b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1dd2b...00d2c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3547a...3731cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3727b...be3de2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe52a75...badd16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5fee9...1a23f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6afac...4b9694` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7f5ef...c7ca5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea6621...31e1fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea8799...62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea9fd1...3c6bf1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeadd9e...a081c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeea887...ff9ce6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf54e77...08e314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf61c11...9152de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf64585...288c86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf68261...db3362` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6bb94...ab214c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf81516...bb90e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf97456...7205d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9a280...57e86e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcbceb...c28f74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcc409...1e4b5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd5742...3c3c0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff6221...e6ee7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffa059...f7e5d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 12 | high |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 5 | n/a |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 7 | high |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 7 | high |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [Velvet_Capital_Security_Audit_Report.pdf](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 7 | high |
| [report-cantinacode-velvet-0807 (2).pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807%20(2).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 300 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: contract_name=10, extraction_exact=52

Fork inheritance lineage and inherited audits are included when available.
