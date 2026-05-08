# Arcadia Finance — Verified Contract Sources (Gold Standard)

Verified Solidity sources for **59 production Arcadia V2 contracts**, fetched directly from each chain's block explorer on **2026-05-08** via the unified Etherscan v2 API (`https://api.etherscan.io/v2/api?chainid=...`).

**Inventory totals.** 59 contract directories, **1,335 source files**, ≈7.1 MB.

The fetch script `fetch_arcadia_sources.py` (kept locally, not pushed) iterates the documented contract list, requests `getsourcecode` for each address on its primary chain (Base preferred, Optimism otherwise, Unichain last), and unpacks Etherscan's `{{...}}`-wrapped standard-json-input into a real directory tree. The fetch summary is in [`_fetch_summary.json`](_fetch_summary.json).

---

## Layout

All Arcadia V2 contracts use **the same address across every chain they're deployed on**, so source is fetched once from a primary chain. Cross-chain re-deployments share Solidity source but use different compilers (Base v0.8.22, Unichain v0.8.30, Optimism v0.8.34); the source under `base/` is canonical, with `metadata.json` in each contract folder listing the additional chains where the same address is deployed.

```
contracts_gold_standard/
├── README.md                       ← this file
├── _fetch_summary.json             ← fetch results / file counts / byte sizes
└── base/
    ├── Factory_da14fd/
    │   ├── metadata.json           ← address, chain_id, compiler, license, additional_chains
    │   └── lib/                    ← Solidity import tree from standard-json-input
    │   └── src/
    ├── Registry_d06905/
    ├── Liquidator_a4b0b9/
    ├── AccountV1_Margin_bea2b6/    ← legacy on Base; AccountPlaceholder stub on Op/Unichain
    ├── AccountV2_Spot_d8af1f/      ← legacy on Base; AccountPlaceholder stub on Op/Unichain
    ├── AccountV3_Margin_78db6a/    ← post-hack Margin (all 3 chains)
    ├── AccountV4_Spot_e976bf/      ← post-hack Spot (all 3 chains)
    ├── LendingPool_WETH_803ea6/
    ├── LendingPool_USDC_3ec4a2/
    ├── LendingPool_cbBTC_a37e9b/   ← Base only
    ├── SeniorTranche_*/
    ├── WrappedSeniorTranche_*/
    ├── ERC20PrimaryAM_fbecea/
    ├── UniswapV3AM_21bd52/
    ├── UniswapV4HooksRegistry_8b0fd5/
    ├── DefaultUniswapV4AM_b80897/
    ├── AerodromePoolAM_fe0fa1/
    ├── WrappedAerodromeAM_17b582/
    ├── StakedAerodromeAM_9f4236/
    ├── SlipstreamAM_d3a705/
    ├── StakedSlipstreamAM_1dc7a0/
    ├── SlipstreamV2AM_3ade1f/      ← Base only
    ├── SlipstreamV3AM_caf416/      ← Base only
    ├── StakedSlipstreamV2AM_bed6c3/← Base only
    ├── StakedSlipstreamV3AM_e0f20b/← Base only
    ├── StargateAM_20f790/          ← Base + Optimism only
    ├── StakedStargateAM_ae909e/    ← Base + Optimism only
    ├── AlienBaseAM_79dd8b/         ← Base only
    ├── ChainlinkOM_6a5485/         ← single oracle module
    ├── CompounderSlipstream{V1,V2,V3}_*/
    ├── CompounderUniswap{V3,V4}_*/
    ├── RebalancerSlipstream{V1,V2,V3}_*/   ← V1/V2 are pre-hack family; V3 is post-hack
    ├── RebalancerUniswap{V3,V4}_*/
    ├── YieldClaimerSlipstream{V1,V2,V3}_*/
    ├── YieldClaimerUniswap{V3,V4}_*/
    ├── CoWSwapper_c92801/          ← Base only
    ├── MerklOperator_969f02/
    ├── SlipstreamV{2,3}_PositionManager_*/  ← Base only
    ├── WrappedStakedSlipstream_v{1,V2,V3}_*/
    ├── AAA_token_aaa843/
    ├── stAAA_token_dea153/
    ├── ART_RecoveryToken_908939/    ← post-hack recovery; not publicly audited
    └── stART_StakedRecovery_388925/
```

## What's in each contract directory

```
<doc_name>_<addr-prefix>/
├── metadata.json              ← address, chain_id, compiler, optimization, license,
│                                proxy/impl, additional_chains, source_explorer_url
├── lib/                       ← preserved standard-json-input tree (e.g. solmate, oz, accounts-v2)
└── src/                       ← Arcadia source modules (or top-level `.sol` if flattened verifier)
```

Where Etherscan returned a multi-file standard-json-input (`{{...}}` wrap), the directory tree from the JSON input is preserved 1-to-1. Where it returned a flat single file, the source is stored under `<ContractName>.sol` directly.

## Out-of-scope notes

- **External integrations not Arcadia code:** Uniswap V3/V4 NPMs, Aerodrome NPMs, Slipstream NPMs (the AMM-side, not Arcadia's wrappers) are not stored here. Their addresses are documented in [`../manifest_gold_standard.json`](../manifest_gold_standard.json) and [`../brief_gold_standard.md`](../brief_gold_standard.md) §9 for traceability.
- **Cross-chain redeployments:** the same Arcadia address on Optimism (compiler v0.8.34) and Unichain (compiler v0.8.30) is **not** archived separately. The Base copy is canonical; per-chain compiler differences are recorded in `metadata.json`'s `additional_chains` field. To verify chain-specific bytecode, follow the explorer URL pattern `https://optimistic.etherscan.io/address/<addr>#code` or `https://uniscan.xyz/address/<addr>#code`.
- **V1 protocol contracts (Ethereum / Optimism):** out of scope. V1 is operationally deprecated (residual TVL ≈$23K) and no V1 addresses are included in this directory or the manifest.
- **Initiator EOA `0xDc9B596ce15F859673D1Be72e2Aadd41DD3aC4fE`:** used as the default Rebalancer initiator across all four rebalancer addresses. This is an off-chain operator (likely an EOA or simple keeper contract). The v1 pipeline mistakenly added it as a contract; it is omitted here.
- **Recovery token (`ART` / `stART`):** included for completeness because it directly governs post-hack user redemption rights. **No public audit has been published** for the `recovery-token` repo at the time of fetch — flagged as the highest-priority audit gap.

## Provenance

| Source field | Origin |
|---|---|
| Source code | Etherscan v2 API `getsourcecode` (chain-id routed) |
| Address list | `docs.arcadia.finance` `Developers > Contract Addresses` (`llms-full.txt` export, 2026-05-08) |
| TVL bucketing | DefiLlama `arcadia-v2` (`api.llama.fi/protocol/arcadia-v2`, 2026-05-08) |
| Lending-pool reserves | Direct `balanceOf` reads via Alchemy RPC, 2026-05-08 (see `../brief_gold_standard.md` §4) |

See [`../manifest_gold_standard.json`](../manifest_gold_standard.json) for full per-contract metadata (audit tier, audit list, architecture layer, version) and [`../brief_gold_standard.md`](../brief_gold_standard.md) for the human-readable brief.
