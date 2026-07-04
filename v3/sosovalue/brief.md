# Agentic Audit Brief: SoSoValue

## Project Overview

- Project: SoSoValue (`sosovalue`)
- Website: [https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY](https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.815Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 21 unique implementations (38 raw deployments)
- DeFi Llama TVL: $82,730,032.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 133 project-authored contract(s) across 2 chain(s); 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 11 common project-authored base contract(s) (erc20upgradesafe, contextupgradesafe, ownableupgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 29 (27 live, 2 unknown).
- Excluded by liveness: 76 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/19 (5.3%)
- Deployed-live implementations: 19 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/19
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 21
- Raw deployments: 38
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 5.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.3% | 2024-12 |
| unknown | Tier 2 | 1 | 5.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRebalancer | adapter | base | n/a | [`0x84663e...95ab15`](./contracts/base-8453/0x84663e30973d552ac357fd04f3ac6ebbd495ab15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetFactory | unknown | base | n/a | 2 deployments: base [`0xb04eb6...c50b0d`](./contracts/base-8453/0xb04eb6b64137d1673d46731c8f84718092c50b0d/); base `0xceb07a...1e19b7` | ⚠️ Unaudited |
| AssetFactory | unknown | base | n/a | [`0xc568b4...11c176`](./contracts/base-8453/0xc568b41968b3e707b306d298e5e7be50a311c176/) | ⚠️ Unaudited |
| AssetFeeManager | unknown | base | n/a | 2 deployments: base [`0x2e4693...cf07a9`](./contracts/base-8453/0x2e469365030f068ecb1176a0d5600ba470cf07a9/); base `0x7693d7...4b7c02` | ⚠️ Unaudited |
| AssetIssuer | unknown | base | n/a | 2 deployments: base [`0x0306ac...a6b66e`](./contracts/base-8453/0x0306aceb4c20ff33480d90038f8b375cc6a6b66e/); base `0xe66c68...a6367e` | ⚠️ Unaudited |
| AssetLocking | unknown | base | n/a | 2 deployments: base [`0x935a4b...839383`](./contracts/base-8453/0x935a4b1f6f3e891a226b2522ac22d45ce5839383/); base `0xb7729a...beafc8` | ⚠️ Unaudited |
| AssetToken | unknown | base | n/a | [`0x63a152...5c443a`](./contracts/base-8453/0x63a152dbfc479d82e04794ebc7fddb62505c443a/) | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x028492...80d5ea`](./contracts/base-8453/0x028492d62d09ae57f8b017be746cb02e6380d5ea/); base `0x4190e0...8a3d4e` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x45fb9e...66599f`](./contracts/base-8453/0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f/); base `0xab4ac8...5b6817` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x4e9246...580156`](./contracts/base-8453/0x4e9246fee84582dc41213af4842cf13fcf580156/); base `0x5217ed...7cf233` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x856fcc...fb873e`](./contracts/ethereum-1/0x856fcc085290ac1e40392442211e6a333afb873e/); ethereum `0x963c3c...a8eaa0`; ethereum `0xba4eee...133a7e` | ⚠️ Unaudited |
| SoDexTokenBridge | operational_periphery | ethereum | n/a | [`0xcc7322...02185b`](./contracts/ethereum-1/0xcc7322a2f9f82251da51584b1a89915dbc02185b/) | ⚠️ Unaudited |
| SoSoValueEpoch2Airdrop | operational_periphery | base | n/a | [`0x40fb04...cabf9c`](./contracts/base-8453/0x40fb04bbf5124ea4b25fc18a839524a725cabf9c/) | ⚠️ Unaudited |
| StakeFactory | unknown | base | n/a | 2 deployments: base [`0x3f5c8f...488a6c`](./contracts/base-8453/0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c/); base `0x585834...4e35c1` | ⚠️ Unaudited |
| StakeToken | unknown | base | n/a | 2 deployments: base [`0x36142f...9cb675`](./contracts/base-8453/0x36142f5596f41f292549b58052fcfd99489cb675/); base `0x815583...8fa0b4` | ⚠️ Unaudited |
| StakeToken | unknown | base | n/a | 3 deployments: base [`0x49aeb9...d7a95b`](./contracts/base-8453/0x49aeb994425177c0a7c5d22a529f949132d7a95b/); base `0x7f811e...135524`; base `0xce89ac...73db90` | ⚠️ Unaudited |
| Swap | unknown | base | n/a | 2 deployments: base [`0xae9f64...40a43b`](./contracts/base-8453/0xae9f646e42dec86abe64b88235894bf68240a43b/); base `0xf909bf...3db08b` | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/); ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3` | ⚠️ Unaudited |
| USSI | unknown | base | n/a | 2 deployments: base [`0x3a46ed...d2ed18`](./contracts/base-8453/0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18/); base `0xa62307...2ca91b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x96c4bf...00159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7f57...071e5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_sosovaluelabs_ssi_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_sosovaluelabs_ssi_v1.0-signed.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [SSI Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [SSI Protocol Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
