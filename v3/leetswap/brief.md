# Agentic Audit Brief: LeetSwap

## Project Overview

- Project: LeetSwap (`leetswap`)
- Website: [https://leetswap.finance](https://leetswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.400Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, linea, opbnb
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $118,776.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (8 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurningBrian | unknown | base | n/a | [`0x7cc740...565325`](./contracts/base-8453/0x7cc74075d60c059468e267bef5d454d032565325/) | ⚠️ Unaudited |
| LeetChefV1 | unknown | base | n/a | [`0x3a5e79...a3628c`](./contracts/base-8453/0x3a5e791405526efadf1432bac8d114b77da3628c/) | ⚠️ Unaudited |
| LeetSwapV2Factory | unknown | base | n/a | [`0x169c06...75bb19`](./contracts/base-8453/0x169c06b4cfb09bfd73a81e6f2bb1eb514d75bb19/) | ⚠️ Unaudited |
| LeetSwapV2Router01 | unknown | linea | n/a | [`0x169c06...75bb19`](./contracts/linea-59144/0x169c06b4cfb09bfd73a81e6f2bb1eb514d75bb19/) | ⚠️ Unaudited |
| LeetToken | unknown | base | n/a | [`0x0963a1...6a1c4b`](./contracts/base-8453/0x0963a1abaf36ca88c21032b82e479353126a1c4b/) | ⚠️ Unaudited |
| LineaDoge | unknown | linea | n/a | [`0x3278e5...942f87`](./contracts/linea-59144/0x3278e54da0242a941e94b5eba2f2f2b200942f87/) | ⚠️ Unaudited |
| Multicall3 | unknown | base | n/a | [`0x10b7de...bbfac9`](./contracts/base-8453/0x10b7de073b514f54e27b71cd267cce4379bbfac9/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | opbnb | n/a | [`0xa2899c...6cf59c`](./contracts/opbnb-204/0xa2899c776baaf9925d432f83c950d5054a6cf59c/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | base | n/a | [`0xd3ea3b...a5d737`](./contracts/base-8453/0xd3ea3bc1f5a3f881bd6ce9761cba5a0833a5d737/) | ⚠️ Unaudited |
| VestingWallet | unknown | base | n/a | [`0x211638...898bfc`](./contracts/base-8453/0x211638ab040cf78ada5331b233745e4fdc898bfc/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
