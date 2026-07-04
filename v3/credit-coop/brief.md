# Agentic Audit Brief: Credit Coop

## Project Overview

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.265Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, ethereum
- Contract surface: 23 unique implementations (86 raw deployments)
- DeFi Llama TVL: $4,628,036.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 32 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 19 common project-authored base contract(s) (erc20basic, blacklistable, mintcontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 270; live-surface contracts included: 86 (71 live, 15 unknown).
- Excluded by liveness: 184 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 23
- Raw deployments: 86
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CreditStrategy | core_logic | ethereum | n/a | [`0xb8c65c...beef6d`](./contracts/ethereum-1/0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d/) | ⚠️ Unaudited |
| ERC7540Factory | unknown | base | n/a | 31 deployments: ethereum `0xd66faf...a46d52`; base [`0x0470a0...73c244`](./contracts/base-8453/0x0470a0bfc8c76526f4919675045ecc7d1c73c244/); base `0x0b9c1f...297ec0`; base `0x1080ea...f4a320`; base `0x2384d9...efd2b3`; base `0x25a353...5b5e36`; base `0x274946...0ef784`; base `0x2ba7ee...84d289`; base `0x45da94...092c3f`; base `0x5f7f31...50bb6a`; base `0x71a1b3...0797cd`; base `0x71f6cf...d477dd`; base `0x73a6aa...8b6b8a`; base `0x7ac259...7b1197`; base `0x958341...02ae8f`; base `0x95dd2b...d97648`; base `0x9c59ae...ccdd6a`; base `0x9d25a8...20e966`; base `0x9fb590...4245a8`; base `0xa3b3cf...980d1d`; base `0xab31e0...dfdf1e`; base `0xbdb43e...477af3`; base `0xc256e5...6bd4ca`; base `0xd2332a...4b695f`; base `0xd66faf...a46d52`; base `0xded99b...1c6fbc`; base `0xe0e100...3bdc32`; base `0xe32cba...033646`; base `0xed86f2...5df038`; base `0xf1a5cb...15b432`; base `0xf5e07e...d46a19` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LendingVault | core_logic | base | n/a | 4 deployments: ethereum `0x6c99a7...e01dbc`; ethereum `0x6dacaf...88b623`; base [`0x0cf11a...5fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/); base `0x214699...dc85ce` | ⚠️ Unaudited |
| LendingVaultFactory | unknown | base | n/a | 29 deployments: ethereum `0xecfd3e...a6fa63`; base [`0x025bf5...244eea`](./contracts/base-8453/0x025bf5f8382756434bfd2e9bb6f34c84f2244eea/); base `0x059c04...00b478`; base `0x0ee193...e324f4`; base `0x1506de...f69fdc`; base `0x1bf220...c0065a`; base `0x1c4226...ebf83d`; base `0x2063cc...cf54f3`; base `0x267772...3db0a3`; base `0x2b721a...e70102`; base `0x30b0af...6e3834`; base `0x32ccda...6b88dc`; base `0x38aad4...10d76c`; base `0x3f7a44...dbab23`; base `0x445b79...f02801`; base `0x49069e...8c57a3`; base `0x49cb1b...0d7512`; base `0x58f9e6...5089f3`; base `0x62d506...840e61`; base `0x6df7ff...9d11f5`; base `0x7894ff...e43e20`; base `0xab2891...f4abd4`; base `0xb53d9a...7c4e59`; base `0xb8e364...ec6e8c`; base `0xb95458...b46326`; base `0xbabd23...016d87`; base `0xe7d9b5...dd6b5e`; base `0xecfd3e...a6fa63`; base `0xf6b443...e52221` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | base | n/a | 3 deployments: ethereum `0xd462e8...87ac14`; base [`0x57184d...627e56`](./contracts/base-8453/0x57184d7ec2d4cf5dbb77cde2d39e127391627e56/); base `0xe2c119...1ce960` | ⚠️ Unaudited |
| SpigotFactory | registry | base | n/a | [`0x360b33...c35ae0`](./contracts/base-8453/0x360b330f47a9b2f54aa53a962911366b37c35ae0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fd26a...18d81d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x293498...c19320` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326d4f...33ff0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5365bb...a3566f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5591ed...a3bf47` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x717f1f...2eea72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7951f9...1182bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9dbee9...f277e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa56e4d...af16a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb76964...f949e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf2d49...b1d72e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf655b...e7761a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1baa8...09acb9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3db1b...76a9c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11579] IndexDIMv3AuditReport.md
- [11580] IndexIcUSDAuditReport.md
- [11581] IndexPRTAuditReport.md

Fork inheritance lineage and inherited audits are included when available.
