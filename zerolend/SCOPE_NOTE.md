# Agentic Brief: ZeroLend

## Project Overview

- **Project**: ZeroLend
- **Website**: zerolend.xyz
- **Category**: Lending protocol (Aave v3 fork)
- **TVL**: ~$4.4M (DeFi Llama)
- **Chains**: Ethereum, Linea, Blast

ZeroLend is an Aave v3 fork with custom additions for cross-chain token bridging (LayerZero OFT), Blast-specific yield integration, and a ve-tokenomics governance/staking layer on Linea. The core lending logic (Pool, AToken, VariableDebtToken, all *Logic libraries) is standard Aave v3. The custom surface is the LayerZero integration, Blast yield hooks, and the staking/governance system.

## Contract Classification

Contracts are classified into two categories:

### `aave_standard` — Upstream Aave v3 code (12 contracts)

These are standard Aave v3 contracts with minimal or no modification. They are extensively audited upstream by OpenZeppelin, Trail of Bits, Certora, Sigma Prime, and others as part of the Aave v3 audit corpus. An agent should focus on **diffs from upstream Aave v3**, not the full code.

Contracts: Pool, LiquidationLogic, FlashLoanLogic, SupplyLogic, BorrowLogic, AToken, VariableDebtToken, AaveProtocolDataProvider, AaveOracle, ConfiguratorLogic, EModeLogic, PoolConfigurator

### `zerolend_custom` — ZeroLend-specific code (13 contracts)

These are written by the ZeroLend team and are the **primary audit targets**. They include:

**Cross-chain / LayerZero (Ethereum)**:
- `LayerZeroCustomOFT` — Custom OFT implementation for cross-chain ZERO token
- `ZeroOFT` — OFT token wrapper (5 instances on Ethereum)
- `ZLShares` — Share token for the protocol

**Blast-specific (chain 81457)**:
- `BlastPool` — Modified Pool with Blast yield claiming hooks
- `BlastAToken` — Modified AToken for Blast yield integration

**Staking / Governance (Linea)**:
- `OmnichainStaking` — Cross-chain staking via LayerZero (8 instances)
- `StakingBonus` — Bonus reward distribution for stakers (8 instances)
- `VestedZeroNFT` — NFT-based vesting for ZERO token (8 instances)
- `PoolVoter` — Vote-escrow gauge for pool incentive allocation
- `LockerToken` — Token locking for governance weight (8 instances)
- `ZeroOFTAdapter` — LayerZero adapter for ZERO token bridging

**Protocol config (Ethereum)**:
- `ListingContract` — Asset listing management
- `ZeroLend` — Protocol token (ZERO)

## Audit History

| Date | Auditor | Notes |
|---|---|---|
| 2024-09-10 | (unknown) | Single audit, 579 days stale |

Single audit from an unidentified auditor. No known coverage of the custom staking/governance layer or Blast integration.

## Key Risk Areas for Agent Assessment

1. **BlastPool / BlastAToken**: These modify core Aave v3 lending logic to integrate Blast's native yield. Any bug in the yield claiming hooks could affect all depositors. Compare against upstream `Pool.sol` and `AToken.sol` to identify the exact diffs.

2. **OmnichainStaking + LayerZero integration**: Cross-chain staking messages via LayerZero. Verify message validation, replay protection, and failure handling. The OFT pattern has known attack surfaces around message ordering and gas griefing.

3. **VestedZeroNFT + LockerToken + PoolVoter**: The ve-tokenomics stack controls incentive distribution. Check for: vote manipulation, reward drainage, lock bypass, and NFT transfer restrictions.

4. **Aave v3 fork drift**: The standard contracts may have subtle modifications. Key question: did ZeroLend modify any of the upstream Aave v3 logic libraries? The `src/` file paths in the source will show if files were added or modified.

## Source Code

25 verified source files organized by chain:

- `contracts/ethereum/` — 17 files (12 Aave standard + 5 ZeroLend custom)
- `contracts/linea/` — 6 files (all ZeroLend custom — staking/governance)
- `contracts/blast/` — 2 files (all ZeroLend custom — Blast yield integration)

Source files contain only project code (`src/` and `contracts/` directories); standard library dependencies (OpenZeppelin, LayerZero) are excluded.

## Assessment Priority

**High priority** (custom code, unique risk):
1. BlastPool + BlastAToken (Blast yield integration)
2. OmnichainStaking (cross-chain staking)
3. VestedZeroNFT + LockerToken + PoolVoter (governance)

**Medium priority** (custom but lower risk):
4. LayerZeroCustomOFT + ZeroOFT + ZeroOFTAdapter (token bridging)
5. ListingContract (asset listing)

**Low priority** (upstream Aave v3, well-audited):
6. Pool, AToken, VariableDebtToken, *Logic libraries (diff-check only)

## Caveats

- "Unaudited" means no scope match found — the single known audit may cover some of these contracts.
- The Aave v3 standard contracts may have ZeroLend-specific modifications not visible without diffing against upstream.
- TVL shown is protocol-level from DeFi Llama. The Blast and Linea deployments may hold different amounts.
- 207 of 342 topography contracts lack Etherscan verification, but these are cross-chain duplicates of the same code verified on Ethereum/Linea.
- The staking/governance contracts on Linea have 8 instances each, suggesting proxy-based upgradeability or multiple deployment versions.
