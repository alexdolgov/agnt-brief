# Agentic Audit Brief: Mainstreet

## Project Overview

- Project: Mainstreet (`mainstreet`)
- Website: [https://mainstreet.finance/](https://mainstreet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:42.078Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 12 unique implementations (16 raw deployments)
- DeFi Llama TVL: $74,181,335.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (contextupgradeable, proxy). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/12 (50.0%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/12
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 6 | 50.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MainstreetMinter | unknown | ethereum | n/a | [`0x1d08df...044fae`](./contracts/ethereum-1/0x1d08df027d12fd9c3441cf1829f1b47420044fae/) | ✅ Audited |
| MainstreetMinter | unknown | ethereum | n/a | [`0x70c0c1...2ade14`](./contracts/ethereum-1/0x70c0c12fbb3acfff8e48abf027436971cf2ade14/) | ✅ Audited |
| msUSDSilo | unknown | ethereum | n/a | [`0x6f1888...ea6871`](./contracts/ethereum-1/0x6f188821283923953121f35d74e69a5e73ea6871/) | ✅ Audited |
| StakedmsUSD | unknown | ethereum | n/a | [`0x42ced7...1471a7`](./contracts/ethereum-1/0x42ced7dce66df68a6828f74ea73612fb511471a7/) | ✅ Audited |
| StakedmsUSD | token | ethereum | n/a | [`0x890a51...0bd74a`](./contracts/ethereum-1/0x890a5122aa1da30fec4286de7904ff808f0bd74a/) | ✅ Audited |
| StaticPriceOracle | operational_periphery | ethereum | n/a | [`0x098e47...3cd2af`](./contracts/ethereum-1/0x098e47096856eb292d8b2d379b74e987e23cd2af/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CustodianManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x4cc941...935d0a`](./contracts/ethereum-1/0x4cc94169605069ddf82c815493cf6048f1935d0a/); ethereum `0x7d4ad0...125eab` | ⚠️ Unaudited |
| FeeSilo | unknown | ethereum | n/a | [`0x6665ef...b98b81`](./contracts/ethereum-1/0x6665efde9f1916a9e16f7f955375ecd392b98b81/) | ⚠️ Unaudited |
| msYBridger | operational_periphery | ethereum | n/a | [`0x22eb4e...bc98f2`](./contracts/ethereum-1/0x22eb4e61fe4d4e31113979e8b1f4377d46bc98f2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0eae4a...571858`](./contracts/ethereum-1/0x0eae4acb10f3e5696cf6b0de33693ef8ec571858/); ethereum `0x6580ad...8dccc4` | ⚠️ Unaudited |
| StablePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x111ce2...998826`](./contracts/ethereum-1/0x111ce2a60c30f6058a57d0dbae1a39a42d998826/); ethereum `0x9054ae...c73a12` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42d9ee...37ebb6`](./contracts/ethereum-1/0x42d9ee7049f5dc573fe08330a3597af17437ebb6/); ethereum `0xcf72a8...2822a6` | ⚠️ Unaudited |

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
| [Mainstreet_v2_Audit_Report_by_WatchPug.pdf](https://github.com/Mainstreet-Labs/mainstreet-watchpug-audit/blob/main/Mainstreet_v2_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |

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
- Match method counts: extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
