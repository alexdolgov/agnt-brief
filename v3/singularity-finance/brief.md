# Agentic Audit Brief: Singularity Finance

## Project Overview

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.301Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, ethereum
- Contract surface: 164 unique implementations (256 raw deployments)
- DeFi Llama TVL: $4,251,071.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 43 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 6 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (nonblockinglzapp, lzapp, clonable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 537; live-surface contracts included: 256 (105 live, 151 unknown).
- Excluded by liveness: 281 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/15 (46.7%)
- Deployed-live implementations: 15 of 164 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/16
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 164
- Raw deployments: 256
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 7 | 43.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DynaVault | unknown | base | n/a | 8 deployments: base [`0x000bd9...28a771`](./contracts/base-8453/0x000bd9b6b6104ec9a360e323b42e0fad7128a771/); base `0x620b2f...e6e660`; base `0x9a3fba...2574b7`; base `0xa37f48...d2baa2`; base `0xc0cf88...6ca30d`; base `0xc6b334...8ecf52`; base `0xd8147e...554ed0`; base `0xddfdce...afc64c` | ✅ Audited |
| DynaVaultLib | core_logic | base | n/a | 8 deployments: base [`0x3b94af...51ee08`](./contracts/base-8453/0x3b94afa809b113ef118c6d4ffc009fdf1a51ee08/); base `0x4c3df5...1cc5a0`; base `0x6c331b...a2e7c5`; base `0x8c38cc...1d8a22`; base `0xaee26e...b74adc`; base `0xbde3a6...084399`; base `0xbec6da...366014`; base `0xfece3c...888597` | ✅ Audited |
| DynaVaultManager | unknown | base | n/a | 12 deployments: base [`0x30cb8e...c58273`](./contracts/base-8453/0x30cb8e3b9c79b2f7304aefe89eb39de380c58273/); base `0x478675...2bef7f`; base `0x4c168f...b198dd`; base `0x57dcc5...85c406`; base `0x67aaf2...9ea1dc`; base `0x84f0fe...c2b843`; base `0x95cf60...36688b`; base `0xac1800...2fae77`; base `0xc3bad1...5250ac`; base `0xc9572e...0fca53`; base `0xdf34fc...dd1915`; base `0xf461d8...2da673` | ✅ Audited |
| VaultConfigLib | core_logic | base | n/a | 6 deployments: base [`0x3ce426...347db5`](./contracts/base-8453/0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5/); base `0x44cd55...c6ed6b`; base `0x587a91...d52cbb`; base `0x7b7ee3...baedd2`; base `0xb198ee...0bdd0c`; base `0xbe93d9...1fddfe` | ✅ Audited |
| VaultFeesLib | unknown | base | n/a | 6 deployments: base [`0x31b57a...9817ff`](./contracts/base-8453/0x31b57a0e39661f63b80b545081e63b0c809817ff/); base `0x388184...02e5ae`; base `0x653516...e9150b`; base `0x9e71e4...bc1ca6`; base `0xb09b88...ec4be7`; base `0xb13037...d90db6` | ✅ Audited |
| VaultManagerLib | unknown | base | n/a | 7 deployments: base [`0x1faece...8e53e1`](./contracts/base-8453/0x1faecedeefba515a88093601d07ea759f08e53e1/); base `0x30efd6...97f4ce`; base `0x7b273c...71c184`; base `0x957fb5...30ddf3`; base `0x962631...2a0a33`; base `0xa3e5c3...f8046a`; base `0xb420bb...319524` | ✅ Audited |
| VaultManagerSimulatorLib | unknown | base | n/a | 7 deployments: base [`0x180fe2...8eb72a`](./contracts/base-8453/0x180fe2e50cd056e4c7aaa3c5954f2bdc6e8eb72a/); base `0x2989d5...851981`; base `0x620978...33fb39`; base `0x79db85...cf0b70`; base `0x86a264...4f708f`; base `0xcccc9e...1fe8e5`; base `0xd5c3a4...d04601` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermissionedDynaVault | unknown | base | n/a | 11 deployments: base [`0x0c8886...57270f`](./contracts/base-8453/0x0c8886b089b303d183bdc4204d06559efc57270f/); base `0x1631ca...258274`; base `0x1bf978...68e2f1`; base `0x1cda1f...9e5aea`; base `0x22d298...54f3cc`; base `0x4314e0...950008`; base `0x67b93f...e14dcd`; base `0x6beb92...e1a937`; base `0x8bb92d...5d507e`; base `0xbba62a...a1b6ae`; base `0xea7975...816811` | ⚠️ Unaudited |
| QueueLib | unknown | base | n/a | 5 deployments: base [`0x1a3fe0...ec2188`](./contracts/base-8453/0x1a3fe06854d8295a31398c2df55dedca99ec2188/); base `0x34e499...64a3eb`; base `0x48b119...3150f5`; base `0x57972f...984232`; base `0xe55802...d1a1d4` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | base | n/a | 3 deployments: base [`0x138463...8e34d1`](./contracts/base-8453/0x138463ad46a81421e432311faa551c992c8e34d1/); base `0x28998e...682924`; base `0x40f67f...d7e96b` | ⚠️ Unaudited |
| SFItoken | token | ethereum | n/a | [`0x7636d8...b386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | ⚠️ Unaudited |
| VaultGovernanceLib | unknown | base | n/a | 5 deployments: base [`0x1f9e54...d3f367`](./contracts/base-8453/0x1f9e5478cf6e324a8d62cf12e6d68e8e0fd3f367/); base `0x363bfd...0a2968`; base `0x4703bd...b6fc73`; base `0xb4d050...fe9d94`; base `0xbc84cb...696ee0` | ⚠️ Unaudited |
| VaultRouterLib | unknown | base | n/a | 7 deployments: base [`0x01ab83...2da0f9`](./contracts/base-8453/0x01ab836ff146f70938c1a7defc8c8e40622da0f9/); base `0x7a64f6...aa7e4e`; base `0x8e6b29...ccdf7f`; base `0xabb735...0b5605`; base `0xb245ab...1557a2`; base `0xc0976f...4d59fa`; base `0xd3109f...d8d2a0` | ⚠️ Unaudited |
| VaultSimulator | unknown | base | n/a | 10 deployments: base [`0x2dc000...cf1cb7`](./contracts/base-8453/0x2dc0002c9ecc0e7baf7bda035aa653b1e3cf1cb7/); base `0xa065ae...b27be9`; base `0xa6ae67...161f09`; base `0xa700aa...64e9fb`; base `0xaaebd1...31c4a8`; base `0xb80195...62b0a3`; base `0xd6aaae...fcd8dc`; base `0xe7414c...3ffbe2`; base `0xf0d657...db0e05`; base `0xfe2a33...4d373e` | ⚠️ Unaudited |
| VaultStrategiesLib | unknown | base | n/a | 5 deployments: base [`0x0b43bc...d1777b`](./contracts/base-8453/0x0b43bcef4af1e9c52dcca264b78c1dd778d1777b/); base `0x221495...629d23`; base `0x38df9f...e73e28`; base `0xc77df5...391571`; base `0xf22bd3...663e9e` | ⚠️ Unaudited |
| VaultTokensLib | unknown | base | n/a | 7 deployments: base [`0x07b3dd...fe2ee2`](./contracts/base-8453/0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2/); base `0x1b841e...145812`; base `0x2f67f8...5bb650`; base `0x4e41ae...0ee89c`; base `0x5deda0...8d0a08`; base `0x7e81c4...daf5c5`; base `0x86aab4...f0835e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x00123a...5d9fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03a10d...1c6973` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03af71...1a19d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x045f5b...b9c0e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04e8c4...c155ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x051c38...fc0849` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x077e53...2be178` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09291a...5e3257` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a4f8d...81b0fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a53bd...90a9cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ad4e2...f8c01e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ae165...6f3f4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b1e6d...be5cdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cecb9...9b2fcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d2744...4a3739` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10da11...1010b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1954d1...46b3f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1aeff1...1ee60b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1be1ad...ae5b89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bfcb4...5b338f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fdd44...8efa6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2327c7...19ea49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x290a9a...ee6add` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29c66b...96c28f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2cebb5...898e58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2dac28...bd35b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x328600...0019dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x340386...bcdab4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x354533...066564` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x357173...45d294` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35cc57...067e1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x366d5c...9b7ed8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37c122...34ca3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d26d7...9288b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f1e13...39ed81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x400df3...d1757c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x408c0c...3cd91c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x413546...460859` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44921e...5162c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45527d...cba856` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45585a...c50029` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x491b36...f45d38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b368c...8ff0aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4be446...a2ea27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5062f9...256b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52796d...5fc3c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5352bf...ae4bf0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x546782...e46851` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56a87d...946ab6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58c225...dbd7f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x595027...550ef9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af1d3...67bf3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af618...8741fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b7b0e...bb5f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b8120...402faa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x636a7f...8bd476` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x661d1c...9f1822` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6726a6...8fa386` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6792a7...f72970` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68ba6f...ead92e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ab825...5ffcca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70ecd2...b927bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d588...c31b6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71f4dd...7f6d29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7293de...fdaef0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76ce22...2faf9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78096b...d49e4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7969f0...f62661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b62a3...7f47d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bcb31...e6ce4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f8e35...793111` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x801ebe...bb64aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x808aa8...cae78e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x809814...18b516` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8298cf...84cda9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x837714...746842` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84a619...8e2562` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85941b...cff3d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x872ad3...faf871` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88ed2d...3ece6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b2ba9...dd0d63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b7009...9e467d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x900f80...e7c487` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x910543...bed2b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x927c76...21bde4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x942d21...f1e1b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95b40f...e3b969` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95be5c...d62ea6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x967d71...b6d070` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96f5c3...570424` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x991366...fd3687` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x992fda...3d05e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99beba...3c3d7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d0df2...209ba2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f2c74...b34d14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f30f2...0acb8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa06c74...46d6a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2601d...9b9a9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa789dd...d35464` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7e0f3...c5df3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabd170...5010e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacdee4...e63e43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadee3e...5ea244` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafdeaa...3839b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb03503...80ce3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb40d9c...4233fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb2b20...656277` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc4042...bd4490` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe2ecb...449de1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc09ed6...c54308` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc35b01...6ed218` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc52c24...3265b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc96150...abd952` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad808...991b2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbf202...4f58e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xceeda1...0c82f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0364b...9f07fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd21fa0...e0c94f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd42b73...3dd733` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7a3e4...a97150` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7be5d...919722` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddbc27...c71c49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddfbfa...2d59c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe11a23...af1a18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3e4a0...d73f32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4392f...0a67a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe46434...e83011` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4e1e6...46b0e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe50489...efd359` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe77b9f...6def73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9bbdc...cafb55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea6daa...9464fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec043d...ea8fa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecf984...2050e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee0586...43ba54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee1ac9...ce638b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf02261...14664f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2b4ef...da6ac9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4a4e9...6f441d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5738b...930b42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6c9e5...c22195` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6e0db...7d0eb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf77895...ae8e6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7bda1...4364b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf97cee...ca3620` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbbb3f...06aeaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdad14...08986d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffdc0b...21922b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/singularitydao](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | contract_name | 7 | n/a |
| [hacken.io/audits/singularitydao](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 164 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [2479] hacken.io/audits/singularitydao

Fork inheritance lineage and inherited audits are included when available.
