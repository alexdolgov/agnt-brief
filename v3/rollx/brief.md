# Agentic Audit Brief: RollX

## Project Overview

- Project: RollX (`rollx`)
- Website: [https://rollx.trade/](https://rollx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:48.108Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: base
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $509,605.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 23 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (onlyself). Dominant framework: openzeppelin.

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
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| AccessControlEnumerableFacet | unknown | base | n/a | [`0x03bc05...3a967d`](./contracts/base-8453/0x03bc054493a9042eebc037e05f3ce2baf53a967d/) | ⚠️ Unaudited |
| Bfbtc | unknown | base | n/a | [`0x128eb2...d55f1b`](./contracts/base-8453/0x128eb2baca6ac5416bed268d41c202fc41d55f1b/) | ⚠️ Unaudited |
| BfbtcOracle | unknown | base | n/a | [`0x3f8c84...ab5f5b`](./contracts/base-8453/0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b/) | ⚠️ Unaudited |
| BrokerManagerFacet | unknown | base | n/a | [`0x1414bc...0f3c97`](./contracts/base-8453/0x1414bc9dc37f581e20c1820c3fca1755ac0f3c97/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | base | n/a | [`0x47ea06...395560`](./contracts/base-8453/0x47ea06e0a70bd1a454bc876ebdedffea82395560/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | base | n/a | [`0x7cd88b...b577e8`](./contracts/base-8453/0x7cd88b475d40b6b789a3995a457536ab7cb577e8/) | ⚠️ Unaudited |
| FeeManagerFacet | unknown | base | n/a | [`0x2abde7...a43c5e`](./contracts/base-8453/0x2abde7a6a499d0732c4d1267d22de08e27a43c5e/) | ⚠️ Unaudited |
| LimitOrderFacet | unknown | base | n/a | [`0x282f0f...b4210a`](./contracts/base-8453/0x282f0ffa62f928398b162ac36d5d5949c6b4210a/) | ⚠️ Unaudited |
| LpManagerFacet | unknown | base | n/a | [`0x69396b...618ccc`](./contracts/base-8453/0x69396bcefb72523f9d35a6629f152cd64c618ccc/) | ⚠️ Unaudited |
| MyAdapter | unknown | base | n/a | [`0x776b20...fe21ae`](./contracts/base-8453/0x776b20e689497bb524dfbba01d85f878d0fe21ae/) | ⚠️ Unaudited |
| PairsManagerFacet | unknown | base | n/a | [`0xa9e0e9...1e74b8`](./contracts/base-8453/0xa9e0e94266e2d0bd16086d8a80bf589f9c1e74b8/) | ⚠️ Unaudited |
| PausableFacet | unknown | base | n/a | [`0x3bc346...fe39c4`](./contracts/base-8453/0x3bc346cf1d225728d1ee91247c67570431fe39c4/) | ⚠️ Unaudited |
| PriceFacadeFacet | unknown | base | n/a | [`0x23e6a4...20d533`](./contracts/base-8453/0x23e6a467dadd513c01298b4d02e9455d4220d533/) | ⚠️ Unaudited |
| RLP | unknown | base | n/a | [`0x59cca8...f68988`](./contracts/base-8453/0x59cca8cebf8b611618d24066178e33672bf68988/) | ⚠️ Unaudited |
| SlippageManagerFacet | unknown | base | n/a | [`0xa46287...f1af8c`](./contracts/base-8453/0xa4628799052b39be1b6a77c842aa66e5b3f1af8c/) | ⚠️ Unaudited |
| TradingCheckerFacet | unknown | base | n/a | [`0x05533e...648311`](./contracts/base-8453/0x05533ecb5f199230e24aa04e0aa30f87db648311/) | ⚠️ Unaudited |
| TradingCloseFacet | unknown | base | n/a | [`0x0a86ba...529131`](./contracts/base-8453/0x0a86ba95b7dd0c8c5d16a8d2cbffe6e77d529131/) | ⚠️ Unaudited |
| TradingConfigFacet | unknown | base | n/a | [`0x12ef30...5203fc`](./contracts/base-8453/0x12ef30b6e3f055bb92ff54d5a856166fa85203fc/) | ⚠️ Unaudited |
| TradingCoreFacet | unknown | base | n/a | [`0x5c9936...3acb5e`](./contracts/base-8453/0x5c9936a7dcefccb8af7de519cd3a6d199d3acb5e/) | ⚠️ Unaudited |
| TradingOpenFacet | unknown | base | n/a | [`0x8951ed...24d6ce`](./contracts/base-8453/0x8951edcaac946bc7b31f0545f53200d5a824d6ce/) | ⚠️ Unaudited |
| TradingPortalFacet | unknown | base | n/a | [`0x20c2e9...ed9f67`](./contracts/base-8453/0x20c2e940e1edc66e80cd61f5c259391ba6ed9f67/) | ⚠️ Unaudited |
| TradingReaderFacet | unknown | base | n/a | [`0xb29300...ee6b33`](./contracts/base-8453/0xb293002489dfbd38d92b041c612b7f38d2ee6b33/) | ⚠️ Unaudited |
| VaultFacet | unknown | base | n/a | [`0x8ca122...7741c5`](./contracts/base-8453/0x8ca1229b5b9d15edf6fb2fab8cc83191587741c5/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/zh-CN/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Certik](https://skynet.certik.com/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18096] DL audit link
- [18097] Certik

Fork inheritance lineage and inherited audits are included when available.
