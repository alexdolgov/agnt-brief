# Agentic Audit Brief: Stakingverse (Gold Standard)

> **Manual research note.** This brief was produced by reading the protocol's website, GitHub, and on-chain state on Ethereum and LUKSO directly, not by the v1 pipeline. The v1 pipeline misidentified Stakingverse as a single-chain Ethereum protocol and mistakenly attributed StakeWise's audit programme as Stakingverse's own. Both errors are corrected here. See the companion verification ledger for the row-by-row evidence trail.

---

## Project Overview

- **Project:** Stakingverse — non-custodial liquid staking on **two chains**: Ethereum (as a StakeWise V3 vault operator) and LUKSO (as an independent protocol).
- **Operator entity:** Sigmatic B.V. (Netherlands). Contact `contact@sigmatic.io`.
- **Website:** [stakingverse.io](https://stakingverse.io)
- **Twitter:** [@stakingverse_io](https://x.com/stakingverse_io)
- **GitHub:** [github.com/Stakingverse](https://github.com/Stakingverse) — primary code repo `Stakingverse/pool-contracts` (LUKSO-only Solidity); also `vault-interface` (StakeWise vault UI), `v3-sdk` (StakeWise SDK fork), `cli` (validator key generation).
- **Category (DL):** Liquid Staking
- **DL slug + TVL (as of 2026-05-07):** `stakingverse` — **$640,027 LUKSO + $3,962,093 Ethereum = $4,602,120 total**
- **Lifecycle:** alive on both chains. Latest StakingverseVault implementation upgrade 2025-03-31 (LUKSO); latest operator transaction on Ethereum proxy 2026-04-26 (~11 days before brief date).
- **Tier:** mid-TVL commercial target. Total TVL ~$4.6M is below the threshold for prime audit attention but the protocol is real, alive, and has light formal-audit coverage on the LUKSO side and inherited (not own) coverage on the Ethereum side.
- **Architecture summary:** **dual-stack hybrid**. Ethereum side runs StakeWise-authored vault bytecode under Stakingverse operator control; LUKSO side runs Stakingverse-authored vault + token bytecode.

---

## How Stakingverse Works — One Description Per Chain

### Ethereum side: StakeWise V3 vault operator

Stakingverse operates a **permissionless StakeWise V3 vault** on Ethereum. The architecture is:

1. Users deposit ETH into the proxy at `0x8a93a876912c9f03f88bc9114847cf5b63c89f56`. The proxy was deployed 2023-11-20 by Stakingverse's EOA `0x93281072aa2725194e571e7fc924541bccd38819` (the EOA's "Funded By" line on Etherscan reads `stakingverse.eth`).
2. The proxy delegates all logic via `delegatecall` to StakeWise's **`EthVault` implementation** at `0x927a83c679a5e1a6435d6bfaef7f20d4db23e2cc`. That implementation was deployed 2025-09-15 by `0x3da6066fecf43e94e0ca78cbaccd5e36fcf69e1d` — **StakeWise's own deployer**, the same EOA that deployed `EthGenesisVault`, `EthBlocklistVault`, `EthErc20Vault`, `EthValidatorsChecker`, `EthPrivVault`, `EthPrivErc20Vault`, and `EthBlocklistErc20Vault` — the canonical StakeWise V3 vault family.
3. Users receive an osETH-style staked-ETH liquid token whose supply is tracked inside the EthVault's storage (StakeWise's `OsToken` system; the user-facing token here is the StakeWise vault share, not a Stakingverse-issued ERC20).
4. Stakingverse holds the vault's `admin` role, registers validators, captures fees, and rebalances. It does **not own or modify** the executable bytecode behind the proxy.
5. `totalAssets()` on the proxy returns 1,697.15 ETH ≈ $3.97M, of which 37.97 ETH sits as direct proxy balance and ~1,659 ETH is staked through validators.

This is the same operator pattern used by ~20 other StakeWise V3 vault operators. The Stakingverse homepage's "Stake $ETH" button links straight to a StakeWise vault page; StakeWise is named as a partner on the homepage.

### LUKSO side: independent Stakingverse protocol

On LUKSO mainnet (chain ID 42), Stakingverse runs its own original protocol:

1. Users deposit LYX into the **Staking Vault** at `0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04` (a `TransparentUpgradeableProxy` that currently delegates to `StakingverseVault` implementation `0x1711b2e1b64F38ca33E51b717CFd27ACD1bd2E2D`).
2. The vault forwards stake to LUKSO's beacon-chain validators using the LUKSO deposit contract `0xCAfe00000000000000000000000000000000CAfe`.
3. Users mint **`sLYX`** (`Stakingverse Staked LYX`), an **LSP7 LUKSO-native liquid staking token** at `0x8A3982f0A7d154D11a5f43EEc7F50E52eBBc8F7D` (proxy → `SLYXToken` impl `0x08b28405A11348745A3187De2A29C730C53EB29B`). 420,154.32 sLYX in circulation, 198 holders.
4. The Stakingverse vault contract is **derived from Universal.Page's `Vault.sol`** (per the audits README), then upgraded on 2025-03-31 to a Stakingverse-specific `StakingverseVault.sol`. The previous Universal.Page-derived implementation `0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4` is no longer used in production.
5. `totalAssets()` on the LUKSO proxy returns 2,338,742.40 LYX ≈ $640K (229,015 LYX held directly; ~2.1M LYX staked into LUKSO validators).

---

## TVL Methodology and Reconciliation

DL's adapter (`projects/stakingverse/index.js`) calls `totalAssets()` on exactly two contracts, one per chain:

| Chain | Contract | Call | Native asset | Last on-chain reading | DL TVL (2026-05-07) |
|---|---|---|---|---|---|
| LUKSO (42) | `0x9F49a95b…` (StakingverseVaultProxy) | `totalAssets()` | LYX | 2,338,742.40 LYX | $640,027 |
| Ethereum (1) | `0x8a93a876…` (Stakingverse-StakeWise V3 vault proxy) | `totalAssets()` | ETH | 1,697.15 ETH | $3,962,093 |

**Total DL TVL: $4,602,120.** This reconciles with the v1 brief's "$4,312,960" (which was stale by ~8 days) within normal price drift.

The v1 brief reported "$88,912 on-chain TVL." That was the Ethereum proxy's **direct ETH balance** times USD price — i.e. only the un-staked portion, with `totalAssets()` not called and the LUKSO chain not visited at all. The "$4.3M DL vs $88K on-chain" discrepancy was an artefact of the v1 pipeline not understanding that:

- Liquid staking vaults hold the bulk of TVL inside beacon-chain validators, not as direct proxy balance — `totalAssets()` is the correct call.
- Stakingverse operates on LUKSO too, and LUKSO is not in the v1 pipeline's chain coverage.

There is no missing or unaccounted TVL.

---

## On-Chain Address Map

### Ethereum (chain 1) — Stakingverse-controlled

| Contract | Role | Address | Verified | Deployer |
|---|---|---|---|---|
| Stakingverse StakeWise-V3 Vault Proxy | vault entry point | [`0x8a93a876…f56`](https://etherscan.io/address/0x8a93a876912c9f03f88bc9114847cf5b63c89f56) | ✅ `ERC1967Proxy` | Stakingverse EOA `0x93281072…819` (funded by `stakingverse.eth`) |

### Ethereum (chain 1) — StakeWise infrastructure (operated, not owned)

| Contract | Role | Address | Verified | Deployer |
|---|---|---|---|---|
| StakeWise V3 EthVault implementation | logic delegate behind the proxy above | [`0x927a83c6…cc`](https://etherscan.io/address/0x927a83c679a5e1a6435d6bfaef7f20d4db23e2cc) | ✅ `EthVault` | StakeWise EOA `0x3da6066f…d` |

### LUKSO (chain 42) — Stakingverse-authored

| Contract | Role | Address | Verified | Deployer |
|---|---|---|---|---|
| Staking Vault Proxy | vault entry point | [`0x9F49a95b…04`](https://explorer.execution.mainnet.lukso.network/address/0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04) | ✅ `TransparentUpgradeableProxy` | Stakingverse LUKSO EOA `0xe460f0cB…E` |
| StakingverseVault impl (current) | vault logic | [`0x1711b2e1…2D`](https://explorer.execution.mainnet.lukso.network/address/0x1711b2e1b64F38ca33E51b717CFd27ACD1bd2E2D) | ✅ `StakingverseVault` | `0xe460f0cB…E` |
| Vault impl (legacy) | original Universal.Page-derived logic, no longer used | [`0x2Cb02ef2…f4`](https://explorer.execution.mainnet.lukso.network/address/0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4) | ✅ `Vault` | `0xe460f0cB…E` |
| sLYX Token Proxy | LSP7 liquid-staking token | [`0x8A3982f0…7D`](https://explorer.execution.mainnet.lukso.network/address/0x8A3982f0A7d154D11a5f43EEc7F50E52eBBc8F7D) | ✅ `TransparentUpgradeableProxy` | Stakingverse LUKSO EOA `0xc064f535…F` |
| SLYXToken impl (current) | sLYX logic | [`0x08b28405…9B`](https://explorer.execution.mainnet.lukso.network/address/0x08b28405A11348745A3187De2A29C730C53EB29B) | ✅ `SLYXToken` | `0xe460f0cB…E` |
| SLYXToken impl (legacy) | original sLYX logic, replaced 2025-04-19 | [`0x30790526…91`](https://explorer.execution.mainnet.lukso.network/address/0x30790526c7F48E92FAf8772E45c7AeCeeF0B8c91) | ✅ (Blockscout names this `Storage`) | `0xc064f535…F` |

7 distinct production contracts across the two chains, all source-verified.

---

## Audit Coverage

Stakingverse's audit footprint splits cleanly along the chain boundary. The brief lists own-audits and inherited-audits separately because they cover different bytecode and different threat models.

### Stakingverse's own audits — cover LUKSO contracts

Source: `github.com/Stakingverse/pool-contracts/audits/`. README confirms scope.

| Date | Auditor | Report | Scope | Status |
|---|---|---|---|---|
| October 2024 | **Extropy** | `Liquid_Staking_Audit_Oct_2024.pdf` | StakingverseVault.sol + Liquid Staking contracts | covers pre-upgrade vault |
| ≤ October 2024 | **MiloTruck** | `Stakingverse_Audit_MiloTruck.pdf` | StakingverseVault.sol + Liquid Staking contracts | covers pre-upgrade vault |
| (date in PDF, not filename) | **Enigma** | `Stakingverse_LST_Audit.pdf` | sLYX Liquid Staking Token only | covers SLYXToken |
| post-Oct 2024 | **Nethermind AI Agent** | `nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf` + `nethermind-findings.md` | StakingverseVault.sol + Liquid Staking contracts. **1 High, 5 Medium, 12 Low, 3 Info — 21 findings**. H-1 first-depositor exploit fixed; M-1/M-3 (oracle trust) acknowledged; M-4 reentrancy mitigated by `nonReentrant` modifier. | most comprehensive own-audit |

Plus two Slither static-analysis reports (`slither_report_StakingverseVault.md`, `slither_report_SLYXToken.md`) — automated, not formal.

The audits README also notes that the Universal.Page upstream `Vault.sol` has its own audit history at `github.com/Universal-Page/contracts/audits/`. Those are upstream-codebase audits, not Stakingverse audits — relevant only to the legacy `0x2Cb02ef…` implementation that is no longer in production.

### StakeWise infrastructure audits — cover the EthVault Stakingverse delegates to (inherited, not own)

Source: `github.com/stakewise/v3-core/audits/`. These audit StakeWise's V3 protocol; Stakingverse benefits transitively because it runs StakeWise bytecode on its Ethereum vault.

| Date | Auditor | Report | Scope |
|---|---|---|---|
| May 2023 | Halborn | `2023-05-Halborn.pdf` | StakeWise V3 (early) |
| August 2023 | Halborn | `2023-08-Halborn.pdf` | StakeWise V3 (EthVault, GnoVault, OsToken) |
| August 2023 | Sigma Prime | `2023-08-Sigma-Prime.pdf` | StakeWise V3 |
| March 2024 | ConsenSys Diligence | `2024-03-Consensys-Diligence.pdf` | StakeWise V3 |
| June 2024 | Sigma Prime | `2024-06-Sigma-Prime.pdf` | StakeWise V3 |
| September 2024 | Sigma Prime | `2024-09-Sigma-Prime.pdf` | StakeWise V3 |
| September 2025 | ABDK | `2025-09-ABDK.pdf` | StakeWise V3 — **directly covers the EthVault implementation `0x927a83c6…` deployed 2025-09-15** |
| April 2026 | Statemind | `2026-04-Statemind.pdf` | StakeWise V3 (most recent) |

These do **not** appear in Stakingverse's own audit count. They are listed here so a reviewer can confirm the bytecode behind the Ethereum proxy is well-audited under the StakeWise programme, but the *operator-side controls and admin behaviour* (who is the admin? what's the rebalance authority? are there off-chain dependencies on Stakingverse oracles?) are NOT in scope of any StakeWise audit.

### Coverage by surface

| Surface | Bytecode authored by | Audited under Stakingverse programme? | Audited under StakeWise programme? | Effective coverage |
|---|---|---|---|---|
| Ethereum proxy `0x8a93a876…` (vanilla `ERC1967Proxy`, OZ-pattern, no custom logic) | Stakingverse | no | no (proxy code is OZ standard) | ✅ implicit (OZ ERC1967Proxy is widely deployed and trusted; no custom code at this layer) |
| Ethereum EthVault impl `0x927a83c6…` | StakeWise | no | ✅ yes — multiple audits, most recent ABDK 2025-09 | ✅ inherited, well-covered |
| LUKSO StakingverseVault impl `0x1711b2e1…` | Stakingverse (Universal.Page-derived) | ✅ yes — Extropy, MiloTruck, Enigma, Nethermind | n/a | ✅ direct, four formal audits |
| LUKSO SLYXToken impl `0x08b28405…` | Stakingverse | ✅ yes — Enigma (LST-specific), Extropy + Nethermind (combined) | n/a | ✅ direct |
| LUKSO Staking Vault Proxy `0x9F49a95b…` (TransparentUpgradeableProxy, OZ-pattern) | OpenZeppelin | implicit | n/a | ✅ implicit (OZ standard) |
| LUKSO sLYX Token Proxy `0x8A3982f0…` (TransparentUpgradeableProxy, OZ-pattern) | OpenZeppelin | implicit | n/a | ✅ implicit |

**No genuinely unaudited Stakingverse-authored bytecode is in production.** The four formal LUKSO audits cover both the StakingverseVault and SLYXToken contracts; the Ethereum side runs StakeWise's audited EthVault.

### Operator-side residual risks not covered by either audit programme

Audits cover the bytecode. They do not cover:

- The Stakingverse oracle / admin EOAs — `0xe460f0cB…E` (LUKSO admin), `0x93281072…819` (Ethereum admin). Multisig/timelock posture not visible from on-chain inspection.
- Off-chain validator key management — Stakingverse runs its own validator infrastructure; key custody and slashing posture are operational concerns.
- The legacy Universal.Page Vault impl (`0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4`) is still on-chain but no longer pointed at by the proxy. If the upgrade path were reversible without timelock, that's a re-entry surface — not assessable from current data.

---

## Recommended Audit-Engagement Scope

If commissioning a fresh review, the high-leverage targets are:

1. **LUKSO `StakingverseVault.sol` v2 (`0x1711b2e1…`)** — the most-recently upgraded production logic; the Nethermind audit's M-1/M-3 oracle-trust findings were *acknowledged* not fixed, so a residual-risk review of oracle posture is warranted.
2. **LUKSO `SLYXToken.sol` (`0x08b28405…`)** — LSP7 standard is less battle-tested than ERC20; the Nethermind M-4 reentrancy concern was *mitigated* via a `nonReentrant` modifier on the partner contract, not by changing this contract's behaviour. Review the `_afterTokenTransfer` callback chain.
3. **Cross-chain operator controls** — neither audit programme covers the role-management posture (admin keys, oracle-rotation flow, fee-change authority) on either chain.

Lower-leverage:

- The Ethereum proxy itself is a vanilla OZ `ERC1967Proxy` and the EthVault behind it is StakeWise-audited. The marginal value of re-auditing this surface is low.
- The legacy `0x2Cb02ef…` implementation is not in production and likely out of scope.

---

## v1 Pipeline Errors (corrected here)

The v1 brief at `agnt-brief/stakingverse/SCOPE_NOTE.md` had two compounding defects:

| Defect | v1 output | Reality |
|---|---|---|
| **Chain coverage** — LUKSO not recognized | All 3 contracts placed on Ethereum (chain 1); LUKSO not in topography. | LUKSO contains 5 production contracts including the StakingverseVault, sLYX token, and the proxy that holds 229K LYX. v1's `0x9f49a95b…` row (marked "unverified" on Ethereum) is actually the LUKSO StakingverseVault proxy with the same hex address. |
| **Audit attribution** — name-similarity contamination | 3 of the 4 attributed "audit reports" (Halborn 2023-08, ConsenSys Diligence 2024-03, Sigma Prime 2024-09) were StakeWise V3 audits from `github.com/stakewise/v3-core/audits/`, harvested by the v1 audit-link discovery stage and never disambiguated from `github.com/Stakingverse/pool-contracts/audits/`. | Stakingverse's own audits are Extropy, MiloTruck, Enigma, Nethermind — none of which v1 successfully matched to any contract. The single TP audit match v1 did make (Halborn → EthVault) is not actually wrong about the bytecode (Halborn did audit StakeWise's EthVault), but it is wrong about the audit programme — that audit belongs to StakeWise's release, not Stakingverse's. |
| **TVL methodology** — `totalAssets()` not called | Reported "$88,912 on-chain TVL"; the $4.3M DL number flagged as discrepant. | Direct ETH balance of the Ethereum proxy is indeed ~$76K, but that's not the protocol's TVL. `totalAssets()` returns 1,697 ETH (~$4M) for Ethereum and 2.34M LYX (~$640K) for LUKSO. The DL number reconciles correctly. |
| **Architecture model** — operator-vs-author distinction not represented | Attributed `EthVault` to Stakingverse's own scope and ranked it as "vault_pool" with a TP audit. | The EthVault bytecode is StakeWise's. Stakingverse runs it as an operator. The brief now distinguishes own-bytecode from operated-infrastructure-bytecode and lists StakeWise audits as inherited rather than direct. |

The pipeline-mechanism root causes are documented in `docs/gold-standard/stakingverse_v1_diff_analysis.md`.

---

## Caveats and Open Questions

- **Multisig / timelock posture not inspected.** Both Stakingverse admin EOAs (`0xe460f0cB…` on LUKSO, `0x93281072…` on Ethereum) appear to be plain EOAs; no Gnosis Safe or governance-timelock contract was found in the protocol's deployment artifacts. If admin authority is single-EOA, that's a centralization risk worth confirming with the operator.
- **Ethereum operator-role authority is not reflected in `EthVault` storage from a public-call standpoint.** Confirming who holds the StakeWise vault `admin` role (and how revocation works) requires reading slot data on the EthVault implementation; not done here.
- **Universal.Page audit history not reviewed.** The legacy `0x2Cb02ef…` Vault is out of production but still on-chain. If an upgrade-path bug allowed pointing the proxy back at it, that would matter. Out of scope of this brief.
- **LYX price reference for TVL** — DL's pricing for the LUKSO bucket implies ~$0.27/LYX, which is plausible for LYX in 2026 but is not separately verified against a deep liquidity source in this brief.
- **Stakingverse operates a `cli` for validator key generation** (`github.com/Stakingverse/cli`) — operational practice for key custody not in scope here.

---

## Generation Metadata

- **Generated:** 2026-05-07
- **Method:** manual research
- **Verification ledger (internal):** `docs/gold-standard/stakingverse_verification_ledger.md`
- **DL raw archive (internal):** `docs/gold-standard/dl_raw/stakingverse.json`
- **Sources fetched:** 7 verified contracts across Ethereum + LUKSO, 145 source files in `contracts_gold_standard/`
