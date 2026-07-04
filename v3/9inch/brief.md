# Agentic Audit Brief: 9inch

## Project Overview

- Project: 9inch (`9inch`)
- Website: [https://www.9inch.io/](https://www.9inch.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:24.134Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $758,684.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 18 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 7 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BBC | unknown | ethereum | n/a | [`0x015628...a32436`](./contracts/ethereum-1/0x015628ce9150db1bce2fbb717a09e846f8a32436/) | ⚠️ Unaudited |
| BulkTransfer | unknown | ethereum | n/a | [`0xea2a60...91b55c`](./contracts/ethereum-1/0xea2a600269f18e2de6d4ba1cc81080729091b55c/) | ⚠️ Unaudited |
| CakeFlexiblePool | unknown | ethereum | n/a | [`0xdf598b...e4432f`](./contracts/ethereum-1/0xdf598bfe7b8eb5abd217871317e31a48d9e4432f/) | ⚠️ Unaudited |
| CakePool | unknown | ethereum | n/a | [`0x91c58c...69c24e`](./contracts/ethereum-1/0x91c58cf141abbeb6ab8d83976103bca70b69c24e/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | ethereum | n/a | [`0x3fefd0...50561f`](./contracts/ethereum-1/0x3fefd06828689252a69207718985b9a78350561f/) | ⚠️ Unaudited |
| NineInch | unknown | ethereum | n/a | [`0xfd8b9b...4937a2`](./contracts/ethereum-1/0xfd8b9ba4845fb38c779317ec134b298c064937a2/) | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeable | unknown | ethereum | n/a | [`0xfd4443...ca7ced`](./contracts/ethereum-1/0xfd444341198e5381d72eb212600ffce299ca7ced/) | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeableV2 | unknown | ethereum | n/a | [`0x88eed3...647197`](./contracts/ethereum-1/0x88eed3bbca38b020aaed5dcc563f26d708647197/) | ⚠️ Unaudited |
| NineInchFactory | unknown | ethereum | n/a | [`0xcbae5c...dd56d8`](./contracts/ethereum-1/0xcbae5c3f8259181eb7e2309bc4c72fdf02dd56d8/) | ⚠️ Unaudited |
| NineInchRouter | unknown | ethereum | n/a | [`0xa79882...8264eb`](./contracts/ethereum-1/0xa79882a5bcd455c6e582dad43f3f3f2c9c8264eb/) | ⚠️ Unaudited |
| NineInchSpotLimit | unknown | ethereum | n/a | [`0x545792...02ab21`](./contracts/ethereum-1/0x54579290a535d8731598f74eabe9c8020902ab21/) | ⚠️ Unaudited |
| NineInchSpotLimitV2 | unknown | ethereum | n/a | [`0xc5b17d...6aaa8e`](./contracts/ethereum-1/0xc5b17ddacf4dc0bdbebe3043b95bf8fd8e6aaa8e/) | ⚠️ Unaudited |
| PoorPleb | unknown | ethereum | n/a | [`0x9565c2...7bcfd0`](./contracts/ethereum-1/0x9565c2036963697786705120fc59310f747bcfd0/) | ⚠️ Unaudited |
| Pulsedoge | unknown | ethereum | n/a | [`0x52ada2...3919a8`](./contracts/ethereum-1/0x52ada28f70bc8ebe5dd4381120d3cd76863919a8/) | ⚠️ Unaudited |
| TokenFlexiblePool | unknown | ethereum | n/a | [`0x0022e0...7538f2`](./contracts/ethereum-1/0x0022e0c25bba451b08942367b98e4b4a617538f2/) | ⚠️ Unaudited |
| TokenPool | unknown | ethereum | n/a | [`0x664e78...251059`](./contracts/ethereum-1/0x664e78c17d64234440a26ca72a6946a270251059/) | ⚠️ Unaudited |
| VotePower | unknown | ethereum | n/a | [`0x28bda9...410099`](./contracts/ethereum-1/0x28bda90b016b66df1991cd99bc18d11807410099/) | ⚠️ Unaudited |
| WhereDidTheETHGo | unknown | ethereum | n/a | [`0xde0220...3a6be4`](./contracts/ethereum-1/0xde0220b69ce3e855a0124433a8e8d093f53a6be4/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://747412000-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fi561wEeRIxQAdQvqesSN%2Fuploads%2FGFbpzbdkGxdzisBY66rU%2FDedaub%209inch%20-%20Sep%20'23.pdf) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Security Audits]()](https://9inch.gitbook.io/9inch-gitbook/security-audits.md) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19373] Rendered PDF capture
- [19374] - [Security Audits]()

Fork inheritance lineage and inherited audits are included when available.
