# Agentic Audit Brief: Timeswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Timeswap (`timeswap`)
- Website: [https://timeswap.io](https://timeswap.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, chain-2525, ethereum, hyperliquid, mantle, optimism, polygon, polygon-zkevm, x-layer
- Contract surface: 797 unique implementations (797 raw deployments)
- Coverage basis: 0/225 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $333,514.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Timeswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 239 contract row(s) across arbitrum, base, chain-2525, ethereum, hyperliquid, mantle, optimism, polygon, polygon-zkevm, x-layer. Structural roles: 224 unclassified, 15 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 239
- Structural roles: unclassified (224), core (15)
- Contract kinds: contract (192), abstract (47)
- Detected standards: multicall (13), erc165 (7)
- Frameworks: openzeppelin (15), uniswap-v2 (13), uniswap-v3 (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 314 contracts are derived from known codebases. 314 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 1)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 10)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 137)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 1101)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 5000)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 8453)
- TimeswapV2LiquidityToken v2.5.0 (`0xf2a062...020e09`, chain 42161)
- TimeswapV2LiquidityToken v2.5.2 (`0xf2a062...020e09`, chain 196)
- TimeswapV2LiquidityToken v2.5.2 (`0xf2a062...020e09`, chain 999)
- TimeswapV2OptionFactory (`0x17385e...0896c4`, chain 1)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 10)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 137)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 1101)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 5000)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 8453)
- TimeswapV2OptionFactory v2.5.0 (`0x17385e...0896c4`, chain 42161)
- TimeswapV2OptionFactory v2.5.2 (`0x17385e...0896c4`, chain 196)
- TimeswapV2OptionFactory v2.5.2 (`0x17385e...0896c4`, chain 999)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 1)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 10)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 137)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 1101)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 5000)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 8453)
- TimeswapV2Periphery v2.5.0 (`0x7c9cad...5516a2`, chain 42161)
- TimeswapV2Periphery v2.5.2 (`0x7c9cad...5516a2`, chain 196)
- TimeswapV2Periphery v2.5.2 (`0x7c9cad...5516a2`, chain 999)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0x88a424...3fe1cd`, chain 1)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0xa68df3...46ff62`, chain 10)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0xaf3e4a...ae6356`, chain 137)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0xbbfd14...9b329b`, chain 1101)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0x870209...05f511`, chain 5000)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0xa68df3...46ff62`, chain 8453)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 (`0x35e1a1...731994`, chain 42161)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.2 (`0x3dfd72...de2a54`, chain 196)
- TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.2 (`0xa12e6d...227c2a`, chain 999)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0x406bce...5c895a`, chain 1)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0x477ddd...2cfc04`, chain 10)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0x683128...8fbe7b`, chain 137)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0xf298b0...42afb7`, chain 1101)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0x5a668c...6d7b74`, chain 5000)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0x505fba...99c7ef`, chain 8453)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 (`0xb1b048...df5778`, chain 42161)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.2 (`0xc1aa6b...587889`, chain 196)
- TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.2 (`0xd7c500...4ff048`, chain 999)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0x6e3c24...2e54d2`, chain 1)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0xa92347...6372ad`, chain 10)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0x7410fe...1fad3d`, chain 137)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0x00a60f...92635e`, chain 1101)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0x6f6021...a3121b`, chain 5000)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0xa92347...6372ad`, chain 8453)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 (`0x01bead...f6e299`, chain 42161)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.2 (`0x32de46...07a592`, chain 196)
- TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.2 (`0xc0516d...fa55c1`, chain 999)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0x210f54...55428f`, chain 1)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0xb7c52c...138988`, chain 10)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0xbb3848...d986ee`, chain 137)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0x20f431...d7f307`, chain 1101)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0x64d100...8c4e95`, chain 5000)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0xb7c52c...138988`, chain 8453)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 (`0xd304c0...952a89`, chain 42161)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.2 (`0x416008...c1ecd1`, chain 196)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.2 (`0x9cec93...881e10`, chain 999)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0x2723fb...51614c`, chain 1)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0x5bdb6b...3a0b32`, chain 10)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xd1fa69...8cb8d9`, chain 137)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0x6d393c...b37b6c`, chain 1101)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0x6b42c1...25c97c`, chain 5000)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0x5bdb6b...3a0b32`, chain 8453)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xd481eb...7d0ab5`, chain 42161)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.2 (`0x1ed012...a0a07f`, chain 196)
- TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.2 (`0x18c689...65a419`, chain 999)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x6c42f2...e667da`, chain 1)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x835eb7...00feb8`, chain 10)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x70dde3...9c8e64`, chain 137)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x4bce1c...2d5a33`, chain 1101)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x4de6e7...b4a346`, chain 5000)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x835eb7...00feb8`, chain 8453)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 (`0x0288f0...79f130`, chain 42161)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.2 (`0x260e0b...cf5589`, chain 196)
- TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.2 (`0xdbc9df...e747c5`, chain 999)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0x4295aa...259199`, chain 1)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0x09ea8f...39bd70`, chain 10)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0xf369f3...eb9d9e`, chain 137)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0xec8116...d84a8a`, chain 1101)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0x3926de...4fa371`, chain 5000)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0x09ea8f...39bd70`, chain 8453)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 (`0xfa6841...4d0485`, chain 42161)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.2 (`0x9dd1aa...f96fe4`, chain 196)
- TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.2 (`0xced5c0...6728e4`, chain 999)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0xd391e5...e4d70b`, chain 1)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0x40879a...712ea6`, chain 10)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0xb8a01b...92a901`, chain 137)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0x520bfd...277605`, chain 1101)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0x6bf230...7fe198`, chain 5000)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0x40879a...712ea6`, chain 8453)
- TimeswapV2PeripheryNoDexCollect v2.5.0 (`0x1ae701...99c8e0`, chain 42161)
- TimeswapV2PeripheryNoDexCollect v2.5.2 (`0xc19a1c...938a43`, chain 196)
- TimeswapV2PeripheryNoDexCollect v2.5.2 (`0x0350c2...36eaf2`, chain 999)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0x49334a...f49399`, chain 1)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0x497e24...bcce17`, chain 10)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0xcf59fe...bfe791`, chain 137)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0xa13729...79688c`, chain 1101)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0x986ec6...c85ca5`, chain 5000)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0x497e24...bcce17`, chain 8453)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 (`0xf253ec...ba90f0`, chain 42161)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.2 (`0x3fb863...8fe9c4`, chain 196)
- TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.2 (`0x156d78...fb55b3`, chain 999)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 1)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 10)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 137)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 (`0x2eda68...2d61a5`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.2 (`0xfdfed7...3b343d`, chain 196)
- TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.2 (`0xfdfed7...3b343d`, chain 999)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0x457172...9ab999`, chain 1)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0xa97fe0...56441e`, chain 10)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0xa97fe0...56441e`, chain 137)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0x457172...9ab999`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0x457172...9ab999`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 (`0x457172...9ab999`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.2 (`0x457172...9ab999`, chain 196)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.2 (`0x457172...9ab999`, chain 999)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 1)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 10)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 137)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 (`0xe6eaeb...29fd5f`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.2 (`0x488821...330feb`, chain 196)
- TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.2 (`0x488821...330feb`, chain 999)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 1)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 10)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 137)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 (`0xefd5dc...1c9606`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.2 (`0x3c9c2f...46b507`, chain 196)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.2 (`0x3c9c2f...46b507`, chain 999)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 1)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 10)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 137)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 (`0xa1436a...427ec4`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.2 (`0x9687c8...cdb987`, chain 196)
- TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.2 (`0x9687c8...cdb987`, chain 999)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 1)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 10)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 137)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 (`0xf54feb...21fe6e`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.2 (`0x652cec...120e82`, chain 196)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.2 (`0x652cec...120e82`, chain 999)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 1)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 10)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 137)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 (`0xbb8f92...89cb14`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.2 (`0xbef50f...9ffc78`, chain 196)
- TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.2 (`0xbef50f...9ffc78`, chain 999)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 1)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 10)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 137)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 (`0xeae26c...c1d26b`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.2 (`0x5c997e...963b7c`, chain 196)
- TimeswapV2PeripheryNoDexQuoterCollect v2.5.2 (`0x5c997e...963b7c`, chain 999)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 1)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 10)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 137)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 (`0xace7d3...82be1d`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.2 (`0xf37bca...c9bc31`, chain 196)
- TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.2 (`0xf37bca...c9bc31`, chain 999)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 1)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 10)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 137)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 (`0xb79611...f46221`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.2 (`0x3ecaed...5bab0f`, chain 196)
- TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.2 (`0x3ecaed...5bab0f`, chain 999)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 1)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 10)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 137)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 (`0x88ad86...8f6833`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.2 (`0x5ab1a8...867d6f`, chain 196)
- TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.2 (`0x5ab1a8...867d6f`, chain 999)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 1)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 10)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 137)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 1101)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 5000)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 8453)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 (`0xcce02f...eb9ecb`, chain 42161)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.2 (`0x779cfb...e130fd`, chain 196)
- TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.2 (`0x779cfb...e130fd`, chain 999)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x0a80b8...3828dd`, chain 1)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x488f94...84899f`, chain 10)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x3b59bc...c40696`, chain 137)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x97c8b5...abc14f`, chain 1101)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x08898d...b630c9`, chain 5000)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x488f94...84899f`, chain 8453)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 (`0x08d0d4...af867b`, chain 42161)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.2 (`0xbb2daa...32034b`, chain 196)
- TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.2 (`0x50bc65...3b8e14`, chain 999)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0x6500de...a6c07a`, chain 1)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0xb683cd...8d7a0d`, chain 10)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0x7aabae...b2b583`, chain 137)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0xea6695...c6a90b`, chain 1101)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0x0e3c41...630f54`, chain 5000)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0xb683cd...8d7a0d`, chain 8453)
- TimeswapV2PeripheryNoDexWithdraw v2.5.0 (`0xecebd8...587451`, chain 42161)
- TimeswapV2PeripheryNoDexWithdraw v2.5.2 (`0xf1a65a...a17d4b`, chain 196)
- TimeswapV2PeripheryNoDexWithdraw v2.5.2 (`0x04f25b...5c26df`, chain 999)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0xfeb145...77d55d`, chain 1)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0xecd4b1...2675e3`, chain 10)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0x95c6f8...340654`, chain 137)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0x7da07a...da2a6e`, chain 1101)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0xf42a61...bec65a`, chain 5000)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0xecd4b1...2675e3`, chain 8453)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 (`0x0e3d6a...2f7a63`, chain 42161)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.2 (`0x8da12b...2c9410`, chain 196)
- TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.2 (`0x16e6e3...e95189`, chain 999)
- TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.0.0 (`0xb3c9e3...75cb9e`, chain 1)
- TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.0.0 (`0xb3f4d1...6c5492`, chain 42161)
- TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.1.0 (`0xc28b8a...2dd368`, chain 137)
- TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.0.0 (`0x28d059...1155a9`, chain 1)
- TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.0.0 (`0x275695...1cfb3e`, chain 42161)
- TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.1.0 (`0x990a70...faa2a7`, chain 137)
- TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.0.0 (`0x63a3ce...90a4ee`, chain 1)
- TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.0.0 (`0x6471ce...55f3e0`, chain 42161)
- TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.1.0 (`0x8db840...aea008`, chain 137)
- TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.0.0 (`0xada7f8...a75dd4`, chain 1)
- TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.0.0 (`0xdb7c84...6d47b4`, chain 42161)
- TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.1.0 (`0x6d0ae5...516083`, chain 137)
- TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.0.0 (`0x507365...630f53`, chain 1)
- TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.0.0 (`0x8c76cb...35e021`, chain 42161)
- TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.1.0 (`0x36b34a...d500e9`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.0.0 (`0x76449b...19b5b0`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.0.0 (`0x4a333a...13ec7f`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.1.0 (`0x410c4a...ad389f`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.0.0 (`0xfa480f...69b326`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.0.0 (`0xdc879b...b2575d`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.1.0 (`0x12257a...00fd9f`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.0.0 (`0xebab2b...ef9c1e`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.0.0 (`0x4f737d...98a2c5`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.1.0 (`0x19378e...e6da7b`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.0.0 (`0x33c15f...e26914`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.0.0 (`0xb8d271...181a30`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.1.0 (`0xb401e6...3b8358`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees v2.1.0 (`0x5270f9...359ac4`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.0.0 (`0x129584...cf39e8`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.0.0 (`0x779bc1...e5e91f`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.1.0 (`0x4f4d89...946452`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityAndFeesGivenPosition v2.0.0 (`0x6b7beb...f3fd55`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition v2.1.0 | TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityAndFeesGivenPosition v2.1.0 (`0x423c64...9f7f60`, chain 137)
- TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.0.0 (`0x7842cf...a277f6`, chain 1)
- TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.0.0 (`0x787c36...421259`, chain 42161)
- TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.1.0 (`0x7842cf...a277f6`, chain 137)
- TimeswapV2PeripheryUniswapV3Rebalance v2.0.0 (`0x13b270...ef3b30`, chain 1)
- TimeswapV2PeripheryUniswapV3Rebalance v2.0.0 (`0x3c8e77...cbf258`, chain 42161)
- TimeswapV2PeripheryUniswapV3Rebalance v2.1.0 (`0xeb1684...06c699`, chain 137)
- TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.0.0 (`0x49d45f...d70f4e`, chain 1)
- TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.0.0 (`0x85ab27...497128`, chain 42161)
- TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition v2.1.0 | TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.1.0 (`0x25f6a6...a5db37`, chain 137)
- TimeswapV2PeripheryUniswapV3Withdraw v2.0.0 (`0x09bf6e...30fcc1`, chain 1)
- TimeswapV2PeripheryUniswapV3Withdraw v2.0.0 (`0xed64b5...02f75c`, chain 42161)
- TimeswapV2PeripheryUniswapV3Withdraw v2.1.0 (`0x480263...1d2e49`, chain 137)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 1)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 10)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 137)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 1101)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 5000)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 8453)
- TimeswapV2PoolFactory v2.5.0 (`0x97509c...90354c`, chain 42161)
- TimeswapV2PoolFactory v2.5.2 (`0x97509c...90354c`, chain 196)
- TimeswapV2PoolFactory v2.5.2 (`0x97509c...90354c`, chain 999)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 1)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 10)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 137)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 1101)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 5000)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 8453)
- TimeswapV2Token v2.5.0 (`0x4aa2bc...ae287c`, chain 42161)
- TimeswapV2Token v2.5.2 (`0x4aa2bc...ae287c`, chain 196)
- TimeswapV2Token v2.5.2 (`0x4aa2bc...ae287c`, chain 999)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 1)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 10)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 137)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 1101)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 5000)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 8453)
- TimeswapV2TokenForLiquidity v2.5.0 (`0x136397...8e3dbb`, chain 42161)
- TimeswapV2TokenForLiquidity v2.5.2 (`0x136397...8e3dbb`, chain 196)
- TimeswapV2TokenForLiquidity v2.5.2 (`0x136397...8e3dbb`, chain 999)

## Contract Surface Quality

- Indexed contracts: 239; live-surface contracts included: 239 (225 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 314/796 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/225 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 314 own, 478 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 314 of 797 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/225
- Verified + Unaudited implementations: 225
- Verified by bytecode match: 0
- Unverified implementations: 89
- Unique implementations: 797
- Raw deployments: 797
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (244)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MerkleDistributorPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x224f74...bde41d` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394334 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394404 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394662 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395052 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394876 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2LiquidityToken v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395082 | `0xf2a062...020e09` | ⚠️ Unaudited |
| TimeswapV2OptionFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394286 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394346 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394518 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-394997 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394745 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2OptionFactory v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395060 | `0x17385e...0896c4` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394313 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394375 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394582 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394940 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395021 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394799 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2Periphery v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395072 | `0x7c9cad...5516a2` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394898 | `0x19b29b...774734` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394314 | `0x88a424...3fe1cd` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394388 | `0xa68df3...46ff62` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394620 | `0xaf3e4a...ae6356` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395033 | `0xa68df3...46ff62` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394758 | `0x35e1a1...731994` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395076 | `0xa12e6d...227c2a` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394298 | `0x406bce...5c895a` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394354 | `0x477ddd...2cfc04` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394565 | `0x683128...8fbe7b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394921 | `0x5a668c...6d7b74` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395013 | `0x505fba...99c7ef` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394833 | `0xb1b048...df5778` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395080 | `0xd7c500...4ff048` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394935 | `0x709156...740964` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394310 | `0x6e3c24...2e54d2` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394389 | `0xa92347...6372ad` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394575 | `0x7410fe...1fad3d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394932 | `0x6f6021...a3121b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395034 | `0xa92347...6372ad` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394730 | `0x01bead...f6e299` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395078 | `0xc0516d...fa55c1` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394928 | `0x6b38a8...17dc93` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394288 | `0x210f54...55428f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394396 | `0xb7c52c...138988` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394630 | `0xbb3848...d986ee` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395040 | `0xb7c52c...138988` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394852 | `0xd304c0...952a89` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395075 | `0x9cec93...881e10` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394289 | `0x2723fb...51614c` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394368 | `0x5bdb6b...3a0b32` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394646 | `0xd1fa69...8cb8d9` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395014 | `0x5bdb6b...3a0b32` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394853 | `0xd481eb...7d0ab5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395061 | `0x18c689...65a419` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394891 | `0x0b74d6...8eba59` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394309 | `0x6c42f2...e667da` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394379 | `0x835eb7...00feb8` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394572 | `0x70dde3...9c8e64` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395022 | `0x835eb7...00feb8` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394731 | `0x0288f0...79f130` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395081 | `0xdbc9df...e747c5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394299 | `0x4295aa...259199` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394343 | `0x09ea8f...39bd70` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394663 | `0xf369f3...eb9d9e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-394994 | `0x09ea8f...39bd70` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394881 | `0xfa6841...4d0485` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395079 | `0xced5c0...6728e4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4846e8...00b7e0` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394328 | `0xd391e5...e4d70b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394352 | `0x40879a...712ea6` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394628 | `0xb8a01b...92a901` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395005 | `0x40879a...712ea6` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394746 | `0x1ae701...99c8e0` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexCollect v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395055 | `0x0350c2...36eaf2` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394952 | `0x963f5b...656464` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394301 | `0x49334a...f49399` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394357 | `0x497e24...bcce17` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394644 | `0xcf59fe...bfe791` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395011 | `0x497e24...bcce17` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394875 | `0xf253ec...ba90f0` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394924 | `0x5fb0e2...29d379` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394294 | `0x2eda68...2d61a5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394350 | `0x2eda68...2d61a5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394533 | `0x2eda68...2d61a5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395001 | `0x2eda68...2d61a5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394754 | `0x2eda68...2d61a5` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395084 | `0xfdfed7...3b343d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394300 | `0x457172...9ab999` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394390 | `0xa97fe0...56441e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394616 | `0xa97fe0...56441e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394912 | `0x457172...9ab999` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395008 | `0x457172...9ab999` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395064 | `0x457172...9ab999` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394927 | `0x681bb4...804771` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394330 | `0xe6eaeb...29fd5f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394400 | `0xe6eaeb...29fd5f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394656 | `0xe6eaeb...29fd5f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395046 | `0xe6eaeb...29fd5f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394866 | `0xe6eaeb...29fd5f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395065 | `0x488821...330feb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394925 | `0x5fe786...5afe9a` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394333 | `0xefd5dc...1c9606` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394403 | `0xefd5dc...1c9606` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394661 | `0xefd5dc...1c9606` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395050 | `0xefd5dc...1c9606` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394874 | `0xefd5dc...1c9606` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395062 | `0x3c9c2f...46b507` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394318 | `0xa1436a...427ec4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394387 | `0xa1436a...427ec4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394611 | `0xa1436a...427ec4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395030 | `0xa1436a...427ec4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394825 | `0xa1436a...427ec4` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395073 | `0x9687c8...cdb987` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394905 | `0x323d4e...83612b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394335 | `0xf54feb...21fe6e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394405 | `0xf54feb...21fe6e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394665 | `0xf54feb...21fe6e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395053 | `0xf54feb...21fe6e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394877 | `0xf54feb...21fe6e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395070 | `0x652cec...120e82` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394324 | `0xbb8f92...89cb14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394397 | `0xbb8f92...89cb14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394632 | `0xbb8f92...89cb14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395041 | `0xbb8f92...89cb14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394840 | `0xbb8f92...89cb14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395077 | `0xbef50f...9ffc78` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394902 | `0x27230d...ec3eb2` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394331 | `0xeae26c...c1d26b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394401 | `0xeae26c...c1d26b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394658 | `0xeae26c...c1d26b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395047 | `0xeae26c...c1d26b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394870 | `0xeae26c...c1d26b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394960 | `0xb22b60...a18cf8` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394319 | `0xace7d3...82be1d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394391 | `0xace7d3...82be1d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394619 | `0xace7d3...82be1d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395035 | `0xace7d3...82be1d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394831 | `0xace7d3...82be1d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395083 | `0xf37bca...c9bc31` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2fa4c7...571a74` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394323 | `0xb79611...f46221` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394395 | `0xb79611...f46221` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394627 | `0xb79611...f46221` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395039 | `0xb79611...f46221` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394837 | `0xb79611...f46221` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395063 | `0x3ecaed...5bab0f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394909 | `0x3e49d4...e7368e` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394315 | `0x88ad86...8f6833` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394380 | `0x88ad86...8f6833` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394590 | `0x88ad86...8f6833` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395024 | `0x88ad86...8f6833` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394805 | `0x88ad86...8f6833` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395068 | `0x5ab1a8...867d6f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394325 | `0xcce02f...eb9ecb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394399 | `0xcce02f...eb9ecb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394642 | `0xcce02f...eb9ecb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395042 | `0xcce02f...eb9ecb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394849 | `0xcce02f...eb9ecb` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395071 | `0x779cfb...e130fd` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0ee7a1...046e5d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394281 | `0x0a80b8...3828dd` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394355 | `0x488f94...84899f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394537 | `0x3b59bc...c40696` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395010 | `0x488f94...84899f` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394734 | `0x08d0d4...af867b` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395067 | `0x50bc65...3b8e14` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394893 | `0x11c065...ba07b7` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394306 | `0x6500de...a6c07a` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394394 | `0xb683cd...8d7a0d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394581 | `0x7aabae...b2b583` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395038 | `0xb683cd...8d7a0d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394872 | `0xecebd8...587451` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdraw v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395056 | `0x04f25b...5c26df` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394338 | `0xfeb145...77d55d` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394402 | `0xecd4b1...2675e3` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394598 | `0x95c6f8...340654` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395048 | `0xecd4b1...2675e3` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394739 | `0x0e3d6a...2f7a63` | ⚠️ Unaudited |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395059 | `0x16e6e3...e95189` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394322 | `0xb3c9e3...75cb9e` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394836 | `0xb3f4d1...6c5492` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394637 | `0xc28b8a...2dd368` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394290 | `0x28d059...1155a9` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394750 | `0x275695...1cfb3e` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3BorrowGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394602 | `0x990a70...faa2a7` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394305 | `0x63a3ce...90a4ee` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394784 | `0x6471ce...55f3e0` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseBorrowGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394593 | `0x8db840...aea008` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394320 | `0xada7f8...a75dd4` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394857 | `0xdb7c84...6d47b4` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3CloseLendGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394568 | `0x6d0ae5...516083` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394304 | `0x507365...630f53` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394807 | `0x8c76cb...35e021` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3LendGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394536 | `0x36b34a...d500e9` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394311 | `0x76449b...19b5b0` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394770 | `0x4a333a...13ec7f` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394541 | `0x410c4a...ad389f` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394337 | `0xfa480f...69b326` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394858 | `0xdc879b...b2575d` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394514 | `0x12257a...00fd9f` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394332 | `0xebab2b...ef9c1e` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394775 | `0x4f737d...98a2c5` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394521 | `0x19378e...e6da7b` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394295 | `0x33c15f...e26914` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394839 | `0xb8d271...181a30` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCloseLendGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394625 | `0xb401e6...3b8358` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394553 | `0x5270f9...359ac4` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394283 | `0x129584...cf39e8` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394794 | `0x779bc1...e5e91f` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394551 | `0x4f4d89...946452` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityAndFeesGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394308 | `0x6b7beb...f3fd55` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition v2.1.0 | TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityAndFeesGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394543 | `0x423c64...9f7f60` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394312 | `0x7842cf...a277f6` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394796 | `0x787c36...421259` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3QuoterWithdraw v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394579 | `0x7842cf...a277f6` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3Rebalance v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394760 | `0x3c8e77...cbf258` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3Rebalance v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394659 | `0xeb1684...06c699` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394302 | `0x49d45f...d70f4e` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394802 | `0x85ab27...497128` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition v2.1.0 | TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394527 | `0x25f6a6...a5db37` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3Withdraw v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394280 | `0x09bf6e...30fcc1` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3Withdraw v2.0.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394873 | `0xed64b5...02f75c` | ⚠️ Unaudited |
| TimeswapV2PeripheryUniswapV3Withdraw v2.1.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394546 | `0x480263...1d2e49` | ⚠️ Unaudited |
| TimeswapV2PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394931 | `0x6c9e7e...6338f6` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394317 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394385 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394600 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395029 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394813 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2PoolFactory v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395074 | `0x97509c...90354c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394303 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394359 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394547 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-395012 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394771 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2Token v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395066 | `0x4aa2bc...ae287c` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394284 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | optimism | unit-394345 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon | unit-394516 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | base | unit-394996 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394742 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| TimeswapV2TokenForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395057 | `0x136397...8e3dbb` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d7fb5...a75993` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (553)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394497 | `0xf2a062...020e09` | ❓ Unverified |
| TimeswapV2LiquidityToken v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394987 | `0xf2a062...020e09` | ❓ Unverified |
| TimeswapV2LiquidityToken v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394697 | `0xf2a062...020e09` | ❓ Unverified |
| TimeswapV2LiquidityToken v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394728 | `0xf2a062...020e09` | ❓ Unverified |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394415 | `0x17385e...0896c4` | ❓ Unverified |
| TimeswapV2OptionFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394896 | `0x17385e...0896c4` | ❓ Unverified |
| TimeswapV2OptionFactory v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394671 | `0x17385e...0896c4` | ❓ Unverified |
| TimeswapV2OptionFactory v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394706 | `0x17385e...0896c4` | ❓ Unverified |
| TimeswapV2Periphery v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394454 | `0x7c9cad...5516a2` | ❓ Unverified |
| TimeswapV2Periphery v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394687 | `0x7c9cad...5516a2` | ❓ Unverified |
| TimeswapV2Periphery v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394714 | `0x7c9cad...5516a2` | ❓ Unverified |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394477 | `0xbbfd14...9b329b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394946 | `0x870209...05f511` | ❓ Unverified |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394676 | `0x3dfd72...de2a54` | ❓ Unverified |
| TimeswapV2PeripheryNoDexAddLiquidityGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394707 | `0x1a526b...82bb0e` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394496 | `0xf298b0...42afb7` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394695 | `0xc1aa6b...587889` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394726 | `0xc2e1eb...e7aee0` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394406 | `0x00a60f...92635e` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394674 | `0x32de46...07a592` | ❓ Unverified |
| TimeswapV2PeripheryNoDexBorrowGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394716 | `0x821acc...c753a0` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394418 | `0x20f431...d7f307` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394926 | `0x64d100...8c4e95` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394679 | `0x416008...c1ecd1` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394722 | `0xa692e2...7ba0ea` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394447 | `0x6d393c...b37b6c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394929 | `0x6b42c1...25c97c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394672 | `0x1ed012...a0a07f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394703 | `0x102a18...6ee979` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394433 | `0x4bce1c...2d5a33` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394916 | `0x4de6e7...b4a346` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394673 | `0x260e0b...cf5589` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394715 | `0x8160a8...a844d0` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394493 | `0xec8116...d84a8a` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394908 | `0x3926de...4fa371` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394691 | `0x9dd1aa...f96fe4` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCloseLendGivenPositionForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394701 | `0x077c80...73e9ae` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394435 | `0x520bfd...277605` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394930 | `0x6bf230...7fe198` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCollect v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394694 | `0xc19a1c...938a43` | ❓ Unverified |
| TimeswapV2PeripheryNoDexCollect v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394709 | `0x3b2e3f...8944d8` | ❓ Unverified |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394467 | `0xa13729...79688c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394954 | `0x986ec6...c85ca5` | ❓ Unverified |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394678 | `0x3fb863...8fe9c4` | ❓ Unverified |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395058 | `0x156d78...fb55b3` | ❓ Unverified |
| TimeswapV2PeripheryNoDexLendGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394708 | `0x1fff88...315175` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394420 | `0x2eda68...2d61a5` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394904 | `0x2eda68...2d61a5` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394699 | `0xfdfed7...3b343d` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterAddLiquidityGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394719 | `0x994e96...7c8ce4` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394429 | `0x457172...9ab999` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394680 | `0x457172...9ab999` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394710 | `0x457172...9ab999` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394490 | `0xe6eaeb...29fd5f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394979 | `0xe6eaeb...29fd5f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394681 | `0x488821...330feb` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterBorrowGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394705 | `0x14e199...5c59c5` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394494 | `0xefd5dc...1c9606` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394985 | `0xefd5dc...1c9606` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394675 | `0x3c9c2f...46b507` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394723 | `0xabd4a8...11e2f8` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394468 | `0xa1436a...427ec4` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394956 | `0xa1436a...427ec4` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394689 | `0x9687c8...cdb987` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseBorrowGivenPositionForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394717 | `0x8963aa...2ab7b2` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394499 | `0xf54feb...21fe6e` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394990 | `0xf54feb...21fe6e` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394685 | `0x652cec...120e82` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394700 | `0x01edcd...78b354` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394476 | `0xbb8f92...89cb14` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394965 | `0xbb8f92...89cb14` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394693 | `0xbef50f...9ffc78` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCloseLendGivenPositionForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394720 | `0x9c60b6...3f6890` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394492 | `0xeae26c...c1d26b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394981 | `0xeae26c...c1d26b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394684 | `0x5c997e...963b7c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-395069 | `0x5c997e...963b7c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterCollect v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394727 | `0xe549f0...ee292f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394471 | `0xace7d3...82be1d` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394958 | `0xace7d3...82be1d` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394698 | `0xf37bca...c9bc31` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterLendGivenPrincipal v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394721 | `0xa463e6...b57849` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394474 | `0xb79611...f46221` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394964 | `0xb79611...f46221` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394677 | `0x3ecaed...5bab0f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterRemoveLiquidityGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394725 | `0xb8eb0f...9241fc` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394458 | `0x88ad86...8f6833` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394947 | `0x88ad86...8f6833` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394683 | `0x5ab1a8...867d6f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdraw v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394702 | `0x0a126a...1c514c` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394484 | `0xcce02f...eb9ecb` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394969 | `0xcce02f...eb9ecb` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394686 | `0x779cfb...e130fd` | ❓ Unverified |
| TimeswapV2PeripheryNoDexQuoterWithdrawForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394724 | `0xb4f5d6...4bc739` | ❓ Unverified |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394464 | `0x97c8b5...abc14f` | ❓ Unverified |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394888 | `0x08898d...b630c9` | ❓ Unverified |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394692 | `0xbb2daa...32034b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexRemoveLiquidityGivenPosition v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394711 | `0x45e915...d654df` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394491 | `0xea6695...c6a90b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdraw v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394892 | `0x0e3c41...630f54` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdraw v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394696 | `0xf1a65a...a17d4b` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdraw v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394729 | `0xfbee92...26f1f2` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394455 | `0x7da07a...da2a6e` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394989 | `0xf42a61...bec65a` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394688 | `0x8da12b...2c9410` | ❓ Unverified |
| TimeswapV2PeripheryNoDexWithdrawForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394713 | `0x7067cb...7fd4f8` | ❓ Unverified |
| TimeswapV2PeripheryUniswapV3Rebalance v2.0.0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394285 | `0x13b270...ef3b30` | ❓ Unverified |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394463 | `0x97509c...90354c` | ❓ Unverified |
| TimeswapV2PoolFactory v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394953 | `0x97509c...90354c` | ❓ Unverified |
| TimeswapV2PoolFactory v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394690 | `0x97509c...90354c` | ❓ Unverified |
| TimeswapV2PoolFactory v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394718 | `0x97509c...90354c` | ❓ Unverified |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394432 | `0x4aa2bc...ae287c` | ❓ Unverified |
| TimeswapV2Token v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394914 | `0x4aa2bc...ae287c` | ❓ Unverified |
| TimeswapV2Token v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394682 | `0x4aa2bc...ae287c` | ❓ Unverified |
| TimeswapV2Token v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394712 | `0x4aa2bc...ae287c` | ❓ Unverified |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-394414 | `0x136397...8e3dbb` | ❓ Unverified |
| TimeswapV2TokenForLiquidity v2.5.0 | unknown | project_anchor | own_supporting | 0 | mantle | unit-394895 | `0x136397...8e3dbb` | ❓ Unverified |
| TimeswapV2TokenForLiquidity v2.5.2 | unknown | project_anchor | own_supporting | 0 | x-layer | unit-394670 | `0x136397...8e3dbb` | ❓ Unverified |
| TimeswapV2TokenForLiquidity v2.5.2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2525 | unit-394704 | `0x136397...8e3dbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394279 | `0x0981c4...d70072` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394282 | `0x10fb7a...2d71cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394287 | `0x1f741e...103647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394291 | `0x295668...68af44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394292 | `0x29a932...8ca23c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394293 | `0x29ca89...0b212e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394296 | `0x368f3f...17ddf8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394297 | `0x3bee0f...807965` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394307 | `0x659727...d9349b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394316 | `0x8e3fcd...76585f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394321 | `0xae1638...ca74b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394326 | `0xcf0aca...761fe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394327 | `0xd10ad5...02c951` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394329 | `0xd79c09...67f510` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-394336 | `0xf60a29...b3c70b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394339 | `0x0800ed...ee5517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394340 | `0x081c1b...cc0d8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394341 | `0x095f79...675593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394342 | `0x09b798...8b9b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394344 | `0x1258b4...b93c80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394347 | `0x1a8a5f...82ee90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394348 | `0x1ee933...427e9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394349 | `0x254009...2593c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394351 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394364 | `0x4c03c7...301633` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394366 | `0x58e8a1...f01e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394369 | `0x5ca430...eda6ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394370 | `0x5d95a5...33dd4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394371 | `0x5e0020...031e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394372 | `0x5fdda3...fb69a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394373 | `0x7055ce...de1079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394374 | `0x757265...8c86f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394376 | `0x7e1420...b3dd6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394377 | `0x7e884a...2824df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394378 | `0x82ddf4...b9d267` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394381 | `0x88bc5d...16fa97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394382 | `0x8b7fdb...931e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394383 | `0x8dea04...545716` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394384 | `0x9150ab...e52076` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394386 | `0xa0128c...ed3df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394392 | `0xb2d623...fd31cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394393 | `0xb61a0a...505351` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-394398 | `0xbefcdb...1f6afb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394503 | `0x016f29...ac5bc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394504 | `0x0266a9...745043` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394505 | `0x0398f7...15fac7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394506 | `0x03b8b1...231b23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394507 | `0x0800ed...ee5517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394508 | `0x081c1b...cc0d8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394509 | `0x095f79...675593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394510 | `0x09b798...8b9b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394511 | `0x0c176f...83e388` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394512 | `0x0e428c...4e6ae1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394513 | `0x10ee7d...3cfac8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394515 | `0x1258b4...b93c80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394517 | `0x15d11d...dc9411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394519 | `0x1790bc...4ec0cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394520 | `0x18534f...9408d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394522 | `0x1a3a96...e03cac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394523 | `0x1ee933...427e9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394524 | `0x1f3523...221d1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394525 | `0x1f741e...103647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394526 | `0x254009...2593c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394528 | `0x2653a6...c829bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394529 | `0x26b60f...fa4846` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394530 | `0x284742...353e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394531 | `0x28b305...a86a89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394532 | `0x2de8d9...ea63db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394534 | `0x32c6b1...8de8e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394535 | `0x34d75d...540f25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394538 | `0x3dac8e...b8dcd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394539 | `0x3e7f1d...fd1055` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394540 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394542 | `0x419d19...751876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394544 | `0x477c3a...749b21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394545 | `0x47fffc...f56f4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394548 | `0x4bf73f...8a2c7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394549 | `0x4c03c7...301633` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394550 | `0x4c90b7...494ffd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394552 | `0x4f8019...ef8dfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394554 | `0x55a420...b9fdbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394555 | `0x5621ff...7775b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394556 | `0x566ef6...b30dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394557 | `0x568c21...084783` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394558 | `0x5753b9...d1cf90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394559 | `0x58e8a1...f01e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394560 | `0x5958e0...a6b182` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394561 | `0x5aa729...67087e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394562 | `0x5e0020...031e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394563 | `0x62fc91...5a7ed0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394564 | `0x662f11...fcc52e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394566 | `0x6b5cc6...cf9b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394567 | `0x6b96ee...6ddb29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394569 | `0x6d5d3a...38e97f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394570 | `0x6eab7b...ba4fa8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394571 | `0x7055ce...de1079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394573 | `0x713d2a...8b9a58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394574 | `0x73f6bd...2ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394576 | `0x757265...8c86f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394577 | `0x764e55...b5e8d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394578 | `0x767ff1...45b412` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394580 | `0x791cf0...ee3e91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394583 | `0x7d8727...c4e541` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394584 | `0x7e884a...2824df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394585 | `0x7ef804...c84d08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394586 | `0x81e099...218157` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394587 | `0x85fb6e...e36499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394588 | `0x87283c...8b9bfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394589 | `0x880d3f...8ca7c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394591 | `0x88bc5d...16fa97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394592 | `0x8cbec7...103442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394594 | `0x8f4cdf...05ca0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394595 | `0x90082d...bcb8a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394596 | `0x948565...8e82f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394597 | `0x94ec0b...f96dae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394599 | `0x9660c7...b50f7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394601 | `0x979ec5...2a58ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394603 | `0x99cb7f...1c2503` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394604 | `0x9a0266...38b870` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394605 | `0x9bb4fa...24d9cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394606 | `0x9bde67...45b3e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394607 | `0x9ce98c...a6ea08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394608 | `0x9e55e5...804bba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394609 | `0x9f024e...870340` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394610 | `0xa0128c...ed3df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394612 | `0xa14e3c...d17cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394613 | `0xa68636...46820f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394614 | `0xa6c068...5c0104` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394615 | `0xa87f0b...c68981` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394617 | `0xa9989e...0a23fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394618 | `0xab30a4...b36584` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394621 | `0xaf68d6...5e04bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394622 | `0xb2bd16...1822a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394623 | `0xb2d623...fd31cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394624 | `0xb2eaca...019a98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394626 | `0xb65beb...3035f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394629 | `0xb9385a...a1e872` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394631 | `0xbb4ec3...02c59f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394633 | `0xbd84d4...1a5813` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394634 | `0xbe2fcc...fb7beb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394635 | `0xbf4841...c1364a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394636 | `0xc2485b...9a4aa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394638 | `0xc36998...dbb081` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394639 | `0xc48405...46b153` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394640 | `0xcab2e5...55fb4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394641 | `0xcafeee...f669a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394643 | `0xcf0aca...761fe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394645 | `0xd02731...1488d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394647 | `0xd5c23b...95a279` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394648 | `0xd904c4...802432` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394649 | `0xda9fab...00bbb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394650 | `0xdd8219...e0c225` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394651 | `0xdf5e77...86afe2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394652 | `0xe14f43...84b701` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394653 | `0xe2bdeb...07000d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394654 | `0xe4a00a...584b73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394655 | `0xe59633...e0e75a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394657 | `0xeaa860...7d496d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394660 | `0xeec7cb...133d1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394664 | `0xf42ffe...5282fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394666 | `0xf61474...d4703e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394667 | `0xf73fb1...7c17c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394668 | `0xf908a7...d0dd73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-394669 | `0xfba40f...94e360` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394407 | `0x0800ed...ee5517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394408 | `0x081c1b...cc0d8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394409 | `0x095f79...675593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394410 | `0x09b798...8b9b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394411 | `0x0bc1e2...2b2aeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394412 | `0x0c2df7...f9a9be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394413 | `0x1258b4...b93c80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394416 | `0x18fbc0...717c40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394417 | `0x1ee933...427e9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394419 | `0x254009...2593c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394421 | `0x32c6b1...8de8e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394422 | `0x3603f0...2d9c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394423 | `0x3b9881...c914df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394424 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394425 | `0x4214e3...93e3ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394426 | `0x42ffbd...a885d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394427 | `0x447d3d...e93d81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394428 | `0x448707...c2a009` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394430 | `0x4711ea...250b75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394431 | `0x47fffc...f56f4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394434 | `0x4c03c7...301633` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394436 | `0x5428f4...2396db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394437 | `0x566ef6...b30dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394438 | `0x5753b9...d1cf90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394439 | `0x58e8a1...f01e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394440 | `0x5958e0...a6b182` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394441 | `0x5d5952...0134a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394442 | `0x5e0020...031e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394443 | `0x61bb07...7765d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394444 | `0x662f11...fcc52e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394445 | `0x698049...cccceb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394446 | `0x6b5cc6...cf9b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394448 | `0x6d5d3a...38e97f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394449 | `0x7055ce...de1079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394450 | `0x713d2a...8b9a58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394451 | `0x757265...8c86f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394452 | `0x762237...fa08bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394453 | `0x791cf0...ee3e91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394456 | `0x7e884a...2824df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394457 | `0x87283c...8b9bfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394459 | `0x88bc5d...16fa97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394460 | `0x8cbec7...103442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394461 | `0x9660c7...b50f7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394462 | `0x96d9ec...b90332` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394465 | `0xa0128c...ed3df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394466 | `0xa0a03c...fc7f09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394469 | `0xa14e3c...d17cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394470 | `0xa7b9c7...e1cda7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394473 | `0xb2d623...fd31cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394475 | `0xb92892...609670` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394478 | `0xbd84d4...1a5813` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394480 | `0xc36998...dbb081` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394481 | `0xc6ad2e...c72e51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394482 | `0xc6db29...c54d7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394483 | `0xcb3d10...4b19af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394485 | `0xcd5d78...c8e140` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394486 | `0xd53a55...c61f98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394487 | `0xd904c4...802432` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394489 | `0xe08d92...cc55fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394495 | `0xf18a42...81d12b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394498 | `0xf3f726...2ba9dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394500 | `0xf908a7...d0dd73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-394501 | `0xfba40f...94e360` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394885 | `0x027b14...8771cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394886 | `0x0800ed...ee5517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394887 | `0x081c1b...cc0d8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394889 | `0x095f79...675593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394890 | `0x09b798...8b9b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394894 | `0x1258b4...b93c80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394897 | `0x19067c...bde45d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394899 | `0x1ee933...427e9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394900 | `0x23ee4a...848df2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394901 | `0x254009...2593c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394903 | `0x286d15...5df3a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394906 | `0x3403f8...f535bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394907 | `0x36e8ee...b459a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394911 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394913 | `0x49f6b7...9996ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394915 | `0x4c03c7...301633` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394917 | `0x4f45c6...da5c6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394918 | `0x4fbe68...91a95d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394919 | `0x581de6...e7d67d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394920 | `0x58e8a1...f01e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394922 | `0x5d1bd0...69138e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394923 | `0x5e0020...031e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394933 | `0x704216...98ee83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394934 | `0x7055ce...de1079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394936 | `0x732f3d...32437f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394937 | `0x757265...8c86f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394938 | `0x75f64b...0e0e03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394939 | `0x794597...37a42b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394941 | `0x7e884a...2824df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394942 | `0x837223...a0c2f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394943 | `0x8401ca...ddd078` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394944 | `0x84f4f2...9cb081` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394945 | `0x8586ac...dd0d52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394948 | `0x88bc5d...16fa97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394949 | `0x8b0a8f...deb09b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394950 | `0x8c4125...58870e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394951 | `0x8cfc9f...f97c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394955 | `0xa0128c...ed3df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394957 | `0xa27ba6...454508` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394959 | `0xaefac5...75cdba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394961 | `0xb2d623...fd31cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394962 | `0xb60678...f73f8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394963 | `0xb60c05...9e8418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394966 | `0xbd901e...e53446` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394967 | `0xc3e9df...777a69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394968 | `0xcc4038...69aae8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394970 | `0xcee9d9...57ebec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394971 | `0xd36e43...973427` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394972 | `0xd5beb3...780bda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394973 | `0xd84939...dcf905` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394974 | `0xdc3462...354732` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394975 | `0xe0267a...de86c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394976 | `0xe0a884...293811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394977 | `0xe19b4a...ac2a71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394978 | `0xe38759...f47ecc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394980 | `0xe7a293...818b9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394982 | `0xec0d43...3a6e5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394983 | `0xece5c0...599bfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394984 | `0xedf6f5...ad28bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394986 | `0xf0d2e0...9ac6df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394988 | `0xf2c60a...1923ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394991 | `0xf762e6...15ca54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-394992 | `0xf8f5e4...b02f9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394993 | `0x00a5d3...37117c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394995 | `0x110db1...f8ff9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394998 | `0x1741a3...f9339a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394999 | `0x189c6e...f1bf61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395000 | `0x1d7065...84aafe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395002 | `0x32c6b1...8de8e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395003 | `0x3e91e1...d08307` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395004 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395006 | `0x4284f3...66d336` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395007 | `0x4536c3...3ed2fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395009 | `0x47fffc...f56f4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395015 | `0x66962d...18ab48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395016 | `0x6b5cc6...cf9b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395017 | `0x6eaac9...aa78e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395018 | `0x713d2a...8b9a58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395019 | `0x79689d...3462a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395020 | `0x7b9760...acc0a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395023 | `0x87283c...8b9bfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395025 | `0x8b0a8f...deb09b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395026 | `0x8cfc9f...f97c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395027 | `0x8d27d7...c58632` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395028 | `0x919251...15a8d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395031 | `0xa14e3c...d17cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395032 | `0xa62782...537e1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395036 | `0xb0b1b1...1bd417` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395037 | `0xb2c9ba...902cad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395043 | `0xcdb4be...ca6068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395044 | `0xd84ffa...9f4553` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395045 | `0xda9fab...00bbb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395049 | `0xee15be...488eae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395051 | `0xf118c2...bed349` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395054 | `0xf6cc50...982094` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394732 | `0x0800ed...ee5517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394733 | `0x081c1b...cc0d8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394735 | `0x095f79...675593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394736 | `0x09b798...8b9b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394737 | `0x0bf893...8108fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394738 | `0x0c49cc...f83fa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394740 | `0x0e428c...4e6ae1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394741 | `0x1258b4...b93c80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394743 | `0x1591de...c36544` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394744 | `0x162f48...1e589b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394747 | `0x1ee933...427e9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394748 | `0x1f741e...103647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394749 | `0x254009...2593c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394751 | `0x299c21...e7cc17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394752 | `0x2a94e4...012d8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394753 | `0x2cc868...d09398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394755 | `0x32c6b1...8de8e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394756 | `0x33fbf4...af26d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394757 | `0x35e027...41dc84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394759 | `0x3c3fd1...0e5007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394761 | `0x3d2f28...eafead` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394762 | `0x3dac8e...b8dcd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394763 | `0x3f1087...4adde5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394764 | `0x406d3d...371502` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394765 | `0x45edb0...bf4844` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394766 | `0x47fffc...f56f4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394767 | `0x48a41f...86ed89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394768 | `0x49c813...7d6aba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394769 | `0x4a14b9...a962cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394772 | `0x4c03c7...301633` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394773 | `0x4c36e8...e8ee97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394774 | `0x4c3984...64d04d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394776 | `0x55a420...b9fdbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394777 | `0x566ef6...b30dc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394778 | `0x5753b9...d1cf90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394779 | `0x58e8a1...f01e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394780 | `0x5958e0...a6b182` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394781 | `0x59c084...3b6ca3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394782 | `0x5e0020...031e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394783 | `0x61edf3...feb2e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394785 | `0x662f11...fcc52e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394786 | `0x6b5cc6...cf9b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394787 | `0x6b96ee...6ddb29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394788 | `0x6d113a...35505a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394789 | `0x6d5d3a...38e97f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394790 | `0x7055ce...de1079` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394791 | `0x713d2a...8b9a58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394792 | `0x757265...8c86f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394793 | `0x76b646...34db1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394795 | `0x783f0c...e04f9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394797 | `0x791cf0...ee3e91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394798 | `0x7a19a1...8008f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394800 | `0x7e8176...8072e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394801 | `0x7e884a...2824df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394803 | `0x8689ff...6bf3ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394804 | `0x87283c...8b9bfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394806 | `0x88bc5d...16fa97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394808 | `0x8cb9c3...e45c6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394809 | `0x8cbec7...103442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394810 | `0x8d464b...ac92c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394811 | `0x8dc920...a36a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394812 | `0x9660c7...b50f7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394814 | `0x976607...6e15f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394815 | `0x98b0d8...b0fa38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394816 | `0x99798c...b33af9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394817 | `0x99cb7f...1c2503` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394818 | `0x9aa301...eab574` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394819 | `0x9af9fd...cdeff2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394820 | `0x9ce98c...a6ea08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394821 | `0x9d208f...d3a0fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394822 | `0xa0128c...ed3df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394823 | `0xa0a03c...fc7f09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394824 | `0xa14141...84599b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394826 | `0xa14e3c...d17cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394827 | `0xa1fa46...08da14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394828 | `0xa30abc...6d4723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394829 | `0xa8b013...70b767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394830 | `0xa9a9e2...72c452` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394832 | `0xafcaf4...1f77f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394834 | `0xb2bd16...1822a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394835 | `0xb2d623...fd31cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394838 | `0xb85ad9...4620c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394841 | `0xbcaac6...c4f44e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394842 | `0xbd6b55...ab0e7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394843 | `0xbd84d4...1a5813` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394844 | `0xbfd1bb...17b483` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394845 | `0xc35554...0e752b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394846 | `0xc36998...dbb081` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394847 | `0xc421f0...d60ba0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394848 | `0xc75382...48fdd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394850 | `0xcf0aca...761fe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394851 | `0xd02731...1488d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394854 | `0xd6ab9a...2c6074` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394855 | `0xd904c4...802432` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394856 | `0xd9ae5d...4754e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394859 | `0xdd8219...e0c225` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394860 | `0xe1301e...4ed0c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394861 | `0xe1cd81...b54326` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394862 | `0xe35f34...16d4df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394863 | `0xe4ec51...f14696` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394864 | `0xe60718...b0f967` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394865 | `0xe66e1e...5d924c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394867 | `0xea4531...08fcd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394868 | `0xea49c0...1ef997` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394869 | `0xeacf3a...8f35bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394871 | `0xebada7...d469dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394878 | `0xf87a47...3d80cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394879 | `0xf8f229...1381bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394880 | `0xf908a7...d0dd73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394882 | `0xfb466f...150ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394883 | `0xfba40f...94e360` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-394884 | `0xfc5291...a88e68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://code4rena.com/reports/2022-03-timeswap) | Code4rena | Contest | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24522] DL audit link — no match: Scope section states 9 smart contracts, but only 5 are explicitly named in the report. The report date is from the title page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | CollateralizedDebt | unmatched — not counted | — | mentioned in scope and findings | no |
| DL audit link | TimeswapPair | unmatched — not counted | — | mentioned in scope and findings | no |
| DL audit link | Borrow | unmatched — not counted | — | mentioned in finding M-01 | no |
| DL audit link | IPair | unmatched — not counted | — | mentioned in finding M-01 | no |
| DL audit link | NFTTokenURIScaffold | unmatched — not counted | — | mentioned in finding L-01 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x17385e...0896c4` | TimeswapV2OptionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 777 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [24522] DL audit link

Fork inheritance lineage and inherited audits are included when available.
