# Agentic Audit Brief: minterest

## Project Overview

- Project: minterest (`minterest`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:27.578Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum, mantle
- Contract surface: 39 unique implementations (39 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 39 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 2 ERC1155 multi-tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (mtokenstorage, interconnectorleaf, linkageleaf). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/39 (0.0%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
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

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatedPriceOracle | unknown | mantle | n/a | [`0x067820...d44095`](./contracts/mantle-5000/0x067820894867c71672387282533d3d3abad44095/) | ⚠️ Unaudited |
| Airdrop | unknown | mantle | n/a | [`0x8cf97c...6ee92a`](./contracts/mantle-5000/0x8cf97ca708ea8f0a8a4148584db918fb566ee92a/) | ⚠️ Unaudited |
| BDSystem | unknown | ethereum | n/a | [`0x4a1819...0a9f69`](./contracts/ethereum-1/0x4a1819ae5087efd1fb935676e486e4b4670a9f69/) | ⚠️ Unaudited |
| BlockNumberProvider | unknown | mantle | n/a | [`0x42c5bd...8ecca4`](./contracts/mantle-5000/0x42c5bd6e6af0e7de65ab50771c7bc7daa58ecca4/) | ⚠️ Unaudited |
| Buyback | unknown | ethereum | n/a | [`0xed78b0...9f61e8`](./contracts/ethereum-1/0xed78b0879b09392a502dd5de3f56516be19f61e8/) | ⚠️ Unaudited |
| BuybackDripper | unknown | mantle | n/a | [`0x1ba2c2...c9cebf`](./contracts/mantle-5000/0x1ba2c2df9d03a5bb40c8fd49ae0333a59bc9cebf/) | ⚠️ Unaudited |
| DeadDrop | unknown | ethereum | n/a | [`0x2b92cf...bb5145`](./contracts/ethereum-1/0x2b92cf5e62847384588c11a142b076f65cbb5145/) | ⚠️ Unaudited |
| EmissionBooster | unknown | ethereum | n/a | [`0x38f817...394814`](./contracts/ethereum-1/0x38f81796428d41feed5cd824051c610714394814/) | ⚠️ Unaudited |
| FallbackPriceFeed | unknown | ethereum | n/a | [`0x17789a...02de88`](./contracts/ethereum-1/0x17789a33956915700e6d80c85ca2454c8c02de88/) | ⚠️ Unaudited |
| IncentiveEmissionHub | unknown | mantle | n/a | [`0x9b9e6e...668d9f`](./contracts/mantle-5000/0x9b9e6e265fca781c8761cf61fba346fd92668d9f/) | ⚠️ Unaudited |
| Interconnector | unknown | mantle | n/a | [`0x156fc1...11bb8f`](./contracts/mantle-5000/0x156fc102f77d0a05ca500d93d6cea1f6e011bb8f/) | ⚠️ Unaudited |
| KinkMultiplierModel | unknown | ethereum | n/a | [`0x038328...4b10ad`](./contracts/ethereum-1/0x03832875bab27ae53b745a88b6f98819334b10ad/) | ⚠️ Unaudited |
| Liquidation | unknown | ethereum | n/a | [`0x494c83...c3ced6`](./contracts/ethereum-1/0x494c83de7da10546ce84106c544a279154c3ced6/) | ⚠️ Unaudited |
| MEther | unknown | ethereum | n/a | [`0x6a9643...0153a0`](./contracts/ethereum-1/0x6a9643d33dc6f15cf88fff190afca99e420153a0/) | ⚠️ Unaudited |
| MinterestNFT | unknown | ethereum | n/a | [`0xdfdab6...7a7728`](./contracts/ethereum-1/0xdfdab67039dbe6cdeb2398b9df8c0ef5617a7728/) | ⚠️ Unaudited |
| MinterestNFTMirror | unknown | mantle | n/a | [`0x00c8a8...5efebc`](./contracts/mantle-5000/0x00c8a8154eba6aac3768ce27d5595bce545efebc/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x121d54...4ff7de`](./contracts/mantle-5000/0x121d54e653a63d90569813e7c6a4c5e6084ff7de/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x127f73...ab8fe1`](./contracts/mantle-5000/0x127f73aa42609a06708d0811d73e5214b7ab8fe1/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x272726...f217c4`](./contracts/mantle-5000/0x27272698e0962a4bdf33f70a53d6aea3fef217c4/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x2bd26b...ee9979`](./contracts/mantle-5000/0x2bd26ba2ef62ff90f807365c2bf363fb3bee9979/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x438e2f...cc6469`](./contracts/mantle-5000/0x438e2f70defc85610ea8ff596d2e643711cc6469/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x6cc156...cfa617`](./contracts/mantle-5000/0x6cc1560efe633e8799226c87c45981ef93cfa617/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0x94826d...aa9e9b`](./contracts/mantle-5000/0x94826dc22300ec5609512ee0ac8a44ed0aaa9e9b/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0xb3958b...c34179`](./contracts/mantle-5000/0xb3958b3a215c0fec56a20dfeb55971b68cc34179/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0xde7235...dca649`](./contracts/mantle-5000/0xde7235ad21edf50e6c7cb4d3ac6b5e5ee4dca649/) | ⚠️ Unaudited |
| MintProxy | unknown | mantle | n/a | [`0xe53a90...1a932d`](./contracts/mantle-5000/0xe53a90efd263363993a3b41aa29f7dabde1a932d/) | ⚠️ Unaudited |
| Mnt | unknown | ethereum | n/a | [`0x149cac...821a05`](./contracts/ethereum-1/0x149cac67f1cd5d80651e7c9bb359ec285d821a05/) | ⚠️ Unaudited |
| MntGovernor | unknown | ethereum | n/a | [`0x3b1fda...a5de48`](./contracts/ethereum-1/0x3b1fda2692b261de8ae079251c0c0e50cfa5de48/) | ⚠️ Unaudited |
| MntMirror_Mantle | unknown | mantle | n/a | [`0x5ecdb7...fffab4`](./contracts/mantle-5000/0x5ecdb76feda945dc71f7d9ce62dfe7eafefffab4/) | ⚠️ Unaudited |
| MNTSource | unknown | ethereum | n/a | [`0x5ffdac...1cada1`](./contracts/ethereum-1/0x5ffdac6407e9904181449b570f23d194d01cada1/) | ⚠️ Unaudited |
| MntTimelock | unknown | ethereum | n/a | [`0x2e4753...c8fd3b`](./contracts/ethereum-1/0x2e4753ceb282d8cade211793f001974dc1c8fd3b/) | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | [`0x10a8a8...f51657`](./contracts/ethereum-1/0x10a8a85ebb5821cffe3c6c182376533b2af51657/) | ⚠️ Unaudited |
| MUSDYToken_Mantle | unknown | mantle | n/a | [`0x147271...4ff033`](./contracts/mantle-5000/0x14727171e92800acfe7c4ccfa4f9e572614ff033/) | ⚠️ Unaudited |
| PythPriceOracle | unknown | mantle | n/a | [`0xe491e4...ae7359`](./contracts/mantle-5000/0xe491e4c70f8c74380e68a8c4e1a0352fd1ae7359/) | ⚠️ Unaudited |
| RewardsHub | unknown | ethereum | n/a | [`0x63e0db...9e0399`](./contracts/ethereum-1/0x63e0dbec2143acae33d2cc53e23d9134359e0399/) | ⚠️ Unaudited |
| RewardsHubCooldown | unknown | ethereum | n/a | [`0xd05a8a...b47925`](./contracts/ethereum-1/0xd05a8a917d4865c7abd1b8b10b5443db14b47925/) | ⚠️ Unaudited |
| Supervisor | unknown | ethereum | n/a | [`0xd13f50...77c081`](./contracts/ethereum-1/0xd13f50274a68abf2384c79248adc259b3777c081/) | ⚠️ Unaudited |
| WeightAggregator | unknown | mantle | n/a | [`0x0f3821...de5bcb`](./contracts/mantle-5000/0x0f3821e13e32d696931fd1333c1ae9daf8de5bcb/) | ⚠️ Unaudited |
| Whitelist | unknown | mantle | n/a | [`0xce281e...b36d66`](./contracts/mantle-5000/0xce281e54e6aa816a7c6b6aead4e248a36db36d66/) | ⚠️ Unaudited |

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
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
