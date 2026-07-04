# Agentic Audit Brief: Kafe Finance

## Project Overview

- Project: Kafe Finance (`kafe-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:18.321Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: moonriver
- Contract surface: 199 unique implementations (247 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 2 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 247; live-surface contracts included: 247 (50 live, 197 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 199 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 197
- Unique implementations: 199
- Raw deployments: 247
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrowthVaultLaunch | unknown | moonriver | n/a | 49 deployments: moonriver [`0x0ca82b...c06520`](./contracts/moonriver-1285/0x0ca82bf08b50a7eb12d237b0f37c39a972c06520/); moonriver `0x0ccd33...5c99a6`; moonriver `0x192021...df6c22`; moonriver `0x19ace4...e17b4d`; moonriver `0x1c5398...701743`; moonriver `0x21ad5f...290477`; moonriver `0x222e31...51d72b`; moonriver `0x290dca...d03519`; moonriver `0x2ccc46...9b8190`; moonriver `0x2e98c7...1a9b04`; moonriver `0x2f81dd...426f51`; moonriver `0x34d547...b29201`; moonriver `0x36c06c...a105fd`; moonriver `0x372ba1...4ed49b`; moonriver `0x39402a...9d5e89`; moonriver `0x3dd581...c94eb4`; moonriver `0x3ff005...f890c6`; moonriver `0x463958...2e99fc`; moonriver `0x46944a...50efb6`; moonriver `0x5bc257...cf1a41`; moonriver `0x5e4a10...060e52`; moonriver `0x626ccd...09f133`; moonriver `0x6a970c...707065`; moonriver `0x708855...6d3c6b`; moonriver `0x71ad72...a8e753`; moonriver `0x73ff88...3c1f51`; moonriver `0x81885b...c23337`; moonriver `0x8ad8e1...71d36d`; moonriver `0x8d0ca7...b469ab`; moonriver `0x9aaf32...899c15`; moonriver `0x9bba20...11a624`; moonriver `0xa0c4d8...69008f`; moonriver `0xab366e...580da0`; moonriver `0xaf44a1...5d91bd`; moonriver `0xb5ef64...1c93ce`; moonriver `0xb74bec...8c8fbb`; moonriver `0xb9fc48...e2b6cc`; moonriver `0xba998d...27bfbb`; moonriver `0xbdcba2...f1f933`; moonriver `0xc9a7c9...afaf4a`; moonriver `0xd82bb4...dbc562`; moonriver `0xd9e896...d4f774`; moonriver `0xdc443a...e7bce3`; moonriver `0xe8216d...8a7978`; moonriver `0xf4d860...013d2b`; moonriver `0xf5791d...eb6923`; moonriver `0xf68151...2b0b7d`; moonriver `0xf7b54a...c5d8e1`; moonriver `0xfda619...7751f1` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MOONKAFE | unknown | moonriver | n/a | [`0x52f04c...d3bdc9`](./contracts/moonriver-1285/0x52f04c806eb82930f40d410259b7af8e18d3bdc9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (197)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x009329...846cca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x01f4a5...e02a40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x02e0fb...a3e873` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x03e9ef...3288fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b41e6...3d157c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c1f2f...21200f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0d5c3c...c2be8a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x119ff3...396549` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x120993...ec8c39` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1269d3...3a4a58` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x12fdca...6ceb2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x155560...921845` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1573f0...f342b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1576f1...ca931a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x15795b...47422b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x165e1d...b216b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x16678e...9a69ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1670b2...583bad` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x179ca2...b47064` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x19842d...448add` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a4f1e...3338b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1aaaa0...59ae1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1abe6b...4e995c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1aef61...261736` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1c2c85...76df06` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fa670...1743f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x205b51...4c3e0f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x20bc20...22fba0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x22e671...35b8c1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x231377...0380e6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x251274...cfcc43` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x270535...89a793` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28be40...665139` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28d5a7...9a9e77` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x299250...b5254b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2a4f9c...a2ba84` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2bd4f3...4443b0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c3282...171977` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2d2f7a...9219ef` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x308252...3603a2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x33b5ed...0ee2c5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x33c90a...581933` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3481c1...e97303` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x34f7e0...f000c5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x35d21c...b27e1e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x381bd8...94aea3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x397a5b...0329d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3af1f5...c1cc0e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3d451c...69a4ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3ed965...65aa00` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x41d54a...ea33ed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x42b4c4...535040` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x461955...992f11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49cb83...987426` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a9bff...f8e3f6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4ec733...90b262` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x527df2...c389ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x53a7fa...ac74f1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5573b7...c2249a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5955be...3020dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5aed52...da520f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5af4bd...3bf87e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b3987...798c25` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b6828...276667` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b6cdc...979ee6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b809d...aecd6b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5db498...fd49f7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5dce51...70fd94` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5df6d1...06a7ba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f621e...eee9f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x604a25...e0fa27` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x60d573...c725c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66111a...c36147` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x678434...6c45a8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6a00e4...791944` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6a210b...8a73b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6c3ad7...965242` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6c4168...19a719` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6dd7b1...2171e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7025a5...b99d27` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x70daaf...8b5e1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x754eb4...5169c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x75b35c...cb3db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x761a03...9d933e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x76e02a...0f42c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x78c2f3...95f88d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a2a19...f7ceb5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7adb20...3e0bdc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c3980...399abb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dab11...25bfac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7e23b5...0b1896` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x805140...e7d8c4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x818cbf...d45f52` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x836f66...276a23` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x842498...938ec1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x862a9d...9cb180` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8a8af1...291dc2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8cea47...782d42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8fa414...cc1ecb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8fbf11...317acb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91ad62...82869c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x94b7a6...8049a1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x979ac9...69b369` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9815b3...32811b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x99216f...421081` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x995ef2...92a863` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x99e86d...a79854` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9c5b62...995379` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9d1a47...19697b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9e2325...fc17d5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa164de...fbf0f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa28dce...5426e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa2e56a...ba5082` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa7ff12...f60cfe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa9355d...0b824b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad55e2...ab5c50` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad65e5...a9bcab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xadd075...e4c5e9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xae94b5...73e662` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaebc48...5375b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2c247...04ebe5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2c349...3f8064` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb33c40...5db106` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb356f2...ce7e2d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb65294...534c13` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb653a2...322607` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8b2a3...13ffa8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8fa69...62bb5a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8fbd7...114ee7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbb4980...bc4ec2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbbbb04...fd3491` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd7967...b9c560` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbede6e...e61357` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbee04b...9ceef1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf188b...0863dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbfb357...9fbdf7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbff5ac...ec4398` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc13719...35b55e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1ec15...f6f728` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3cb7c...8f8d12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc5adfb...aab3ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc6bc65...d3de47` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc81fc5...34cd70` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc9d678...ae8ecf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcae39e...cf1597` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcd26d7...c138ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcdce87...185eb7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcebdca...7a40d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf6440...6aecf8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf8cf9...96a22f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcfbd00...e2330a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcff6f5...dce9cb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd069b2...44a167` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd076d7...7bfc78` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd0c03b...14d844` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3009c...c9cbf4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3de82...446918` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd4ca9f...d3daf1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd509a7...64754c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd51308...0c7d72` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd622b2...d3be1d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd6da3f...3e2481` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd84b5d...7ffe8a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd936f8...67a5b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd94f0a...06305d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb5ab0...ade192` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdc001e...131a48` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdc1181...156253` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf71f3...5c8dfd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe00eed...fa9a3b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe03d9a...9adfdd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe10621...86491b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe1544f...254f40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe21106...b42e99` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe21a87...b6a8a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3c3de...c8010f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3ca5e...870c4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3e70d...868f12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe4b429...00fc52` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe58419...84d445` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe9fa05...d570f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xee5513...0e06c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xefaa72...6613f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf0b764...1683e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf25f77...566fde` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2b632...43a0a4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2db1f...e7ed71` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf320d1...17e896` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf39331...4368fe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3bbd0...3c8fa4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf43ee2...1ffb2f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf7d9ab...d73630` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf85681...8d1782` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf881a8...2c3c57` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8bc4b...c9a665` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfbaca8...b7a9ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfc0021...36698f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kukafe.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Kukafe.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 49 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 199 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=49

Fork inheritance lineage and inherited audits are included when available.
