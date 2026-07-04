# Agentic Audit Brief: Seeder Finance

## Project Overview

- Project: Seeder Finance (`seeder-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.225Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 25 unique implementations (29 raw deployments)
- DeFi Llama TVL: $2,795.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 31 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (trustcaller, proxy, loanable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 45; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 29
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bank | unknown | bsc | n/a | [`0x9cd561...4a084f`](./contracts/bsc-56/0x9cd5615359a3e033d1f2663131599bb68e4a084f/) | ⚠️ Unaudited |
| BankV1_5 | unknown | bsc | n/a | [`0x2dfb94...3183ca`](./contracts/bsc-56/0x2dfb94f6c77dbb64ba695e49cce51e4b333183ca/) | ⚠️ Unaudited |
| BankV3 | unknown | bsc | n/a | [`0x74e783...321213`](./contracts/bsc-56/0x74e78319f55deed8a784c236b3bcfb0b58321213/) | ⚠️ Unaudited |
| BankV3_1 | unknown | bsc | n/a | [`0x869b1b...618c7a`](./contracts/bsc-56/0x869b1bf579ded6530f8f2df542de90cb18618c7a/) | ⚠️ Unaudited |
| BigFarm | unknown | bsc | n/a | [`0x161198...a0b108`](./contracts/bsc-56/0x1611981eed5e1436dec97044736fdec4a7a0b108/) | ⚠️ Unaudited |
| BigFarmV3 | unknown | bsc | n/a | [`0x3d5503...acca26`](./contracts/bsc-56/0x3d55034d7eed0ea9a3170bde22e9ea9acdacca26/) | ⚠️ Unaudited |
| Granary | unknown | bsc | n/a | [`0x058951...09416c`](./contracts/bsc-56/0x058951e179b6f1df563538fcddc535682209416c/) | ⚠️ Unaudited |
| GranaryV1_5 | unknown | bsc | n/a | [`0xc6a34f...9dd1d1`](./contracts/bsc-56/0xc6a34ff6338f64860a0a66c908fe611a379dd1d1/) | ⚠️ Unaudited |
| GranaryV2 | unknown | bsc | n/a | [`0x6466dc...c3af35`](./contracts/bsc-56/0x6466dc1eae0ae827950fcedd2066a583a6c3af35/) | ⚠️ Unaudited |
| GranaryV3 | unknown | bsc | n/a | [`0x0e3826...d5e74c`](./contracts/bsc-56/0x0e3826c210ca1a585a1f7223d13d4320d3d5e74c/) | ⚠️ Unaudited |
| GreenHouse | unknown | bsc | n/a | [`0x61d58a...c901bd`](./contracts/bsc-56/0x61d58aee0f9430827f89aa7569aff2c939c901bd/) | ⚠️ Unaudited |
| GreenHouseV3 | unknown | bsc | n/a | [`0xef8597...6d0ee5`](./contracts/bsc-56/0xef8597a6441faaf9bfedf8ddda8f1a161f6d0ee5/) | ⚠️ Unaudited |
| GreenHouseV4 | unknown | bsc | n/a | [`0x687fe2...9e798e`](./contracts/bsc-56/0x687fe2a8ef808fa6665c812fcea7dbaa3c9e798e/) | ⚠️ Unaudited |
| Leaf | unknown | bsc | n/a | [`0x1cbddf...eea12c`](./contracts/bsc-56/0x1cbddf83de068464eba3a4e319bd3197a7eea12c/) | ⚠️ Unaudited |
| MarketPlace | unknown | bsc | n/a | [`0x279087...1d7386`](./contracts/bsc-56/0x279087450003b3fe2a13eeedeebf0224e51d7386/) | ⚠️ Unaudited |
| PlatformWallet | unknown | bsc | n/a | 2 deployments: bsc [`0x4ffee8...8c89e5`](./contracts/bsc-56/0x4ffee8e4be5f71fddb76e3a0f958c065708c89e5/); bsc `0x572e94...fa2f52` | ⚠️ Unaudited |
| sdToken | token | bsc | n/a | [`0xc51e41...058908`](./contracts/bsc-56/0xc51e41c88e1f7ccc12bc12748bfd1cf3d0058908/) | ⚠️ Unaudited |
| Seed | unknown | bsc | n/a | [`0xae3c58...655e0b`](./contracts/bsc-56/0xae3c585edfba5733f1dfb6bd454928c64d655e0b/) | ⚠️ Unaudited |
| SeederVerseBridge | unknown | bsc | n/a | [`0xa6f54e...945644`](./contracts/bsc-56/0xa6f54e2c443860fdf30ffdfeb1c82dc4f8945644/) | ⚠️ Unaudited |
| Seedmon | unknown | bsc | n/a | 4 deployments: bsc [`0x1d14f4...42fa87`](./contracts/bsc-56/0x1d14f49ea29928958005df9e7c75afe4df42fa87/); bsc `0x4b66d4...de6bf1`; bsc `0x6e31b5...e034c1`; bsc `0xa51056...fed2c3` | ⚠️ Unaudited |
| SeedmonV1Migrator | unknown | bsc | n/a | [`0x6abe5f...7e7333`](./contracts/bsc-56/0x6abe5f1f4bb4b6529f700b12738df468ac7e7333/) | ⚠️ Unaudited |
| Tree | unknown | bsc | n/a | [`0xdab068...19d029`](./contracts/bsc-56/0xdab0686d5f06deb4b721baa79da96e18cf19d029/) | ⚠️ Unaudited |
| VendingMachine | unknown | bsc | n/a | [`0xe3f0fe...e232b8`](./contracts/bsc-56/0xe3f0fe21121b139f576684133b5ba8aa12e232b8/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | bsc | n/a | [`0xa22033...6b2e59`](./contracts/bsc-56/0xa22033ab3dacaee30a358abf6b646e42776b2e59/) | ⚠️ Unaudited |
| VendingMachineV2_1 | unknown | bsc | n/a | [`0xaa8b71...77e174`](./contracts/bsc-56/0xaa8b71df41c56238da788f2799a2a5750e77e174/) | ⚠️ Unaudited |

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
| [Inspex_AUDIT2021005_SeederFinance_Core_FullReport_v1.0.pdf](https://inspex.co/reports/Inspex_AUDIT2021005_SeederFinance_Core_FullReport_v1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9cd561...4a084f`](./contracts/bsc-56/0x9cd5615359a3e033d1f2663131599bb68e4a084f/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dfb94...3183ca`](./contracts/bsc-56/0x2dfb94f6c77dbb64ba695e49cce51e4b333183ca/) | BankV1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x74e783...321213`](./contracts/bsc-56/0x74e78319f55deed8a784c236b3bcfb0b58321213/) | BankV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x869b1b...618c7a`](./contracts/bsc-56/0x869b1bf579ded6530f8f2df542de90cb18618c7a/) | BankV3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x161198...a0b108`](./contracts/bsc-56/0x1611981eed5e1436dec97044736fdec4a7a0b108/) | BigFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d5503...acca26`](./contracts/bsc-56/0x3d55034d7eed0ea9a3170bde22e9ea9acdacca26/) | BigFarmV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x058951...09416c`](./contracts/bsc-56/0x058951e179b6f1df563538fcddc535682209416c/) | Granary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc6a34f...9dd1d1`](./contracts/bsc-56/0xc6a34ff6338f64860a0a66c908fe611a379dd1d1/) | GranaryV1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6466dc...c3af35`](./contracts/bsc-56/0x6466dc1eae0ae827950fcedd2066a583a6c3af35/) | GranaryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e3826...d5e74c`](./contracts/bsc-56/0x0e3826c210ca1a585a1f7223d13d4320d3d5e74c/) | GranaryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x61d58a...c901bd`](./contracts/bsc-56/0x61d58aee0f9430827f89aa7569aff2c939c901bd/) | GreenHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xef8597...6d0ee5`](./contracts/bsc-56/0xef8597a6441faaf9bfedf8ddda8f1a161f6d0ee5/) | GreenHouseV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x687fe2...9e798e`](./contracts/bsc-56/0x687fe2a8ef808fa6665c812fcea7dbaa3c9e798e/) | GreenHouseV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1cbddf...eea12c`](./contracts/bsc-56/0x1cbddf83de068464eba3a4e319bd3197a7eea12c/) | Leaf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x279087...1d7386`](./contracts/bsc-56/0x279087450003b3fe2a13eeedeebf0224e51d7386/) | MarketPlace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ffee8...8c89e5`](./contracts/bsc-56/0x4ffee8e4be5f71fddb76e3a0f958c065708c89e5/) | PlatformWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc51e41...058908`](./contracts/bsc-56/0xc51e41c88e1f7ccc12bc12748bfd1cf3d0058908/) | sdToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae3c58...655e0b`](./contracts/bsc-56/0xae3c585edfba5733f1dfb6bd454928c64d655e0b/) | Seed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6f54e...945644`](./contracts/bsc-56/0xa6f54e2c443860fdf30ffdfeb1c82dc4f8945644/) | SeederVerseBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d14f4...42fa87`](./contracts/bsc-56/0x1d14f49ea29928958005df9e7c75afe4df42fa87/) | Seedmon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6abe5f...7e7333`](./contracts/bsc-56/0x6abe5f1f4bb4b6529f700b12738df468ac7e7333/) | SeedmonV1Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdab068...19d029`](./contracts/bsc-56/0xdab0686d5f06deb4b721baa79da96e18cf19d029/) | Tree | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe3f0fe...e232b8`](./contracts/bsc-56/0xe3f0fe21121b139f576684133b5ba8aa12e232b8/) | VendingMachine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa22033...6b2e59`](./contracts/bsc-56/0xa22033ab3dacaee30a358abf6b646e42776b2e59/) | VendingMachineV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa8b71...77e174`](./contracts/bsc-56/0xaa8b71df41c56238da788f2799a2a5750e77e174/) | VendingMachineV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13813] Inspex_AUDIT2021005_SeederFinance_Core_FullReport_v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
