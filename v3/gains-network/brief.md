# Agentic Audit Brief: Gains Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Gains Network (`gains-network`)
- Website: [https://gains.trade/](https://gains.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, polygon
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/18 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,248,889.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gains Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, base, polygon. Structural roles: 14 core, 4 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (14), supporting (4)
- Contract kinds: contract (18)
- Detected standards: accesscontrol (4), erc165 (4), erc20 (3), ownable (3), pausable (3), erc1967proxy (1), erc721 (1)
- Frameworks: openzeppelin (18), chainlink (9), layerzero (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 37 contracts are derived from known codebases. 37 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1544e1...3464fb`, chain 137)
- UnnamedContract (`0x209a9a...452018`, chain 137)
- UnnamedContract (`0x29019f...fe2c81`, chain 137)
- UnnamedContract (`0x322e18...96da0e`, chain 137)
- UnnamedContract (`0x8c74b2...e2beca`, chain 137)
- UnnamedContract (`0x91993f...efe827`, chain 137)
- UnnamedContract (`0xa33f70...218362`, chain 137)
- UnnamedContract (`0xdbcd00...416bad`, chain 137)
- UnnamedContract (`0xf0a853...f44a40`, chain 137)
- UnnamedContract (`0x03908e...0b8f08`, chain 8453)
- UnnamedContract (`0x28efaa...0dcbf3`, chain 8453)
- UnnamedContract (`0x3a00b1...419e7a`, chain 8453)
- UnnamedContract (`0x6cd5ac...704eeb`, chain 8453)
- UnnamedContract (`0xad2052...3d02e5`, chain 8453)
- UnnamedContract (`0xd65be7...13da9d`, chain 8453)
- UnnamedContract (`0x0f9e43...e50827`, chain 42161)
- UnnamedContract (`0x1632c3...26f637`, chain 42161)
- UnnamedContract (`0xd85e03...b9b91b`, chain 42161)
- UnnamedContract (`0xe18be0...bcb2eb`, chain 42161)
- ERC20Bridge (`0xdf774a...ff75bd`, chain 137)
- ERC20Bridge (`0x1671e2...2143a9`, chain 8453)
- ERC20Bridge (`0x01caaa...5fa5e2`, chain 42161)
- GainsNetworkToken (`0xe5417a...397896`, chain 137)
- GainsNetworkToken (`0xfb1aab...7ee7ac`, chain 8453)
- GainsNetworkToken (`0x18c11f...63a122`, chain 42161)
- GNSTimelockOwner (`0x5f5e48...c4df0f`, chain 42161)
- GTokenLockedDepositNft (`0x7d0131...a05ceb`, chain 8453)
- GTokenOpenPnlFeed (`0x8d6872...f4440c`, chain 137)
- GTokenOpenPnlFeed (`0xf07f45...894473`, chain 137)
- GTokenOpenPnlFeed (`0xff84e7...6fe822`, chain 137)
- GTokenOpenPnlFeed (`0xcec10c...365cc8`, chain 8453)
- GTokenOpenPnlFeed (`0xefa1c2...33be37`, chain 8453)
- GTokenOpenPnlFeed (`0x018d9a...f9f27e`, chain 42161)
- GTokenOpenPnlFeed (`0x4ca163...30e0d1`, chain 42161)
- GTokenOpenPnlFeed (`0x990ba9...a4a23d`, chain 42161)
- GTokenOpenPnlFeed (`0xbf55c7...d47982`, chain 42161)
- TransparentUpgradeableProxy (`0xb7cb7c...bbadc6`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 37 of 37 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-241000 | `0xdf774a...ff75bd` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | project_anchor | own_supporting | 0 | base | unit-241017 | `0x1671e2...2143a9` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-241006 | `0x01caaa...5fa5e2` | ⚠️ Unaudited |
| GainsNetworkToken | token | project_anchor | own_supporting | 0 | polygon | unit-241001 | `0xe5417a...397896` | ⚠️ Unaudited |
| GainsNetworkToken | token | project_anchor | own_supporting | 0 | base | unit-241026 | `0xfb1aab...7ee7ac` | ⚠️ Unaudited |
| GainsNetworkToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-241009 | `0x18c11f...63a122` | ⚠️ Unaudited |
| GNSTimelockOwner | governance | project_anchor | own_supporting | 0 | arbitrum | unit-241011 | `0x5f5e48...c4df0f` | ⚠️ Unaudited |
| GToken | token | project_anchor | own_supporting | 1 | base | unit-241027 | `0xb7cb7c...bbadc6` | ⚠️ Unaudited |
| GTokenLockedDepositNft | token | project_anchor | own_supporting | 0 | base | unit-241021 | `0x7d0131...a05ceb` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | polygon | unit-240996 | `0x8d6872...f4440c` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | polygon | unit-241002 | `0xf07f45...894473` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | polygon | unit-241004 | `0xff84e7...6fe822` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | base | unit-241023 | `0xcec10c...365cc8` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | base | unit-241025 | `0xefa1c2...33be37` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | arbitrum | unit-241005 | `0x018d9a...f9f27e` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | arbitrum | unit-241010 | `0x4ca163...30e0d1` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | arbitrum | unit-241012 | `0x990ba9...a4a23d` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | project_anchor | own_supporting | 0 | arbitrum | unit-241013 | `0xbf55c7...d47982` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240991 | `0x1544e1...3464fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240992 | `0x209a9a...452018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240993 | `0x29019f...fe2c81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240994 | `0x322e18...96da0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240995 | `0x8c74b2...e2beca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240997 | `0x91993f...efe827` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240998 | `0xa33f70...218362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240999 | `0xdbcd00...416bad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241003 | `0xf0a853...f44a40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241016 | `0x03908e...0b8f08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241018 | `0x28efaa...0dcbf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241019 | `0x3a00b1...419e7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241020 | `0x6cd5ac...704eeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241022 | `0xad2052...3d02e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241024 | `0xd65be7...13da9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241007 | `0x0f9e43...e50827` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241008 | `0x1632c3...26f637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241014 | `0xd85e03...b9b91b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241015 | `0xe18be0...bcb2eb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/gains-network](https://skynet.certik.com/projects/gains-network) | CertiK | Audit | 2022-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3379] skynet.certik.com/projects/gains-network — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It contains no scope section, no list of audited contracts, and no audit report date. The only contract-like mentions are token addresses and a reference to 'Audited Files' but no actual file names or contract names are given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xdf774a...ff75bd` | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1671e2...2143a9` | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x01caaa...5fa5e2` | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe5417a...397896` | GainsNetworkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfb1aab...7ee7ac` | GainsNetworkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x18c11f...63a122` | GainsNetworkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5f5e48...c4df0f` | GNSTimelockOwner | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7cb7c...bbadc6` | GToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7d0131...a05ceb` | GTokenLockedDepositNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8d6872...f4440c` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf07f45...894473` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xff84e7...6fe822` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcec10c...365cc8` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xefa1c2...33be37` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x018d9a...f9f27e` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4ca163...30e0d1` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x990ba9...a4a23d` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbf55c7...d47982` | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3379] skynet.certik.com/projects/gains-network

Fork inheritance lineage and inherited audits are included when available.
