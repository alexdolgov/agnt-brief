# Agentic Audit Brief: BOB Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 40.4% over 90 days

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:35.931Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, linea
- Contract surface: 43 unique implementations (88 raw deployments)
- DeFi Llama TVL: $2,343,275.74
- On-chain TVL (included contracts): $1,178,796.23
- TVL by chain: Ethereum $1,178,796.23

## Project Description

Bridge. Structurally: 202 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 12 functional families. Its contracts share 23 common project-authored base contract(s) (faultdisputegame, semver, irisczeroverifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 209; live-surface contracts included: 83 (81 live, 2 unknown).
- Excluded by liveness: 126 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/41 (2.4%)
- Deployed-live implementations: 41 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 43
- Raw deployments: 88
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,178,796.23
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,178,796.23 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 2.4% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2USDCBridge | unknown | linea | n/a | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BobToken | token | ethereum | n/a | 2 deployments: ethereum [`0x52b5fb...5eb7e7`](./contracts/ethereum-1/0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7/); ethereum `0xc9746f...46cedd` | ⚠️ Unaudited |
| SideToken | token | ethereum | n/a | 2 deployments: ethereum [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/); ethereum `0xbdbb63...323dd1` | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x96123d...9b1079`](./contracts/ethereum-1/0x96123dbfc3253185b594c6a7472ee5a21e9b1079/) | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbc6197...b684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/); ethereum `0xed9d63...f21646` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xc91482...dc764e`](./contracts/ethereum-1/0xc91482a96e9c2a104d9298d1980eccf8c4dc764e/) | ⚠️ Unaudited |
| KailuaGame | unknown | ethereum | n/a | 5 deployments: ethereum [`0x296e7a...479444`](./contracts/ethereum-1/0x296e7ad6d441b0627768bc0650179a4206479444/); ethereum `0x4be239...a492ef`; ethereum `0xd37b0b...9e742b`; ethereum `0xe34577...9ca82a`; ethereum `0xe43415...7a053b` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/); ethereum `0x9b3e16...e9263c`; ethereum `0xc7eacd...52b336`; ethereum `0xe99af5...5fb895` | ⚠️ Unaudited |
| KailuaVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b4997...d89c7c`](./contracts/ethereum-1/0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c/); ethereum `0x7fc721...f1cf29` | ⚠️ Unaudited |
| KailuaVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa23bf3...05b97d`](./contracts/ethereum-1/0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d/); ethereum `0xf59da2...bfab4e` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/); ethereum `0xe3d981...547eda` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x5d5a09...033e8b`](./contracts/ethereum-1/0x5d5a095665886119693f0b41d8dfee78da033e8b/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x5ff932...20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7ae1d3...c98013`](./contracts/ethereum-1/0x7ae1d3bd877a4c5ca257404ce26be93a02c98013/); ethereum `0xa67fc0...734212` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x0b09ba...7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0xdda53e...db11c1`](./contracts/ethereum-1/0xdda53e23f8a32640b04d7256e651c1db98db11c1/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17c64e...7195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/); ethereum `0xf027f4...d15dc1` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OPContractsManager | governance | ethereum | n/a | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | n/a | [`0x2c2da5...2fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0x5493f4...63988f`](./contracts/ethereum-1/0x5493f4677a186f64805fe7317d6993ba4863988f/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x555740...b09cb6`](./contracts/ethereum-1/0x5557408ab14013ce9dbb300de0d87d386bb09cb6/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/); ethereum `0x8adee1...e65a3e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/); ethereum `0xb443da...0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | 16 deployments: ethereum [`0x0605f3...8cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/); ethereum `0x07e50a...1ab70b`; ethereum `0x1ffc35...e996a5`; ethereum `0x2dd081...6f15b2`; ethereum `0x33f9c5...a710a3`; ethereum `0x469593...e05dad`; ethereum `0x6753df...2f6776`; ethereum `0x6a3868...21b05e`; ethereum `0x703db8...4914ca`; ethereum `0x7342e0...3ec237`; ethereum `0x7fe001...7d87db`; ethereum `0x82e562...26c8e1`; ethereum `0xa5d58a...e39084`; ethereum `0xbcee72...16fb8b`; ethereum `0xc7bef1...8bc630`; ethereum `0xe3bd00...38702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xee74fd...79fa7a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0dd8ed...bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/); ethereum `0x87692b...b3eff2` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x11c03c...5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/); ethereum `0xb9d8f5...17aad4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0d9f41...957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/); ethereum `0x43ca78...89d12f`; ethereum `0x856fcc...fb873e`; ethereum `0x963c3c...a8eaa0`; ethereum `0xa70ddf...703e1c`; ethereum `0xb4899f...fad0b5`; ethereum `0xba4eee...133a7e` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | ethereum | n/a | [`0x8eab2d...93d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x097f99...9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/); ethereum `0xe92520...965c46` | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x554ffc...c5e667`](./contracts/ethereum-1/0x554ffc3fe0ae9487f58cec547e91ba337cc5e667/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/); ethereum `0xaa0a1e...55b590` | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xacb886...1c5393`](./contracts/ethereum-1/0xacb886b75d76d1c8d9248cfddfa09b70c71c5393/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/); ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3` | ⚠️ Unaudited |

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
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $142,345.81 | Verified native implementation with $142,345.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0216b...535431`](./contracts/ethereum-1/0xd0216bdcc195abdf77746b6a6347ce85e2535431/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f6ce1...4ac1f7`](./contracts/ethereum-1/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b172b...415514`](./contracts/ethereum-1/0x5b172bbfa0140285a02374ec1f5b9f25ef415514/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 11 |
| standard_library | 3 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
