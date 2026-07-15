# Agentic Audit Brief: Circle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Circle (`circle`)
- Website: [https://www.circle.com/en/](https://www.circle.com/en/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bsc, celo, cronos, ethereum, hyperliquid, ink, linea, monad, optimism, pharos, polygon, polygon-amoy, sei, sepolia, sonic, unichain, zksync-era
- Contract surface: 83 unique implementations (83 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,215,639,101.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Circle in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1abaea...1bc33c`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0x0b2c63...97ff85`, chain 10)
- UnnamedContract (`0x3d7f2c...999d2d`, chain 25)
- UnnamedContract (`0xa6de01...c554c8`, chain 25)
- UnnamedContract (`0x078d78...f57ad6`, chain 130)
- UnnamedContract (`0x3c499c...5c3359`, chain 137)
- UnnamedContract (`0x754704...afb603`, chain 143)
- UnnamedContract (`0x29219d...038894`, chain 146)
- UnnamedContract (`0x1d17cb...6538d4`, chain 324)
- UnnamedContract (`0xb88339...ba630f`, chain 999)
- UnnamedContract (`0xe15fc3...f42392`, chain 1329)
- UnnamedContract (`0xc879c0...ac1815`, chain 1672)
- UnnamedContract (`0x60a3e3...1adb42`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- UnnamedContract (`0xceba93...32118c`, chain 42220)
- UnnamedContract (`0xb97ef9...c48a6e`, chain 43114)
- UnnamedContract (`0xc891eb...5c2acd`, chain 43114)
- UnnamedContract (`0x2d270e...61eaed`, chain 57073)
- UnnamedContract (`0x176211...1ee1ff`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 21 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 21 of 83 unique; 62 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 83
- Raw deployments: 83
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrossChainTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231d51...2f3f12` | ⚠️ Unaudited |
| CrossChainToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a6f3f...57e18f` | ⚠️ Unaudited |
| CrossMarginCashEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2103...d53889` | ⚠️ Unaudited |
| CrossMarginCashLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c6c57...646b31` | ⚠️ Unaudited |
| CrossMarginCashMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cba4e...a39ed1` | ⚠️ Unaudited |
| CrossMarginPhysicalEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181d05...3a39f8` | ⚠️ Unaudited |
| CrossMarginPhysicalEngineProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaab8ed...35f3b9` | ⚠️ Unaudited |
| CrossMarginPhysicalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6b76...caaa19` | ⚠️ Unaudited |
| CrossMarginPhysicalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a166...9c9ffe` | ⚠️ Unaudited |
| DoubleAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x121eed...9bf0d7` | ⚠️ Unaudited |
| FeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x132c14...a7bdbb` | ⚠️ Unaudited |
| GenericAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a886f...156fd0` | ⚠️ Unaudited |
| GenericNextPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6deaa7...f11624` | ⚠️ Unaudited |
| GenericUpgradableAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc31214...4d07d5` | ⚠️ Unaudited |
| HashnoteVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0747c4...736c3c` | ⚠️ Unaudited |
| HashnoteVaultRegistrarProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x04f793...a4ee04` | ⚠️ Unaudited |
| HashnoteVaultShareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x081bdb...dc56d6` | ⚠️ Unaudited |
| HNUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc71752...c7d20d` | ⚠️ Unaudited |
| LSETHAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8e38...616bc6` | ⚠️ Unaudited |
| MasterFundAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0fa77...3afa06` | ⚠️ Unaudited |
| OptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10022b...754ed0` | ⚠️ Unaudited |
| OptionTokenDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7d54...853692` | ⚠️ Unaudited |
| PhysicalReturnProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c19d...9b447d` | ⚠️ Unaudited |
| Pomace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8cadc8...c5acdb` | ⚠️ Unaudited |
| PositionPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cf8d5...59c66b` | ⚠️ Unaudited |
| PpraSdycVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c202d...323e12` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542647...8bea86` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352f80...82b0ab` | ⚠️ Unaudited |
| Sanctions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfc60d...0ad504` | ⚠️ Unaudited |
| SDYCAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1051a9...eaabe1` | ⚠️ Unaudited |
| ShortDurationYieldCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc090...72699a` | ⚠️ Unaudited |
| SimpleSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e9d9...05f245` | ⚠️ Unaudited |
| SimpleSettlementCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2503...f4ea00` | ⚠️ Unaudited |
| SimpleSettlementPhysical | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454018...e25d9c` | ⚠️ Unaudited |
| SingleOptionCashVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dada...f7c0bf` | ⚠️ Unaudited |
| StrategyVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c3557...bfe4f0` | ⚠️ Unaudited |
| StringToHexString | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026a69...ef68e3` | ⚠️ Unaudited |
| StructureLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cacb...f54389` | ⚠️ Unaudited |
| T2Upgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a5be...8d59e9` | ⚠️ Unaudited |
| Teleport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x362087...bc7eee` | ⚠️ Unaudited |
| TellerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee35f9...ea30e6` | ⚠️ Unaudited |
| USYCSatellite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x191fb6...47445b` | ⚠️ Unaudited |
| VariableUnderlyingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c8ec0...00eccd` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06de71...441506` | ⚠️ Unaudited |
| WhitelistManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x115038...153ce3` | ⚠️ Unaudited |
| WrappedETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e3d6...f22b06` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17ff7c...b94aa3` | ⚠️ Unaudited |
| WrappedTokenScaled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a0a0...59bf51` | ⚠️ Unaudited |
| WrappedTokenStakedETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9b6b...ee1ac6` | ⚠️ Unaudited |
| WSTETHAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x058614...950a17` | ⚠️ Unaudited |
| YieldCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x136471...e49f2b` | ⚠️ Unaudited |
| YieldTokenAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7ad4...e0426b` | ⚠️ Unaudited |
| YieldTokenTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca594...f9d8cc` | ⚠️ Unaudited |
| YieldTokenTellerV2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x060087...8bd599` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232093 | `0x1abaea...1bc33c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232096 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232097 | `0x0b2c63...97ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-232118 | `0x3d7f2c...999d2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-232119 | `0xa6de01...c554c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-232104 | `0x078d78...f57ad6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232110 | `0x3c499c...5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232113 | `0x754704...afb603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232114 | `0x29219d...038894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-232121 | `0x1d17cb...6538d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232137 | `0xb88339...ba630f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-232106 | `0xe15fc3...f42392` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232115 | `0xc879c0...ac1815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232133 | `0x60a3e3...1adb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232134 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232122 | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-232125 | `0xceba93...32118c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-232126 | `0x542589...31bc65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-232127 | `0x5e44db...815c6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232128 | `0xb97ef9...c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232129 | `0xc891eb...5c2acd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-232130 | `0x2d270e...61eaed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232131 | `0x176211...1ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-232132 | `0x41e94e...0e7582` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-232135 | `0x036cbd...3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-232136 | `0x808456...77359f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-232123 | `0x75faf1...46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-232098 | `0x08210f...c594d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-232099 | `0x1c7d4b...9c7238` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Circle_CCTP_V2_audit (1).pdf](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/PDFs/ChainSecurity_Circle_CCTP_V2_audit%20(1).pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [public_evm_cctp_audit_final (2).pdf](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/PDFs/public_evm_cctp_audit_final%20(2).pdf) | OtterSec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[ChainSecurity (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/CCTP/ChainSecurity_Circle_CCTP_audit_2025-07.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [* [ChainSecurity audit report]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/CCTP/%5BPublic%5D%20%5BChainSecurity%5D%20Circle_Gateway_audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [* [OtterSec audit report]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Circle%20Gateway%20Audit%20-%20OtterSec%20-%207-21-2025.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [* [OtterSec (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Public%20Security%20Audit%20Reports/%5BPUBLIC%5D%20%5BOTTERSEC%5D%20circle_xreserve_audit_final.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* [ChainSecurity (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Public%20Security%20Audit%20Reports/%5BPUBLIC%5D%20%5BCHAINSECURITY%5D%20ChainSecurity_Circle_CircleXReserve_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29753] ChainSecurity_Circle_CCTP_V2_audit (1).pdf — no match: Extracted contract names from the scope table in section 2.1. Also included TypedMemView as it was explicitly mentioned as in scope for relevant functions. Audit date from cover page: March 24, 2025.
- [29754] public_evm_cctp_audit_final (2).pdf — no match: The report scope mentions 'cctp-v2' program but does not list individual contracts. However, the findings reference two specific contracts: MessageTransmitterV2 and TokenMessengerV2, which are clearly in scope.
- [29755] [ChainSecurity (PDF)]() — no match: Extracted 19 contract names from the scope section (page 5) and file paths. Audit date found on cover page: April 08, 2025.
- [29756] * [ChainSecurity audit report]() — no match: All contracts listed in the scope section of the audit report.
- [29757] * [OtterSec audit report]() — no match: Scope section describes the program but does not list individual contract files. Contract names extracted from findings: Denylist (with file path) and GatewayWallet (mentioned in context). No other contract names explicitly in scope.
- [29758] * [OtterSec (PDF)]() — no match: The scope section describes the program 'evm-xreserve' but does not list specific contract names or file paths. No individual contracts are named.
- [29759] * [ChainSecurity (PDF)]() — no match: Extracted all contracts from the scope section (page 5) and file paths. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Denylistable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | AttestableV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Attestable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Ownable2Step | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Rescuable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenController | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | AdminUpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Create2Factory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | BaseTokenMessenger | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | BaseMessageTransmitter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | MessageTransmitterV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMessengerV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMinterV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | FinalityThresholds | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMinter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | CCTPHookWrapper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TypedMemView | unmatched — not counted | — | mentioned as in scope for relevant functions | no |
| public_evm_cctp_audit_final (2).pdf | MessageTransmitterV2 | unmatched — not counted | — | Mentioned in finding OS-ECP-SUG-00 with code snippet from src/v2/MessageTransmitterV2.sol | no |
| public_evm_cctp_audit_final (2).pdf | TokenMessengerV2 | unmatched — not counted | — | Mentioned in finding OS-ECP-SUG-00 with code snippet from src/v2/TokenMessengerV2.sol | no |
| [ChainSecurity (PDF)]() | Denylistable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | AttestableV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Attestable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Ownable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Ownable2Step | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Pausable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Rescuable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenController | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | AdminUpgradableProxy | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Initializable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Create2Factory | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | BaseTokenMessenger | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | BaseMessageTransmitter | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | MessageTransmitterV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMessengerV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMinterV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | FinalityThresholds | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMinter | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | CCTPHookWrapper | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | AddressLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | AttestationLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Attestations | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | BurnIntentLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | BurnIntents | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Cursor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | EIP712Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpec | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpecLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Denylist | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Pausing | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TokenSupport | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpecHashes | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Mints | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Balances | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Burns | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Delegation | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Deposits | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | WithdrawalDelay | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Withdrawals | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayCommon | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayMinter | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayWallet | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | UpgradeablePlaceholder | unmatched — not counted | — | listed in scope | no |
| * [OtterSec audit report]() | Denylist | unmatched — not counted | — | mentioned in finding OS-CGT-SUG-01 with code snippet showing file path | no |
| * [OtterSec audit report]() | GatewayWallet | unmatched — not counted | — | mentioned in finding OS-CGT-SUG-00 as a contract that users approve USDC for | no |
| * [ChainSecurity (PDF)]() | Constants | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Errors | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IERC7597 | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IERC7598 | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IGatewayMinter | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IGatewayWallet | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IRemoteDomainDepositor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IRemoteDomainHookExecutor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | AddressLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositIntent | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositIntentLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositParams | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | NoValidationAttestationLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | WithdrawHookData | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | WithdrawHookDataLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Attestable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DomainManageable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Blocklistable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositToRemote | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Immutables | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Pausing | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | RemoteDomainRegistration | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | TokenSupport | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Withdrawal | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | RemoteDomainDepositor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | xReserve | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | UpgradeablePlaceholder | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [29753] ChainSecurity_Circle_CCTP_V2_audit (1).pdf
- [29754] public_evm_cctp_audit_final (2).pdf
- [29755] [ChainSecurity (PDF)]()
- [29756] * [ChainSecurity audit report]()
- [29757] * [OtterSec audit report]()
- [29758] * [OtterSec (PDF)]()
- [29759] * [ChainSecurity (PDF)]()

Fork inheritance lineage and inherited audits are included when available.
