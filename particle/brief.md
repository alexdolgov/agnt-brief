# Agentic Audit Brief: particle

## Project Overview

- Project: particle (`particle`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.981Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: blast
- Contract surface: 22 unique implementations (22 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 22 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (erc165, multicall, coreref). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
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
| Airdrop | unknown | blast | n/a | [`0x05369c...98f853`](./contracts/blast-81457/0x05369c6401a72d89ba79cbaae5ec1bdd8f98f853/) | ⚠️ Unaudited |
| Core | unknown | blast | n/a | [`0x04f04e...b5c22b`](./contracts/blast-81457/0x04f04e28bf8b44495604fe68046c57e435b5c22b/) | ⚠️ Unaudited |
| DuoAssetToken | unknown | blast | n/a | [`0x1a3d9b...90b253`](./contracts/blast-81457/0x1a3d9b2fa5c6522c8c071dc07125ce55df90b253/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | blast | n/a | [`0x1e9c6f...83d459`](./contracts/blast-81457/0x1e9c6f3e8c0169efe78ae9d354bf69d2ae83d459/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | blast | n/a | [`0xd32bdb...489060`](./contracts/blast-81457/0xd32bdb194ad72c706928d8f7bc45c56259489060/) | ⚠️ Unaudited |
| FewWrappedToken | unknown | blast | n/a | [`0x04efc0...bee61f`](./contracts/blast-81457/0x04efc000dc9c27445b092622f42e09e173bee61f/) | ⚠️ Unaudited |
| FixedRate | unknown | blast | n/a | [`0x1ceae0...96dca9`](./contracts/blast-81457/0x1ceae01e9bf34e48004753d2350d0b065696dca9/) | ⚠️ Unaudited |
| FixedRateNFT | unknown | blast | n/a | [`0x033e94...3b231d`](./contracts/blast-81457/0x033e9457d01302d160bf480024084864d33b231d/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | blast | n/a | [`0xf60849...4b5b91`](./contracts/blast-81457/0xf60849ffe3cbf162d614d5f87bb5e20c074b5b91/) | ⚠️ Unaudited |
| Lockup | unknown | blast | n/a | [`0x037bd8...3c2c36`](./contracts/blast-81457/0x037bd8e6e4c2b92cc6a64e80c103552ca83c2c36/) | ⚠️ Unaudited |
| ParticlePositionManager | unknown | blast | n/a | [`0x121b5a...b61a56`](./contracts/blast-81457/0x121b5ac4de4a3e6f4171956bc26ceda40cb61a56/) | ⚠️ Unaudited |
| ParticleToken | unknown | blast | n/a | [`0x8971d4...9ce871`](./contracts/blast-81457/0x8971d477ab2c99472bff577d35d54e096e9ce871/) | ⚠️ Unaudited |
| Staking | unknown | blast | n/a | [`0x011c27...463781`](./contracts/blast-81457/0x011c27fbb9f84225f5c7dfea65a42fd09e463781/) | ⚠️ Unaudited |
| Timelock | unknown | blast | n/a | [`0xca95fd...434006`](./contracts/blast-81457/0xca95fd7170a58f6d25ebba21220c02c0cb434006/) | ⚠️ Unaudited |
| USDeVault | unknown | blast | n/a | [`0xafb10b...1bf29b`](./contracts/blast-81457/0xafb10bc05c628feb6a3a87f9bfeca912581bf29b/) | ⚠️ Unaudited |
| VariableRate | unknown | blast | n/a | [`0x07f67f...1b398e`](./contracts/blast-81457/0x07f67f47037766c40c8f3fa884034ade8b1b398e/) | ⚠️ Unaudited |
| VariableRateNFT | unknown | blast | n/a | [`0x2570db...2ca679`](./contracts/blast-81457/0x2570dba68168f17511046581526ee453512ca679/) | ⚠️ Unaudited |
| Vault | unknown | blast | n/a | [`0x34dc47...ab1778`](./contracts/blast-81457/0x34dc47d9325631768116e67a095c6addf8ab1778/) | ⚠️ Unaudited |
| VoteEscrow | unknown | blast | n/a | [`0x0a59c6...ce58ba`](./contracts/blast-81457/0x0a59c60635e73599efe0678176dde61b04ce58ba/) | ⚠️ Unaudited |
| WrapMint | unknown | blast | n/a | [`0x51b02e...4e49ce`](./contracts/blast-81457/0x51b02e790447d2bcbfd2e0a6aec3f59a634e49ce/) | ⚠️ Unaudited |
| WrapMintV2 | unknown | blast | n/a | [`0x5ea5ed...d819ed`](./contracts/blast-81457/0x5ea5edf0f1b22c527c3c42833ca671678bd819ed/) | ⚠️ Unaudited |
| YieldManager | unknown | blast | n/a | [`0x08b939...ebbb36`](./contracts/blast-81457/0x08b939da28c97afa6664ec49ad5be51805ebbb36/) | ⚠️ Unaudited |

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
| blast | [`0x05369c...98f853`](./contracts/blast-81457/0x05369c6401a72d89ba79cbaae5ec1bdd8f98f853/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x04f04e...b5c22b`](./contracts/blast-81457/0x04f04e28bf8b44495604fe68046c57e435b5c22b/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1a3d9b...90b253`](./contracts/blast-81457/0x1a3d9b2fa5c6522c8c071dc07125ce55df90b253/) | DuoAssetToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x04efc0...bee61f`](./contracts/blast-81457/0x04efc000dc9c27445b092622f42e09e173bee61f/) | FewWrappedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1ceae0...96dca9`](./contracts/blast-81457/0x1ceae01e9bf34e48004753d2350d0b065696dca9/) | FixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x033e94...3b231d`](./contracts/blast-81457/0x033e9457d01302d160bf480024084864d33b231d/) | FixedRateNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x037bd8...3c2c36`](./contracts/blast-81457/0x037bd8e6e4c2b92cc6a64e80c103552ca83c2c36/) | Lockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x121b5a...b61a56`](./contracts/blast-81457/0x121b5ac4de4a3e6f4171956bc26ceda40cb61a56/) | ParticlePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8971d4...9ce871`](./contracts/blast-81457/0x8971d477ab2c99472bff577d35d54e096e9ce871/) | ParticleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x011c27...463781`](./contracts/blast-81457/0x011c27fbb9f84225f5c7dfea65a42fd09e463781/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xca95fd...434006`](./contracts/blast-81457/0xca95fd7170a58f6d25ebba21220c02c0cb434006/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xafb10b...1bf29b`](./contracts/blast-81457/0xafb10bc05c628feb6a3a87f9bfeca912581bf29b/) | USDeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x07f67f...1b398e`](./contracts/blast-81457/0x07f67f47037766c40c8f3fa884034ade8b1b398e/) | VariableRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2570db...2ca679`](./contracts/blast-81457/0x2570dba68168f17511046581526ee453512ca679/) | VariableRateNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x34dc47...ab1778`](./contracts/blast-81457/0x34dc47d9325631768116e67a095c6addf8ab1778/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0a59c6...ce58ba`](./contracts/blast-81457/0x0a59c60635e73599efe0678176dde61b04ce58ba/) | VoteEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x51b02e...4e49ce`](./contracts/blast-81457/0x51b02e790447d2bcbfd2e0a6aec3f59a634e49ce/) | WrapMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5ea5ed...d819ed`](./contracts/blast-81457/0x5ea5edf0f1b22c527c3c42833ca671678bd819ed/) | WrapMintV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x08b939...ebbb36`](./contracts/blast-81457/0x08b939da28c97afa6664ec49ad5be51805ebbb36/) | YieldManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
