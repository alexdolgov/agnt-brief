# Agentic Brief: ZeroLend

## Project Overview

- **Project**: ZeroLend
- **Website**: zerolend.xyz
- **Category**: Lending protocol (Aave v3 fork)
- **Chains**: Ethereum, Linea, Blast (+ 8 other chains not in topography)

ZeroLend is an Aave v3 fork with custom additions for cross-chain token bridging (LayerZero OFT), Blast-specific yield integration, and a ve-tokenomics governance/staking layer on Linea. The core lending logic (Pool, AToken, VariableDebtToken, all *Logic libraries) is standard Aave v3. The custom surface is the LayerZero integration, Blast yield hooks, and the staking/governance system.

## TVL Breakdown (DeFi Llama, per chain)

### ZeroLend Lending ($4.3M total)

| Chain | TVL |
|---|---:|
| Linea | $2,509,174 |
| zkSync Era | $873,018 |
| Blast | $416,964 |
| Ethereum | $275,455 |
| Base | $75,673 |
| Manta | $75,375 |
| Other (5 chains) | $49,338 |

### ZeroLend Vaults ($1.8M total)

| Chain | TVL |
|---|---:|
| Ethereum | $1,775,153 |
| Linea | $9,509 |
| Berachain | $4,712 |

**Combined TVL**: ~$6.1M. Linea holds the majority of lending TVL. Ethereum holds the majority of vault TVL.

**Per-contract TVL assignment**: Not available. DeFi Llama reports TVL at chain level, not per-contract. For lending protocols, TVL concentrates in the Pool contract (which holds all deposited assets) and its associated AToken/VariableDebtToken instances. On each chain, the Pool contract is the primary TVL-bearing contract.

## Audit History

| Date | Auditor | Notes |
|---|---|---|
| 2024-09-10 | (unknown) | Single audit, 579 days stale |

Single audit from an unidentified auditor. No known coverage of the custom staking/governance layer or Blast integration.

## Contract Classification

Contracts are classified into two categories:

### `aave_standard` — Upstream Aave v3 code (12 source files)

These are standard Aave v3 contracts with minimal or no modification. They are extensively audited upstream by OpenZeppelin, Trail of Bits, Certora, Sigma Prime, and others as part of the Aave v3 audit corpus. An agent should focus on **diffs from upstream Aave v3**, not the full code.

### `zerolend_custom` — ZeroLend-specific code (13 source files)

These are written by the ZeroLend team and are the **primary audit targets**.

## Per-Contract Audit Coverage

### Ethereum (chain 1) — TVL: $275K lending + $1.8M vaults

**Aave standard contracts:**

| Contract | Role | Deployed | Audit Status | Source |
|---|---|---|---|---|
| Pool | vault_pool | 2024-03-03 | likely in scope | `contracts/ethereum/Pool_0xff679e.sol` |
| PoolAddressesProvider | vault_pool | 2024-03-03 | likely in scope | — (standard) |
| PoolAddressesProviderRegistry | vault_pool | 2024-03-03 | likely in scope | — (standard) |
| PoolLogic | vault_pool | 2024-03-03 | likely in scope | — (standard) |
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
| ACLManager | controller | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| DefaultReserveInterestRateStrategy | strategy | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| EmissionManager | rewards | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| RewardsController | rewards | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| StableDebtTokenDisabled | token | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| DelegationAwareAToken | token | 2024-03-03 | unmatched (pre-audit) | — (standard) |
| BridgeLogic | bridge | 2024-03-03 | no scope data | — (standard) |

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

- `contracts/ethereum/` — 17 files (12 Aave standard + 5 ZeroLend custom)
- `contracts/linea/` — 6 files (all ZeroLend custom — staking/governance)
- `contracts/blast/` — 2 files (all ZeroLend custom — Blast yield integration)

Source files contain only project code (`src/` and `contracts/` directories); standard library dependencies (OpenZeppelin, LayerZero) are excluded. Each file header includes `// Classification: aave_standard` or `// Classification: zerolend_custom`.

## Assessment Priority

**High priority** (custom code, unique risk):
1. BlastPool + BlastAToken (Blast yield integration, $417K TVL)
2. OmnichainStaking (cross-chain staking, controls Linea governance)
3. VestedZeroNFT + LockerToken + PoolVoter (governance, Linea $2.5M TVL)

**Medium priority** (custom but lower risk):
4. LayerZeroCustomOFT + ZeroOFT + ZeroOFTAdapter (token bridging)
5. ListingContract (asset listing)

**Low priority** (upstream Aave v3, well-audited):
6. Pool, AToken, VariableDebtToken, *Logic libraries (diff-check only)

## Caveats

- "Unaudited" means no scope match found — the single known audit may cover some of these contracts but scope data was too sparse to confirm.
- The Aave v3 standard contracts may have ZeroLend-specific modifications not visible without diffing against upstream Aave v3.3.
- Per-contract TVL is not available. TVL figures are per-chain from DeFi Llama. For lending protocols, TVL concentrates in the Pool contract.
- 207 of 342 topography contracts lack Etherscan verification — these are cross-chain duplicates of code verified on other chains, not distinct unverified contracts.
- The staking/governance contracts on Linea have 8 instances each, likely from proxy-based upgradeability or multiple deployment versions.
- AaveV3LoopingStrategy on Linea is unverified and not included in the source package.
