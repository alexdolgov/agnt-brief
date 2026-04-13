# Agentic Brief: ZeroLend

## Project Overview

- **Project**: ZeroLend
- **Website**: zerolend.xyz
- **Category**: Lending protocol (Aave v3 fork)
- **Chains**: Ethereum, Linea, Blast (+ 8 other chains not in topography)

ZeroLend is an Aave v3 fork with custom additions for cross-chain token bridging (LayerZero OFT), Blast-specific yield integration, and a ve-tokenomics governance/staking layer on Linea. The core lending logic (Pool, AToken, VariableDebtToken, all *Logic libraries) is standard Aave v3. The custom surface is the LayerZero integration, Blast yield hooks, and the staking/governance system.

## On-Chain TVL (queried 2026-04-13, USD estimates from hardcoded prices)

**Total lending TVL: $2,299,337** across 3 chains with topography coverage. DeFi Llama reports higher ($4.3M lending) because it includes chains not in our topography (zkSync Era, Base, Manta, etc.).

In Aave v3 architecture, deposited assets are held by **AToken contracts** (one per reserve per chain). The Pool contract is the entry point but delegates custody to ATokens. Each AToken below holds the actual underlying tokens.

### Linea (chain 59144) — $1,794,506 deposited, $408,644 borrowed

Pool proxy: `0x2f9bb73a8e98793e26cb2f6c4ad037bdf1c6b269` (20 reserves)

| AToken Contract | Underlying | Deposited | USD Value | Outstanding Debt |
|---|---|---:|---:|---:|
| `0x0684fc17...` | z0ezETH | 556.76 ezETH | **$901,955** | $9,286 |
| `0xb4ffef15...` | z0ETH | 356.41 WETH | **$570,257** | $196,745 |
| `0x8d8b70a5...` | z0rsETH | 65.65 wrsETH | **$107,013** | $773 |
| `0x77e305b4...` | z0weETH | 48.53 weETH | **$80,068** | $2,592 |
| `0x8b6e58ea...` | z0WBTC | 0.69 WBTC | **$57,921** | $17,511 |
| `0x508c39cd...` | z0USDT | 21,805 USDT | **$21,805** | $43,645 |
| `0x2e207eca...` | z0USDC | 11,837 USDC | **$11,837** | $134,812 |
| `0xccf76f25...` | z0STONE | 6.09 STONE | **$9,860** | — |
| `0x9eb88792...` | z0stETH | 5.09 wstETH | **$9,414** | $1,333 |
| `0x537d6dd4...` | z0M-BTC | 0.08 M-BTC | **$6,374** | — |
| Other 10 reserves | | | **$18,002** | $1,947 |

### Blast (chain 81457) — $334,060 deposited, $64,160 borrowed

Pool proxy: `0xa70b0f3c2470abbe104bdb3f3aaa9c7c54bea7a8` (4 reserves)

| AToken Contract | Underlying | Deposited | USD Value | Outstanding Debt |
|---|---|---:|---:|---:|
| `0x53a3aa61...` | z0WETH | 127.87 WETH | **$204,595** | $25,374 |
| `0x23a58cbe...` | z0USDB | 114,129 USDB | **$114,129** | $38,775 |
| `0xeaad75b2...` | z0ezETH | 8.53 ezETH | **$13,820** | $9 |
| `0x99b68c56...` | z0weETH | 0.92 weETH | **$1,516** | $2 |

### Ethereum (chain 1) — $170,771 deposited, $32,565 borrowed

Pool proxy: `0x3bc3d34c32cc98bf098d832364df8a222bbab4c0` (12 reserves)

| AToken Contract | Underlying | Deposited | USD Value | Outstanding Debt |
|---|---|---:|---:|---:|
| `0xfb932a75...` | z0WETH | 30.64 WETH | **$49,028** | $25,151 |
| `0xdd7afc0f...` | z0pufETH | 18.29 pufETH | **$29,266** | — |
| `0x68fd75cf...` | z0ezETH | 17.32 ezETH | **$28,060** | $1,007 |
| `0xef4a41e6...` | z0rsETH | 16.29 rsETH | **$26,547** | $9 |
| `0x84e55c6b...` | z0weETH | 13.16 weETH | **$21,706** | $18 |
| `0xb2feb2c4...` | z0USDC | 11,101 USDC | **$11,101** | $3,284 |
| `0x6c735966...` | z0USDT | 3,669 USDT | **$3,669** | $1,153 |
| `0x29a3a6af...` | z0DAI | 1,394 DAI | **$1,394** | $1,943 |

**Note**: USD prices are hardcoded estimates (ETH~$1,600, BTC~$84,000, stablecoins~$1). See `onchain_tvl.json` for full machine-readable data. Pool proxy addresses were resolved on-chain via `PoolAddressesProvider.getPool()` — they differ from the implementation addresses in our topography.

## Audit History

| Date | Auditor | Notes |
|---|---|---|
| 2024-09-10 | (unknown) | Single audit, 579 days stale |

Single audit from an unidentified auditor. No known coverage of the custom staking/governance layer or Blast integration.

## Contract Classification

Contracts are classified into two categories:

### `unverified_fork` — Likely Aave v3 fork (12 source files)

These contracts share names with the standard Aave v3 codebase (Pool, AToken, LiquidationLogic, etc.) and were likely forked from it. However, **we have not verified they are unmodified**. ZeroLend may have added, removed, or altered logic in any of these contracts. An agent MUST diff these against upstream Aave v3 (branch `main`, release 3.0.2+) before assuming they are standard. Any modifications are high-priority findings — a subtle change to LiquidationLogic or FlashLoanLogic could introduce critical vulnerabilities.

The upstream Aave v3 repo is: `https://github.com/aave/aave-v3-core`

### `zerolend_custom` — ZeroLend-specific code (13 source files)

These contracts have no upstream Aave v3 equivalent — they are ZeroLend's own additions.

## Per-Contract Audit Coverage

### Ethereum (chain 1) — TVL: $275K lending + $1.8M vaults

**Aave standard contracts:**

| Contract | Role | Deployed | Audit Status | Source |
|---|---|---|---|---|
| Pool | vault_pool | 2024-03-03 | likely in scope | `contracts/ethereum/Pool_0xff679e.sol` |
| PoolAddressesProvider | vault_pool | 2024-03-03 | likely in scope | source in package |
| PoolAddressesProviderRegistry | vault_pool | 2024-03-03 | likely in scope | source in package |
| PoolLogic | vault_pool | 2024-03-03 | likely in scope | source in package |
| LiquidationLogic | core | 2024-03-03 | **audited (TP)** | `contracts/ethereum/LiquidationLogic_0xbe0ab6.sol` |
| SupplyLogic | core | 2024-03-03 | no scope data | `contracts/ethereum/SupplyLogic_0x4db095.sol` |
| BorrowLogic | vault_pool | 2024-03-03 | unmatched (pre-audit) | `contracts/ethereum/BorrowLogic_0x8676e3.sol` |
| FlashLoanLogic | core | 2024-03-03 | no scope data | `contracts/ethereum/FlashLoanLogic_0x86b07c.sol` |
| ConfiguratorLogic | core | 2024-03-03 | unmatched (pre-audit) | `contracts/ethereum/ConfiguratorLogic_0xb8634e.sol` |
| EModeLogic | core | 2024-03-03 | unmatched (pre-audit) | `contracts/ethereum/EModeLogic_0x78ad3d.sol` |
| PoolConfigurator | vault_pool | 2024-03-03 | no scope data | `contracts/ethereum/PoolConfigurator_0x9c6f13.sol` |
| AToken | token | 2024-03-03 | unmatched (pre-audit) | `contracts/ethereum/AToken_0xb7ed49.sol` |
| VariableDebtToken | token | 2024-03-03 | no scope data | `contracts/ethereum/VariableDebtToken_0x5d50be.sol` |
| AaveOracle | oracle | 2024-03-03 | unmatched (pre-audit) | `contracts/ethereum/AaveOracle_0x1cc993.sol` |
| AaveProtocolDataProvider | core | 2024-03-03 | no scope data | `contracts/ethereum/AaveProtocolDataProvider_0x47223d.sol` |
| ACLManager | controller | 2024-03-03 | unmatched (pre-audit) | source in package |
| DefaultReserveInterestRateStrategy | strategy | 2024-03-03 | unmatched (pre-audit) | source in package |
| EmissionManager | rewards | 2024-03-03 | unmatched (pre-audit) | source in package |
| RewardsController | rewards | 2024-03-03 | unmatched (pre-audit) | source in package |
| StableDebtTokenDisabled | token | 2024-03-03 | unmatched (pre-audit) | source in package |
| DelegationAwareAToken | token | 2024-03-03 | unmatched (pre-audit) | source in package |
| BridgeLogic | bridge | 2024-03-03 | no scope data | source in package |

**ZeroLend custom contracts (Ethereum):**

| Contract | Role | Deployed | Audit Status | Source |
|---|---|---|---|---|
| LayerZeroCustomOFT | core | 2024-08-28 | no scope data | `contracts/ethereum/LayerZeroCustomOFT_0x2da17f.sol` |
| ZeroOFT | core | 2024-04-26 | unmatched (pre-audit) | `contracts/ethereum/ZeroOFT_0xc4d701.sol` |
| ZLShares | core | 2024-03-18 | no scope data | `contracts/ethereum/ZLShares_0x420c44.sol` |
| ListingContract | core | 2024-08-27 | no scope data | `contracts/ethereum/ListingContract_0xc4fcea.sol` |
| ZeroLend (token) | core | 2024-03-17 | no scope data | `contracts/ethereum/ZeroLend_0xedb357.sol` |

### Blast (chain 81457) — TVL: $417K lending

| Contract | Role | Deployed | Audit Status | Classification | Source |
|---|---|---|---|---|---|
| BlastPool | vault_pool | 2024-03-12 | unmatched (pre-audit) | zerolend_custom | `contracts/blast/BlastPool_0x3fc90e.sol` |
| BlastAToken | token | 2024-03-12 | unmatched (pre-audit) | zerolend_custom | `contracts/blast/BlastAToken_0x749df8.sol` |

All other Blast contracts are cross-chain duplicates of the Ethereum Aave standard set.

### Linea (chain 59144) — TVL: $2.5M lending + $10K vaults

**ZeroLend custom staking/governance:**

| Contract | Role | Instances | Audit Status | Source |
|---|---|---:|---|---|
| OmnichainStaking | staking | 8 | unmatched (pre-audit) | `contracts/linea/OmnichainStaking_0x0ecb41.sol` |
| StakingBonus | staking | 8 | unmatched (pre-audit) | `contracts/linea/StakingBonus_0xa1a17d.sol` |
| VestedZeroNFT | token | 8 | unmatched (pre-audit) | `contracts/linea/VestedZeroNFT_0x3a7a62.sol` |
| PoolVoter | vault_pool | 1 | no scope data | `contracts/linea/PoolVoter_0x8e5521.sol` |
| LockerToken | token | 8 | unmatched (pre-audit) | `contracts/linea/LockerToken_0xc64bac.sol` |
| ZeroOFTAdapter | adapter | 1 | unmatched (pre-audit) | `contracts/linea/ZeroOFTAdapter_0x1dad69.sol` |
| AaveV3LoopingStrategy | strategy | 1 | unmatched (pre-audit) | — (not in source package, unverified) |

All other Linea contracts are cross-chain duplicates of the Ethereum Aave standard set.

## Audit Coverage Summary

| Status | Contracts | Notes |
|---|---:|---|
| **audited (TP)** | 1 | LiquidationLogic only |
| **likely in scope** | 4 | Pool, PoolAddressesProvider, PoolAddressesProviderRegistry, PoolLogic |
| **unmatched (pre-audit)** | ~20 | Deployed before single audit; may or may not be in scope |
| **no scope data** | ~25 | No structured scope extracted from the audit report |
| **Total named contracts** | ~50 unique names across 3 chains |

The single known audit produced only 1 confirmed TP (LiquidationLogic via name match). The audit report's scope data is too sparse to determine what else was covered. Most contracts show "unmatched" or "no scope data" — this does NOT mean they are unaudited, only that we cannot confirm coverage from the available scope extraction.

## Key Risk Areas for Agent Assessment

1. **BlastPool / BlastAToken**: These modify core Aave v3 lending logic to integrate Blast's native yield. Any bug in the yield claiming hooks could affect all depositors ($417K). Compare against upstream `Pool.sol` and `AToken.sol` to identify the exact diffs.

2. **OmnichainStaking + LayerZero integration**: Cross-chain staking messages via LayerZero. Verify message validation, replay protection, and failure handling. The OFT pattern has known attack surfaces around message ordering and gas griefing. Controls governance weight on the largest TVL chain (Linea, $2.5M).

3. **VestedZeroNFT + LockerToken + PoolVoter**: The ve-tokenomics stack controls incentive distribution on Linea. Check for: vote manipulation, reward drainage, lock bypass, and NFT transfer restrictions.

4. **Aave v3 fork drift**: The standard contracts may have subtle modifications. Key question: did ZeroLend modify any of the upstream Aave v3 logic libraries? The `src/` file paths in the source will show if files were added or modified.

5. **AaveV3LoopingStrategy (Linea)**: Leveraged looping strategy — not in source package (unverified on-chain). If verified source becomes available, this is a high-priority target for reentrancy and oracle manipulation risks.

## Source Code

25 verified source files organized by chain:

- `contracts/ethereum/` — 38 files (33 unverified Aave v3 fork + 5 ZeroLend custom)
- `contracts/linea/` — 6 files (all ZeroLend custom — staking/governance)
- `contracts/blast/` — 2 files (all ZeroLend custom — Blast yield integration)

Source files contain only project code (`src/` and `contracts/` directories); standard library dependencies (OpenZeppelin, LayerZero) are excluded.

File headers indicate classification:
- `// Classification: UNVERIFIED FORK` — contract name matches Aave v3 but source has NOT been diffed against upstream. May contain ZeroLend modifications.
- `// Classification: zerolend_custom` — no upstream Aave v3 equivalent exists.

## Assessment Priority

**High priority** (fork verification — any modification to lending core is critical):
1. Pool, LiquidationLogic, FlashLoanLogic, BorrowLogic, SupplyLogic — diff against `aave/aave-v3-core` (release 3.0.2+). These control all deposits, borrows, and liquidations. A subtle change here could introduce critical vulnerabilities. Upstream repo: `https://github.com/aave/aave-v3-core`

**High priority** (custom code, unique risk):
2. BlastPool + BlastAToken (Blast yield integration, $417K TVL at risk)
3. OmnichainStaking (cross-chain staking, controls Linea governance)
4. VestedZeroNFT + LockerToken + PoolVoter (governance, Linea $2.5M TVL)

**Medium priority** (fork verification — supporting modules):
5. AToken, VariableDebtToken, AaveOracle, ConfiguratorLogic, EModeLogic, PoolConfigurator, AaveProtocolDataProvider — diff against upstream

**Medium priority** (custom but lower risk):
6. LayerZeroCustomOFT + ZeroOFT + ZeroOFTAdapter (token bridging)
7. ListingContract (asset listing)

## Caveats

- "Unaudited" means no scope match found — the single known audit may cover some of these contracts but scope data was too sparse to confirm.
- **The 12 "unverified fork" contracts have NOT been diffed against upstream Aave v3.** The classification is based on contract name matching only. Any of these contracts may contain ZeroLend-specific modifications.
- Per-contract TVL is not available. TVL figures are per-chain from DeFi Llama. For lending protocols, TVL concentrates in the Pool contract.
- 207 of 342 topography contracts lack Etherscan verification — these are cross-chain duplicates of code verified on other chains, not distinct unverified contracts.
- The staking/governance contracts on Linea have 8 instances each, likely from proxy-based upgradeability or multiple deployment versions.
- AaveV3LoopingStrategy on Linea is unverified and not included in the source package.
