# Agentic Audit Brief: Polymarket

## Export Authority

- Production state: **published scope**
- Raw selected rows: 64 across 19 audit(s)
- Eligible audit results: 23 (19 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Polymarket (`polymarket`)
- Website: [https://polymarket.com/?r=defillamareal](https://polymarket.com/?r=defillamareal)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon
- Contract surface: 53 unique implementations (53 raw deployments)
- Coverage basis: 18/19 confirmed own live verified implementations (94.7%); conservative 94.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $467,043,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Polymarket. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum, polygon. Structural roles: 19 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (19)
- Contract kinds: contract (19)
- Detected standards: ownable (14), erc165 (10), erc1967proxy (8), erc1155 (2), erc20 (1), erc20permit (1), multicall (1)
- Frameworks: solady (14), openzeppelin (11), solmate (1)
- Upgradeable-pattern rows: 13

## Fork Analysis

1 of 29 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

**NegRiskAdapter** (`0xd91e80cf2e7be2e162c6513ced06f1dd0da35296`, chain 137)
Origin: limitless-exchange (`0x6151ef...1e712d`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x30c038f0dae8dcc3e6ad51d016f50821d32cb87e`, chain 137)
- UnnamedContract (`0x492fec596ec347459e1ebe30b9245eb3b49b1bba`, chain 137)
- UnnamedContract (`0x6a9d222616c90fca5754cd1333cfd9b7fb6a4f74`, chain 137)
- UnnamedContract (`0x7a18edfe055488a3128f01f563e5b479d92ffc3a`, chain 137)
- UnnamedContract (`0xa1200000d0002264c9a1698e001292d00e1b00af`, chain 137)
- UnnamedContract (`0xa61e7ca374f721d5b9fd5b0fee6fb90f27d448d7`, chain 137)
- UnnamedContract (`0xb529b2430d78868422c47934d9d61cc9d0c53dbb`, chain 137)
- UnnamedContract (`0xc011a7e12a19f7b1f670d46f03b03f3342e82dfb`, chain 137)
- UnnamedContract (`0xe2222d279d744050d28e00520010520000310f59`, chain 137)
- UnnamedContract (`0xe3333700ca9d93003f00f0f71f8515005f6c00aa`, chain 137)
- AutoRedeemer (`0x64860bfd14fccaac09cd36f347784a9616afb66c`, chain 137)
- BinaryModule (`0x1000008dd9001b968442c1000017eae6e0da00ba`, chain 137)
- CollateralOfframp (`0x2957922eb93258b93368531d39facca3b4dc5854`, chain 137)
- CollateralOnramp (`0x93070a847efef7f70739046a929d47a521f5b8ee`, chain 137)
- CollateralToken (`0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f`, chain 137)
- CombinatorialModule (`0x30000034706c7d8e12009dab006be20000c031a8`, chain 137)
- ConditionalTokens (`0x4d97dcd97ec945f40cf65f87097ace5ea0476045`, chain 137)
- CtfCollateralAdapter (`0xada100db00ca00073811820692005400218fce1f`, chain 137)
- CTFExchange (`0xe111180000d2663c0091e4f400237545b87b996b`, chain 137)
- DepositWalletFactory (`0x00000000000fb5c9adea0298d729a0cb3823cc07`, chain 137)
- Exchange (`0x7345c6842b244926125ed4054905cac49620b5dc`, chain 137)
- NegRiskCtfCollateralAdapter (`0xada2005600dec949baf300f4c6120000bdb6eaab`, chain 137)
- NegRiskModule (`0x200000900045e3b6259600682756002200028933`, chain 137)
- PermissionedRamp (`0xebc2459ec962869ca4c0bd1e06368272732bcb08`, chain 137)
- PositionManager (`0x006f54f7f9a22e0000cc2ab60031000000ae9fef`, chain 137)
- ProxyWalletFactory (`0xab45c5a4b0c941a2f231c04c3f49182e1a254052`, chain 137)
- SafeProxyFactory (`0xaacfeea03eb1561c4e67d661e40682bd20e3541b`, chain 137)
- UmaConditionalTokensBinaryAdapter (`0xcb1822859cef82cd2eb4e6276c7916e692995130`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 18/19 (94.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 29 of 53 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 18/33
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 53
- Raw deployments: 53
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 19
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 16 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: 63.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 15 | 45.5% | 2026-05 |
| Spearbit | Tier 1 | 12 | 36.4% | 2026-06 |
| Pashov Audit Group | Tier 2 | 11 | 33.3% | 2026-05 |
| Quantstamp | Tier 2 | 6 | 18.2% | 2026-05 |
| Zellic | Tier 2 | 1 | 3.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoRedeemer | unknown | project_anchor | own_supporting | 0 | polygon | unit-391189 | `0x64860bfd14fccaac09cd36f347784a9616afb66c` | ✅ Audited |
| BinaryModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391182 | `0x1000008dd9001b968442c1000017eae6e0da00ba` | ✅ Audited |
| CollateralOfframp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391184 | `0x2957922eb93258b93368531d39facca3b4dc5854` | ✅ Audited |
| CollateralOnramp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391194 | `0x93070a847efef7f70739046a929d47a521f5b8ee` | ✅ Audited |
| CollateralToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-391191 | `0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f` | ✅ Audited |
| CombinatorialModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391185 | `0x30000034706c7d8e12009dab006be20000c031a8` | ✅ Audited |
| ConditionalTokens | unknown | project_anchor | own_supporting | 0 | polygon | unit-391188 | `0x4d97dcd97ec945f40cf65f87097ace5ea0476045` | ✅ Audited |
| CtfCollateralAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391199 | `0xada100db00ca00073811820692005400218fce1f` | ✅ Audited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-391205 | `0xe111180000d2663c0091e4f400237545b87b996b` | ✅ Audited |
| DepositWalletFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391180 | `0x00000000000fb5c9adea0298d729a0cb3823cc07` | ✅ Audited |
| Exchange | unknown | project_anchor | own_supporting | 0 | polygon | unit-391192 | `0x7345c6842b244926125ed4054905cac49620b5dc` | ✅ Audited |
| NegRiskAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391204 | `0xd91e80cf2e7be2e162c6513ced06f1dd0da35296` | ✅ Audited |
| NegRiskCtfCollateralAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391200 | `0xada2005600dec949baf300f4c6120000bdb6eaab` | ✅ Audited |
| NegRiskModule | unknown | project_anchor | own_supporting | 0 | polygon | unit-391183 | `0x200000900045e3b6259600682756002200028933` | ✅ Audited |
| PermissionedRamp | unknown | project_anchor | own_supporting | 0 | polygon | unit-391208 | `0xebc2459ec962869ca4c0bd1e06368272732bcb08` | ✅ Audited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-391181 | `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` | ✅ Audited |
| ProxyWalletFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391198 | `0xab45c5a4b0c941a2f231c04c3f49182e1a254052` | ✅ Audited |
| SafeProxyFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-391197 | `0xaacfeea03eb1561c4e67d661e40682bd20e3541b` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d8c4e9adf5748af82dabe2c6225207770d6b4fa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5d563a36ae78145c45a50134d48a1215220f80a` | ⚠️ Unaudited |
| NegRiskFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78769d50be1763ed1ca0d5e878d93f05aabff29e` | ⚠️ Unaudited |
| NegRiskOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000ce7ac9cc86e65729d74315c449eebb5534def` | ⚠️ Unaudited |
| ProxyWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56687bf447db6ffa42ffe2204a05edaa20f55839` | ⚠️ Unaudited |
| UmaConditionalTokensBinaryAdapter | unknown | project_anchor | own_supporting | 0 | polygon | unit-391203 | `0xcb1822859cef82cd2eb4e6276c7916e692995130` | ⚠️ Unaudited |
| UmaCtfAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21cf6b83995c17fa460e387cb45211772aa29be7` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f67327e88c258932d7d8f72950be0d46975e11d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x278d861585d9d1e12eb77020759ee7b745caeae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f5e3684cb1f318ec51b00edba38d79ac2c0aa9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391186 | `0x30c038f0dae8dcc3e6ad51d016f50821d32cb87e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391187 | `0x492fec596ec347459e1ebe30b9245eb3b49b1bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x661992aebf6becf7ba5abb66f6b0bf62aa7a2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69c47de9d4d3dad79590d61b9e05918e03775f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391190 | `0x6a9d222616c90fca5754cd1333cfd9b7fb6a4f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71523d0f655b41e805cec45b17163f528b59b820` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391193 | `0x7a18edfe055488a3128f01f563e5b479d92ffc3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c7a7dbfe44fbad7dc27702aaf236cac88fc3924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d72b9572db8382faf29b5337992eaef42077a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e8f33758afb8d4796ec3bc849d008796cafe69c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391195 | `0xa1200000d0002264c9a1698e001292d00e1b00af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391196 | `0xa61e7ca374f721d5b9fd5b0fee6fb90f27d448d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391201 | `0xb529b2430d78868422c47934d9d61cc9d0c53dbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391202 | `0xc011a7e12a19f7b1f670d46f03b03f3342e82dfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391206 | `0xe2222d279d744050d28e00520010520000310f59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391207 | `0xe3333700ca9d93003f00f0f71f8515005f6c00aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef2e639bbdbbaf483cb8e9faae20b96534c740d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff543dfe8f4e2502118e158c21940644a268e180` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 10
- Live contracts: 0
- Unknown liveness contracts: 10
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=10

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0x278d861585d9d1e12eb77020759ee7b745caeae8` | non_address_book | unknown | unknown | unverified | n/a | `0x4df6f457ae69c9310fa34c4b64f15582ea6e1fc8` |
| polygon | unverified unclassified | UnnamedContract<br>`0xef2e639bbdbbaf483cb8e9faae20b96534c740d3` | non_address_book | unknown | unknown | unverified | n/a | `0x4df6f457ae69c9310fa34c4b64f15582ea6e1fc8` |
| polygon | unverified unclassified | UnnamedContract<br>`0xff543dfe8f4e2502118e158c21940644a268e180` | non_address_book | unknown | unknown | unverified | n/a | `0x4df6f457ae69c9310fa34c4b64f15582ea6e1fc8` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8d72b9572db8382faf29b5337992eaef42077a09` | non_address_book | unknown | unknown | unverified | n/a | `0xb342a81d57bb9ba8b81111523cd10ea550df67f8` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f5e3684cb1f318ec51b00edba38d79ac2c0aa9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |
| polygon | unverified unclassified | UnnamedContract<br>`0x661992aebf6becf7ba5abb66f6b0bf62aa7a2e93` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |
| polygon | unverified unclassified | UnnamedContract<br>`0x69c47de9d4d3dad79590d61b9e05918e03775f24` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |
| polygon | unverified unclassified | UnnamedContract<br>`0x71523d0f655b41e805cec45b17163f528b59b820` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8c7a7dbfe44fbad7dc27702aaf236cac88fc3924` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8e8f33758afb8d4796ec3bc849d008796cafe69c` | non_address_book | unknown | unknown | unverified | n/a | `0xe9ac97d2be532c0de63ec26270ea3f217e207326` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2020-01-20_accumulator_audit.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/2020-01-20_accumulator_audit.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Combinatorial Module - Cantina - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Cantina%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 8 | high |
| [Combinatorial Module - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Combinatorial Module - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Combinatorial%20Module%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Cantina%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [DepositWallet - Certora - Beacon Upgrade - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20Beacon%20Upgrade%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [DepositWallet - Certora - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Certora%20-%20March%202026.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [DepositWallet - Zellic - March 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/DepositWallet%20-%20Zellic%20-%20March%202026.pdf) | Zellic | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Polymarket V2 - Cantina - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Cantina%20-%20April%202026.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | matched | 7 | 0 | 0 | 17 | high |
| [Polymarket V2 - Certora - April 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Certora%20-%20April%202026.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | matched | 7 | 0 | 0 | 12 | high |
| [Polymarket V2 - Pashov - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Pashov%20-%20May%202026.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | matched | 11 | 0 | 0 | 39 | high |
| [Polymarket V2 - Quantstamp - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20-%20Quantstamp%20-%20May%202026.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 39 | high |
| [Polymarket V2 Additional changes - Certora - May 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Additional%20changes%20-%20Certora%20-%20May%202026.pdf) | unknown | Audit | 2026-05 | fresh | Direct | contract_name | matched | 6 | 0 | 0 | 1 | high |
| [Polymarket V2 Diff Review - Cantina - June 2026.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/Polymarket%20V2%20Diff%20Review%20-%20Cantina%20-%20June%202026.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | matched | 10 | 0 | 0 | 64 | high |
| [cs_conditional_tokens.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_conditional_tokens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [cs_ctf_exchange.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_ctf_exchange.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 29 | high |
| [cs_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_neg_risk_adapter.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [cs_proxy_wallet_factories.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/cs_proxy_wallet_factories.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 12 | high |
| [oz_neg_risk_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_neg_risk_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [oz_uma_ctf_adapter.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/oz_uma_ctf_adapter.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [perps_cantina_20260424_20260501.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_cantina_20260424_20260501.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [perps_certora_20260427_20260428.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_certora_20260427_20260428.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [perps_quantstamp_20260408_20260410.pdf](https://github.com/Polymarket/contract-security/blob/main/audit-reports/perps_quantstamp_20260408_20260410.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20946] 2020-01-20_accumulator_audit.pdf — no match: The report focuses solely on CTHelpers.sol. The date is given as 'December 2019' on the cover page.
- [20947] Combinatorial Module - Cantina - May 2026.pdf — matched: Scope section explicitly lists files under src/ directory. Additional contracts mentioned in findings are also included as they are part of the audited codebase.
- [20948] Combinatorial Module - Certora - May 2026.pdf — matched: Only one contract in scope: CombinatorialModule.sol. Audit date inferred from work period end date (May 4th, 2026).
- [20949] Combinatorial Module - Quantstamp - May 2026.pdf — matched: Scope section lists 5 files: CombinatorialModule.sol, ModuleIds.sol, Ids.sol, Exchange.sol, BridgeBase.sol. Audit date from final report date 2026-05-23.
- [20950] DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf — matched: All contracts listed in the scope section of the report.
- [20951] DepositWallet - Certora - Beacon Upgrade - May 2026.pdf — matched: Scope section lists 'src/*' as in scope. Contracts explicitly mentioned in findings and protocol overview are extracted. Audit date is May 2026, mapped to last day of month.
- [20952] DepositWallet - Certora - March 2026.pdf — matched: Scope explicitly lists deposit-wallet/src/*. Two main contracts: DepositWalletFactory and DepositWallet. Supporting libraries (Ownable, WalletLib, SessionSignerLib) are mentioned but not listed as separate files in scope; they are part of the src directory. Audit date from 'March 11th, 2026' in Project Overview.
- [20953] DepositWallet - Zellic - March 2026.pdf — matched: Scope table lists 8 Solidity files. Audit date from cover page and header/footer.
- [20954] Polymarket V2 - Cantina - April 2026.pdf — matched: Extracted contract names from scope sections, privileged roles, and findings. Audit date from cover page.
- [20955] Polymarket V2 - Certora - April 2026.pdf — matched: Extracted contracts from scope section and findings. Some contracts (CcipBridge, LzBridge, QuorumArbitratorModule, EOADisputerModule, EOAReporterModule) are explicitly not in scope but included for completeness. Audit date is the end date of the engagement (April 17, 2026).
- [20956] Polymarket V2 - Pashov - May 2026.pdf — matched: Extracted 50 contract names from the scope section on page 4-5 of the audit report. Audit date is the end date of the engagement: May 3rd 2026.
- [20957] Polymarket V2 - Quantstamp - May 2026.pdf — matched: Extracted 44 contract names from the scope section listing files included in the audit. Audit date derived from the timeline '2026-04-24 through 2026-05-06' using the end date.
- [20958] Polymarket V2 Additional changes - Certora - May 2026.pdf — matched: All contracts explicitly listed in scope section on page 3. Audit date inferred from work period May 18-22, 2026.
- [20959] Polymarket V2 Diff Review - Cantina - June 2026.pdf — matched: All contracts listed in the scope section (Section 2.1) were extracted. The audit date is explicitly stated on the cover page as 'June 3, 2026'.
- [20960] cs_conditional_tokens.pdf — matched: All contracts listed in the scope section of the report.
- [20961] cs_ctf_exchange.pdf — matched: All contracts listed in the scope section of the audit report.
- [20962] cs_neg_risk_adapter.pdf — matched: All contracts listed in scope table on page 5 of the report.
- [20963] cs_proxy_wallet_factories.pdf — matched: All contracts listed in scope section 2.1.1. Audit date from cover page.
- [20964] oz_neg_risk_adapter.pdf — matched: All contracts listed in the Scope section of the report.
- [20965] oz_uma_ctf_adapter.pdf — no match: Scope section explicitly lists 5 contracts in src directory. Audit date from cover page: 'August 16, 2023'.
- [20966] perps_cantina_20260424_20260501.pdf — no match: Scope section explicitly lists three files under src/v1/.
- [20967] perps_certora_20260427_20260428.pdf — no match: Only one contract file (ExchangeV1.sol) is in scope, as indicated by 'src/v1/*' and all findings reference this file.
- [20968] perps_quantstamp_20260408_20260410.pdf — matched: Scope section lists 'contracts/src/' as included path. Three Solidity files are identified: Exchange.sol, ExchangeStorage.sol, IExchange.sol. The audit date is the final report date (2026-04-17) from the changelog.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2020-01-20_accumulator_audit.pdf | CTHelpers | unmatched — not counted | — | The report is a security review of CTHelpers.sol, described as an essential tool in the conditional tokens contract. | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x30000034706c7d8e12009dab006be20000c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Cantina - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | ModuleProxyLib | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Cantina - May 2026.pdf | PositionIdLib | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | mentioned in findings context | no |
| Combinatorial Module - Cantina - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Certora - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x30000034706c7d8e12009dab006be20000c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x30000034706c7d8e12009dab006be20000c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Quantstamp - May 2026.pdf | Ids | unmatched — not counted | — | listed in scope | no |
| Combinatorial Module - Quantstamp - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Combinatorial Module - Quantstamp - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWalletBeacon | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x00000000000fb5c9adea0298d729a0cb3823cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Events | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | TestHelper | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Vm | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | EIP712Helpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | ExchangeHelpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | ExchangeLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | SessionSignerLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | WalletHelpers | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | WalletLib | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Cantina - Beacon Upgrade - May 2026.pdf | BeaconForwarder | unmatched — not counted | — | listed in scope | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope and findings | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x00000000000fb5c9adea0298d729a0cb3823cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | DepositWalletBeacon | unmatched — not counted | — | listed in scope and findings | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | BeaconForwarder | unmatched — not counted | — | mentioned in protocol overview as part of migration | no |
| DepositWallet - Certora - Beacon Upgrade - May 2026.pdf | IDepositWallet | unmatched — not counted | — | mentioned in I-01 as interface | no |
| DepositWallet - Certora - March 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x00000000000fb5c9adea0298d729a0cb3823cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Certora - March 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope as part of deposit-wallet/src/* | no |
| DepositWallet - Zellic - March 2026.pdf | DepositWallet | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | DepositWalletFactory | own contract | DepositWalletFactory (selected) `0x00000000000fb5c9adea0298d729a0cb3823cc07` — deployed 2026-03-31 05:55:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DepositWallet - Zellic - March 2026.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | WalletLib | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | SessionSignerLib | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | IDepositWallet | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| DepositWallet - Zellic - March 2026.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Polymarket V2 - Cantina - April 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | PolymarketCollateralToken | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope section 3.1 and privileged roles | no |
| Polymarket V2 - Cantina - April 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | Router | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope section 3.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.1 | no |
| Polymarket V2 - Cantina - April 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.13 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.2 | no |
| Polymarket V2 - Cantina - April 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.9 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.1.4 | no |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.15 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.2 | no |
| Polymarket V2 - Cantina - April 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.10 | no |
| Polymarket V2 - Cantina - April 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope section 3.1 and finding 4.2.4 | no |
| Polymarket V2 - Cantina - April 2026.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80cf2e7be2e162c6513ced06f1dd0da35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860bfd14fccaac09cd36f347784a9616afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Cantina - April 2026.pdf | QuorumArbitratorModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Cantina - April 2026.pdf | EOADisputerModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Cantina - April 2026.pdf | EOAReporterModule | unmatched — not counted | — | mentioned in finding 4.2.13 as out-of-scope but referenced | no |
| Polymarket V2 - Certora - April 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | CcipBridge | unmatched — not counted | — | not in scope but mentioned in findings | no |
| Polymarket V2 - Certora - April 2026.pdf | LzBridge | unmatched — not counted | — | not in scope but mentioned in findings | no |
| Polymarket V2 - Certora - April 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | NegRiskCtfCollateralAdapter | own contract | NegRiskCtfCollateralAdapter (selected) `0xada2005600dec949baf300f4c6120000bdb6eaab` — deployed 2026-04-29 19:23:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | CtfCollateralAdapter | own contract | CtfCollateralAdapter (selected) `0xada100db00ca00073811820692005400218fce1f` — deployed 2026-04-29 19:21:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Certora - April 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | QuorumArbitratorModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | EOADisputerModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | EOAReporterModule | unmatched — not counted | — | not in scope but mentioned | no |
| Polymarket V2 - Certora - April 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Certora - April 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | PositionIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Pashov - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860bfd14fccaac09cd36f347784a9616afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CtfCollateralAdapter | own contract | CtfCollateralAdapter (selected) `0xada100db00ca00073811820692005400218fce1f` — deployed 2026-04-29 19:21:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | NegRiskCtfCollateralAdapter | own contract | NegRiskCtfCollateralAdapter (selected) `0xada2005600dec949baf300f4c6120000bdb6eaab` — deployed 2026-04-29 19:23:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralOfframp | own contract | CollateralOfframp (selected) `0x2957922eb93258b93368531d39facca3b4dc5854` — deployed 2026-03-31 05:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralOnramp | own contract | CollateralOnramp (selected) `0x93070a847efef7f70739046a929d47a521f5b8ee` — deployed 2026-03-31 05:38:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Pashov - May 2026.pdf | PermissionedRamp | own contract | PermissionedRamp (selected) `0xebc2459ec962869ca4c0bd1e06368272732bcb08` — deployed 2026-03-31 05:38:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | PositionIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 - Quantstamp - May 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 - Quantstamp - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860bfd14fccaac09cd36f347784a9616afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x30000034706c7d8e12009dab006be20000c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860bfd14fccaac09cd36f347784a9616afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Additional changes - Certora - May 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | InitializableRoles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CcipBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgeBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBridgeCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralOfframp | own contract | CollateralOfframp (selected) `0x2957922eb93258b93368531d39facca3b4dc5854` — deployed 2026-03-31 05:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralOnramp | own contract | CollateralOnramp (selected) `0x93070a847efef7f70739046a929d47a521f5b8ee` — deployed 2026-03-31 05:38:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralToken | own contract | CollateralToken (selected) `0x6bbcef9f7ef3b6c592c99e0f206a0de94ad0925f` — deployed 2026-03-31 05:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PermissionedRamp | own contract | PermissionedRamp (selected) `0xebc2459ec962869ca4c0bd1e06368272732bcb08` — deployed 2026-03-31 05:38:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CollateralSetup.t | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICollateralToken | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICollateralTokenCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Addresses | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | DeployLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | TestHelper | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Vm | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IAddressWhitelist | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IFinder | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskAdapterSetUp | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IConditionalTokens | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IConditionalTokensMethods | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | INegRiskAdapter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IUmaCtfAdapter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CTFHelpers | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CTHelpers | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgePayloads | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CrossChainTypes | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Ids | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleIds | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BinaryModule | own contract | BinaryModule (selected) `0x1000008dd9001b968442c1000017eae6e0da00ba` — deployed 2026-05-26 23:54:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CombinatorialModule | own contract | CombinatorialModule (selected) `0x30000034706c7d8e12009dab006be20000c031a8` — deployed 2026-05-26 23:52:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskModule | own contract | NegRiskModule (selected) `0x200000900045e3b6259600682756002200028933` — deployed 2026-05-26 23:55:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ModuleProxyLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ICombinatorialModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IModuleCallback | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | INegRiskModuleCallbacks | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BaseMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BinaryMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | NegRiskMigrationMixin | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregatorErrors | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleAggregatorEvents | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OracleModuleBase | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IArbitratorModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IBinaryReporter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IDisputerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOptimisticRequester | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IOracleAggregator | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OptimisticOraclePayoutLib | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | OptimisticOracleModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | ChainlinkReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | EOAReporterModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | IPositionManagerModule | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PositionManager | own contract | PositionManager (selected) `0x006f54f7f9a22e0000cc2ab60031000000ae9fef` — deployed 2026-05-26 23:51:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | PositionManagerSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | CtfRouter | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | RouterSetup | unmatched — not counted | — | listed in scope | no |
| Polymarket V2 Diff Review - Cantina - June 2026.pdf | AutoRedeemer | own contract | AutoRedeemer (selected) `0x64860bfd14fccaac09cd36f347784a9616afb66c` — deployed 2026-05-26 23:56:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_conditional_tokens.pdf | ERC1155 | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | IERC1155 | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | IERCTokenReceiver | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | ConditionalTokens | own contract | ConditionalTokens (selected) `0x4d97dcd97ec945f40cf65f87097ace5ea0476045` — deployed 2020-09-03 21:07:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_conditional_tokens.pdf | CTHelpers | unmatched — not counted | — | listed in scope | no |
| cs_conditional_tokens.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | BaseExchange | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | CTFExchange | own contract | CTFExchange (selected) `0xe111180000d2663c0091e4f400237545b87b996b` — deployed 2026-03-31 05:39:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_ctf_exchange.pdf | IAssetOperations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IAssets | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IAuth | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IConditionalTokens | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IFees | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IHashing | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | INonceManager | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | ISignatures | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | ITrading | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | AssetOperations | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Fees | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolyFactoryHelper | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Registry | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Signatures | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Trading | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | Calculator | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | OrderStructs | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolyProxyLib | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | PolySafeLib | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | SilentECDSA | unmatched — not counted | — | listed in scope | no |
| cs_ctf_exchange.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| cs_neg_risk_adapter.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80cf2e7be2e162c6513ced06f1dd0da35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_neg_risk_adapter.pdf | NegRiskCtfExchange | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskFeeModule | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskOperator | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | CTHelpers | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Helpers | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | Auth | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | MarketDataManager | unmatched — not counted | — | listed in scope table | no |
| cs_neg_risk_adapter.pdf | MarketData | unmatched — not counted | — | listed in scope table | no |
| cs_proxy_wallet_factories.pdf | GSNLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | GNSModule01 | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | GNSModule03 | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | FactoryLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | MemcpyLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | RevertCaptureLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | RStoreLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | SliceLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | StringLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | ProxyWallet | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | ProxyWalletFactory | own contract | ProxyWalletFactory (selected) `0xab45c5a4b0c941a2f231c04c3f49182e1a254052` — deployed 2020-09-03 20:37:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_proxy_wallet_factories.pdf | ProxyWalletLib | unmatched — not counted | — | listed in scope | no |
| cs_proxy_wallet_factories.pdf | SafeProxyFactory | own contract | SafeProxyFactory (selected) `0xaacfeea03eb1561c4e67d661e40682bd20e3541b` — deployed 2021-09-23 19:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cs_proxy_wallet_factories.pdf | Deps | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xd91e80cf2e7be2e162c6513ced06f1dd0da35296` — deployed 2023-11-28 23:27:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| oz_neg_risk_adapter.pdf | NegRiskOperator | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Admin | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | MarketDataManager | unmatched — not counted | — | listed in scope | no |
| oz_neg_risk_adapter.pdf | MarketData | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | UmaCtfAdapter | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | BulletinBoard | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | AncillaryDataLib | unmatched — not counted | — | listed in scope | no |
| oz_uma_ctf_adapter.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| perps_cantina_20260424_20260501.pdf | ExchangeV1 | unmatched — not counted | — | listed in scope section | no |
| perps_cantina_20260424_20260501.pdf | IExchangeV1 | unmatched — not counted | — | listed in scope section | no |
| perps_cantina_20260424_20260501.pdf | StorageV1 | unmatched — not counted | — | listed in scope section | no |
| perps_certora_20260427_20260428.pdf | ExchangeV1 | unmatched — not counted | — | listed in scope and findings | no |
| perps_quantstamp_20260408_20260410.pdf | Exchange | own contract | Exchange (selected) `0x7345c6842b244926125ed4054905cac49620b5dc` — deployed 2026-05-26 23:52:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| perps_quantstamp_20260408_20260410.pdf | ExchangeStorage | unmatched — not counted | — | listed in appendix file signatures | no |
| perps_quantstamp_20260408_20260410.pdf | IExchange | unmatched — not counted | — | listed in appendix file signatures | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xcb1822859cef82cd2eb4e6276c7916e692995130` | UmaConditionalTokensBinaryAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 64 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 288 unmatched
- Matched-own operational status: 64 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23
- Match method counts: unique_name=64

Zero-match audit list:

- [20946] 2020-01-20_accumulator_audit.pdf
- [20965] oz_uma_ctf_adapter.pdf
- [20966] perps_cantina_20260424_20260501.pdf
- [20967] perps_certora_20260427_20260428.pdf

Fork inheritance lineage and inherited audits are included when available.
