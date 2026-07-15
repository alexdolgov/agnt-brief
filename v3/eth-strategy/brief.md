# Agentic Audit Brief: ETH Strategy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (165 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,877,262.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ETH Strategy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across ethereum. Structural roles: 6 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (1), unclassified (1)
- Contract kinds: contract (8)
- Detected standards: ownable (4), ownable2step (4), erc20 (3), erc4626 (2), erc165 (1), erc20permit (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f63ae...42fad7`, chain 1)
- UnnamedContract (`0x41675c...c7461a`, chain 1)
- UnnamedContract (`0x823eff...fea16b`, chain 1)
- UnnamedContract (`0xaa1a5a...4dfe42`, chain 1)
- UnnamedContract (`0xc53cce...5220b8`, chain 1)
- UnnamedContract (`0xf89f49...aa25e1`, chain 1)
- EthStrategyPerpetualNote (`0xb250c9...1385fe`, chain 1)
- GnosisSafeProxy (`0x75efa0...25adfa`, chain 1)
- StakedEthStrategyPerpetualNoteLP (`0xcd65f0...dc6c1c`, chain 1)
- StratOption (`0xe1e909...c447fc`, chain 1)
- StratToken (`0x14cf92...a86a2f`, chain 1)
- UniswapV3Pool (`0x67e26e...c30317`, chain 1)
- Vault (`0x937135...b77f1d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 56 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 56
- Raw deployments: 165
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArrakisV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239142 | `0xbea0eb...ff0bc6` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fddfb...da1bc6` | ⚠️ Unaudited |
| ArrakisV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x439166...45901a`; ethereum `0xe1f086...578a16` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020e04...67424c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd840e7...a15960` | ⚠️ Unaudited |
| CdtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd45983...9275f3` | ⚠️ Unaudited |
| ClaimStratStream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c36e...41afeb` | ⚠️ Unaudited |
| ConnectorPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 49 deployments: ethereum `0x083add...ce3600`; ethereum `0x12fbd0...cbfcae`; ethereum `0x134643...400b3d`; ethereum `0x15cecd...2e678e`; ethereum `0x15f70f...d70d93`; ethereum `0x1967f0...964041`; ethereum `0x1a9ba9...ff515c`; ethereum `0x22be0d...aa43fd`; ethereum `0x254691...083820`; ethereum `0x2b9389...98d3a2`; ethereum `0x3645c5...dfc3b0`; ethereum `0x368530...199d7e`; ethereum `0x37c24e...39f754`; ethereum `0x388341...0c1b87`; ethereum `0x3f574b...d7c83a`; ethereum `0x3f66f2...e50e10`; ethereum `0x519bc0...017b3e`; ethereum `0x5e7243...c712c2`; ethereum `0x5ed056...1fad5a`; ethereum `0x67c97b...cae971`; ethereum `0x68411d...e7df8e`; ethereum `0x716c33...d04743`; ethereum `0x727ad6...9bf6d5`; ethereum `0x82d4a4...161b76`; ethereum `0x876b81...5587fc`; ethereum `0x884443...3e5406`; ethereum `0x8e8d89...ab90ff`; ethereum `0x8f4e67...80a4f5`; ethereum `0x94104d...1515b1`; ethereum `0x96e1e9...7d94cd`; ethereum `0x9d0487...2dc52a`; ethereum `0xa1d11b...d1c276`; ethereum `0xa2be75...84d568`; ethereum `0xa72bc5...e88f0f`; ethereum `0xada55e...d1e6ea`; ethereum `0xb11788...29a60f`; ethereum `0xb1dfe2...80b862`; ethereum `0xb49b8a...59643d`; ethereum `0xb4e78d...0d9891`; ethereum `0xbef69d...3e239e`; ethereum `0xcc958f...82efc3`; ethereum `0xd0711b...e13623`; ethereum `0xd3a00e...ed5d93`; ethereum `0xdabf17...1ef4eb`; ethereum `0xdb39c6...ea043c`; ethereum `0xdba83c...b53086`; ethereum `0xdccfb2...5e19a3`; ethereum `0xf15d42...0ea508`; ethereum `0xfa8c07...052c97` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x4dfa99...048670`; ethereum `0x6a25c9...be1d97`; ethereum `0x954be1...f505d3`; ethereum `0x96e47f...caea73`; ethereum `0x988ddd...486904`; ethereum `0xc52ef0...12d8a6`; ethereum `0xe7cd93...e205a0`; ethereum `0xe9c464...c03207` | ⚠️ Unaudited |
| Derive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4909ad...a881b8` | ⚠️ Unaudited |
| esETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a2f9...fdf9cb` | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0cb029...c18b1b`; ethereum `0x8ea1eb...576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96d4d...9accc4` | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239141 | `0xb250c9...1385fe` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53f9b8...e9c6df` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-239147 | `0x75efa0...25adfa` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f017e...66ed2f` | ⚠️ Unaudited |
| GUniPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffb04...ebaa4c` | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7327...beb3c8` | ⚠️ Unaudited |
| LyraStakingSink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa4ee...de4197` | ⚠️ Unaudited |
| LyraTSADepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x204cdc...5bc949`; ethereum `0x6fef1b...45004f`; ethereum `0xa79399...48bfea`; ethereum `0xaf3f1c...b3ed5d`; ethereum `0xaf6575...a095e3` | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0fc32b...25a0de`; ethereum `0x56b759...a7aa84`; ethereum `0x6383ae...991a0f`; ethereum `0x69812b...ed77b7`; ethereum `0xb8ec70...b00f31`; ethereum `0xcb39cd...3b598b`; ethereum `0xd9c7e1...fca13c`; ethereum `0xdfc777...f3f4bf`; ethereum `0xe3500c...8acc6e`; ethereum `0xf962a0...393636`; ethereum `0xfcb49f...457db9`; ethereum `0xff8d2e...17efc2` | ⚠️ Unaudited |
| LyraTSAShareHandlerWithdrawHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3abd55...6c355b`; ethereum `0x48ab5f...7136fb`; ethereum `0x9b80ab...db18ec`; ethereum `0xac192a...b803c7` | ⚠️ Unaudited |
| LyraTSAWithdrawHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5240cf...7ecf88`; ethereum `0xcae121...a09181`; ethereum `0xd6eada...6f4064`; ethereum `0xeb7378...36bfdc` | ⚠️ Unaudited |
| LyraWstETHZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0465aa...c700d6` | ⚠️ Unaudited |
| MultiDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x133f33...41f01c`; ethereum `0x8e52df...cbf77f` | ⚠️ Unaudited |
| pnETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771200...26229d` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d843e...e086d9` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9c70...39f89d` | ⚠️ Unaudited |
| PresaleTokenRenderer | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x316fe1...a731c6`; ethereum `0x562e22...8e60bc` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x162558...b6684b`; ethereum `0x5efc70...68a641` | ⚠️ Unaudited |
| RedeemPresaylor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5df764...012eab`; ethereum `0xca8940...06371a` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239144 | `0xcd65f0...dc6c1c` | ⚠️ Unaudited |
| StakedStrat | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66643...a51994` | ⚠️ Unaudited |
| StratOption | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239145 | `0xe1e909...c447fc` | ⚠️ Unaudited |
| StratPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63aceb...a56bf4` | ⚠️ Unaudited |
| StratToken | token | project_anchor | own_supporting | 0 | ethereum | unit-239132 | `0x14cf92...a86a2f` | ⚠️ Unaudited |
| SuperToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1d080c...dfc2ad`; ethereum `0x32390a...d4b4c2`; ethereum `0x91f3cf...ef16ab`; ethereum `0xcae44c...0a907b`; ethereum `0xd5e977...5b04da`; ethereum `0xdfd366...7ff991`; ethereum `0xe9a12f...32b3d7`; ethereum `0xf90b95...58362b` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666651...bdde8b` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239135 | `0x67e26e...c30317` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x26cf1d...010c2a`; ethereum `0x30147a...09d3b1`; ethereum `0x34bc7f...f34475`; ethereum `0x35d4d9...691cad`; ethereum `0x383a4e...ea7065`; ethereum `0x412ac6...593d37`; ethereum `0x442146...33dc60`; ethereum `0x4bb4c3...861eb4`; ethereum `0x5324c6...7408de`; ethereum `0x5bf824...667a61`; ethereum `0x613e87...62c142`; ethereum `0x7d7ac8...0a5592`; ethereum `0x7e1d17...e50c91`; ethereum `0x8180ec...88bf78`; ethereum `0xa357c6...5524fa`; ethereum `0xb59251...cd8856`; ethereum `0xd7d75f...8837a3`; ethereum `0xdf9acf...3c1a72`; ethereum `0xe3e968...7137bf`; ethereum `0xebb5d6...3824b3`; ethereum `0xfef430...6235fe` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239138 | `0x937135...b77f1d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239133 | `0x2f63ae...42fad7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239134 | `0x41675c...c7461a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f51b...6c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701e59...4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76dbe9...1192f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8111d9...09076e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239137 | `0x823eff...fea16b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239139 | `0xaa1a5a...4dfe42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239143 | `0xc53cce...5220b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79b47...7b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02edd...9c43cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e86b...3de108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfb03...b3c165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239146 | `0xf89f49...aa25e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM0599-FINAL_ETH_STRAT.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2674] NM0599-FINAL_ETH_STRAT.pdf — no match: Two contracts explicitly listed in Audited Files section. Audit final report date is August 19, 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM0599-FINAL_ETH_STRAT.pdf | StratPerpetualBond | unmatched — not counted | — | Listed in Audited Files table and described as primary vault in scope. | no |
| NM0599-FINAL_ETH_STRAT.pdf | StratPerpetualBondLPVault | unmatched — not counted | — | Listed in Audited Files table and described as secondary vault in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbea0eb...ff0bc6` | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb250c9...1385fe` | EthStrategyPerpetualNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd65f0...dc6c1c` | StakedEthStrategyPerpetualNoteLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe1e909...c447fc` | StratOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14cf92...a86a2f` | StratToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x937135...b77f1d` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2674] NM0599-FINAL_ETH_STRAT.pdf

Fork inheritance lineage and inherited audits are included when available.
