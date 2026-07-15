# Agentic Audit Brief: BSCSwap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BSCSwap (`bscswap`)
- Website: [https://bscswap.com/](https://bscswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 36 unique implementations (118 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,162,856.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for BSCSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 36
- Raw deployments: 118
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd984b...baaa31` | ⚠️ Unaudited |
| BAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8012...60173d` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67eb6e...2d6216` | ⚠️ Unaudited |
| BRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x164a50...68ddda` | ⚠️ Unaudited |
| BSCswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacc234...d82584` | ⚠️ Unaudited |
| BSCswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce8fd6...d2b8d0` | ⚠️ Unaudited |
| BSCswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc5c848...541616`; bsc `0xe61d0d...626e15` | ⚠️ Unaudited |
| BSCswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd95455...21424a` | ⚠️ Unaudited |
| BSCswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb7558...2a895a` | ⚠️ Unaudited |
| BSWAPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b2dac...331e2d` | ⚠️ Unaudited |
| BurnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x01f46a...415896`; bsc `0x122957...bd046f`; bsc `0x3073ef...2b41b4`; bsc `0x354d80...f9ed39`; bsc `0x3e9e1e...e54393`; bsc `0x563d0e...1b93f6`; bsc `0x589bd7...c4fe2c`; bsc `0x65baa9...cb85a4`; bsc `0x750cd0...a36e13`; bsc `0x7d40f6...307c94`; bsc `0x8fdef9...41b373`; bsc `0x9ba67f...b969e0`; bsc `0x9bad51...e9519a`; bsc `0xa32cf5...25048f`; bsc `0xbeeb41...7e9a12`; bsc `0xd88a59...a99d33`; bsc `0xe8c3ae...e68b8d` | ⚠️ Unaudited |
| Degenerates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb37b51...538ff3` | ⚠️ Unaudited |
| DegenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 30 deployments: bsc `0x0ccbc7...0ca044`; bsc `0x0d08ce...b8bd43`; bsc `0x0ec061...d2e0e8`; bsc `0x151190...a3c8a0`; bsc `0x18da56...9a0f03`; bsc `0x23e961...35237a`; bsc `0x25f34e...b0c92b`; bsc `0x28a1b8...b04612`; bsc `0x2aeb47...ea65c1`; bsc `0x3973a1...1e65f0`; bsc `0x4b5a08...6c5be3`; bsc `0x4dfb8e...0e7160`; bsc `0x4ec299...397968`; bsc `0x553d0c...9ffb8f`; bsc `0x58d919...505e39`; bsc `0x729cea...c7c419`; bsc `0x84e012...4f1f45`; bsc `0x8a0725...bf3db4`; bsc `0x992c6d...437a8f`; bsc `0x9e17af...5d45da`; bsc `0xa2095d...8c1ba0`; bsc `0xa90d75...d37c5e`; bsc `0xb5986d...14d12f`; bsc `0xc24b12...35c0ec`; bsc `0xc6cbdf...0491e2`; bsc `0xc92e84...ee62d8`; bsc `0xccb983...da4ad4`; bsc `0xd1bd76...ee954d`; bsc `0xdccaca...3cea38`; bsc `0xe427f3...8fe782` | ⚠️ Unaudited |
| DSProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ad1b8...a95dee` | ⚠️ Unaudited |
| Earth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bee84...079255` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a4c55...7d98d6` | ⚠️ Unaudited |
| IDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x3e5619...7a329c`; bsc `0x4526b1...220142`; bsc `0x552409...7bddca`; bsc `0x84798e...0ca18e`; bsc `0xa0e74f...a730c5`; bsc `0xd55aba...09c8a0`; bsc `0xd6319a...f475cd`; bsc `0xe3d301...6bf250`; bsc `0xec9392...8382de`; bsc `0xf319c3...ad350c`; bsc `0xf74417...2b61c7` | ⚠️ Unaudited |
| LaunchField | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x15c67f...90fa5c`; bsc `0x1d98cb...4cd7fa`; bsc `0x43fcbe...ea6559`; bsc `0x589829...c2ae0d`; bsc `0x62d6ee...d4cb08`; bsc `0x73605b...28bb62`; bsc `0x8d2e3f...fdab12`; bsc `0x9b20a1...0889c4`; bsc `0xa56a3d...14069c`; bsc `0xdb9919...0ca680`; bsc `0xdd4090...97333d`; bsc `0xe394b0...c2682a`; bsc `0xe5e2d9...794e6a`; bsc `0xed0496...6d8ecb`; bsc `0xee3c30...aeee5d`; bsc `0xf5746b...78bd49` | ⚠️ Unaudited |
| LFIStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf56ed...737a78` | ⚠️ Unaudited |
| LFIStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x67f6da...f597da`; bsc `0x80b56f...fd238e`; bsc `0x92605e...94bd1a` | ⚠️ Unaudited |
| LFIVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2fd8ad...56fca8`; bsc `0x322b40...569994`; bsc `0x785987...036863` | ⚠️ Unaudited |
| LOADeFi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2282d1...e2f751`; bsc `0x7661c7...b8f640`; bsc `0xc924d9...760c44` | ⚠️ Unaudited |
| Moon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e90af...c0d9b3` | ⚠️ Unaudited |
| MoonRabbit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c4fc5...b50b1b` | ⚠️ Unaudited |
| MoonRabit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff795d...fa63a5` | ⚠️ Unaudited |
| ProxyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x357d92...db2bc4` | ⚠️ Unaudited |
| Refunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1326e3...7a9550`; bsc `0x4642fa...bfb217`; bsc `0x82a574...9bc0c6`; bsc `0xc5a993...d677b6`; bsc `0xc851da...43618f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x15ea85...37e4a6`; bsc `0x39c56b...8abde2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x018e97...d134c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9c90...2fc1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b00cf...0c7d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x587f50...9fd8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ef09f...7d666c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe112f5...e7394f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4aea0...91347f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6c797...81d63a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

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
