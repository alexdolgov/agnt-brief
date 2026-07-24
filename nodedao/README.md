# Agentic Audit Brief: NodeDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: NodeDAO (`nodedao`)
- Website: [https://www.nodedao.com](https://www.nodedao.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 55 unique implementations (55 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,322,204.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NodeDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc`, chain 1)
- UnnamedContract (`0x16f692525f3b8c8a96f8c945d365da958fb5735b`, chain 1)
- UnnamedContract (`0x54f661260dd47b6178cf4f6f3e90cc30d8d1ea62`, chain 1)
- UnnamedContract (`0x9efdeb695f1e3f0ad3bcfb1e07d2749b50a3b75c`, chain 1)
- UnnamedContract (`0xa9d21395a58d832d2c44605d286560876ddee8f3`, chain 1)
- UnnamedContract (`0xbdfe7fc2caac000e8436c72c104d611277def3d8`, chain 1)
- UnnamedContract (`0xc6572019548dfeba782ba5a2093c836626c7789a`, chain 1)
- UnnamedContract (`0xd7c049cd4ba216679ecc04eb2767cc5e39812121`, chain 1)
- UnnamedContract (`0xf3c79408164abfb6fd5ddfe33b084e4ad2c07c18`, chain 1)
- CumulativeMerkleDrop (`0x1349a8d352b1971cbebeacf55fb75526f47b6610`, chain 1)
- LsdETH (`0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 11 of 55 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 55
- Raw deployments: 55
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CumulativeMerkleDrop | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-389860 | `0x1349a8d352b1971cbebeacf55fb75526f47b6610` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x718b7885fec8511dc8f2a378d3045c90e82d6a1d` | ⚠️ Unaudited |
| LsdETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389863 | `0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b` | ⚠️ Unaudited |
| NethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3343f9de5612b6f8a433abc3eaae245cfa3283ce` | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea3681131dd151ee72a5c8dbba555cb8b8ded56` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389859 | `0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116d631583026799d61a284518762cf3923d5f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13bc536722779508ef5d9994e2fa616553698a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389861 | `0x16f692525f3b8c8a96f8c945d365da958fb5735b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178b7401c32a4aab5ef128458888779eaaf4e78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19e488138311f382c3d3802a2a1deee6a28f9e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1befbad5c77b46de397cfd4472f77e0dbc566ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2369624dba451447d629687ab660b6dfd3740bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b763f4f1053980ca71266dd55dafdbbd0680863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dad78e21bb2315d77a4ca07cb000fd8e4523449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb71040c0a24fe10194aec2f0a8b264ae9820f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301365f7334be7e4e32ef4a1d3040c9a476da6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d815d5c96d4d9807b5b6e8294343dbb4c38cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38260cbdd0adceab714335a0e3937ac35e28e70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b5dd701d1ddc729a7a7a9d6e3941aa5264ecb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad85a55904b8ef62f30b5811717d6982a99f700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf7aab60d30d17bdebc4b22ca008fe3bb5173bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cd55e21d0621d4096c71d73e785346dd23fddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520b826e8d0fdfd8e0cdb1b2243f6648cc6dabd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389862 | `0x54f661260dd47b6178cf4f6f3e90cc30d8d1ea62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b065bdb7c02ae517e6c545426fedcd52b3cf147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1725284d4b3c79c65f42dce3e7027ebc6b8495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8104bc3e58296934984e15df1879537c766fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7699fb48e19bc72e80a3b40d7e88c42256eeec7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79285fd2224cbc0b25065c49537b72c1a4567afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f431acc894b2bae481efe7ce1e88bc7f167041b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82356248f9132068b98b3a5c4175f7d656594d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x876ef32cc6e76ecee16bdc867b78356e6624b019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fdece127aa31f4708975b49a3450d7544d9a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926cf8c6c07beaba0ecf55c9c41443614c4bedf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389864 | `0x9efdeb695f1e3f0ad3bcfb1e07d2749b50a3b75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa203534ae15a41b93d6d9c7652be33c52193dfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6911b556684be462117edea6efd537ef4de6359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389865 | `0xa9d21395a58d832d2c44605d286560876ddee8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5b6cb94dbd13769fc2b955bfdf32b3b1e60c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f3e1b280d15c90a737bb59bc51174338193cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e0b400bde198544eb8c7845bcc6297184ab00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb836f08271628612d2b63ff6a5b10541b7bef53d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389866 | `0xbdfe7fc2caac000e8436c72c104d611277def3d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389867 | `0xc6572019548dfeba782ba5a2093c836626c7789a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65e0af33810cea4cf6dc194c287e2e7d6e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389868 | `0xd7c049cd4ba216679ecc04eb2767cc5e39812121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4209f23370b3049a8396241c491ee14aa40913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbad2d42f2df80bcc780d438cd8445b5404057a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2964b4083aaf3893c9dda66c3e48163aff8963f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cdb8b9b24014eea090a0240ab408bb6b8cea46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf237561207911d20e410a8d866af7f174f777972` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389869 | `0xf3c79408164abfb6fd5ddfe33b084e4ad2c07c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c560c502c62fce873e730c668017906e442145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64555230d298eb726d52970edf42a07d8c02ede` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 0
- Unknown liveness contracts: 41
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=41

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x116d631583026799d61a284518762cf3923d5f6d` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13bc536722779508ef5d9994e2fa616553698a69` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x178b7401c32a4aab5ef128458888779eaaf4e78a` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19e488138311f382c3d3802a2a1deee6a28f9e57` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1befbad5c77b46de397cfd4472f77e0dbc566ce3` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2369624dba451447d629687ab660b6dfd3740bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b763f4f1053980ca71266dd55dafdbbd0680863` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dad78e21bb2315d77a4ca07cb000fd8e4523449` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2eb71040c0a24fe10194aec2f0a8b264ae9820f9` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x301365f7334be7e4e32ef4a1d3040c9a476da6a5` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37d815d5c96d4d9807b5b6e8294343dbb4c38cf1` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38260cbdd0adceab714335a0e3937ac35e28e70b` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39b5dd701d1ddc729a7a7a9d6e3941aa5264ecb4` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ad85a55904b8ef62f30b5811717d6982a99f700` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bf7aab60d30d17bdebc4b22ca008fe3bb5173bb` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50cd55e21d0621d4096c71d73e785346dd23fddd` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x520b826e8d0fdfd8e0cdb1b2243f6648cc6dabd1` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b065bdb7c02ae517e6c545426fedcd52b3cf147` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f1725284d4b3c79c65f42dce3e7027ebc6b8495` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e8104bc3e58296934984e15df1879537c766fca` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7699fb48e19bc72e80a3b40d7e88c42256eeec7b` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79285fd2224cbc0b25065c49537b72c1a4567afc` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f431acc894b2bae481efe7ce1e88bc7f167041b` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82356248f9132068b98b3a5c4175f7d656594d8a` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x876ef32cc6e76ecee16bdc867b78356e6624b019` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87fdece127aa31f4708975b49a3450d7544d9a7b` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x926cf8c6c07beaba0ecf55c9c41443614c4bedf1` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa203534ae15a41b93d6d9c7652be33c52193dfe6` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6911b556684be462117edea6efd537ef4de6359` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae5b6cb94dbd13769fc2b955bfdf32b3b1e60c1b` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4f3e1b280d15c90a737bb59bc51174338193cbf` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7e0b400bde198544eb8c7845bcc6297184ab00a` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb836f08271628612d2b63ff6a5b10541b7bef53d` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc65e0af33810cea4cf6dc194c287e2e7d6e9d88e` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb4209f23370b3049a8396241c491ee14aa40913` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbbad2d42f2df80bcc780d438cd8445b5404057a` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2964b4083aaf3893c9dda66c3e48163aff8963f` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7cdb8b9b24014eea090a0240ab408bb6b8cea46` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf237561207911d20e410a8d866af7f174f777972` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5c560c502c62fce873e730c668017906e442145` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf64555230d298eb726d52970edf42a07d8c02ede` | non_address_book | unknown | unknown | unverified | n/a | `0xef76d4e75154739f75f6068b3470c7968cc3fcd1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Beosin_NodeDAO-Protocol_202302011759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302011759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Beosin_NodeDAO-Protocol_202302161759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302161759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Beosin_Validator-NFT_202210251808.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_Validator-NFT_202210251808.pdf) | Beosin | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [MetaScan_Report_NodeDAO_20230301.pdf](https://github.com/NodeDAO/audits/blob/main/MetaScan_Report_NodeDAO_20230301.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [MetaTrust.pdf](https://www.nodedao.com/paf/MetaTrust.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BEOSIN.pdf](https://www.nodedao.com/paf/BEOSIN.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3976] CertiK-Obelisk-final-20240805T174639Z.pdf — no match: Extracted 17 contract names from the audit scope table and file paths. Audit date found on cover page and executive summary.
- [3977] Beosin_NodeDAO-Protocol_202302011759.pdf — no match: Audit scope includes Oracle module, Registry module, Rewards module, Timelock Controller module, and staking module. Contracts identified from findings and scope description.
- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf — no match: Audit scope includes Oracle module, Registry module, Vault module, Timelock Controller module, and staking module. Specific contracts mentioned in findings: NodeOperatorRegistry and LiquidStaking.
- [3979] Beosin_Validator-NFT_202210251808.pdf — no match: Contracts explicitly mentioned in scope: Aggregator, NodeRewardVault, NodeCapitalVault, ValidatorNft. Audit date from cover page.
- [3980] MetaScan_Report_NodeDAO_20230301.pdf — no match: Contracts extracted from 'File(s) Affected' in findings and from the informational section listing centralized roles. No explicit scope section found, but these are the contracts mentioned as audited.
- [15360] MetaTrust.pdf — no match: Extracted contract names from 'File(s) Affected' in findings. No explicit scope section; audit date from cover page.
- [15361] BEOSIN.pdf — no match: Audit scope includes Oracle module, Registry module, Vault module, Timelock Controller module and staking module. Specific contracts mentioned in findings: NodeOperatorRegistry and LiquidStaking. Other modules (Oracle, Vault, TimelockController) are not explicitly named as contracts in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-Obelisk-final-20240805T174639Z.pdf | ObeliskNetwork | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | MintStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | StrategyManager | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Version | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | WithdrawalRequest | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | CefiStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BaseToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OBTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OLTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OYBTCB2 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OYBTCBBL | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Assets | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BlackList | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Dao | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | DefiStrategy | unmatched — not counted | — | listed in scope table | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | BeaconOracle | unmatched — not counted | — | listed in scope and findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | ReportUtils | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | LiquidStaking | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | ELVault | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302161759.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings and scope | no |
| Beosin_NodeDAO-Protocol_202302161759.pdf | LiquidStaking | unmatched — not counted | — | listed in findings and scope | no |
| Beosin_Validator-NFT_202210251808.pdf | Aggregator | unmatched — not counted | — | mentioned in project description and findings | no |
| Beosin_Validator-NFT_202210251808.pdf | NodeRewardVault | unmatched — not counted | — | mentioned in project description and findings | no |
| Beosin_Validator-NFT_202210251808.pdf | NodeCapitalVault | unmatched — not counted | — | mentioned in project description | no |
| Beosin_Validator-NFT_202210251808.pdf | ValidatorNft | unmatched — not counted | — | mentioned in project description and findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | BeaconOracle | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | LiquidStaking | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | NodeOperatorRegistry | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ConsensusVault | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ELVault | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ELVaultFactory | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | VNFT | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaTrust.pdf | OperatorSlash | unmatched — not counted | — | File(s) Affected in finding MSA-001 | no |
| MetaTrust.pdf | VNFT | unmatched — not counted | — | File(s) Affected in findings MSA-002 and MSA-004 | no |
| MetaTrust.pdf | NodeOperatorRegistry | unmatched — not counted | — | File(s) Affected in finding MSA-003 | no |
| MetaTrust.pdf | VaultManager | unmatched — not counted | — | File(s) Affected in finding MSA-005 | no |
| BEOSIN.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings and scope | no |
| BEOSIN.pdf | LiquidStaking | unmatched — not counted | — | listed in findings and scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1349a8d352b1971cbebeacf55fb75526f47b6610` | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b` | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [3976] CertiK-Obelisk-final-20240805T174639Z.pdf
- [3977] Beosin_NodeDAO-Protocol_202302011759.pdf
- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf
- [3979] Beosin_Validator-NFT_202210251808.pdf
- [3980] MetaScan_Report_NodeDAO_20230301.pdf
- [15360] MetaTrust.pdf
- [15361] BEOSIN.pdf

Fork inheritance lineage and inherited audits are included when available.
