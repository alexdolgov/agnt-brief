# Agentic Audit Brief: Hyperithm

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hyperithm (`hyperithm`)
- Website: [https://www.hyperithm.com](https://www.hyperithm.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 277 unique implementations (277 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $114,321,532.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Hyperithm in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 277 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 105
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/225
- Verified + Unaudited implementations: 225
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 277
- Raw deployments: 277
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

### ⚠️ Verified + Unaudited (225)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144491 | `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144498 | `0x7c0391a651c080e99b38c179575342512769d9d5` | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144500 | `0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e` | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144470 | `0x4c727b81eb776e2614c72430e306cefd614bb837` | ⚠️ Unaudited |
| CUsdoCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144533 | `0xe95e2cf19a50324cc1511b2123ebcc5a89991d21` | ⚠️ Unaudited |
| CUsdoDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144525 | `0x15333d47106d55631ea07ff091eae5b056e8943c` | ⚠️ Unaudited |
| CUsdoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144532 | `0xe46602b3eaca0efc59b942e22e7e055cb6e2158c` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144527 | `0x1aca1d61a3f7e6cca0e410a38a8ee7f42dfb36a1` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144464 | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144421 | `0x01b16ea685735acabe519d682a08acade018f003` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144434 | `0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847` | ⚠️ Unaudited |
| dnTEST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144523 | `0x0659b917960d8bafec528415c22207d001e7a473` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144461 | `0x3cd3718f8f047aa32f775e2cb4245a164e1c99fb` | ⚠️ Unaudited |
| eUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144462 | `0x4089dc8b6637218f13465d28950a82a7e90cbe27` | ⚠️ Unaudited |
| hypeBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144467 | `0x48599ab08115cdf5731a7d8e5da1ac71d3c83459` | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144504 | `0x910cde06dfdcb06540744683812b8e2eb04a6f4c` | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144459 | `0x389035180efd4ee704f6e1b6a11e8889a1bbcac4` | ⚠️ Unaudited |
| hypeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144439 | `0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab` | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144507 | `0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463` | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144436 | `0x109e2a83502edf977fb035929a51414e93f6867c` | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144502 | `0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e` | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144455 | `0x33ed485dcf400e9354173aebf6de37d8c03c6fa9` | ⚠️ Unaudited |
| JIV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144454 | `0x334b32f6298167d9efdc0f7affe447dba53e3d42` | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144479 | `0x540f331ebc800b68d4972a01d57b2e1fe45d57ff` | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144482 | `0x562bb5014793e8d2df2b493a947fbd522d420c55` | ⚠️ Unaudited |
| MApolloDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144471 | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144480 | `0x54d4783f47889c73861152f027a1aedf75d439d0` | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144497 | `0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7` | ⚠️ Unaudited |
| MBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144486 | `0x5f5b02328db057c84217003ad3519c541fe887c9` | ⚠️ Unaudited |
| mEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144460 | `0x39c1891875afa8faae0ea8d9d3e769c46174fb87` | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144423 | `0x0391508a7cf5cf30c233d08849813c2959c0ea2f` | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144424 | `0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1` | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144519 | `0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6` | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144487 | `0x6142ad2733c45d42ef3c625d4e33689406cc3ad5` | ⚠️ Unaudited |
| mevBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144496 | `0x7813671f9c083b63fcbecbc182e9a0fc7de629a4` | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144505 | `0x931403532a4a30fee41bfe79f5b2159dcd0a5b43` | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144456 | `0x3549f6936dafb87f456dca3a061bc9225ff44b3c` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144446 | `0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c` | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144425 | `0x06e7279e596af4804a0fcc78ece24059da75cf26` | ⚠️ Unaudited |
| MFarmDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144453 | `0x313c76ecd990b728681f29464978d5637cb78164` | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144516 | `0xb73d1e0aedcd5bbeca0119e88288204101411e89` | ⚠️ Unaudited |
| MFOneDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144429 | `0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd` | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144433 | `0x0d98b671af8c51f6ffa94248b90df1b11dff6c47` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144437 | `0x10e2352da4790e547095f06fa3ef3093881080fb` | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144431 | `0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de` | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144473 | `0x4f6e5852f89c5a94119b039b355ad7043e959393` | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144517 | `0xbccac5cbf0691da65e48810d316a1e5b9f895a52` | ⚠️ Unaudited |
| MHyperDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144534 | `0x062ea1beaf82e09b44e30bc9e926af7599a603e4` | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144448 | `0x2c68087e994d24d454ba6c96f7a3152f6a2e9850` | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144451 | `0x2f4e7d11e54f34f5d02dade106a690efdbc74834` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144537 | `0x429409624853649a0dc08693249155813db98681` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144481 | `0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6` | ⚠️ Unaudited |
| MidasTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144531 | `0xdcf9c7a65133a268b110307ca8157538d2d906a3` | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144469 | `0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522` | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144489 | `0x67e14dd4f41955a1b10d4482345a1a4b06aaefac` | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144485 | `0x5e5aab1aad75853ab8114264c3bf3427b0634c9e` | ⚠️ Unaudited |
| MMevDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144474 | `0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81` | ⚠️ Unaudited |
| MMevDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144513 | `0xac5c4dcd870c835f8943e62ab33cdadba850e5e5` | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144466 | `0x482d1e94a26bbaef59fc5d038c41b679120d00cb` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144488 | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144512 | `0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31` | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144428 | `0x091f974e277a19485b9a713ac768850bc5af383b` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144443 | `0x1d9953c4e85e6d249520e8ff2b134e5ded875615` | ⚠️ Unaudited |
| MRe7DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144478 | `0x53c764c938385bc439dc1596413e1557deed62d8` | ⚠️ Unaudited |
| MSlDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144477 | `0x521f6153b7c5080f550517d9b76d9c08766ccb2f` | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144432 | `0x0d1c52c7cd203e4f84d084a33a062c61d51762fc` | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144452 | `0x307be9748111571739b92a5dda10191f29057a8b` | ⚠️ Unaudited |
| msyrupUSDp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144445 | `0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5` | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144444 | `0x1e2165801d84865587252155fb4580381f7a3fc4` | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144476 | `0x5113bf83400d184cde30af154117e29351e1cc91` | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144506 | `0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c` | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144484 | `0x5ca035326aa66b5db40fb6d3693772f073cd94bc` | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144438 | `0x1314fb72f67681e7617e59bcf92002a9311d2084` | ⚠️ Unaudited |
| mTBILL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144510 | `0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c` | ⚠️ Unaudited |
| MTBillDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144449 | `0x2e0357e38fc7fae9c29050aef3744d4055490ada` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144493 | `0x7165c2257ab6b6285389d8459938786c0ccd83d7` | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144440 | `0x19623f6af10bcd83b01c787e16219a738877851e` | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144503 | `0x8d8f821e72382e433f1bcf079c0365f976b2ccd0` | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144508 | `0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41` | ⚠️ Unaudited |
| mXRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144526 | `0x1536eadd072ae4416886718e0dc9b8ec095ed420` | ⚠️ Unaudited |
| MXrpDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144524 | `0x0ec0ae702bb47c6d25b55034ac8c6d2195158984` | ⚠️ Unaudited |
| MXrpDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144528 | `0x1caf775e65248bfc19fba701c6f84560cd92e35a` | ⚠️ Unaudited |
| MXrpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144529 | `0x69a5d5ed2694f05bccd9ad81496c97b3156338cd` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144426 | `0x07cf28d71a38c12e258922d9857ac415ae1ff579` | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144535 | `0x11428a874c29367527362b9b8d60c5e4fea6c772` | ⚠️ Unaudited |
| PoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144540 | `0xb74760fd26400030620027dd29d19d74d514700e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-144530 | `0x6db3bccfa67a39c6b6ae1e3352ee175ec4146842` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144450 | `0x2f1372244cedcaf8ee1759d2f02435628f14975f` | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144522 | `0xe123ebc5697151890dddf05943de393ceaccc7e9` | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144447 | `0x283cbedecb447dbe114b4268f79ba8b046e32f39` | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144468 | `0x489a797714708cf088d158714a376d8ff740d701` | ⚠️ Unaudited |
| RsEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144521 | `0xd52ba087e30928886baba15b1584d4ac9abaab2a` | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144539 | `0xae7d92bedcf6aa692e46d731a6df5ec53f8652b0` | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144538 | `0x853d1871e37ec7bc4ef1088b88db237e62737d57` | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | unit-144536 | `0x3404676e77abca60ffb1c00a8e09da21832796ce` | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144520 | `0xce2326260c168525a3e905391e8bfee00ebd0cea` | ⚠️ Unaudited |
| SyrupAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144515 | `0xad298d3ec4af69af52701a539d3bd14873ac8493` | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144511 | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144483 | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144490 | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TACmEDGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144499 | `0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c` | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144458 | `0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8` | ⚠️ Unaudited |
| TACmMEV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144442 | `0x1d3147d11c88f5008db19cb5dd945ae682910202` | ⚠️ Unaudited |
| tBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144472 | `0x4eed111a10c25a739b0d72bd2383f958b9fde211` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144494 | `0x72cca9794018c10ce47af3fc8d47e167d0761e96` | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144463 | `0x42e82b2ee52cdc922cfed82bfcef90ada31215b5` | ⚠️ Unaudited |
| TEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144465 | `0x46eab5259e1a2f18cbbfeeaa093130a456d09e78` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144518 | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144640 | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144549 | `0x030b69280892c888670edcdcd8b69fd8026a0bf3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144627 | `0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144605 | `0x03fda274c303b128eba9e00bf555a3f4f4f26ec3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144636 | `0x056339c044055819e8db84e71f5f2e1f536b2e5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144599 | `0x0a2a51f2f206447de3e3a80fcf92240244722395` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144541 | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144609 | `0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144581 | `0x0f50b401509798f1919a4e8d38192f78734e49c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144564 | `0x10cc8dbca90db7606013d8cd2e77eb024df693bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144556 | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144566 | `0x141f0e9ed8ba2295254c9df9476cce7bc29172b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144575 | `0x15a4c3e5a3e955a81a570e617d83680f57ee3862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144550 | `0x15f724b35a75f0c28f352b952ea9d1b24e348c57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144542 | `0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144546 | `0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144573 | `0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144613 | `0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144548 | `0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144625 | `0x1a57aba59d50b192f8440e205e3b8b885be128cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144615 | `0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144642 | `0x1fe17936c1cdc73c857263997716e3a60b9291c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144650 | `0x20226607b4fa64228abf3072ce561d6257683464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144624 | `0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144544 | `0x238a700ed6165261cf8b2e544ba797bc11e466ba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144652 | `0x27c0d44b02e1b732f37ba31c466a35053a7780b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144622 | `0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144646 | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144601 | `0x2ce15146958bf305dadebbbf31f2d5a4f2574b43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144543 | `0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144562 | `0x2ddc913e4c7674a7e42c55db48a92c47158e91c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144597 | `0x2f98a13635f6cec0cc45bc1e43969c71d68091d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144560 | `0x307267989a7bec3a57fd7fd96017c49803589fd0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144626 | `0x30acceedff97a3fe11ab52ee7425af4589338c06` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144545 | `0x30d9d1e76869516aea980390494aaed45c3efc1a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144594 | `0x319a05e260acc2490768a726ccfd341d4b3d5106` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144618 | `0x34031e751da2ab19009d8f7eb268face2bdfd0dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144551 | `0x37769af173ea65dfc2880179940d5566817af6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144553 | `0x39592bdbf6f3b96dd4547063945ab9ece769ae4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144558 | `0x39f0507060c12bb88cb68a496544011d2f341455` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144569 | `0x3de2e700d220928ff5180691004824d8ad42f5d4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144637 | `0x41438435c20b1c2f1fca702d387889f346a0c3de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144638 | `0x41c60765fa36109b19b21719f4593f19ddefa663` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144604 | `0x43881b05c3be68b2d33eb70addf9f666c5005f68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144552 | `0x48e284d0729eb1925066307072758d95dbbb49c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144579 | `0x4bcfda0a844b49da8bb19562ee52cc385395001a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144655 | `0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144577 | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144554 | `0x5455222ccdd32f85c1998f57dc6cf613b4498c2a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144585 | `0x548857309befb6fb6f20a9c5a56c9023d892785b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144608 | `0x5572eb7f4fb679ff6a99203f12b0484dc1062d78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144649 | `0x56814399caaedcee4f58d2e55da058a81dde744f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144614 | `0x5696b69be96e936e8e489070eb3d4f0e1fe966af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144606 | `0x57b3be350c777892611cedc93bcf8c099a9ecdab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144651 | `0x5a096ac89eaef68930352a15da49e4eb8590bf1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144645 | `0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144611 | `0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144592 | `0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144639 | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144547 | `0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144571 | `0x605a84861ee603e385b01b9048bea6a86118db0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144656 | `0x649f8698068ad143a7e18ba9cb0be112d5986aeb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144590 | `0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144631 | `0x65df7299a9010e399a38d6b7159d25239cdf039b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144603 | `0x6d62d3c3c8f9912890788b50299bf4d2c64823b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144588 | `0x6f51d8af5be2cf3517b8d6cd07361be382e83be6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144598 | `0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144596 | `0x76cc16608aa7cd32631bb151801bb095313f7bbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144628 | `0x7833397da276d6b588e76466c14c82b2d733cfb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144595 | `0x7a4c56b1baaad0ff5d248892e137d415da41b3b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144623 | `0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144620 | `0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144617 | `0x7e8c632ab231479886af1bc02b9d646e4634da93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144600 | `0x81c097e86842051b1ed4299a9e4d213cb07f6f42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144643 | `0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144612 | `0x8493f1f2b834c2837c87075b0edac17f5273789a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144630 | `0x87c9053c819bb28e0d73d33059e1b3da80afb0cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144607 | `0x88956c00a5fa046c823eaed747f21a95d2264403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144583 | `0x8d51dbc85ceef637c97d02bdaabb5e274850e68c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144602 | `0x8f382ae7bbdbecda835d26ce3ba64010eaee1386` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144616 | `0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144644 | `0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144653 | `0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144610 | `0x9f49b0980b141b539e2a94ec0864faf699ff9524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144619 | `0x9f7dd5462c183b6577858e16a13a4d864ce2f972` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144633 | `0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144634 | `0xa01227a26a7710bc75071286539e47adb6dea417` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144635 | `0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144647 | `0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144621 | `0xafcc1c556ee0436c10a3054b3d615abb93a352b5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144654 | `0xb5d6483c556bc6810b55b983315016fcb374186d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144648 | `0xbdc0304210972be75fd2247838bff2b64474f15c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144641 | `0xbf2a93b420225558a76fc9888c687c14977e6e7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144632 | `0xc344db27feba7f0a881a50f0f702a525a44f2368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-144629 | `0xc8495eaff71d3a563b906295fcf2f685b1783085` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-144658 | `0x3bde0b7b59769ec00c44c77090d88feb4516e731` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-144659 | `0x762fd99ee22742deecb8eecb12165752d9a18164` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-144657 | `0x7aee9020df0ac01bc6f3ceef6b1b7cbf3d0937e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144660 | `0x09ef712e8bf561fa6bb0e17db1fa0523c0965f5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144664 | `0x0a0817be02f0ab5370a9ec36cf399d1ead3588a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144663 | `0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144661 | `0x2b3f3514867cbccfadc80121297bb8088c683432` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144662 | `0x2eb410e4cb94e2e9e3cde3f7b405be4fcc076bc9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144665 | `0x4ef9ff56162bd3cb5073fb20dbd355c59084093f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | unit-144666 | `0x616185600989bf8339b58ac9e539d49536598343` | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144492 | `0x6f0c371f808996187729ed1bee13ace2e901d526` | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144475 | `0x507f409ba7e5ef489d5c0e3c4568b24985a029d0` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144441 | `0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603` | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144430 | `0x0c3f5fafb87318c0deaebff096aba019501fcb69` | ⚠️ Unaudited |
| WstEthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144509 | `0xa74f994672f232a30067da820f0e54881edbb9d7` | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144435 | `0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a` | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144514 | `0xac79fed395c2238c4fa13084ee440e19e4deb0fe` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144422 | `0x01feb0bba21552385de157174f32d97bc0e6afcc` | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144457 | `0x364fb05060e7562b0c6379b5bd3371c412e049aa` | ⚠️ Unaudited |
| zeroGUSDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144495 | `0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347` | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144501 | `0x8cf94465f8db8a273673dfe950bd1c9e34442aab` | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-144427 | `0x091074f37e8c72ddb8720afae77c44a855080e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30b59844ec16aba3ec4ca0bd97557ccb670d924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x583970971efcebfcebd3b530e436b8feeb3d43c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x667f93b8c3704c98340277314b68c0aaf56e02ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bfe3850f8b01624dd4abc7a7104b7ccc9705cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73685bd72df34b92bc81d43ef35cff4300de8625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c2fc6be8f34dd947220ad4cd8c7b892574134e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dd3e89fa418577f4be6c4c47b242c6a9181a2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaf2161a72789cfadcd808fb414c06fb631f9294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaca831977c292a454658435bab754c0fd2d66f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8739fbbd54c587a2ad43b50cbcc30ae34fe9e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc357015af5074679063d065bf1bd730ddcf87f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe039efe684919cd0c3d442b24ba1592fa53d91f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf11e20adb39730eb5790417b060ac0399b8dcded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf30c231eb3ac003be2d33100759d06ac6505cb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3e018b0a53f935127298b18b3d1d174f81ae9ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c090327c0395c47d6c11a6f02d61e9ba93993c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6f0f2f3d13894270d04205d00967175884b4ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf76e650f8a9526fe5e4b40f1b567c5c1b427ee43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcbf698bc1d7e058a5a98ae3f687bcb50f1867d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfeb873dfa1ea1baf7b20840d28bb7b6f3822616e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2b690cab819a815732544aeb422474efdc1b0615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3ea351249daa640f4ababc06b3118f35324fab72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x428d0191cb350ec2c34f7d332e25be7bb8a01829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4718e64c12cae76552696934f0b346cfc1e9a7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4e7caa4d3192e91c4fdb123fc927efa559cd0f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x574f3132a7fc596f61cfff711770e1e7d9fa35a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x69ecab6aa7bdfddd99def0891c0317076430ae50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x73b3724c97931b4e31b6b944230d365dffe15c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x850ec16c59e527e262d5a1331e9ad965997bc0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x880661f9b412065d616890ca458dccd0146cb77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x88b70f4f0a0344c305a29ce082a167c7436890fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8a7bd8886f784d0019b3285a41ea4dbdff47f96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa4812ee64059657ca9af278eeb64ad912a6e828b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa603cf264adeb8e7f0f063c116929adac2d4286e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaa016343d80a05e96ca4287607bfe1550568899a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb31bea5c2a43f942a3800558b1aa25978da75f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc199215cd8704738e4ece4c04821546c8f95fb16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd3239a355d47269e77cd028f2e965ef9fd893eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd9334689f66af838a65c93e7c16f6d1da63be283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xda56c2dafaf034b7bb490fab19162e2dd2e62404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe4ccb596112d35c9862d58a113342d122cfd3c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xedb38732f51787a312268f19fe0a18d90075d78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf7648811133635db67091a35a5abef18f3b43cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf91c31299e998c5127bc5f11e4a657fc0cf358cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfe5ae64f5ba6a45b9267a5ba274620539fa59566` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 52
- Live contracts: 0
- Unknown liveness contracts: 52
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=52

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x30b59844ec16aba3ec4ca0bd97557ccb670d924e` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x583970971efcebfcebd3b530e436b8feeb3d43c7` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x667f93b8c3704c98340277314b68c0aaf56e02ff` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x6bfe3850f8b01624dd4abc7a7104b7ccc9705cf8` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x73685bd72df34b92bc81d43ef35cff4300de8625` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x7c2fc6be8f34dd947220ad4cd8c7b892574134e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x7dd3e89fa418577f4be6c4c47b242c6a9181a2dd` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xaaf2161a72789cfadcd808fb414c06fb631f9294` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xbaca831977c292a454658435bab754c0fd2d66f0` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xc8739fbbd54c587a2ad43b50cbcc30ae34fe9e34` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xdc357015af5074679063d065bf1bd730ddcf87f7` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xe039efe684919cd0c3d442b24ba1592fa53d91f9` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf11e20adb39730eb5790417b060ac0399b8dcded` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf30c231eb3ac003be2d33100759d06ac6505cb03` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf3e018b0a53f935127298b18b3d1d174f81ae9ca` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf5c090327c0395c47d6c11a6f02d61e9ba93993c` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf6f0f2f3d13894270d04205d00967175884b4ea8` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xf76e650f8a9526fe5e4b40f1b567c5c1b427ee43` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xfcbf698bc1d7e058a5a98ae3f687bcb50f1867d9` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0xfeb873dfa1ea1baf7b20840d28bb7b6f3822616e` | non_address_book | unknown | unknown | unverified | n/a | `0xb6df4ab81e0f9f03c5c73f11a1b22a6b5f422005` |
| unverified unclassified | UnnamedContract<br>`0x0ee21b6c1f6aed64ce3c67767168ea62f3d8974b` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x14723d7e7072b65c7d0cdff71a4fbbc5c4dc7431` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x2b690cab819a815732544aeb422474efdc1b0615` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x3ea351249daa640f4ababc06b3118f35324fab72` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x428d0191cb350ec2c34f7d332e25be7bb8a01829` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x4718e64c12cae76552696934f0b346cfc1e9a7d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x4e7caa4d3192e91c4fdb123fc927efa559cd0f39` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x574f3132a7fc596f61cfff711770e1e7d9fa35a4` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x69ecab6aa7bdfddd99def0891c0317076430ae50` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x73b3724c97931b4e31b6b944230d365dffe15c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x78bb1cccfd0fb5e9d46ba4e0e566a54df65d90be` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x850ec16c59e527e262d5a1331e9ad965997bc0fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x880661f9b412065d616890ca458dccd0146cb77c` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x88b70f4f0a0344c305a29ce082a167c7436890fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0x8a7bd8886f784d0019b3285a41ea4dbdff47f96f` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xa4812ee64059657ca9af278eeb64ad912a6e828b` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xa603cf264adeb8e7f0f063c116929adac2d4286e` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xaa016343d80a05e96ca4287607bfe1550568899a` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xb31bea5c2a43f942a3800558b1aa25978da75f8a` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xc199215cd8704738e4ece4c04821546c8f95fb16` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xc50c3d19f668b8fc355d7e21e3f9e16b2982b77d` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xd3239a355d47269e77cd028f2e965ef9fd893eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xd9334689f66af838a65c93e7c16f6d1da63be283` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xda56c2dafaf034b7bb490fab19162e2dd2e62404` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xe4ccb596112d35c9862d58a113342d122cfd3c2e` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xedb38732f51787a312268f19fe0a18d90075d78a` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xf1e3c154dcb0c3b9e66a9b7191007d12efaa9053` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xf7648811133635db67091a35a5abef18f3b43cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xf91c31299e998c5127bc5f11e4a657fc0cf358cd` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |
| unverified unclassified | UnnamedContract<br>`0xfe5ae64f5ba6a45b9267a5ba274620539fa59566` | non_address_book | unknown | unknown | unverified | n/a | `0x1ca462ebb85e14014a8b5c2c46dd018a716b371b` |

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
| native | 118 |
| upstream | 0 |
| standard_library | 107 |
| needs_review | 52 |

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
