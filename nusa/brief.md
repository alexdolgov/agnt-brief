# Agentic Audit Brief: nusa

## Project Overview

- Project: nusa (`nusa`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.848Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 22 unique implementations (22 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 21 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (interestratemodel, interestratemodelstorage, jumpratemodelv3storage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
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

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | unknown | bsc | n/a | [`0x3f28e1...a9f498`](./contracts/bsc-56/0x3f28e138cb67df60051b2a704f4ef2efa1a9f498/) | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | [`0x327984...8714ac`](./contracts/bsc-56/0x3279845300c89790a3215dedee8118d3598714ac/) | ⚠️ Unaudited |
| CollateralModel | unknown | bsc | n/a | [`0xf3a40b...3bae77`](./contracts/bsc-56/0xf3a40b837e68c518f07a7150802809ec2a3bae77/) | ⚠️ Unaudited |
| Comp | unknown | bsc | n/a | [`0x5f4978...c1b9bf`](./contracts/bsc-56/0x5f49784d396095342c1637bfa2f795d761c1b9bf/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | [`0x1bb863...39d7f1`](./contracts/bsc-56/0x1bb8632e592710eb7e0db181fc759dcec139d7f1/) | ⚠️ Unaudited |
| ComptrollerEmergencyWithdraw | unknown | bsc | n/a | [`0xea9281...12cfa7`](./contracts/bsc-56/0xea9281c05685cf4fdd2468787a4f09dabe12cfa7/) | ⚠️ Unaudited |
| CTokenFactory | unknown | bsc | n/a | [`0x06ceea...6a139d`](./contracts/bsc-56/0x06ceea62e562ebc500ed24f8919a6193456a139d/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | bsc | n/a | [`0x04d8c3...7b7c30`](./contracts/bsc-56/0x04d8c309ab9d3dbd5d853206ade9b880e17b7c30/) | ⚠️ Unaudited |
| GovernorBravoDelegator | unknown | bsc | n/a | [`0x1f727d...547d33`](./contracts/bsc-56/0x1f727d546bf9b88bab33d5381c39ba6a0b547d33/) | ⚠️ Unaudited |
| InterestRateProxy | unknown | bsc | n/a | [`0x029ef0...692030`](./contracts/bsc-56/0x029ef0cf687f810873e65e97be5298b1d6692030/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | bsc | n/a | [`0x887ea6...21da51`](./contracts/bsc-56/0x887ea6cd648910eeaf3348a8ca5c67a14221da51/) | ⚠️ Unaudited |
| JumpRateModelV3 | unknown | bsc | n/a | [`0x20deee...7d6695`](./contracts/bsc-56/0x20deeea2eab15910465bf93ba0920222a77d6695/) | ⚠️ Unaudited |
| Maximillion | unknown | bsc | n/a | [`0x83661c...b137ff`](./contracts/bsc-56/0x83661cccbe45f7276ca6786a17ffca7460b137ff/) | ⚠️ Unaudited |
| Nusa | unknown | bsc | n/a | [`0xc2a330...ecfc4f`](./contracts/bsc-56/0xc2a33010e592a2d241925402745f8b0429ecfc4f/) | ⚠️ Unaudited |
| Reservoir | unknown | bsc | n/a | [`0x1ed1fb...e2e3f8`](./contracts/bsc-56/0x1ed1fbed7ecdf8edfeae4d660bc0d8a2f3e2e3f8/) | ⚠️ Unaudited |
| SendBatch | unknown | bsc | n/a | [`0x9c1c95...cec630`](./contracts/bsc-56/0x9c1c95935a60e8c2cab2856e9f1f858b5dcec630/) | ⚠️ Unaudited |
| SimplePriceOracleV2 | unknown | bsc | n/a | [`0x3c1c30...24c7bf`](./contracts/bsc-56/0x3c1c3054641625aad990e17747eb53deb424c7bf/) | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | [`0x513ab7...cde3a0`](./contracts/bsc-56/0x513ab77f5d1d18edc5227accc91042ade3cde3a0/) | ⚠️ Unaudited |
| Tad | unknown | bsc | n/a | [`0x9f7229...78ba04`](./contracts/bsc-56/0x9f7229af0c4b9740e207ea283b9094983f78ba04/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x5234c5...80fc61`](./contracts/bsc-56/0x5234c54f0624ab93de8adf32a1e660b4ae80fc61/) | ⚠️ Unaudited |
| Unitroller | unknown | bsc | n/a | [`0x9714b1...28740f`](./contracts/bsc-56/0x9714b1f17c55cdbfa443623bcfd02291be28740f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | [`0xe72852...0b17f2`](./contracts/bsc-56/0xe72852244b9382c1466551df6710d3871a0b17f2/) | ⚠️ Unaudited |

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
| bsc | [`0x3f28e1...a9f498`](./contracts/bsc-56/0x3f28e138cb67df60051b2a704f4ef2efa1a9f498/) | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x327984...8714ac`](./contracts/bsc-56/0x3279845300c89790a3215dedee8118d3598714ac/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf3a40b...3bae77`](./contracts/bsc-56/0xf3a40b837e68c518f07a7150802809ec2a3bae77/) | CollateralModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f4978...c1b9bf`](./contracts/bsc-56/0x5f49784d396095342c1637bfa2f795d761c1b9bf/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bb863...39d7f1`](./contracts/bsc-56/0x1bb8632e592710eb7e0db181fc759dcec139d7f1/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea9281...12cfa7`](./contracts/bsc-56/0xea9281c05685cf4fdd2468787a4f09dabe12cfa7/) | ComptrollerEmergencyWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06ceea...6a139d`](./contracts/bsc-56/0x06ceea62e562ebc500ed24f8919a6193456a139d/) | CTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04d8c3...7b7c30`](./contracts/bsc-56/0x04d8c309ab9d3dbd5d853206ade9b880e17b7c30/) | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f727d...547d33`](./contracts/bsc-56/0x1f727d546bf9b88bab33d5381c39ba6a0b547d33/) | GovernorBravoDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x029ef0...692030`](./contracts/bsc-56/0x029ef0cf687f810873e65e97be5298b1d6692030/) | InterestRateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x887ea6...21da51`](./contracts/bsc-56/0x887ea6cd648910eeaf3348a8ca5c67a14221da51/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20deee...7d6695`](./contracts/bsc-56/0x20deeea2eab15910465bf93ba0920222a77d6695/) | JumpRateModelV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x83661c...b137ff`](./contracts/bsc-56/0x83661cccbe45f7276ca6786a17ffca7460b137ff/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2a330...ecfc4f`](./contracts/bsc-56/0xc2a33010e592a2d241925402745f8b0429ecfc4f/) | Nusa | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ed1fb...e2e3f8`](./contracts/bsc-56/0x1ed1fbed7ecdf8edfeae4d660bc0d8a2f3e2e3f8/) | Reservoir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c1c95...cec630`](./contracts/bsc-56/0x9c1c95935a60e8c2cab2856e9f1f858b5dcec630/) | SendBatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c1c30...24c7bf`](./contracts/bsc-56/0x3c1c3054641625aad990e17747eb53deb424c7bf/) | SimplePriceOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x513ab7...cde3a0`](./contracts/bsc-56/0x513ab77f5d1d18edc5227accc91042ade3cde3a0/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9f7229...78ba04`](./contracts/bsc-56/0x9f7229af0c4b9740e207ea283b9094983f78ba04/) | Tad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5234c5...80fc61`](./contracts/bsc-56/0x5234c54f0624ab93de8adf32a1e660b4ae80fc61/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9714b1...28740f`](./contracts/bsc-56/0x9714b1f17c55cdbfa443623bcfd02291be28740f/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe72852...0b17f2`](./contracts/bsc-56/0xe72852244b9382c1466551df6710d3871a0b17f2/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
