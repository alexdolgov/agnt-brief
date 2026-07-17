# Agentic Audit Brief: Re7 Labs

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Re7 Labs (`re7-labs`)
- Website: [https://www.re7labs.xyz](https://www.re7labs.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, berachain, bsc, ethereum, linea, optimism, plasma, polygon, sonic, unichain
- Contract surface: 16 unique implementations (57 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $81,853,990.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Re7 Labs in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 57
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 10 deployments: ethereum `0x117576b8854a03ab7c3df1cf1cd8e04767bfa866`; ethereum `0x586719300c3966130b3ce15f563b1080271193e8`; ethereum `0x631d8e808f2c4177a8147eaa39a4f57c47634de8`; ethereum `0x82c710b9b225b43c0c90f097db31f5f10a7f86fa`; ethereum `0x8dde384022d4de1d6c67891a8865f551c444dc4c`; ethereum `0xa992d3777282c44ee980e9b0ca9bd0c0e4f737af`; ethereum `0xac73efa7696dc1c1617bbc20aec64422c8b70eda`; ethereum `0xbd9a8701b0f56b758bcd4ace08daf097e236e0cb`; ethereum `0xce45ef0414de3516caf1bcf937bf7f2cf67873de`; ethereum `0xe3b66ca897b4b844d5a8ee7a30982fac0d126760` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x81698f87c6482bf1ce9bfcfc0f103c4a0adf0af0`; ethereum `0x9437b2a8cf3b69d782a61f9814baabc172f72003`; ethereum `0xe86399fe6d7007fdecb08a2ee1434ee677a04433` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xd8b0f4e54a8dac04e0a57392f5a630cedb99c940` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x3a828c183b3f382d030136c824844ea30145b4c7`; ethereum `0x7f43fde12a40de708d908fb3b9bfb8540d9ce444`; ethereum `0xc65433845ecd16688eda196497fa9130d6c47bd8` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x78fc2c2ed1a4cdb5402365934ae5648adad094d0`; ethereum `0x95eef579155cd2c5510f312c8fa39208c3be01a8`; ethereum `0xa02f5e93f783baf150aa1f8b341ae90fe0a772f7`; ethereum `0xe0c98605f279e4d7946d25b75869c69802823763`; base `0x12afdefb2237a5963e7bab3e2d46ad0eee70406e`; base `0x6e37c95b43566e538d8c278eb69b00fc717a001b`; base `0xa2cac0023a4797b4729db94783405189a4203afc` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: ethereum `0x341193ed21711472e71aeca4a942123452bd0dda`; ethereum `0x4d52545235a3df246a8928c583e47ae7eec4acfe`; ethereum `0x64964e162aa18d32f91ea5b24a09529f811aeb8e`; unichain `0x2c0f7e917257926ba6233b20de19d7fe3210858c`; unichain `0x6af5e46456a8ac80bb53a02799965def99c26e52`; unichain `0xa48f8a10f16bb50a588606553d9fe7338050f8cd`; polygon `0xf91d80e43272dbc610551e8c872e0438d62c1c69`; base `0x00dfdb8c7295a03dcf1adff4d21eb5d9d19fb330` | ⚠️ Unaudited |
| MRe7BtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0` | ⚠️ Unaudited |
| MRe7DepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xce0a2953a5d46400af601a9857235312d1924ac7` | ⚠️ Unaudited |
| MRe7RedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| MultiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x2759e4741b370506be2ccef898960108e98f2faf`; ethereum `0x4c690c311d8a5aa16ec2a595d4ea3928a73c48d6`; ethereum `0x617895460004821c8de800d4a644593cab0ad40c`; ethereum `0x62f0baf53959af18cab47082f5ab58a5b93e041c`; ethereum `0x7a4effd87c2f3c55ca251080b1343b605f327e3a`; ethereum `0x84631c0d0081fde56deb72f6de77abbbf6a9f93a`; ethereum `0x8b0e80716c4be087c271e964e0bdc7780d32a2e8` | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde43dade5d05b31b1e3524a268b32314dee51da0` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ba1566ed39f865baf4c1eb9ace53f3d2062be65` | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbac96113f4f29b622c24fe2af9abbce29909900e` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x35e44d92e8f738a272bddbae53d1dc9490e75fe7`; ethereum `0x3d93b33f5e5fe74d54676720e70ea35210cdd46e` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x04447273ee808702a4855403af0ace8e7c042122`; ethereum `0x1ce2354074c717a266adadcd5e34104f233da446`; ethereum `0x5181cd56c2c71d20094d23d43f4d6362834643ae`; ethereum `0x787fc686879eace7ad94a63fcecd520fdeaf7af9`; optimism `0x3d63934715b6d4c4dfbbc1a00fe2a2145079dd76`; base `0x0b7ee82ad75b2d3fc7f3a110a51ba68714171d25`; base `0x618495ccc4e751178c4914b1e939c0fe0fb07b9b`; base `0xc9c474c6aa0e930ed42fd1f40be5b1d6a5ead645`; base `0xca120dcc42f45427ed0d0f060d56104c4a8edec4` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
