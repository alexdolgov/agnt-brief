# Agentic Audit Brief: RAAC

## Project Overview

- Project: RAAC (`raac`)
- Website: [https://raac.io/](https://raac.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.451Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $106,249,189.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 17 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (icrvusdtousdoracle, withcompliance). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/17 (94.1%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/19
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 7 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 16 | 84.2% | 2026-03 |
| FYEO | Tier 2 | 2 | 10.5% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseVRFv2Consumer | unknown | ethereum | n/a | [`0x9c359b...cccb36`](./contracts/ethereum-1/0x9c359b341470e17345a3ffd53fe9624c64cccb36/) | ✅ Audited |
| ComplianceRegistry | unknown | ethereum | n/a | [`0x6e35c6...6fcd4b`](./contracts/ethereum-1/0x6e35c61a73ec5d1779038df78cbb8183f76fcd4b/) | ✅ Audited |
| CrvUSDToUSDOracle | unknown | ethereum | n/a | [`0x716600...1bc7c7`](./contracts/ethereum-1/0x716600c66f8a9999353c8545cfcbcc14bf1bc7c7/) | ✅ Audited |
| FractionalToken | unknown | ethereum | n/a | [`0x32d93b...8541d8`](./contracts/ethereum-1/0x32d93b015562cc8da0ef3ccbccc3f8e1da8541d8/) | ✅ Audited |
| LeveragedToken | unknown | ethereum | n/a | [`0x616ff3...4f2baf`](./contracts/ethereum-1/0x616ff3a9031fa613241c407a4c414676304f2baf/) | ✅ Audited |
| Market | unknown | ethereum | n/a | [`0x11b21a...beb10e`](./contracts/ethereum-1/0x11b21afa735e24683f0912d9f6f8a8bfabbeb10e/) | ✅ Audited |
| PSMVault | unknown | ethereum | n/a | [`0x8819dc...c3393c`](./contracts/ethereum-1/0x8819dcd779e3a44052a40f117999063740c3393c/) | ✅ Audited |
| RAACHousePriceOracle | unknown | ethereum | n/a | [`0x556553...b0179c`](./contracts/ethereum-1/0x556553877fc8e643a78f6925c465991d73b0179c/) | ✅ Audited |
| RAACHousePrices | unknown | ethereum | n/a | [`0x1a97da...545a70`](./contracts/ethereum-1/0x1a97dad63f29974aa4a54d4e337c183ed1545a70/) | ✅ Audited |
| RAACNFT | unknown | ethereum | n/a | [`0x993776...76eb9f`](./contracts/ethereum-1/0x993776c3f184d1ec6bdcf77e7aecedf48076eb9f/) | ✅ Audited |
| RAACNFTVaultAdapterOracle | unknown | ethereum | n/a | [`0x61273a...e46649`](./contracts/ethereum-1/0x61273a2915e5ef5523438f85a7909c01bae46649/) | ✅ Audited |
| RAACNFTVaultAdapterV2 | unknown | ethereum | n/a | [`0xb1b35c...aa1d34`](./contracts/ethereum-1/0xb1b35c62b99a450c474e9dad75fa121d3daa1d34/) | ✅ Audited |
| RateProvider | unknown | ethereum | n/a | [`0x9a6b5b...5f5b21`](./contracts/ethereum-1/0x9a6b5bda2128e6341175c79e43cd2a7e0c5f5b21/) | ✅ Audited |
| RWAIndexToken | unknown | ethereum | n/a | [`0xe6a60d...6e5ccf`](./contracts/ethereum-1/0xe6a60d2886b11256c24c128210159133096e5ccf/) | ✅ Audited |
| RWAVault | unknown | ethereum | n/a | [`0x575ffb...3cc732`](./contracts/ethereum-1/0x575ffb62f712410a4eca56c2eb37596cec3cc732/) | ✅ Audited |
| TokenBlender | unknown | ethereum | n/a | [`0x7a7f84...b8e56a`](./contracts/ethereum-1/0x7a7f847fb60b0000e24cce07298dc73df8b8e56a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | unknown | ethereum | n/a | [`0x89ab60...682ce2`](./contracts/ethereum-1/0x89ab60d8fcd674b2b0b308e7fa63ff84a2682ce2/) | ⚠️ Unaudited |
| SUsds | unknown | ethereum | n/a | [`0x4e7991...9f61e0`](./contracts/ethereum-1/0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x51c434...e27342`](./contracts/ethereum-1/0x51c4348af0c6066a2fd31bd968bc0c039fe27342/) | ⚠️ Unaudited |

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
| [2025-08-Pashov-RWf(x)-V1-public.pdf (also discovered via alternate URL)](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-08-Pashov-RWf(x)-V1-public.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [2025-08-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-08-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | 6 | high |
| [2025-11-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [2025-11-Pashov-RWf(x)-v2-public.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-RWf(x)-v2-public.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 3 | high |
| [2025-11-Pashov-RWf(x)-v3-public.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-RWf(x)-v3-public.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [2025-12-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-12-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | 10 | high |
| [2026-03-Pashov-PSM.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2026-03-Pashov-PSM.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [FYEO-1-audit.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/FYEO-1-audit.pdf) | FYEO | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [codehawks.cyfrin.io/c/2025-02-raac](https://codehawks.cyfrin.io/c/2025-02-raac) | Cyfrin | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [whitepaper-q1.pdf](https://docs.raac.io/whitepaper-q1.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lightpaper-q1.pdf](https://docs.raac.io/lightpaper-q1.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4e7991...9f61e0`](./contracts/ethereum-1/0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0/) | SUsds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=33

Zero-match audit list:

- [20979] codehawks.cyfrin.io/c/2025-02-raac
- [20980] whitepaper-q1.pdf
- [20981] lightpaper-q1.pdf

Fork inheritance lineage and inherited audits are included when available.
