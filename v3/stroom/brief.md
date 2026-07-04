# Agentic Audit Brief: Stroom

## Project Overview

- Project: Stroom (`stroom`)
- Website: [https://stroom.network/](https://stroom.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.002Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $15,337.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol forms a single structural family (Stroom) of 11 contract(s).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/11 (18.2%)
- Deployed-live implementations: 11 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 18.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| strBTC | unknown | ethereum | n/a | [`0xb2723d...9b3017`](./contracts/ethereum-1/0xb2723d5df98689eca6a4e7321121662ddb9b3017/) | ✅ Audited |
| ValidatorRegistry | unknown | ethereum | n/a | [`0x8cdb1e...e10e36`](./contracts/ethereum-1/0x8cdb1eab36096f4891299c7d1b8dee777ae10e36/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CBBTCConverterImmutable | unknown | ethereum | n/a | [`0xe7b4c4...df2cd0`](./contracts/ethereum-1/0xe7b4c44adb17147ad877eb8607eeb1e95adf2cd0/) | ⚠️ Unaudited |
| Chronicle_WSTRBTC_USD_1 | unknown | ethereum | n/a | [`0x27c0d6...068917`](./contracts/ethereum-1/0x27c0d69b99e4ea0bf99ebdc07dacbe0b3f068917/) | ⚠️ Unaudited |
| DIAOracleV2 | unknown | ethereum | n/a | [`0xfe0593...b0463d`](./contracts/ethereum-1/0xfe0593fa61c7cf3d2cd17b8b53ef844a33b0463d/) | ⚠️ Unaudited |
| DIAStroomAdapter | unknown | ethereum | n/a | [`0x12db8f...7a1811`](./contracts/ethereum-1/0x12db8fca6aaa29e922bfad8a7771ae11f17a1811/) | ⚠️ Unaudited |
| DiaStroomAssetSpecificCallingConvention | unknown | ethereum | n/a | [`0x1d18b5...cf8d40`](./contracts/ethereum-1/0x1d18b5147b11908b24a247517f606c0705cf8d40/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xcbb7c0...ed33bf`](./contracts/ethereum-1/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WBTCConverterImmutable | unknown | ethereum | n/a | [`0x56192f...cb1352`](./contracts/ethereum-1/0x56192f14c1d84e41db3d5d4c5d407efdb5cb1352/) | ⚠️ Unaudited |
| wstrBTC | unknown | ethereum | n/a | [`0xa3ca88...e6f770`](./contracts/ethereum-1/0xa3ca88cfb7bbe9cfbd47df053ffa2130c7e6f770/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1f03c2...055024` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [stroom-audit-final.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/stroom-audit-final.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
