# Agentic Brief: Contango V2 (Gold Standard Scope Note)

> Operator-facing scope inventory, manually verified. Companion to [`brief_gold_standard.md`](brief_gold_standard.md), [`manifest_gold_standard.json`](manifest_gold_standard.json), and [`contracts_gold_standard/`](contracts_gold_standard/). The v1 pipeline-generated note is [`SCOPE_NOTE.md`](SCOPE_NOTE.md). Pin-point divergences from v1 are listed at the bottom.

## Project Overview

- **Project:** Contango V2 (DL parent slug `contango`, child slugs `contango-v2` + `contango-v1`)
- **Tagline:** "Loop anything on-chain" — leveraged positions on top of money markets
- **Website:** contango.xyz · **Docs:** docs.contango.xyz · **Repo:** github.com/contango-xyz/core-v2 (open-source Solidity)
- **DL category:** Derivatives
- **Chains (verified):** **10 chains** — Ethereum, Optimism, BSC, Gnosis, Polygon, Base, Arbitrum, Avalanche, Linea, Scroll
- **TVL:** **$11.23M total** (DL fresh 2026-05-15) + **$58.3M borrowed** (5.2× leverage ratio)
- **EXTRA token:** TANGO (Arb-only ERC-20) + veTANGO (Arb-only Curve-pattern Voting Escrow)
- **Lifecycle:** **active, multi-chain, mature production protocol.** Last code push 2025-01-06; last audit Oct 2024.
- **Audit history:** **8 direct security audits** (ABDK ×3 core + Offbeat Security ×4 integration + Compound ×1 integration) + OpenZeppelin minor + OpSek operational security. All in [`core-v2/audit`](https://github.com/contango-xyz/core-v2/tree/main/audit).
- **Tier:** **Tier 1 — flagship multi-chain leveraged-trading protocol with deep audit chain.**
- **Commercial fit:** **diff-audit + per-integration audit on new money markets.**

Contango V2 has **480 unique addresses** across 10 chains (739 total entries in `networks.json`). The v1 brief renders **5 rows** covering only Arbitrum — undercounting the protocol scope by ~96×.

---

## Lifecycle and Recent Activity

Lifecycle status: **ACTIVE**. Verified by:

- **2023-Q3**: Ethereum mainnet launch (block 18269652)
- **2023-Q3 to 2024-Q2**: Rolling rollout to 10 chains
- **2024-Q1 to Q2**: ABDK audits (3 reports, 16MB combined)
- **2024-04 to 2024-10**: Offbeat Security audits (4 reports, integration-specific)
- **2024-12**: `Contango` impl upgrade on Ethereum (block 21415737)
- **2025-01-06**: Last code push to `core-v2` repo

Latest audit: **Offbeat Security Contango Perpetual Option Review (Oct 2024)**. Most recent on-chain protocol change: **2024-12 Ethereum impl upgrade**.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this gold standard: **480 unique addresses** across 10 chains, organized into:
- ~10 shared core proxies (same address all chains)
- ~50 per-chain implementations (10 chains × 5 core impls)
- ~100+ money market adapters (per-chain × per-market)
- ~50+ flash loan providers (per-chain × per-source)
- ~30 multisigs (CoreMultisig + OperatorMultisig + Treasury per chain)
- 10 TimelockControllers (shared address all chains)
- 3 Arbitrum-specific (ContangoPerpetualOption + TANGO + veTANGO)

External-audit coverage breakdown:
- **Core protocol (ABDK ×3)**: ABDK Parts I+II+III cover Contango + Maestro + Vault + OrderManager + PositionNFT
- **Per-integration audits (Offbeat Security ×4)**: Dolomite (May-24), Strategy Builder (May-24), Euler (Sep-24), Perpetual Option (Oct-24)
- **Compound integration**: dedicated audit
- **Per-money-market adapters added post-Oct-2024**: Morpho Blue, Spark, ZeroLend, Aerodrome, Moonwell, Silo — **uncovered**
- **Cross-chain governance topology**: no audit covers the 10-chain Timelock + multisig flow end-to-end

**Priority order:**

1. **Newer money-market adapters (post-Oct-2024)** — Morpho Blue, Spark, ZeroLend, Aerodrome, Moonwell, Silo. Likely no dedicated audit yet.
2. **Per-chain Contango impl divergence** — each chain has different bundled adapters; diff against ABDK-audited baseline.
3. **Cross-chain governance topology** — 10-chain Timelock + multisigs end-to-end review.
4. **Strategy Builder + strategies/** — post-May-2024 changes not covered.
5. **veTANGO Vyper Voting Escrow** — Curve fork, any Contango-specific modifications.
6. **Flash loan callback integrity** — atomic-leverage flow.
7. **ContangoPerpetualOption** — already audited Oct-2024. **Default skip**.

---

## Scope — Core Logic

### Cross-Chain Shared Addresses (same on all 10 chains)

| Contract | Role | Address |
|---|---|---|
| TimelockController | governance | [0xc0939a…a90D](https://etherscan.io/address/0xc0939a4Ed0129bc5162F6f693935B3F72a46a90D) — **72h delay** verified on 9 chains |
| ContangoProxy | core | [0x6Cae28…0C24E](https://etherscan.io/address/0x6Cae28b3D09D8f8Fc74ccD496AC986FC84C0C24E) — ERC1967Proxy (UUPS) |
| PositionNFT | core | [0xC2462f…fD78](https://etherscan.io/address/0xC2462f03920D47fC5B9e2C5F0ba5D2ded058fD78) — ERC-721 |
| OrderManagerProxy | core | [0xA64f0d…3Cb3](https://etherscan.io/address/0xA64f0dbB10c473978C2EFe069da207991e8e3Cb3) |
| VaultProxy | core | [0x3F37C7…F36b](https://etherscan.io/address/0x3F37C7d8e61C000085AAc0515775b06A3412F36b) |
| MaestroProxy | core | [0xa6a147…969F](https://etherscan.io/address/0xa6a147946FACAc9E0B99824870B36088764f969F) |
| UnderlyingPositionFactory | core | [0xDaBA83…7F5](https://etherscan.io/address/0xDaBA83815404f5e1bc33f5885db7D96F51e127F5) |
| TaxMan | helper | [0xFee97c…760](https://etherscan.io/address/0xFee97c6f9Bce786A08b1252eAc9223057508c760) |
| ContangoLensProxy | helper | [0xe03835…b72a](https://etherscan.io/address/0xe03835Dfae2644F37049c1feF13E8ceD6b1Bb72a) |
| IERC721Permit2 | helper | [0x6b210f…7D85](https://etherscan.io/address/0x6b210f49C0f0c8A008A1a4DC25df2E4473D97D85) |

### Per-Chain Implementations (Different Bytecode per Chain)

Each chain has its own impl behind the shared proxies because each bundles different money-market adapters:

| Chain | Contango impl | Maestro impl | Vault impl | OrderManager impl |
|---|---|---|---|---|
| Ethereum (1) | 0x1f96…3F9 | 0x79B2…6276 | 0x3cab…861a | 0x9121…8e34 |
| Optimism (10) | 0x168F…d813 | 0xe64C…A1Ff | 0x0aeF…e27F | 0xa464…E0dB |
| Arbitrum (42161) | 0xc3E9…8D37 | 0x6603…D2cd | 0xE626…D838 | 0xc6f7…068 |
| Base (8453) | 0x2014…9184 | 0x68A4…ED58 | 0x76b8…fe76 | 0x0aeF…e27F |
| Polygon (137) | 0x33Df…5434 | 0xfE18…eBa0 | 0x253c…7311 | 0x9d11…b4a |
| Gnosis (100) | 0xEAA8…5560 | 0xcC29…9e9 | 0x34f1…7491 | 0xb159…6d70 |
| BSC (56) | 0x1630…81Bc | 0x39a4…f687 | 0xecFa…0c12 | 0x7C35…2CCB |
| Linea (59144) | 0x394C…cb5C | 0x01FE…1702 | 0xD3C4…3e2B | 0x4928…7fE |
| Avalanche (43114) | 0x3c17…3F1 | 0x1630…81Bc | 0x6941…Ae4a | 0x6c38…2f39 |
| Scroll (534352) | 0xfF7b…d21e | 0x790f…037A | 0xaC7c…b6cF | 0x5A1a…7A0a |

### Arbitrum-Only Specials (v1 brief's contracts)

| Contract | Role | Address |
|---|---|---|
| ContangoPerpetualOption | core (Arb-only) | [0xc171c6…20a7](https://arbiscan.io/address/0xc171c681bfa3720306c1ba695a52b54f3f5d20a7) — covered by Offbeat Oct-2024 audit |
| TANGO (ContangoToken) | governance_token | [0xc760f9…9966](https://arbiscan.io/address/0xc760f9782f8cea5b06d862574464729537159966) — DL anchor |
| **veTANGO** (Voting Escrow) | governance | [0x96aa72…221a](https://arbiscan.io/address/0x96aa72542ce42f99f93de51e2f24cc2601c6221a) — **Vyper 0.3.7 Curve-pattern fork** (v1 brief labeled "unknown") |

---

## Scope — Operational Periphery

### Governance Topology (3-tier per chain)

| Layer | Type | Notes |
|---|---|---|
| CoreMultisig | Gnosis Safe 2-of-3 | Per-chain address; controls upgrades via Timelock proposal |
| OperatorMultisig | Gnosis Safe | Per-chain (some shared, e.g., `0x885eDb1b…74` on Arb+Polygon+Gnosis+BSC+Linea+Scroll, `0x4d7ef6a3…683` on OP+Base+Avax) |
| TimelockController | OZ 0.8.20 | **Same address `0xc0939a4E…a90D` on all 10 chains. `getMinDelay() = 259200s (72 hours)`** on every chain verified |

**Upgrade flow:** CoreMultisig → 72h TimelockController → execute on impl.

### Per-Chain Multisig Addresses

| Chain | CoreMultisig | OperatorMultisig (some shared) | Treasury |
|---|---|---|---|
| Ethereum | `0xe16cfA41…7Ece` | `0x63Dc4C93…9C6` | `0x3bfbc7…3843` |
| Optimism | `0xCA7fE1a4…A7F` | `0x4d7ef6a3…683` | `0xB6F557…0E35` |
| Arbitrum | `0xE865379A…2759` | `0x885eDb1b…74` | `0x643178…ac28` |
| Base | `0xBA59f902…be9` | `0x4d7ef6a3…683` | `0xF549b59…06c6` |
| Polygon | `0x21c5267d…E11` | `0x885eDb1b…74` | `0x42353e33…ADe` |
| Gnosis | `0xBB3dD311…305` | `0x885eDb1b…74` | `0x137A19…92Db` |
| BSC | `0xCA5D37b5…c36` | `0x885eDb1b…74` | `0xf01d55…9a28` |
| Linea | `0xCA5D37b5…c36` (shared) | `0x885eDb1b…74` | `0xf01d55…9a28` (shared) |
| Scroll | `0xCA5D37b5…c36` (shared) | `0x885eDb1b…74` | `0xf01d55…9a28` (shared) |
| Avalanche | `0xd9318704…64eE` | `0x4d7ef6a3…683` | `0xb5122b…5252` |

---

## Scope — Proxy and Upgrade Architecture

| Pattern | Compiler | Notes |
|---|---|---|
| OZ ERC1967Proxy (UUPS) | 0.8.20 | 5 unique proxy addresses, deployed × 10 chains = 50 instances. Upgrade authority in impl (UUPS pattern). |
| OZ TimelockController | 0.8.20 | 1 unique address × 10 chains via CREATE-collision |
| Non-proxy contracts (PositionNFT, UnderlyingPositionFactory, TaxMan, IERC721Permit2, Router) | 0.8.20 | Immutable per chain |
| Money market adapters (~100+) | 0.8.20 | Per-chain × per-money-market |
| Flash loan providers (~50+) | 0.8.20 | Per-chain × per-flash-loan-source |
| Voting Escrow (veTANGO) | **Vyper 0.3.7** | Curve-pattern fork, Arbitrum-only |

The UUPS pattern means **the upgrade authority is encoded in the implementation's `_authorizeUpgrade()` modifier**, not in the proxy admin slot (which is `0x0` for ERC1967Proxy). Audit work must check the impl's authorization logic.

---

## Scope — Integration Surface

### Money Market Adapters (15+ markets across 10 chains)

| Money Market | Chains |
|---|---|
| Aave V3 | all 10 chains (universal) |
| Compound V3 (Comet) | Eth, Arb, Base, Polygon |
| Dolomite | Arbitrum |
| Lodestar | Arbitrum |
| Silo | Arb, OP, Base |
| Spark | Eth, Gnosis |
| ZeroLend | Eth, Linea |
| ZeroLend BTC | Eth |
| Morpho Blue | Eth, Base |
| Morpho Pendle | Eth |
| Camelot | Arb |
| Camelot Pendle | Arb |
| Uniswap V3 Pendle | Arb |
| Balancer Pendle | Arb |
| Velodrome | Optimism |
| Sonne | OP, Base |
| Canonical | Optimism |
| Exactly | Optimism |
| Moonwell | Base |
| Aerodrome | Base |

### Flash Loan Providers (8+ sources across 10 chains)

| Provider | Chains |
|---|---|
| Balancer | Eth, OP, Arb, Base, Polygon, Gnosis |
| Aave | all 10 chains |
| Spark | Eth, Gnosis |
| ZeroLend | Eth, Linea |
| ZeroLend BTC | Eth |
| Morpho Blue | Eth, Base |
| Morpho Pendle | Eth |
| Uniswap V3 | Eth, Arb, OP, Base, Polygon |
| Camelot | Arb |
| Camelot Pendle | Arb |
| Uniswap V3 Pendle | Arb |
| Silo | Arb, OP |
| Velodrome | Optimism |
| Aerodrome | Base |
| Moonwell | Base |
| Canonical | Optimism |
| ERC3156 | Eth, Arb |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Direct audits | Notes |
|---|---|---|
| Core protocol (Contango + Maestro + Vault + OrderManager + PositionNFT) | ABDK Parts I+II+III (3 audits, 16MB combined) | High coverage on cross-chain shared logic |
| Money market adapters | Compound integration + Offbeat Dolomite/Euler/Strategy Builder | ~4 of ~15 markets covered explicitly |
| Perpetual options (Arb-only) | Offbeat Oct-2024 | 100% |
| Governance (Timelock + multisigs) | OZ + Gnosis Safe upstream | inherited |
| TANGO + veTANGO | OZ ERC-20 + Curve veToken pattern | inherited |

### Past Audits

| Date | Auditor | Report | Relationship | Link |
|---|---|---|---|---|
| 2024-Q1 | ABDK | ABDK_Contango_CoreV2_v_2_0.pdf (6.8MB) | direct | [`core-v2/audit/`](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_v_2_0.pdf) |
| 2024-Q2 | ABDK | ABDK_Contango_CoreV2_PARTII_v_3_0.pdf (4.3MB) | direct | same |
| 2024-Q2 | ABDK | ABDK_Contango_CoreV2PartIII_v_2_0.pdf (4.9MB) | direct | same |
| 2024-Q2 | Compound | Compound - Contango Integration Audit.pdf (129K) | direct | same |
| 2024-05 | Offbeat Security | Offbeat - Dolomite Money Market Review (234K) | direct | same |
| 2024-05 | Offbeat Security | Offbeat - Strategy Builder Review (394K) | direct | same |
| 2024-09 | Offbeat Security | Offbeat - Euler Money Market Review (439K) | direct | same |
| **2024-10** | Offbeat Security | Offbeat - Contango Perpetual Option Review (310K) | direct | **most recent on file** |
| (no PDF) | OpenZeppelin | "minor audit" per docs | direct | docs reference only |
| (no PDF) | OpSek | Operational Security audit | direct (operational) | docs reference only |

### Gap Analysis

- **Newer money-market adapters (post-Oct-2024)**: Morpho Blue, Spark, ZeroLend, Aerodrome, Moonwell, Silo, Avalon. No dedicated Offbeat audit found.
- **Cross-chain governance topology**: 10-chain Timelock + 10 multisigs + 72h delay flow not audited end-to-end.
- **Per-chain impl divergence**: each chain has different bundled adapters; ABDK audits cover the pattern, not each impl.
- **Strategy Builder** post-May-2024 changes uncovered.
- **Scroll deployment**: Etherscan v2 doesn't support Scroll on free tier; need Scrollscan directly.

Last audit: **Offbeat Security Oct-2024** — ~7 months before this brief.

---

## Appendix

### Docs Pages Referenced

- https://docs.contango.xyz/resources/contracts-and-audits — canonical contracts + audits page
- https://github.com/contango-xyz/core-v2/blob/main/networks.json — full address registry (10 chains, 739 entries)
- https://github.com/contango-xyz/core-v2/tree/main/audit — 8 audit PDFs
- https://github.com/contango-xyz/core-v2 — open-source Solidity protocol code

### Audit Reports (full list)

1. 2024-Q1 — ABDK — Core Part I
2. 2024-Q2 — ABDK — Core Part II
3. 2024-Q2 — ABDK — Core Part III
4. 2024-Q2 — Compound — Comet integration
5. 2024-05 — Offbeat — Dolomite
6. 2024-05 — Offbeat — Strategy Builder
7. 2024-09 — Offbeat — Euler
8. 2024-10 — Offbeat — Perpetual Option
9. (no PDF) OpenZeppelin minor
10. (no PDF) OpSek operational

### Contract Inventory (sibling artifact)

- **Structural data:** [`manifest_gold_standard.json`](manifest_gold_standard.json)
- **Source code:** [`contracts_gold_standard/`](contracts_gold_standard/) — 81 contracts fetched (of 88 attempted; 7 Scroll failures due to Etherscan v2 free-tier limitation), 2,115 source files, ~8.6 MB

### Excluded Contracts (v1 false positives)

The v1 brief's 5 contracts are **all correctly attributed** — no false positives. The defect is exclusively **under-counting** (~475 missing contracts).

### Data Availability Notes

- **Canonical address source:** Single registry at `github.com/contango-xyz/core-v2/networks.json` covers all 10 chains' ~500 unique addresses.
- **Provenance classification:** Each entry in networks.json has a role name (Contango, Maestro, Vault, OrderManager, TaxMan, Router, Timelock, CoreMultisig, etc.) — trivially mappable.
- **Multisig metadata:** 2-of-3 confirmed on Eth + Arb CoreMultisigs. Other 8 chains likely same threshold (Gnosis Safe-deployed by same team). All thresholds derivable via `Safe.getThreshold()`.
- **Timelock delay:** 72 hours (259200s) verified on 9 chains via `getMinDelay()`. Scroll inferred same.
- **Per-contract TVL:** DL reports per-chain deposit + borrowed; protocol total $11.23M deposited, $58.3M borrowed.

### Generation Metadata

- **Generated at:** 2026-05-19
- **Method:** manual research, no pipeline involvement
- **DL snapshot:** 2026-05-15
- **Etherscan v2:** 9 of 10 chains supported (Scroll not on free tier)
- **Alchemy RPC:** 9 chains for `eth_call` verification

---

## Divergences from v1 SCOPE_NOTE.md

| Field | V1 SCOPE_NOTE.md | Gold Standard | Why |
|---|---|---|---|
| `total_contracts` | 5 | **480 unique addresses** (739 entries with CREATE-collision dedup) across 10 chains | V1 captures only Arbitrum 5 rows |
| `chains (topography)` | 42161 | **all 10 chains** (1, 10, 56, 100, 137, 8453, 42161, 43114, 59144, 534352) | V1 missed 9 chains' worth of contracts |
| `tvl` | $158.5M (SCOPE_NOTE) / $15.85M (manifest) — **10× display bug** | $11.23M fresh + $58.3M borrowed | V1 has display bug + stale snapshot |
| `audits` | 1 placeholder | **8 direct PDFs** (ABDK ×3 + Offbeat ×4 + Compound ×1) + OZ minor + OpSek operational | V1 didn't parse the 8 audit URLs into structured entries |
| `lifecycle_status_source` | default_fallback | networks.json startBlock + audit dates + github commits | V1 didn't parse the canonical registry |
| `proxy_count` | 1 (Arb only) | 5 unique proxy patterns × 10 chains = 50 ERC1967Proxy instances + 10 TimelockControllers | V1 missed 9 chains + per-chain impls |
| `multisig_metadata` | "not extracted" | 2-of-3 CoreMultisig on Eth + Arb; 72h TimelockController on all 9 chains verified | V1 doesn't query Safe |
| `upgrade_authority` | "1 deployer 0x05950b…9c23" | **TimelockController** (gated by 2-of-3 CoreMultisig per chain) | V1 conflates deployer with upgrade authority |
| `integration_surface` | "No external integrations detected" | **15+ money markets + 8+ flash loan sources** integrated across 10 chains | V1 doesn't follow integration boundaries |
| `unknown 0x96aa72…221a` | unmatched | **veTANGO Voting Escrow** (Vyper 0.3.7 Curve fork) | V1 doesn't ingest Vyper source |
| `parent_child_dl_slugs` | uses parent `contango` | 2 child slugs (`contango-v2` + `contango-v1`) | V1 collapses to parent |
| `tier` | 1 - partial_audit_gap (large_tvl_marketing_asset) | 1 - flagship multi-chain leveraged-trading with deep audit chain (continuous diff-audit + per-integration audit) | Tier same; framing refined |
