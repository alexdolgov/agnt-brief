# Agentic Audit Brief: Siren

## Project Overview

- Project: Siren (`siren`)
- Website: [https://siren.xyz/](https://siren.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.357Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, polygon
- Contract surface: 16 unique implementations (16 raw deployments)
- DeFi Llama TVL: $240,981.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 14 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (contextupgradesafe, proxiable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/16 (18.8%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/16
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 3 | 18.8% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmmDataProvider | unknown | polygon | n/a | [`0x249094...37d8b8`](./contracts/polygon-137/0x249094de3ad806dcefcd7a36c95d3d007337d8b8/) | ✅ Audited |
| AmmFactory | unknown | polygon | n/a | [`0x024b82...f7118b`](./contracts/polygon-137/0x024b823643382be2a71a4e62f60c81e26af7118b/) | ✅ Audited |
| MinterAmm | unknown | polygon | n/a | [`0x1695d5...1e332a`](./contracts/polygon-137/0x1695d5ef25fd29582ec296ebd7a510ddd71e332a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1155Controller | unknown | polygon | n/a | [`0x01d025...2a84f2`](./contracts/polygon-137/0x01d02501a2b7734b50a70d2e358a593bd52a84f2/) | ⚠️ Unaudited |
| HedgedPool | unknown | arbitrum | n/a | [`0x07835d...1885dc`](./contracts/arbitrum-42161/0x07835de4f96164758fe68283a5466e066c1885dc/) | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0x7b63ec...aaa469`](./contracts/ethereum-1/0x7b63ecbc78402553a2d7f01ea3d10079c3aaa469/) | ⚠️ Unaudited |
| MarketsRegistry | unknown | ethereum | n/a | [`0x58dd75...def4e1`](./contracts/ethereum-1/0x58dd75e6560f4636130bba5c9a03af3a21def4e1/) | ⚠️ Unaudited |
| PriceOracle | unknown | polygon | n/a | [`0x112dfe...a598a0`](./contracts/polygon-137/0x112dfee006b8e84fc630aad89ad2858d78a598a0/) | ⚠️ Unaudited |
| Proxy | unknown | polygon | n/a | [`0x0ad92b...322cae`](./contracts/polygon-137/0x0ad92b6f500affbe07ed65f9abb6fac90d322cae/) | ⚠️ Unaudited |
| Proxy | unknown | polygon | n/a | [`0x716c54...1fed48`](./contracts/polygon-137/0x716c543b39a85aac0240ba7ed07e79f06e1fed48/) | ⚠️ Unaudited |
| SeriesVault | unknown | polygon | n/a | [`0x602de8...c15077`](./contracts/polygon-137/0x602de81711fa86fd97520cbd5ff023469bc15077/) | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | [`0x122bf9...3ab84a`](./contracts/ethereum-1/0x122bf95a3f9b2e593a2ed8dcdc22f5aded3ab84a/) | ⚠️ Unaudited |
| SirenAccessKey | unknown | arbitrum | n/a | [`0xe8f834...c2d100`](./contracts/arbitrum-42161/0xe8f8347b33f5bbb691277ede23f55ac5d5c2d100/) | ⚠️ Unaudited |
| SirenToken | unknown | ethereum | n/a | [`0xd23ac2...5093de`](./contracts/ethereum-1/0xd23ac27148af6a2f339bd82d0e3cff380b5093de/) | ⚠️ Unaudited |
| SirenUtils | unknown | arbitrum | n/a | [`0xb80e32...b837ef`](./contracts/arbitrum-42161/0xb80e321fa8ecf53e354e72a254438ec6cab837ef/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x39e3a2...6e45a7`](./contracts/arbitrum-42161/0x39e3a206cc8b236265dac96090b20c286c6e45a7/) | ⚠️ Unaudited |

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
| [Reports](https://cdn.prod.website-files.com/610fc6a1e961affb229320ba/633e9d068baa7b5a0d741afc_abch-siren-amm-report-feb-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
