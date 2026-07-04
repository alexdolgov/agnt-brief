# Agentic Audit Brief: MyTrade

## Project Overview

- Project: MyTrade (`mytrade`)
- Website: [https://www.mytrade.org](https://www.mytrade.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.468Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: polygon
- Contract surface: 337 unique implementations (337 raw deployments)
- DeFi Llama TVL: $7,523.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 2 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 337; live-surface contracts included: 337 (2 live, 335 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 337 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 335
- Unique implementations: 337
- Raw deployments: 337
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MyTradeOrderBook | unknown | polygon | n/a | [`0x5d36b3...bd888b`](./contracts/polygon-137/0x5d36b36c53438c0fb70dca5082ee5bde25bd888b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x4535e5...6747e4`](./contracts/polygon-137/0x4535e52cdf3ab787b379b7b72b5990767e6747e4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (335)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x00dcb7...0335eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x017d05...ee8854` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x01a2ce...afeb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x026980...9badd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x028619...ca3eec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02910a...ea19f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x045bc9...057eb7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x055ac8...901f20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05e023...993005` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08e0c0...185f5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x092832...080d1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x09e84e...21e836` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a4b1c...da4935` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a938d...abc50c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ae182...f574d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b63dc...d3fab3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c527d...374d4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cc453...555e7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cf523...26f07b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d7fe4...4c78a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ec129...39e2d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ed3d7...f4c52a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1032e8...3865bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x133a7a...45b68b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14edd3...11c489` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x169b30...5ce7de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16e29a...5789d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1816dc...bad3f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x185e81...d203d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18f05c...273684` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19eb2a...561de1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a2d91...18cd50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a8084...fd6901` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ae68b...344cbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b750f...760460` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1dc3e5...3ddc5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1dcfd5...d76cae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f4973...8daaf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x207557...710c58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x209230...23ebf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20bd8d...6f8cf0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20c714...5e74c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2124cb...e11734` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x216e03...d5154c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x218ecd...05c0e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2265e1...d3090f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2332c8...900c80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x235763...57ca52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x253326...6c3775` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25dbf8...e654a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x260372...a375ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x296c99...abf06d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a897a...078677` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a8aa0...9f4ba9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a9708...4c743c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2b38af...f83fe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d13be...45e9d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2df83d...a25d7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x313d54...057f8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3235c0...0e717d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x326b12...f210a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32dfd4...2ac93a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33dceb...a31600` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3553f9...2276b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x363424...cf331c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x365d97...2acf4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37d9b3...0558ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37e09b...877606` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x386325...26137e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x389eac...0e8779` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3903ca...6b84fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b11f6...98b78d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b4c16...44be66` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3de6b1...b03f79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e408b...d1a92e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ee415...3ed0b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f08e1...3b567d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x408870...237b94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41d3b8...6f29a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45b11d...bb5803` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47cb7f...b94dbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47ec82...107111` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x480ac8...0b865f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x485949...c7f64b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x488da8...d7aea3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x49373e...30fcfd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ab581...94f88a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4adac3...483470` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b2e59...6e89da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b5397...5824e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b6afc...b2ecb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c1b2e...c8b0f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c7437...304c7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ccfba...b5f5f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d5f4d...2e58c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4dc534...1ed6f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e2773...c0d7d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4edfc9...629804` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4eea9a...60362e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51e093...3b749c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51f014...2ee5bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x528f24...9aca72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52bbee...943c7f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53742c...bab5c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53de11...244d3d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x551231...dd4b9e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x56e3c2...206491` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x585db5...2a9713` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5911f2...2a98cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a8595...8dc592` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c9597...44e9a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cace6...50f3e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d5340...867c10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e932d...a28754` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ec515...250b26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x607154...350a35` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60f4b2...cd41d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x618109...2ebde5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61bd4b...509bbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x635cf2...d4a491` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x639cc5...fc3b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x651e60...91e598` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65f08d...2b3bc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x661753...e789a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6652f5...880662` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x670ee2...92f343` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67631b...1060d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x683cf1...18a63d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x686981...8304ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x693dc8...c27730` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c090b...607f41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c8c51...9971d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c9571...1d66db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cc4e8...d32882` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d34b9...272a1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d85aa...b7bf8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f292a...0ba20f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7058ce...e5df54` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70d475...598013` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x717ebd...d2cf03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x71a319...07b9f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x71c69c...ef9cd0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x71c6ba...4a08e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x722752...f36a83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74f848...74103e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76985b...4f5664` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x774777...56a54b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78b924...c098ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x79ffe6...094490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b949d...954ef5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7bec6b...635e07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c7c56...e005dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7cb840...a16e90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d0ae7...7237d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f664c...92dc61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x828414...4148da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82aa18...c14276` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82c576...579c4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82cb6d...c92d60` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83096a...f2863e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x847c51...474386` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x855b1e...190192` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x856298...9d2cbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86ce93...eda731` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86d868...a22e4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x87462d...147d9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x876865...428b96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x879bad...4c18ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x87ecfc...f652fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88256f...311353` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x883376...2d781e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x892ea1...61a9cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a7f20...b3e848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8aeb24...9677a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b71da...f9f52b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c5f07...80b826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d1658...adc62c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e3edb...125957` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f300d...42bf43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f93d3...c2596b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fad60...3d83dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90c0ab...b0d38c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90d7cc...f7fd5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90f687...44b548` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91257f...cb280e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91b472...ac5fb4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9273fd...7e0a42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92a422...6a7047` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92d210...9e2118` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x931b78...2a3066` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93f071...323e13` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940932...8de8f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x978f45...17e5c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x979a57...b1cdfd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97b634...cc5e86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98aa3a...492799` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x990be7...4c4abf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x991b5e...aad479` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9991a6...15aa47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99b6d5...5286d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99c109...d5ccad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a15cc...e76659` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a90fe...12c573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a9e34...3d3774` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bee48...d85ef4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bf848...7d1038` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c9eab...4ab74e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d4d74...84c945` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d63a4...6c2c8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e4df3...03d66c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7d6c...0a5819` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e810f...9cedbe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e9abc...68970c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9eafea...0237b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f3aad...035805` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0e929...c6fce7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1c067...282da3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa256a8...63abe2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2bc8c...aed009` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2c7b9...3f373f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4526e...e46401` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5541a...ebeff9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa935d9...260512` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa95d08...201674` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa95db4...01d6e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa966ab...76c92f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaaafb1...be2a2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaac138...86af87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab8c0d...330cf9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae8d8c...547a52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf896d...8266bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0151b...10bdbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0e467...bafccc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1793a...7f9b53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3a464...649281` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44c15...e516bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4855e...0d12b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4ffcf...87e942` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb50c0f...4c3ec9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb52ffe...337d93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5d7fc...a64ed3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb60793...191cd1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb63b01...e25c59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb64e34...5bea65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb68f86...af9ff9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb76c21...b1673e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb863c8...1c6cd0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9521c...18a3f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb972fd...1fb0b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb98045...b9bbc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9c61f...0635ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba236d...83ec9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc7a53...0c6613` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd21c1...ba33f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbda9e8...df57ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf1a91...5619ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf923e...9f2934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfba15...5b862f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1187b...c58f29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc20f1f...3d333a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3a5ca...3b7047` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc48b67...0e961f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4d507...ac3464` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc62d07...a177bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc62d60...8a1806` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6e283...41bd44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6ec57...9d7238` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc744f0...c3431b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc964e2...2154e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9d269...28e189` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc5ec3...3ed8e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf273f...cb784c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd23bdf...429aa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd45b82...c2d9a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5206d...d0c995` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5f5a5...81502a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd64b2e...47b483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9302a...a3116d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9d36a...75bc2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdae011...9956bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde6fe8...fb66bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf389c...3ae577` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe124d1...424ab3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe18f40...b7f879` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1bb06...4872b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2f0e8...7d0545` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe30e94...7997ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe46e29...c1a8e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4bef9...0f9069` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe567ed...a253cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe56ec7...9fbf70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe59a23...4b625f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe67ee2...b11425` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6f35f...17eceb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe73bcc...195a67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe76128...4401a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea263a...6f3f94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb363d...5575d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xebae02...d858aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xebe7d5...f306e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec0708...f77e8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec63ee...72517d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeccc40...a38216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedf0c0...09aed8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee22f8...323c4e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee2ee7...6fa30f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee89dd...364de3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef1662...938505` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef6740...d8233e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef7384...ceabc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf034c1...c6001d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf065a8...ea4c24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf199b1...f8d0a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf1ffa9...6792e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf215a9...a2a7e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2a652...65a015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf3d0ed...84d1a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf474f2...088b77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf48cfe...7b4908` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf646e6...d4d33f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf64be6...d2ef8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6c5c6...300ab5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6f265...09d9bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf79229...73383a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf7e155...9d8f08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8b58a...730e38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9130c...fc3426` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf961d4...8e036f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9d50b...746616` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa50a6...b54f5d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb88cc...0b1e17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe3cfb...1c2187` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff04a8...f86aca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff690b...e18054` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff78bc...5a6c40` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [mytradedex_auditpolygon.pdf](https://www.mytrade.org/files/mytradedex_auditpolygon.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5d36b3...bd888b`](./contracts/polygon-137/0x5d36b36c53438c0fb70dca5082ee5bde25bd888b/) | MyTradeOrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4535e5...6747e4`](./contracts/polygon-137/0x4535e52cdf3ab787b379b7b72b5990767e6747e4/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 335 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13539] mytradedex_auditpolygon.pdf

Fork inheritance lineage and inherited audits are included when available.
