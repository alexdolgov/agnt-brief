# Agentic Audit Brief: Goose Finance

## Project Overview

- Project: Goose Finance (`goose-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.760Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 373 unique implementations (375 raw deployments)
- DeFi Llama TVL: $241,646.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 47 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 3 common project-authored base contract(s) (feedistributor, bscconstants, vaultrewardschef). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 486; live-surface contracts included: 375 (12 live, 363 unknown).
- Excluded by liveness: 111 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 373 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 363
- Unique implementations: 373
- Raw deployments: 375
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EggToken | token | bsc | n/a | 2 deployments: bsc [`0xeee370...c1636c`](./contracts/bsc-56/0xeee37093341818e44410c58f1c5bd98163c1636c/); bsc `0xf952fc...5bfda6` | ⚠️ Unaudited |
| GooseDollar | unknown | bsc | n/a | [`0x5bfe81...1febeb`](./contracts/bsc-56/0x5bfe81fcb3708c8fc733bef60d313cafce1febeb/) | ⚠️ Unaudited |
| GooseDollarBond | unknown | bsc | n/a | [`0x831b85...0a9c8e`](./contracts/bsc-56/0x831b85b2c6e55344d6b17c9d67ea83771b0a9c8e/) | ⚠️ Unaudited |
| GooseDollarChefV2 | unknown | bsc | n/a | [`0x400624...6126bb`](./contracts/bsc-56/0x4006243f6f067d06db15799848229209e96126bb/) | ⚠️ Unaudited |
| HouseChefV4 | unknown | bsc | n/a | [`0xbc8529...233de5`](./contracts/bsc-56/0xbc85293ebc4bc4cfc4d045184b76b274c4233de5/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0xb662c0...1b24be`](./contracts/bsc-56/0xb662c033f7af2634270dcbee36b7c9c9a61b24be/); bsc `0xe70e91...7f2e57` | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0xc0704e...0c9b1b`](./contracts/bsc-56/0xc0704e53a139fd1e21cc59bd09ae15fec70c9b1b/) | ⚠️ Unaudited |
| VaultChef | core_logic | bsc | n/a | [`0x3f6481...b435d8`](./contracts/bsc-56/0x3f648151f5d591718327aa27d2ee25edf1b435d8/) | ⚠️ Unaudited |
| VaultRewardsChefEgg | core_logic | bsc | n/a | [`0xe3cd01...5d47f3`](./contracts/bsc-56/0xe3cd0182d3a5ff54a5a304121c90b89f7a5d47f3/) | ⚠️ Unaudited |
| WrappedEgg | unknown | bsc | n/a | [`0xb8157e...b90a16`](./contracts/bsc-56/0xb8157e2506238b06f2d1f3030593f3d620b90a16/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (363)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x003175...3c2276` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01bcf4...0162ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0247f8...c6044f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0259fe...9dae18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02b1cf...fd5f27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02eb22...ca519f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0385c0...17e677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03e544...3b6fa2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04aab8...f69fe4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x059e6c...e724c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067ad7...c42888` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06a4d8...27ffcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0867bc...40a12f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08cc4d...629c87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a325d...9de802` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aa0fa...2e2e4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ac7c8...00b693` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dff11...61293b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e56fb...2ee83d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ee44d...ab8ff7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x112e8a...959825` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1431f7...3c7754` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x144066...247e29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x145712...c67b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x152514...21cfea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1541fd...ee7f6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15a8dc...0815c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15ae6a...ecf820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15ce1c...4dd3f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1754fe...fb45ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1758eb...90c897` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17af12...137368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188b46...9a1c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x190f87...44056a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x191a20...26d491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x192ae0...3d9032` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x199cc6...aa7973` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19ba04...782b98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a94e5...be56e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a964a...0ba620` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ad5df...7c9021` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bc12c...4d700e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3646...d23921` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d4b5a...4587f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d6a71...6d9668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d97d8...fc77d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fbfa2...b4b08d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20bd97...65434d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21a08e...d60567` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21c787...6ba05a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221585...8b9dc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x225c74...6badbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x226933...95360c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22b0f4...616d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22cc19...d3ba13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x230d32...cccbd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2329fe...244f2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x232fe9...f58d1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2379e6...62f515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2389e5...0494cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23b8a1...c9aa76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23fc95...4b01dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x241eaf...60e1fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x248c88...8acbb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25113e...35b05b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2642fb...0ed827` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x265590...26d96c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26f7f3...6bf122` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x274135...ec815c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2862c2...3c6ba0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29c0f6...e0f0d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d805a...8f24ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e21f6...cae1c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fa493...b318da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ff4a2...4020e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x315a1a...4a2c5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x315e15...cf7dac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31744f...22cbc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31e475...cf2069` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x327cfe...f7a144` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32df8d...d37e82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3371c5...4b1eea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34466b...3e3709` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34571e...77f485` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x350d04...b7ec7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35d6f2...1a7505` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36099a...d99193` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x385927...1ea8dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x386ce7...35d7ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38805b...796324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38fe13...b3241d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39a2f7...341726` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a95fd...312a6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3adf2f...afd5d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b1387...fb68ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b337b...8f1e14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bd969...ee5108` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c26bb...bb7ee6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3da4da...574d5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ec312...7164f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f89a0...8e3b4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fb976...3c6f5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fcf4c...021a1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fd824...19bcd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414340...1fc466` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41bbdc...5473ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x423b91...1a9e66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4264c3...b1b7af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44475e...47b1b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4454eb...1aba1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44c285...ec37dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45cea1...b2c220` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45d486...b6094f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46287f...ede0a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46864c...6d905e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47b80a...264f0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x497d4c...39cf22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a9183...eba24c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4beb24...f71830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d19e0...ca6bed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d8a2c...5df3bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d9baa...e77bf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ec90b...5ae5af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f0304...316d93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f0d7f...2ffbe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f1361...a89b3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f7713...c2e929` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e7ad...99df60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51a72c...467a08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x526b42...46ea49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52ba61...b6f331` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54386c...aa4a90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x562e9b...670dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x576778...dcbf6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x587720...90b228` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59669c...06e3c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a2581...4a96bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a60c7...ded90f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5accc5...b08cf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b0964...994dec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5be8c5...26d52a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d2c4f...b2324e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d3b24...b3c7a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dda32...d06fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e5b17...c8b891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e6600...1756df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f4582...de47b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f6074...1c9f0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f7ffb...94403c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60ec02...31b03b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x613827...eca22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61c67c...980452` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6238fb...c5531d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x625f43...317e01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x631aa5...779ed2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6372de...b76eb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6381b5...b90de9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63ba5b...2b99a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64f314...c79b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x658ada...3b8db7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x662eb5...93be11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66acc0...90d669` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x675030...30cc54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6777e4...895383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x682bba...cdffe9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68f22f...c77362` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68f31b...c590ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69571c...2aad46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a3d5a...c5173b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a6828...9476d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6aae95...577c34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bd9eb...7614f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ccf63...909de8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d4c70...8004b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dac4c...a2f7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e3449...c34e3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ebfb8...fd22c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f37db...b8f1de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fa67d...b03653` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7008c6...3cfe96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7038be...be2e2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d826...b1c7f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e2bd...c3c482` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7242c9...c93393` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x733a27...7d4bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74a9a6...3980d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74d617...a31cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7534a3...c0bf09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75453e...eb17d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x791a6a...af9fc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f0ea...c23ccf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca372...61b86c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cd94b...e1d96b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eead4...70487a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f184e...f68eb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80302e...5205d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x814346...497220` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e686...493763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x832399...db6512` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86be49...38a1a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87072e...001f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875aed...1c4cf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88c7b0...7a958e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88f56d...102f33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ab498...7829b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b5607...c0b983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d1f90...fe00f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e11c4...d9ebab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e399d...df0243` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ec92b...7a9990` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f5b1d...5c88e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fadc3...f5738d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91381f...b404f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x913e13...ef627e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92b84c...a84550` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x936e39...b14c1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93abfd...b2b60e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95413e...bb6651` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962b08...73d3aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x982d6c...c507c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9839e9...9e8a02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9972d8...fdc160` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99dee8...838de2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a5bc5...882ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b6782...b8ca12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bc54f...daaaf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d27d3...a64cc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d3a26...2ea6d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7207...d8895f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dfff2...9c3456` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f43da...34736d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fa995...fd5263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fe32d...2255f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa08069...158145` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa12400...eab2be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa15fb2...611ee2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1e659...101e98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa23bf0...968dfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2d2cf...0521da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3ed32...added6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58181...619f30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5cea7...af8c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa685ee...1215bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa81713...8f7b78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9767f...2550c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa420c...2bd5d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa8fa3...3f8b17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab98cf...4f2f16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabcf6e...61f526` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabcfa4...42cbaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabd0a8...f74fcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac965c...c471de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadda41...083def` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadf49e...ea7e89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7e5f...8c3dc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb04e85...12e3fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb084ce...3b162b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb25ca4...a545f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2904c...160e33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb38123...5b15a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb40373...afb337` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4cbbd...3f9957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb53759...b62b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb580d8...5d2ce8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6758a...d7a51b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7b6ae...fa2658` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7ed0e...c12062` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb81606...12a8ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb879b0...a83f0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb96c59...666e29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9c227...950680` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc02d1...1c8e7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc33d8...e8b9d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc541a...f9a63f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc6439...72ad22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd9d64...ed65c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe7969...a073ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef250...e9f465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf1f53...0ed51c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00470...e62393` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc03fa3...fe6d16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0a573...dc4be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1b100...8326a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2f1a1...c0d26d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2fabc...200486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30206...addac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38335...445993` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38f15...463aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3fe36...c759e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc46668...8a8cd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc490f6...9e5086` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5fa9a...de7d73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc64a0d...dc96b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7b646...e92d2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7dbce...a84f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc824c1...9a39ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc89603...c2bf9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9293e...4a10b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98b4d...c7cacc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98e21...7ca696` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9a228...595dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb28d4...116697` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcedf35...3304a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd060a5...aef9aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd221c2...ebbc62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd28138...1d3873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd305e3...5012b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd33048...2f54a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3d786...80bc9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd41518...3ab9c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4aa1f...d20a79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd53363...a40c1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd55fd5...9d0ca1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5b585...bfc384` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5f0eb...7a659f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7056c...72c84a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7cf7f...c5a73e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9640d...4897b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9a365...c32869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdae234...6798b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaf224...37f5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1f49...6ba885` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbe20a...f6a638` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd0cef...8c05dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1831...c71170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddba96...bfe134` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde083b...1c37d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3635...ea8bbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea85a...eff4f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04fd1...e3d80b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1d76c...b7f275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3e80f...206943` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe694c3...b9b361` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6d72d...0eabba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6ebf4...bcf7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7d618...b3510c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7e6ed...f40438` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe81acc...0fe7c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe87866...8789e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe92687...b8b908` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ade3...2e3381` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ca93...8fca59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea3e95...100804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea52ed...e02896` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec245f...5610a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed0aef...34f2a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeda57b...aac687` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef34f6...1026ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefc35e...6448b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf20033...e6bdcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2d414...518467` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf41afe...347a4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf44b80...86ff65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4a548...d21f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4b535...816043` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5106a...46c60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6c201...d0f94c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa04d6...93142d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb05b9...97e479` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb24d1...3f9f45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb4d45...b84882` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfba01e...ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfca9d1...1f3a64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/goose-finance](https://skynet.certik.com/projects/goose-finance) | CertiK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 373 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13199] skynet.certik.com/projects/goose-finance

Fork inheritance lineage and inherited audits are included when available.
