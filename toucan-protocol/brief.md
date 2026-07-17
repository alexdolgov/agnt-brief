# Agentic Audit Brief: Toucan Protocol

## Project Overview

- Project: Toucan Protocol (`toucan-protocol`)
- Website: [https://toucan.earth](https://toucan.earth)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.582Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, celo, polygon
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $527,428.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 19 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (projectvintageutils, modifiers, carbonoffsetbatchesstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Biochar | unknown | base | n/a | [`0x20b048fa035d5763685d695e66adf62c5d9f5055`](./contracts/base-8453/0x20b048fa035d5763685d695e66adf62c5d9f5055/) | ⚠️ Unaudited |
| BiocharFilter | unknown | celo | n/a | [`0x21866905ae7da3769b96dcdd3506013a733884b9`](./contracts/celo-42220/0x21866905ae7da3769b96dcdd3506013a733884b9/) | ⚠️ Unaudited |
| CarbonOffsetBatches | unknown | polygon | n/a | [`0x66b1b59f9d59413ddc1539122d7d5f6b70869717`](./contracts/polygon-137/0x66b1b59f9d59413ddc1539122d7d5f6b70869717/) | ⚠️ Unaudited |
| CarbonProjectVintages | unknown | base | n/a | [`0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345`](./contracts/base-8453/0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x0fead3f81b35e133f9d78f9029950cf1f6056ea1`](./contracts/polygon-137/0x0fead3f81b35e133f9d78f9029950cf1f6056ea1/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | celo | n/a | [`0x02de4766c272abc10bc88c220d214a26960a7e92`](./contracts/celo-42220/0x02de4766c272abc10bc88c220d214a26960a7e92/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | celo | n/a | [`0x0ccb0071e8b8b716a2a5998ab4d97b83790873fe`](./contracts/celo-42220/0x0ccb0071e8b8b716a2a5998ab4d97b83790873fe/) | ⚠️ Unaudited |
| FeeCalculator | unknown | base | n/a | [`0x6a4549759c475d845d4ae074b3656dc257490da5`](./contracts/base-8453/0x6a4549759c475d845d4ae074b3656dc257490da5/) | ⚠️ Unaudited |
| FxHashNFTCarbonExtension | unknown | base | n/a | [`0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083`](./contracts/base-8453/0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083/) | ⚠️ Unaudited |
| OffsetHelper | unknown | celo | n/a | [`0x4242829d15434fea6606cf995f1bed68a18c37d1`](./contracts/celo-42220/0x4242829d15434fea6606cf995f1bed68a18c37d1/) | ⚠️ Unaudited |
| PuroToucanCarbonOffsets | unknown | polygon | n/a | [`0x05de010c6187a8bb3232176674f7492b5a7de399`](./contracts/polygon-137/0x05de010c6187a8bb3232176674f7492b5a7de399/) | ⚠️ Unaudited |
| RetirementCertificates | unknown | base | n/a | [`0x09da61144b05c4a80b2d3c67bd72d740922cb186`](./contracts/base-8453/0x09da61144b05c4a80b2d3c67bd72d740922cb186/) | ⚠️ Unaudited |
| ToucanCarbonOffsets | unknown | polygon | n/a | [`0x1671a112fd50870b45d1d44f5aaff8de50229f44`](./contracts/polygon-137/0x1671a112fd50870b45d1d44f5aaff8de50229f44/) | ⚠️ Unaudited |
| ToucanCarbonOffsetsEscrow | unknown | polygon | n/a | [`0x027553435c2373f49e9cdfe3b50a25326242792a`](./contracts/polygon-137/0x027553435c2373f49e9cdfe3b50a25326242792a/) | ⚠️ Unaudited |
| ToucanCarbonOffsetsFactory | unknown | base | n/a | [`0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0`](./contracts/base-8453/0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0/) | ⚠️ Unaudited |
| ToucanContractRegistry | unknown | polygon | n/a | [`0x04a3f298e88e54d3672a94136886ff9cd285e59e`](./contracts/polygon-137/0x04a3f298e88e54d3672a94136886ff9cd285e59e/) | ⚠️ Unaudited |
| ToucanCrosschainMessenger | unknown | celo | n/a | [`0x882adea1a3b875fc776cac94541ccb1275c38654`](./contracts/celo-42220/0x882adea1a3b875fc776cac94541ccb1275c38654/) | ⚠️ Unaudited |
| ToucanRegenBridge | unknown | polygon | n/a | [`0x35d7426fb9069b99bb36bad30eb804e8fd924056`](./contracts/polygon-137/0x35d7426fb9069b99bb36bad30eb804e8fd924056/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | base | n/a | [`0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec`](./contracts/base-8453/0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec/) | ⚠️ Unaudited |
| UUPSProxy | unknown | polygon | n/a | [`0x599a978c43f5cea1b26a399d28869ad4690dc07d`](./contracts/polygon-137/0x599a978c43f5cea1b26a399d28869ad4690dc07d/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x20b048fa035d5763685d695e66adf62c5d9f5055`](./contracts/base-8453/0x20b048fa035d5763685d695e66adf62c5d9f5055/) | Biochar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x21866905ae7da3769b96dcdd3506013a733884b9`](./contracts/celo-42220/0x21866905ae7da3769b96dcdd3506013a733884b9/) | BiocharFilter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x66b1b59f9d59413ddc1539122d7d5f6b70869717`](./contracts/polygon-137/0x66b1b59f9d59413ddc1539122d7d5f6b70869717/) | CarbonOffsetBatches | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345`](./contracts/base-8453/0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345/) | CarbonProjectVintages | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a4549759c475d845d4ae074b3656dc257490da5`](./contracts/base-8453/0x6a4549759c475d845d4ae074b3656dc257490da5/) | FeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083`](./contracts/base-8453/0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083/) | FxHashNFTCarbonExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4242829d15434fea6606cf995f1bed68a18c37d1`](./contracts/celo-42220/0x4242829d15434fea6606cf995f1bed68a18c37d1/) | OffsetHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05de010c6187a8bb3232176674f7492b5a7de399`](./contracts/polygon-137/0x05de010c6187a8bb3232176674f7492b5a7de399/) | PuroToucanCarbonOffsets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09da61144b05c4a80b2d3c67bd72d740922cb186`](./contracts/base-8453/0x09da61144b05c4a80b2d3c67bd72d740922cb186/) | RetirementCertificates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1671a112fd50870b45d1d44f5aaff8de50229f44`](./contracts/polygon-137/0x1671a112fd50870b45d1d44f5aaff8de50229f44/) | ToucanCarbonOffsets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x027553435c2373f49e9cdfe3b50a25326242792a`](./contracts/polygon-137/0x027553435c2373f49e9cdfe3b50a25326242792a/) | ToucanCarbonOffsetsEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0`](./contracts/base-8453/0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0/) | ToucanCarbonOffsetsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04a3f298e88e54d3672a94136886ff9cd285e59e`](./contracts/polygon-137/0x04a3f298e88e54d3672a94136886ff9cd285e59e/) | ToucanContractRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x882adea1a3b875fc776cac94541ccb1275c38654`](./contracts/celo-42220/0x882adea1a3b875fc776cac94541ccb1275c38654/) | ToucanCrosschainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35d7426fb9069b99bb36bad30eb804e8fd924056`](./contracts/polygon-137/0x35d7426fb9069b99bb36bad30eb804e8fd924056/) | ToucanRegenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x599a978c43f5cea1b26a399d28869ad4690dc07d`](./contracts/polygon-137/0x599a978c43f5cea1b26a399d28869ad4690dc07d/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
