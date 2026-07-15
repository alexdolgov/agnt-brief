# Agentic Audit Brief: Chainlink

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Chainlink (`chainlink`)
- Website: [https://chain.link](https://chain.link)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, gnosis, hashkey, hyperliquid, linea, mantle, moonbeam, optimism, plasma, polygon, sonic, unichain, zksync-era
- Contract surface: 72 unique implementations (72 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,973,496,824.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Chainlink. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, gnosis, hyperliquid, mantle, moonbeam, optimism, plasma, polygon, sonic, unichain. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- OperatorFactory (`0x3e64cd...11f48a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 72 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 72
- Raw deployments: 72
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/chainlink/information))
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

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0086e1...01b423` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00f0ef...65c382` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000bcf...d7e1bc` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38660c...5cce5f` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14a7e6...b694a5` | ⚠️ Unaudited |
| BlockhashStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x683be5...d71778` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19860c...8dde98` | ⚠️ Unaudited |
| BurnFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03df92...a50280` | ⚠️ Unaudited |
| BurnMintERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x04dad2...ef3bc7` | ⚠️ Unaudited |
| BurnMintERC20Transparent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb9af87...e3208f` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ce37...1e4ce7` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04505e...c79187` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00c8af...025010` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eef...240b93` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bb0f5...7266b1` | ⚠️ Unaudited |
| CCTPMessageTransmitterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe94e3b...18037a` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb...0160f3` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x002b16...0edeea` | ⚠️ Unaudited |
| CommitteeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18bb4a...5de84f` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d05b6...2e71b1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b221...8748ba` | ⚠️ Unaudited |
| DOODLEF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9fbe92...285830` | ⚠️ Unaudited |
| Doodles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a90ca...b8992e` | ⚠️ Unaudited |
| Dooplicator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x466cfc...9213ac` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eeb87...19a5df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0147f2...e8c32d` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x006fc7...8bbca7` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x004405...03a390` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe65870...809564` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0b1479...1cc85e` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f...dcf649` | ⚠️ Unaudited |
| FeeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006bc1...ac1e83` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26e0e1...0bf332` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1b1...70d29f` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3503b2...579acf` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adfbf...9a993d` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1fb8fa...71ebae` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d7...f8c315` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x012414...518ac3` | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x350a79...ffa7f6` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x022d74...951892` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7368...521fc0` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x057f63...dd9b74` | ⚠️ Unaudited |
| MockReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c117a...61c920` | ⚠️ Unaudited |
| NonceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x06fc83...6ae1c9` | ⚠️ Unaudited |
| OffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x02a4d6...58894d` | ⚠️ Unaudited |
| OnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1e11ba...0e6e7b` | ⚠️ Unaudited |
| OperatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231772 | `0x3e64cd...11f48a` | ⚠️ Unaudited |
| PermittableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0xe2e73a...ca09b2` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020082...a81985` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x13ac97...664beb` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x010771...a0f8fa` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2d...75e7ec` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c51b6...7a7e49` | ⚠️ Unaudited |
| RMNProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x652592...39b048` | ⚠️ Unaudited |
| RMNRemote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1912c3...f237ca` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e6137...798d05` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e7d9...a02ab9` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0f4930...26f134` | ⚠️ Unaudited |
| SpaceDoodles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d663e...57b91c` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf97f4d...539fb4` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb41828...f8e5e2` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f027...4931d8` | ⚠️ Unaudited |
| TokenPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d276e...5d3c01` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728...63a58d` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x043366...1dfc5d` | ⚠️ Unaudited |
| USDCTokenPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x546673...07c045` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023824...ee7c3c` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f1...457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec...ff6582` | ⚠️ Unaudited |
| VRFCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d2341...177ae0` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1...ad910c` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/chainlink/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19638] Active Bug Bounty Program — no match: The document is a bug bounty program overview, not an audit report. No specific contracts are listed in scope; only general categories like 'Smart Contract' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3e64cd...11f48a` | OperatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
