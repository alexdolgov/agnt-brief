# Agentic Audit Brief: Alien Base

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 39.5% over 90 days

## Project Overview

- Project: Alien Base (`alien-base`)
- Website: [https://alienbase.xyz/](https://alienbase.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,336,181.00
- On-chain TVL (included contracts): $1,874,177.28
- TVL by chain: Base $1,874,177.28

## Project Description

This brief describes the observed EVM deployment and audit surface for Alien Base. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 7 supporting, 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (7), core (6), unclassified (1)
- Contract kinds: contract (14)
- Detected standards: erc20 (4), multicall (4), ownable (4), erc20permit (3), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (10), uniswap-v3 (5), uniswap-v2 (3), boringcrypto (2), solmate (2), uniswap (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2d5dd5...6de51e`, chain 8453)
- UnnamedContract (`0x3e84d9...c0fde7`, chain 8453)
- AlienBaseToken (`0x1dd2d6...0050c4`, chain 8453)
- BasedDistributorV2 (`0x52eaec...d86590`, chain 8453)
- BunniHub (`0xdc5348...ccac6f`, chain 8453)
- BunniToken (`0x053d11...3d27a4`, chain 8453)
- BunniToken (`0x176ca1...a208f0`, chain 8453)
- BunniZap (`0x6947da...16d75d`, chain 8453)
- EsProxyMaster (`0xd3968a...61ec88`, chain 8453)
- EsToken (`0xe1afc6...2a4587`, chain 8453)
- NonfungiblePositionManager (`0xb7996d...4534e5`, chain 8453)
- SmartRouter (`0xb20c41...ea9411`, chain 8453)
- UniswapV2Router02 (`0x3485f8...bb79e7`, chain 8453)
- UniswapV2Router02 (`0x8c1a3c...6b37c7`, chain 8453)
- UniswapV3Factory (`0x0fd835...74558c`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,874,177.28
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,874,177.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlienBaseToken | token | project_anchor | own_supporting | 0 | base | unit-226187 | `0x1dd2d6...0050c4` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226191 | `0x52eaec...d86590` | ⚠️ Unaudited |
| BunniHub | unknown | project_anchor | own_supporting | 0 | base | unit-226195 | `0xdc5348...ccac6f` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226183 | `0x053d11...3d27a4` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226186 | `0x176ca1...a208f0` | ⚠️ Unaudited |
| BunniZap | adapter | project_anchor | own_supporting | 1 | base | unit-226197 | `0x6947da...16d75d` | ⚠️ Unaudited |
| DistributorController | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226185 | `0x16f1f8...23e4fb` | ⚠️ Unaudited |
| EsProxyMaster | unknown | project_anchor | own_supporting | 0 | base | unit-226194 | `0xd3968a...61ec88` | ⚠️ Unaudited |
| EsToken | token | project_anchor | own_supporting | 0 | base | unit-226196 | `0xe1afc6...2a4587` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-226199 | `0xb7996d...4534e5` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 1 | base | unit-226198 | `0xb20c41...ea9411` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226189 | `0x3485f8...bb79e7` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226193 | `0x8c1a3c...6b37c7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-226184 | `0x0fd835...74558c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226188 | `0x2d5dd5...6de51e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226190 | `0x3e84d9...c0fde7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x1dd2d6...0050c4` | AlienBaseToken | token | $1,874,177.28 | Verified native implementation with $1,874,177.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52eaec...d86590` | BasedDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdc5348...ccac6f` | BunniHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x053d11...3d27a4` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x176ca1...a208f0` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16f1f8...23e4fb` | DistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd3968a...61ec88` | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe1afc6...2a4587` | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb20c41...ea9411` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
