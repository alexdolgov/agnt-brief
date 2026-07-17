# Agentic Audit Brief: SoSoValue

## Project Overview

- Project: SoSoValue (`sosovalue`)
- Website: [https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY](https://ssi.sosovalue.com/share/MAG7.ssi/0TC050BY?tid=ssi-invite-share-0TC050BY)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.730Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 18 unique implementations (31 raw deployments)
- DeFi Llama TVL: $82,730,032.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 133 project-authored contract(s) across 2 chain(s); 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 11 common project-authored base contract(s) (erc20upgradesafe, contextupgradesafe, ownableupgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/18 (5.6%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/18
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 31
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 5.6% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.6% | 2024-12 |
| unknown | Tier 2 | 1 | 5.6% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRebalancer | adapter | base | n/a | [`0x84663e30973d552ac357fd04f3ac6ebbd495ab15`](./contracts/base-8453/0x84663e30973d552ac357fd04f3ac6ebbd495ab15/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetFactory | unknown | base | n/a | 2 deployments: base [`0xb04eb6b64137d1673d46731c8f84718092c50b0d`](./contracts/base-8453/0xb04eb6b64137d1673d46731c8f84718092c50b0d/); base `0xceb07a43477158d5f6d9a2d9bbeb58d40a1e19b7` | ⚠️ Unaudited |
| AssetFactory | unknown | base | n/a | [`0xc568b41968b3e707b306d298e5e7be50a311c176`](./contracts/base-8453/0xc568b41968b3e707b306d298e5e7be50a311c176/) | ⚠️ Unaudited |
| AssetFeeManager | unknown | base | n/a | 2 deployments: base [`0x2e469365030f068ecb1176a0d5600ba470cf07a9`](./contracts/base-8453/0x2e469365030f068ecb1176a0d5600ba470cf07a9/); base `0x7693d73ac9fcf57be7791092dafcdcc7324b7c02` | ⚠️ Unaudited |
| AssetIssuer | unknown | base | n/a | 2 deployments: base [`0x0306aceb4c20ff33480d90038f8b375cc6a6b66e`](./contracts/base-8453/0x0306aceb4c20ff33480d90038f8b375cc6a6b66e/); base `0xe66c68010a9dc4dac7a8ab2c524e4bae37a6367e` | ⚠️ Unaudited |
| AssetLocking | unknown | base | n/a | 2 deployments: base [`0x935a4b1f6f3e891a226b2522ac22d45ce5839383`](./contracts/base-8453/0x935a4b1f6f3e891a226b2522ac22d45ce5839383/); base `0xb7729ab6a36b416aad3902c4ff5404bb73beafc8` | ⚠️ Unaudited |
| AssetToken | unknown | base | n/a | [`0x63a152dbfc479d82e04794ebc7fddb62505c443a`](./contracts/base-8453/0x63a152dbfc479d82e04794ebc7fddb62505c443a/) | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x028492d62d09ae57f8b017be746cb02e6380d5ea`](./contracts/base-8453/0x028492d62d09ae57f8b017be746cb02e6380d5ea/); base `0x4190e02240f16be4cc03c7151deedd23c08a3d4e` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f`](./contracts/base-8453/0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f/); base `0xab4ac877170bcfc671b73375e6fcd2f4915b6817` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | base | n/a | 2 deployments: base [`0x4e9246fee84582dc41213af4842cf13fcf580156`](./contracts/base-8453/0x4e9246fee84582dc41213af4842cf13fcf580156/); base `0x5217ed58973c4d570d0b1d4dd2e94928fb7cf233` | ⚠️ Unaudited |
| SoDexTokenBridge | operational_periphery | ethereum | n/a | [`0xcc7322a2f9f82251da51584b1a89915dbc02185b`](./contracts/ethereum-1/0xcc7322a2f9f82251da51584b1a89915dbc02185b/) | ⚠️ Unaudited |
| SoSoValueEpoch2Airdrop | operational_periphery | base | n/a | [`0x40fb04bbf5124ea4b25fc18a839524a725cabf9c`](./contracts/base-8453/0x40fb04bbf5124ea4b25fc18a839524a725cabf9c/) | ⚠️ Unaudited |
| StakeFactory | unknown | base | n/a | 2 deployments: base [`0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c`](./contracts/base-8453/0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c/); base `0x585834242bb31427b1dc7486dd4bde7c724e35c1` | ⚠️ Unaudited |
| StakeToken | unknown | base | n/a | 2 deployments: base [`0x36142f5596f41f292549b58052fcfd99489cb675`](./contracts/base-8453/0x36142f5596f41f292549b58052fcfd99489cb675/); base `0x815583cd3c09e2b666bb87256ae533d6af8fa0b4` | ⚠️ Unaudited |
| StakeToken | unknown | base | n/a | 3 deployments: base [`0x49aeb994425177c0a7c5d22a529f949132d7a95b`](./contracts/base-8453/0x49aeb994425177c0a7c5d22a529f949132d7a95b/); base `0x7f811e881693af12d84976d59ff3fb0eaf135524`; base `0xce89ac7fd59808106b4e346175bcb8d8b273db90` | ⚠️ Unaudited |
| Swap | unknown | base | n/a | 2 deployments: base [`0xae9f646e42dec86abe64b88235894bf68240a43b`](./contracts/base-8453/0xae9f646e42dec86abe64b88235894bf68240a43b/); base `0xf909bfa750721501b4f8433588fae5ce303db08b` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| USSI | unknown | base | n/a | 2 deployments: base [`0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18`](./contracts/base-8453/0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18/); base `0xa62307106f891135154b0d63eaef8bd40f2ca91b` | ⚠️ Unaudited |

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
| [blocksec_sosovaluelabs_ssi_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_sosovaluelabs_ssi_v1.0-signed.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [SSI Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [SSI Protocol Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xb04eb6b64137d1673d46731c8f84718092c50b0d`](./contracts/base-8453/0xb04eb6b64137d1673d46731c8f84718092c50b0d/) | AssetFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc568b41968b3e707b306d298e5e7be50a311c176`](./contracts/base-8453/0xc568b41968b3e707b306d298e5e7be50a311c176/) | AssetFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e469365030f068ecb1176a0d5600ba470cf07a9`](./contracts/base-8453/0x2e469365030f068ecb1176a0d5600ba470cf07a9/) | AssetFeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0306aceb4c20ff33480d90038f8b375cc6a6b66e`](./contracts/base-8453/0x0306aceb4c20ff33480d90038f8b375cc6a6b66e/) | AssetIssuer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x935a4b1f6f3e891a226b2522ac22d45ce5839383`](./contracts/base-8453/0x935a4b1f6f3e891a226b2522ac22d45ce5839383/) | AssetLocking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x63a152dbfc479d82e04794ebc7fddb62505c443a`](./contracts/base-8453/0x63a152dbfc479d82e04794ebc7fddb62505c443a/) | AssetToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x028492d62d09ae57f8b017be746cb02e6380d5ea`](./contracts/base-8453/0x028492d62d09ae57f8b017be746cb02e6380d5ea/) | FourSevenAirdropV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f`](./contracts/base-8453/0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f/) | FourSevenAirdropV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e9246fee84582dc41213af4842cf13fcf580156`](./contracts/base-8453/0x4e9246fee84582dc41213af4842cf13fcf580156/) | FourSevenAirdropV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc7322a2f9f82251da51584b1a89915dbc02185b`](./contracts/ethereum-1/0xcc7322a2f9f82251da51584b1a89915dbc02185b/) | SoDexTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x40fb04bbf5124ea4b25fc18a839524a725cabf9c`](./contracts/base-8453/0x40fb04bbf5124ea4b25fc18a839524a725cabf9c/) | SoSoValueEpoch2Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c`](./contracts/base-8453/0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c/) | StakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x36142f5596f41f292549b58052fcfd99489cb675`](./contracts/base-8453/0x36142f5596f41f292549b58052fcfd99489cb675/) | StakeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49aeb994425177c0a7c5d22a529f949132d7a95b`](./contracts/base-8453/0x49aeb994425177c0a7c5d22a529f949132d7a95b/) | StakeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xae9f646e42dec86abe64b88235894bf68240a43b`](./contracts/base-8453/0xae9f646e42dec86abe64b88235894bf68240a43b/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18`](./contracts/base-8453/0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18/) | USSI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
