# Agentic Audit Brief: DeFi Franc

## Project Overview

- Project: DeFi Franc (`defi-franc`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.603Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $191,958.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 23 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (checkcontract, dfrancbase, basemath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | ethereum | n/a | [`0x77e034...e36a33`](./contracts/ethereum-1/0x77e034c8a1392d99a2c776a6c1593866fee36a33/) | ⚠️ Unaudited |
| AdminContract | unknown | ethereum | n/a | [`0x2748c5...42f254`](./contracts/ethereum-1/0x2748c55219dca1d9d3c3a57505e99bb04e42f254/) | ⚠️ Unaudited |
| AirdropMON | unknown | ethereum | n/a | [`0xff42ec...a3fc8f`](./contracts/ethereum-1/0xff42ec1c83e0f4939c45ab4f6a027b44e5a3fc8f/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x9eb2ce...1dfd74`](./contracts/ethereum-1/0x9eb2ce1be2dd6947e4f5aabe33106f48861dfd74/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0xa622c3...6f594b`](./contracts/ethereum-1/0xa622c3bdbfbe749b1984bc127bfb500e196f594b/) | ⚠️ Unaudited |
| CommunityIssuance | unknown | ethereum | n/a | [`0x0fa46e...1d3d86`](./contracts/ethereum-1/0x0fa46e8cbceff8468db2ec2fd77731d8a11d3d86/) | ⚠️ Unaudited |
| DCHFToken | unknown | ethereum | n/a | [`0x045da4...727a36`](./contracts/ethereum-1/0x045da4bfe02b320f4403674b3b7d121737727a36/) | ⚠️ Unaudited |
| DefaultPool | unknown | ethereum | n/a | [`0xc1f785...ac7ab5`](./contracts/ethereum-1/0xc1f785b74a01dd9fac0de6070bc583fe9eac7ab5/) | ⚠️ Unaudited |
| DfrancParameters | unknown | ethereum | n/a | [`0x6f9990...cacc42`](./contracts/ethereum-1/0x6f9990b242873d7396511f2630412a3fcecacc42/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x2a3abc...0a650f`](./contracts/ethereum-1/0x2a3abc893894167530f810097747ecd1710a650f/) | ⚠️ Unaudited |
| HintHelpers | unknown | ethereum | n/a | [`0x172443...3406c4`](./contracts/ethereum-1/0x17244338034bea1fa940779bc769ff01833406c4/) | ⚠️ Unaudited |
| LiqBootstrap | unknown | ethereum | n/a | [`0xf7db42...c55a06`](./contracts/ethereum-1/0xf7db4205032153a81bcb6ed0561c00e65ac55a06/) | ⚠️ Unaudited |
| LockedMON | unknown | ethereum | n/a | [`0x020b7d...43366f`](./contracts/ethereum-1/0x020b7d785d343c92f3be7d802545d031e943366f/) | ⚠️ Unaudited |
| MONStaking | unknown | ethereum | n/a | [`0x8bc370...e0c56f`](./contracts/ethereum-1/0x8bc3702c35d33e5df7cb0f06cb72a0c34ae0c56f/) | ⚠️ Unaudited |
| MONToken | unknown | ethereum | n/a | [`0x1ea48b...61fc17`](./contracts/ethereum-1/0x1ea48b9965bb5086f3b468e50ed93888a661fc17/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xd4ecc3...8facca`](./contracts/ethereum-1/0xd4ecc372e99dabdbc0fabe02d2515a24388facca/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x09ab3c...5ee9da`](./contracts/ethereum-1/0x09ab3c0ce6cb41c13343879a667a6bdad65ee9da/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | [`0x1dd694...f72286`](./contracts/ethereum-1/0x1dd69453a685c735f2ab43e2169b57e9edf72286/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x04556d...454c4b`](./contracts/ethereum-1/0x04556d845f12ff7d8ff04a37f40387dd1b454c4b/) | ⚠️ Unaudited |
| StabilityPoolManager | unknown | ethereum | n/a | [`0x202fbf...74ad21`](./contracts/ethereum-1/0x202fbff035188f9f0525e144c8b3f8249a74ad21/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0x998381...334f7f`](./contracts/ethereum-1/0x99838142189ade67c1951f9c57c3333281334f7f/) | ⚠️ Unaudited |
| TroveManagerHelpers | unknown | ethereum | n/a | [`0xaaacb8...61e518`](./contracts/ethereum-1/0xaaacb8c39bd5acbb0a236112df8d15411161e518/) | ⚠️ Unaudited |
| Vester | unknown | ethereum | n/a | [`0xc0747a...111611`](./contracts/ethereum-1/0xc0747a27c6fa20effba2937419647e976f111611/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/defi-franc](https://skynet.certik.com/projects/defi-franc) | CertiK | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [www.certik.com/projects/defi-franc](https://www.certik.com/projects/defi-franc) | CertiK | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [hackmd.io/Jsn0wBW7SOWFm-L34V4cMw](https://hackmd.io/Jsn0wBW7SOWFm-L34V4cMw) | Vladimir Pomogalov ("General IT") | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21379] skynet.certik.com/projects/defi-franc
- [21380] www.certik.com/projects/defi-franc
- [21381] hackmd.io/Jsn0wBW7SOWFm-L34V4cMw

Fork inheritance lineage and inherited audits are included when available.
