# Agentic Audit Brief: Mode Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 4.9% over 90 days

## Project Overview

- Project: Mode Bridge (`mode-bridge`)
- Website: [https://app.mode.network](https://app.mode.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-23T13:13:29.848Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, mode
- Contract surface: 100 unique implementations (129 raw deployments)
- DeFi Llama TVL: $6,175,461.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mode Bridge is the canonical bridge for the Mode network, an OP Stack Layer 2. It enables users to transfer assets between Ethereum and Mode, using standard Optimism bridge components like L1StandardBridge, OptimismPortal, and cross-domain messengers.

### Architecture

The L1/L2 Mainnet Contracts family provides the core bridge logic, while the Tokens family includes the assets that flow through it. The Mode Bridge family appears to be a subset of the mainnet contracts, possibly representing the specific deployment on Mode's mainnet, sharing the same infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/34 (2.9%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 100
- Raw deployments: 129
- Audits discovered: 27
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/optimism/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Staleness: 0 fresh, 2 aging, 4 stale, 20 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solo Review | Tier 2 | 1 | 2.9% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GovernanceToken | token | mode | 2 deployments: mode [`0xabbf70...c07eed`](./contracts/mode-34443/0xabbf702d5151b77263af53b02ff0ccede7c07eed/); mode `0xdfc7c8...e3167a` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | [`0x50ef49...306e15`](./contracts/ethereum-1/0x50ef494573f28cad6b64c31b7a00cdaa48306e15/) | ⚠️ Unaudited |
| bETH | unknown | mode | [`0x420000...000006`](./contracts/mode-34443/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | 8 deployments: mode [`0x2fa6db...1e8517`](./contracts/mode-34443/0x2fa6dbfe4291136cf272e1a3294362b6651e8517/); mode `0x36825b...39e320`; mode `0x5cc070...ab7b48`; mode `0x658408...1ea16b`; mode `0x7a7f24...9979b7`; mode `0x8d254a...721933`; mode `0xa2aa50...5b5729`; mode `0xd02cc7...25e0c9` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | mode | [`0xf27b1b...2c762a`](./contracts/mode-34443/0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a/) | ⚠️ Unaudited |
| FeeSharing | unknown | mode | [`0x8680ce...4b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | ⚠️ Unaudited |
| FiatTokenProxy | token | mode | [`0x6df6c0...2f271b`](./contracts/mode-34443/0x6df6c0e70d6874a37084270de861d4be682f271b/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | mode | [`0xc0ce92...5cd772`](./contracts/mode-34443/0xc0ce92b23108cb4bdbf88788a3933546a85cd772/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 2 deployments: ethereum [`0x14ddd0...0ee835`](./contracts/ethereum-1/0x14ddd08c0e28764fc89a266ec95a93619b0ee835/); ethereum `0x95bdca...298a6f` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x2901da...cc626d`](./contracts/ethereum-1/0x2901da832a4d0297ff0691100a8e496626cc626d/); ethereum `0x8b91af...192bf8` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | 2 deployments: ethereum [`0x735adb...b0ff21`](./contracts/ethereum-1/0x735adbbe72226bd52e818e7181953f42e3b0ff21/); ethereum `0x9c67ac...76eb5a` | ⚠️ Unaudited |
| L2ERC20TokenBridge | operational_periphery | mode | [`0x488cdb...e1cb97`](./contracts/mode-34443/0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x4317ba...199b04`](./contracts/ethereum-1/0x4317ba146d4933d889518a3e5e11fe7a53199b04/); ethereum `0x609302...310eec` | ⚠️ Unaudited |
| MasterMinter | unknown | mode | [`0x885904...78b2bf`](./contracts/mode-34443/0x885904d9cfece53fb5042530f780c5208078b2bf/) | ⚠️ Unaudited |
| MintableERC20 | token | mode | [`0x59889b...90d46c`](./contracts/mode-34443/0x59889b7021243db5b1e065385f918316cd90d46c/) | ⚠️ Unaudited |
| ModeLock | unknown | mode | [`0x74b847...b8c6b4`](./contracts/mode-34443/0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4/) | ⚠️ Unaudited |
| MulticallAdapter | adapter | mode | [`0x9fcdca...f29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | ⚠️ Unaudited |
| OptimismBridgeExecutor | operational_periphery | mode | [`0x2acec6...92b32c`](./contracts/mode-34443/0x2acec6d8aba90685927b61968d84cfff6192b32c/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | mode | 9 deployments: mode [`0x00ea43...f506d7`](./contracts/mode-34443/0x00ea4344e90c741560f08667961a8de39ff506d7/); mode `0x028227...19d4f5`; mode `0x50c572...7db0cb`; mode `0xcdd475...a0a5cf`; mode `0xd98809...56005f`; mode `0xe7798f...5a77ea`; mode `0xef252e...cba105`; mode `0xf0f161...95e2ed`; mode `0xf41923...107be1` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0x692163...096a95`](./contracts/ethereum-1/0x69216395a62dfb243c05ef4f1c27af8655096a95/); ethereum `0xc0c6a8...e8c73e` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0xad3dc2...88c46a`](./contracts/ethereum-1/0xad3dc277d3242938f8be18f0560e3d9b9988c46a/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x8b34b1...7d0c07`](./contracts/ethereum-1/0x8b34b14c7c7123459cf3076b8cb929be097d0c07/) | ⚠️ Unaudited |
| OssifiableProxy | proxy | mode | 2 deployments: mode [`0x98f96a...562d81`](./contracts/mode-34443/0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81/); mode `0xb8161f...985fac` | ⚠️ Unaudited |
| Proxy | proxy | mode | 2 deployments: mode [`0x420000...000007`](./contracts/mode-34443/0x4200000000000000000000000000000000000007/); mode `0x420000...000010` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x470d87...276ab7`](./contracts/ethereum-1/0x470d87b1dae09a454a43d1fd772a561a03276ab7/); mode `0x68a9ec...4e2b72`; mode `0xbe7777...d61f60` | ⚠️ Unaudited |
| ProxyFactory | registry | mode | [`0x30c2b5...f2e1a9`](./contracts/mode-34443/0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9/) | ⚠️ Unaudited |
| ReceiverImplementation | unknown | mode | [`0x66e9cb...01d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ⚠️ Unaudited |
| RSETH_OFT | unknown | mode | [`0x4186bf...56b41f`](./contracts/mode-34443/0x4186bfc76e2e237523cbc30fd220fe055156b41f/) | ⚠️ Unaudited |
| SignatureChecker | unknown | mode | [`0x87fb7b...6ca602`](./contracts/mode-34443/0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602/) | ⚠️ Unaudited |
| StoneCross | unknown | mode | [`0x801375...747bf7`](./contracts/mode-34443/0x80137510979822322193fc997d400d5a6c747bf7/) | ⚠️ Unaudited |
| SupraOraclePull | operational_periphery | ethereum | [`0x2fa6db...1e8517`](./contracts/ethereum-1/0x2fa6dbfe4291136cf272e1a3294362b6651e8517/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x5e6432...9e2221`](./contracts/ethereum-1/0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221/); ethereum `0x951754...d5bcaf` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | mode | [`0x8250f4...b1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | 4 deployments: mode [`0x04c059...6c150a`](./contracts/mode-34443/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/); mode `0x241609...cceea5`; mode `0x7c1daa...177256`; mode `0xe7903b...2cb3cd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mode | `0x00f7ab...29a3c0` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x015a8c...6fc24a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x0386e1...080d9f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x0f5908...8e8dcc` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x14ddd0...0ee835` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x15cd4f...6754c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x1fd06c...e2d40d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x20c608...448a8b` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x223838...20301f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2634bd...701bfa` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2901da...cc626d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2b7d68...b68428` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x320e15...1b23fd` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3e7ef8...276747` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3f26b5...8409d8` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x41c9e3...830d4c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x4317ba...199b04` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x470d87...276ab7` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x4ffa6c...1faef3` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x50ef49...306e15` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x595147...637a52` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5e6432...9e2221` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5e7688...5f23a9` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x609302...310eec` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x628f56...4d03f0` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x692163...096a95` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7215c3...e435ce` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x735adb...b0ff21` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7bf471...9e9a81` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7bf764...16824d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7c6b91...7227f2` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x824b5e...f737dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x83d457...dc1905` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x879a0f...04edd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x8b34b1...7d0c07` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x8b91af...192bf8` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9154d2...b68262` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x92fe7f...a110f1` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x951754...d5bcaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x95bdca...298a6f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x98046b...978603` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x98c419...c2ce0f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x998dc2...1a3541` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9b800c...a043e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9c67ac...76eb5a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9e5aac...ca96f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9ee128...c17eee` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x9fbfa4...849ba9` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xa64e13...a72012` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xad3dc2...88c46a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xb27e5c...9c9933` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbbd707...579ff6` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbc5c67...9995e2` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbe2d27...a44dee` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xc0c6a8...e8c73e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xc19a60...8be15c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xd08a29...fb4034` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xd1b3cb...b6c21c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xd9b9dc...5bb9a5` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xe74131...0091ae` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xeb7275...62949c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xeebd92...63d93a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xf4e777...27f652` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xf5bbe9...a56832` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xff255f...c77635` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/optimism/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [You can find audits for Mode contracts here: <>](https://github.com/mode-network/public-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AUDIT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_4.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AUDIT_REPORT.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [AUDIT_SUMMARY.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/AUDIT_SUMMARY.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AddressGaugeVoter_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/AddressGaugeVoter_audit_report.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GaugesDaoFactory_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/GaugesDaoFactory_v1_2_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GaugesDaoFactory_v1_3_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/GaugesDaoFactory_v1_3_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GaugesDaoFactory_v1_4_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/GaugesDaoFactory_v1_4_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IEscrowCurveIncreasing_v1_2_0.sol.audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/IEscrowCurveIncreasing_v1_2_0.sol.audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeFactory_v1_0_0__v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/UpgradeFactory_v1_0_0__v1_2_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VotingEscrowIncreasing_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/VotingEscrowIncreasing_v1_2_0_audit.md) | LLM | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Ian-1.md](https://github.com/aragon/ve-governance/blob/develop/audits/post-audit-findings/Ian-1.md) | Ian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Ian-2.md](https://github.com/aragon/ve-governance/blob/develop/audits/post-audit-findings/Ian-2.md) | Ian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Invariant-Review.md](https://github.com/aragon/ve-governance/blob/develop/audits/post-audit-findings/Invariant-Review.md) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x50ef49...306e15`](./contracts/ethereum-1/0x50ef494573f28cad6b64c31b7a00cdaa48306e15/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf27b1b...2c762a`](./contracts/mode-34443/0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a/) | ERC20Bridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8680ce...4b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14ddd0...0ee835`](./contracts/ethereum-1/0x14ddd08c0e28764fc89a266ec95a93619b0ee835/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2901da...cc626d`](./contracts/ethereum-1/0x2901da832a4d0297ff0691100a8e496626cc626d/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x735adb...b0ff21`](./contracts/ethereum-1/0x735adbbe72226bd52e818e7181953f42e3b0ff21/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4317ba...199b04`](./contracts/ethereum-1/0x4317ba146d4933d889518a3e5e11fe7a53199b04/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x59889b...90d46c`](./contracts/mode-34443/0x59889b7021243db5b1e065385f918316cd90d46c/) | MintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x74b847...b8c6b4`](./contracts/mode-34443/0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4/) | ModeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9fcdca...f29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | MulticallAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x00ea43...f506d7`](./contracts/mode-34443/0x00ea4344e90c741560f08667961a8de39ff506d7/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x692163...096a95`](./contracts/ethereum-1/0x69216395a62dfb243c05ef4f1c27af8655096a95/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad3dc2...88c46a`](./contracts/ethereum-1/0xad3dc277d3242938f8be18f0560e3d9b9988c46a/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b34b1...7d0c07`](./contracts/ethereum-1/0x8b34b14c7c7123459cf3076b8cb929be097d0c07/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x420000...000007`](./contracts/mode-34443/0x4200000000000000000000000000000000000007/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x30c2b5...f2e1a9`](./contracts/mode-34443/0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9/) | ProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x66e9cb...01d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ReceiverImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e6432...9e2221`](./contracts/ethereum-1/0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8250f4...b1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 13 |
| standard_library | 5 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 25
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2353] report-mode-lock-solo-review.pdf
- [2355] You can find audits for Mode contracts here: <>
- [2356] AUDIT_2.md
- [2357] AUDIT_3.md
- [2358] AUDIT_4.md
- [2359] AUDIT_REPORT.md
- [2360] AUDIT_REPORT_4.md
- [2361] VE Governance Updates _ SSC.pdf
- [2362] VE Governance plugin - Audit 4 _ SSC.pdf
- [2363] audit_halborn.pdf
- [2364] halborn-3.pdf
- [2365] AUDIT_SUMMARY.md
- [2366] AddressGaugeVoter_audit_report.md
- [2367] Clock_v1_2_0_audit_report.md
- [2368] DynamicExitQueue_audit.md
- [2369] GaugesDaoFactory_v1_2_0_audit.md
- [2370] GaugesDaoFactory_v1_3_0_audit.md
- [2371] GaugesDaoFactory_v1_4_0_audit.md
- [2372] IEscrowCurveIncreasing_v1_2_0.sol.audit.md
- [2373] Lock_v1_2_0_audit.md
- [2374] UpgradeFactory_v1_0_0__v1_2_0_audit.md
- [2375] VotingEscrowIncreasing_v1_2_0_audit.md
- [2376] Ian-1.md
- [2377] Ian-2.md
- [2378] Invariant-Review.md

Fork inheritance lineage and inherited audits are included when available.
