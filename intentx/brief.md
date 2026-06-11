# Agentic Audit Brief: IntentX

## Project Overview

- Project: IntentX (`intentx`)
- Website: [https://intentx.io](https://intentx.io)
- Lifecycle: active (Tier 0, 10.2% below peak)
- Generated: 2026-06-11T00:09:28.382Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: base, mantle
- Contract surface: 56 unique implementations (123 raw deployments)
- DeFi Llama TVL: $5,673,214.30
- On-chain TVL (included contracts): $10,510,957.31
- TVL by chain: Mantle $10,510,935.67 | Base $21.64

## Project Description

IntentX is a decentralized derivatives/perpetuals trading protocol that enables users to trade perpetual futures and other financial instruments on-chain. It uses intent-based architecture to support non-custodial trading, with related features such as staking, vesting, and fee rebates.

### Architecture

All contracts are deployed by a single deployer cluster and share the INTX token as the central economic asset. The SymmExecutor and PartyB contracts form the trading infrastructure, while staking, vesting, and incentive contracts manage token distribution and user rewards, all governed by a Gnosis Safe.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 1
- Unverified implementations: 30
- Unique implementations: 56
- Raw deployments: 123
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,510,957.31
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| IntxToken | token | mantle | 2 deployments: mantle [`0x1cb4b1...e2830c`](./contracts/mantle-5000/0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c/); mantle `0x4b7f28...f5a877` | ⚠️ Unaudited |
| StakedINTX | token | mantle | 6 deployments: mantle [`0x0b5b3f...40f5f5`](./contracts/mantle-5000/0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5/); mantle `0x255472...845362`; mantle `0x921dd8...b53fe1`; mantle `0xbc0292...b4f379`; mantle `0xe72284...a94a6a`; mantle `0xf8be57...65e9b6` | ⚠️ Unaudited |
| MultiAccount | core_logic | mantle | 17 deployments: mantle [`0x188ff4...6c67af`](./contracts/mantle-5000/0x188ff44e2f3dc62e519a0ff29eda4d7a896c67af/); mantle `0x829af7...ad8373`; base `0x219031...9d53e9`; base `0x39ecc7...e95314`; base `0x515d4e...9c6653`; base `0x54a870...1bb887`; base `0x921dd8...b53fe1`; base `0x934152...4f1c53`; base `0xa78429...2926c7`; base `0xb95d17...5be7a2`; base `0xbc0292...b4f379`; base `0xbcf806...b46e84`; base `0xc38342...ffb47d`; base `0xc3ecd8...6f5896`; base `0xce15dc...9f37b0`; base `0xe33374...4ba7b0`; base `0xee93f2...b7a63b` | ⚠️ Unaudited |
| AirdropClaimXINTX | operational_periphery | mantle | [`0x1d3942...bebd48`](./contracts/mantle-5000/0x1d3942a18bad03e8d36e3fbdc6fc4df2d7bebd48/) | ⚠️ Unaudited |
| CarbonFeeRebate | unknown | base | 2 deployments: base [`0x6c81c0...157164`](./contracts/base-8453/0x6c81c0efa63cb8c705fb98d79ad88852c5157164/); base `0xcb420c...ad1357` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | [`0xb49cae...3362be`](./contracts/base-8453/0xb49cae38c96f6425ce4a46e8220549c6a13362be/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | [`0xef23f5...afd7a2`](./contracts/mantle-5000/0xef23f554af7fa7421af1ff53f2b4838c05afd7a2/) | ⚠️ Unaudited |
| ICOClaimXINTX | unknown | mantle | 2 deployments: mantle [`0x229795...3c2927`](./contracts/mantle-5000/0x229795d6d3f3cb11dd0bb7973038fd2f733c2927/); mantle `0xd4e5aa...165c10` | ⚠️ Unaudited |
| IntentXAffiliates | unknown | mantle | 2 deployments: mantle [`0x6ed953...6c5ff6`](./contracts/mantle-5000/0x6ed953a7124d77258a6e43a342615d61fb6c5ff6/); mantle `0x98f632...a158cf` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | mantle | 3 deployments: mantle [`0x01a97c...6a3ab9`](./contracts/mantle-5000/0x01a97c03fce8dce233a269678fb5f9ba6c6a3ab9/); mantle `0x8bb1a5...4f4fd8`; mantle `0xf5a10b...1964dc` | ⚠️ Unaudited |
| IntentXMinigame | unknown | mantle | 3 deployments: mantle [`0x433be5...9d579d`](./contracts/mantle-5000/0x433be520b115d771d6da17a573fdcb01d69d579d/); mantle `0x55477c...8d627d`; mantle `0x703c49...aaddb6` | ⚠️ Unaudited |
| IntxOFT | unknown | base | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | ⚠️ Unaudited |
| IntxOFTAdapter | adapter | mantle | [`0x5d55e5...acc3c2`](./contracts/mantle-5000/0x5d55e52e32266459ecf09684f0abaab6c2acc3c2/) | ⚠️ Unaudited |
| MntRewardsClaimXINTX | unknown | mantle | [`0xc38342...ffb47d`](./contracts/mantle-5000/0xc38342125ded49ea7e62e04a30df29c736ffb47d/) | ⚠️ Unaudited |
| NoxPartyB | unknown | base | 2 deployments: base [`0x324de1...fd330d`](./contracts/base-8453/0x324de1e7078b9809b4c17849f3ddbf39befd330d/); base `0x9f20ba...65bad5` | ⚠️ Unaudited |
| ProxyAdmin | governance | mantle | 5 deployments: mantle [`0x2d2463...453188`](./contracts/mantle-5000/0x2d2463bb95077eb38b3658d71d299da0f6453188/); base `0x48d0d5...22508b`; base `0x55df51...9bee49`; base `0xd0ecc7...5458e7`; base `0xf2b9d5...e77637` | ⚠️ Unaudited |
| SnapshotAPI | unknown | mantle | 4 deployments: mantle [`0x8ed90b...8b0ea1`](./contracts/mantle-5000/0x8ed90b74141390f835d0d866790741497c8b0ea1/); mantle `0xa2d796...717cf0`; mantle `0xa3a93a...f699bd`; mantle `0xd3aadc...03b1cf` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | base | 7 deployments: mantle `0xeb02a6...19db05`; mantle `0xf7b6d0...a12bcf`; base [`0x25d757...983f0a`](./contracts/base-8453/0x25d7572f32d9cfb96799efdf50804a982a983f0a/); base `0x2d36f5...ee5eca`; base `0x3c3de3...062855`; base `0x433be5...9d579d`; base `0xbf41d1...8155d5` | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | 2 deployments: base [`0x1bd0c5...0ed424`](./contracts/base-8453/0x1bd0c5557f63921ad7553b7ad5cce1585a0ed424/); base `0xb3ccac...93499c` | ⚠️ Unaudited |
| TestToken | token | base | 2 deployments: base [`0x3256de...807b66`](./contracts/base-8453/0x3256de92e1e2f588950b009346f5c77d07807b66/); base `0xade616...873fa9` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | mantle | 3 deployments: mantle [`0x490249...9ed8e2`](./contracts/mantle-5000/0x49024995376c4218348c5c9f578f8c80a99ed8e2/); mantle `0x50f1cd...4649b8`; mantle `0x839d23...0c2be7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mantle | 11 deployments: mantle [`0x4318fd...19b672`](./contracts/mantle-5000/0x4318fd1edb3ed2b5e018b00fe1b886e85719b672/); mantle `0x73c9c5...cf7529`; mantle `0x7495e8...e082e9`; mantle `0x77263f...477641`; mantle `0x8e9342...18ea82`; mantle `0xbea144...a0dfd2`; mantle `0xc7e3f4...1ce20c`; mantle `0xec9190...e47d22`; mantle `0xfaf5c6...b79aea`; base `0x703c49...aaddb6`; base `0xc9f8a5...d8da21` | ⚠️ Unaudited |
| VestingXINTX | operational_periphery | mantle | 8 deployments: mantle [`0x083e44...f6366f`](./contracts/mantle-5000/0x083e449ac8ddd874efb2d9315301b8188df6366f/); mantle `0x0863c4...508146`; mantle `0x1c529c...0686a4`; mantle `0x388e7a...e55d60`; mantle `0x805045...1186dc`; mantle `0xb33b67...dea44b`; mantle `0xb98b24...4120cc`; mantle `0xd012ec...7a5040` | ⚠️ Unaudited |
| VestingXINTXAdv | operational_periphery | mantle | 2 deployments: mantle [`0x5a2426...e97edf`](./contracts/mantle-5000/0x5a242601270389ce307de3ce2283f7a4b7e97edf/); mantle `0xef7964...671ef8` | ⚠️ Unaudited |
| XIntentXTraderIncentives | unknown | mantle | 2 deployments: mantle [`0x316cee...da653c`](./contracts/mantle-5000/0x316cee10dd877c4b503ad50afbbc216b08da653c/); mantle `0xd1eb4a...b1b95f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TimelockController | unknown | base | 2 deployments: mantle `0x7aded3...0c04f0`; base [`0x319f10...324fa6`](./contracts/base-8453/0x319f10d14b5b7195a1693f4f5c015370c4324fa6/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mantle | `0x01114b...a4fb59` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0f5af1...1e83b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x327945...8e7022` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x349993...c4d2b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x39f64b...dfc024` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x40423e...9cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x41ad9f...e31d60` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4458a9...72fad5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x458d17...5b3f27` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4d8835...57273c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4fad27...b50d1a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5996d8...f924b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6d0be4...d8e7f5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6d8a38...81362a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x78253f...11b4f6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9c4011...2a8ad5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa6e69f...abfa90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb5317e...b7d112` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb86b96...52d73c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc1680d...7b7b78` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xca8e34...0d7bfb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd008af...adb5d0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd6e116...1452ac` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x141269...f20109` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2d2463...453188` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x78c985...905091` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6b670...619e56` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdc4a63...5fa725` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6118a...95767a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf3d7d3...a2477c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://audits.sherlock.xyz/contests/85) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://certificate.quantstamp.com/full/intent-x/a195e62f-30b6-4219-b9e5-42af8a9e2fd5/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x0b5b3f...40f5f5`](./contracts/mantle-5000/0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5/) | StakedINTX | token | $18,135.67 | Verified native implementation with $18,135.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x188ff4...6c67af`](./contracts/mantle-5000/0x188ff44e2f3dc62e519a0ff29eda4d7a896c67af/) | MultiAccount | core_logic | $21.64 | Verified native implementation with $21.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1d3942...bebd48`](./contracts/mantle-5000/0x1d3942a18bad03e8d36e3fbdc6fc4df2d7bebd48/) | AirdropClaimXINTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x229795...3c2927`](./contracts/mantle-5000/0x229795d6d3f3cb11dd0bb7973038fd2f733c2927/) | ICOClaimXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6ed953...6c5ff6`](./contracts/mantle-5000/0x6ed953a7124d77258a6e43a342615d61fb6c5ff6/) | IntentXAffiliates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | IntxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d55e5...acc3c2`](./contracts/mantle-5000/0x5d55e52e32266459ecf09684f0abaab6c2acc3c2/) | IntxOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xc38342...ffb47d`](./contracts/mantle-5000/0xc38342125ded49ea7e62e04a30df29c736ffb47d/) | MntRewardsClaimXINTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x319f10...324fa6`](./contracts/base-8453/0x319f10d14b5b7195a1693f4f5c015370c4324fa6/) | TimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x490249...9ed8e2`](./contracts/mantle-5000/0x49024995376c4218348c5c9f578f8c80a99ed8e2/) | TradingCompetitionClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2415] {% embed url="<>" %}
- [2416] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
